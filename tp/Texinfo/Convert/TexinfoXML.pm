# TexinfoXML.pm: output tree as Texinfo XML.
#
# Copyright 2011, 2012, 2013, 2016, 2017, 2018 Free Software Foundation, Inc.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
# Original author: Patrice Dumas <pertusus@free.fr>

package Texinfo::Convert::TexinfoXML;

use 5.00405;
use strict;

use Texinfo::Convert::Converter;
use Texinfo::Common;
use Texinfo::Convert::Unicode;
# for debugging and adding the original line for some commands
use Texinfo::Convert::Texinfo;
use Data::Dumper;
use Carp qw(cluck);

use vars qw($VERSION @ISA);
@ISA = qw(Texinfo::Convert::Converter);

$VERSION = '6.8dev';


# XML specific
my %defaults = (
  'ENABLE_ENCODING'      => 0,
  'FORMAT_MENU'          => 'menu',
  'EXTENSION'            => 'xml',
  #'output_perl_encoding' => 'utf8',
  'OUTPUT_ENCODING_NAME' => 'utf-8',
  'TEXINFO_DTD_VERSION'  => '5.0',
  'OUTFILE'              => undef,
  'SUBDIR'               => undef,
  'output_format'        => 'xml',
  'SPLIT'                => 0,
  'documentlanguage'     => 'en',
);


# our because it is used in the xml to texi translator
our %no_arg_commands_formatting = (
           '*' => 'linebreak',
           ' ' => ['spacecmd', 'type', 'spc'],
           "\t" => ['spacecmd', 'type', 'tab'],
           "\n" => ['spacecmd', 'type', 'nl'],
           '-' => 'hyphenbreak',  # hyphenation hint
           '|' => ['divideheading'],  # used in formatting commands @evenfooting and friends
           '/' => 'slashbreak',
           ':' => 'noeos',
           '!' => 'eosexcl',
           '?' => 'eosquest',
           '.' => 'eosperiod',
           '@' => 'arobase',
           '{' => 'lbrace',
           '}' => 'rbrace',
           '&' => 'amp',
           '\\' => 'backslash',  # should only appear in math

           'TeX' => 'tex',
           'LaTeX' => 'latex',
           'bullet' => 'bullet',
           'copyright'    => 'copyright',
           'registeredsymbol'   => 'registered',
           'dots'    => 'dots',
           'enddots'    => 'enddots',
           'error'        => 'errorglyph',
           'expansion'     => 'expansion',
           'arrow'        => 'rarr',
           'click'        => ['click', 'command', 'arrow'],
           'minus'        => 'minus',
           'point'        => 'point',
           'print'        => 'printglyph',
           'result'       => 'result',
           'l'            => 'lslash',
           'L'            => 'Lslash',
           'today'        => ['today'],
           'comma'        => 'comma',
           'atchar'       => 'atchar',
           'ampchar'      => 'ampchar',
           'lbracechar'   => 'lbracechar',
           'rbracechar'   => 'rbracechar',
           'backslashchar' => 'backslashchar',
           'hashchar'      => 'hashchar',
           # in Texinfo::Convert::Converter::default_xml_no_arg_commands_formatting,
           # guillemotleft and guillemotright are mapped to laquo and raquo,
           # but guillemetleft and guillemetright are also mapped to those
           # entities.  To make sure that it is possible to go back to the
           # @-command from the entity, we use specific entities here
           'guillemotleft'   => 'guillemotleft',
           'guillemotright'  => 'guillemotright',
);

# use default XML formatting to complete the hash, removing XML
# specific formatting.  This avoids some code duplication.
my %default_xml_no_arg_commands_formatting =
    %Texinfo::Convert::Converter::xml_text_entity_no_arg_commands_formatting;

foreach my $command (keys(%default_xml_no_arg_commands_formatting)) {
  if (!exists($no_arg_commands_formatting{$command})) {
    if ($default_xml_no_arg_commands_formatting{$command} ne '') {
      if ($default_xml_no_arg_commands_formatting{$command} =~ /^&(.*);$/) {
        $no_arg_commands_formatting{$command} = $1;
      } else {
        die "BUG: Strange xml_no_arg_commands_formatting: $default_xml_no_arg_commands_formatting{$command}\n";
      }
    } else {
      $no_arg_commands_formatting{$command} = '';
    }
  }
}

# Following are XML specific formatting functions.

# format specific.  Used in few places where plain text is used outside
# of attributes.
sub protect_text($$)
{
  my $self = shift;
  my $string = shift;
  return $self->_protect_text($string);
}

sub _xml_attributes($$)
{
  my $self = shift;
  my $attributes = shift;
  if (ref($attributes) ne 'ARRAY') {
    cluck "attributes not an array($attributes).";
  }
  my $result = '';
  for (my $i = 0; $i < scalar(@$attributes); $i += 2) {
    # this cannot be used, because of formfeed, as in
    # attribute < which is substituted from &formfeed; is not allowed
    #my $text = $self->_protect_text($attributes->[$i+1]);
    my $text = $self->xml_protect_text($attributes->[$i+1]);
    # in fact form feed is not allowed at all in XML, even protected
    # and even in xml 1.1 in contrast to what is said on internet.
    # maybe this is a limitation of libxml?
    #$text =~ s/\f/&#12;/g;
    if ($attributes->[$i] ne 'spaces'
        and $attributes->[$i] ne 'trailingspaces') {
      $text =~ s/\f/&attrformfeed;/g;
      # &attrformfeed; resolves to \f so \ are doubled
      $text =~ s/\\/\\\\/g;
    }
    $result .= " $attributes->[$i]=\"".$text."\"";
  }
  return $result;
}

# format specific
sub element($$$)
{
  my $self = shift;
  my $format_element = shift;
  my $attributes = shift;
  my $result= '<'.$format_element;
  $result .= $self->_xml_attributes($attributes) if ($attributes);
  $result .= '/>';
  return $result;
}

# format specific
sub open_element($$$)
{
  my $self = shift;
  my $format_element = shift;
  my $attributes = shift;
  my $result= '<'."$format_element";
  $result .= $self->_xml_attributes($attributes) if ($attributes);
  $result .= '>';
  return $result;
}

# format specific
sub close_element($$)
{
  my $self = shift;
  my $format_element = shift;
  my $result= "</$format_element>";
  return $result;
}

# format specific
sub format_atom($$)
{
  my $self = shift;
  my $atom = shift;
  if ($no_arg_commands_formatting{$atom} ne '') {
    return '&'.$no_arg_commands_formatting{$atom}.';';
  } else {
    return '';
  }
}

# format specific
sub format_comment($$)
{
  my $self = shift;
  my $string = shift;

  return $self->xml_comment($string);
}

# form feed is not accepted in xml, replace it.
sub _protect_text($$)
{
  my $self = shift;
  my $text = shift;
  my $result = $self->xml_protect_text($text);
  $result =~ s/\f/&formfeed;/g;
  return $result;
}

# format specific
sub format_text($$)
{
  my $self = shift;
  my $element = shift;
  my $result = $self->_protect_text($element->{'text'});
  if (! defined($element->{'type'}) or $element->{'type'} ne 'raw') {
    if (!$self->{'document_context'}->[-1]->{'monospace'}->[-1]) {
      $result =~ s/``/&textldquo;/g;
      $result =~ s/\'\'/&textrdquo;/g;
      $result =~ s/---/&textmdash;/g;
      $result =~ s/--/&textndash;/g;
      $result =~ s/'/&textrsquo;/g;
      $result =~ s/`/&textlsquo;/g;
    }
  }
  return $result;
}

# output format specific
sub format_header($$$)
{
  my $self = shift;
  my $output_file = shift;
  my $output_filename = shift;

  my $encoding = '';
  if ($self->get_conf('OUTPUT_ENCODING_NAME')
      and $self->get_conf('OUTPUT_ENCODING_NAME') ne 'utf-8') {
    $encoding = " encoding=\"".$self->get_conf('OUTPUT_ENCODING_NAME')."\" ";
  }
  my $texinfo_dtd_version = $self->get_conf('TEXINFO_DTD_VERSION');
  if (!defined($texinfo_dtd_version)) {
    $texinfo_dtd_version = '1.00';
  }

  my $header =  "<?xml version=\"1.0\"${encoding}?>".'
<!DOCTYPE texinfo PUBLIC "-//GNU//DTD TexinfoML V'.$texinfo_dtd_version.'//EN" "http://www.gnu.org/software/texinfo/dtd/'.$texinfo_dtd_version.'/texinfo.dtd">
'. $self->open_element('texinfo')."\n";
  if ($output_file ne '') {
    $header .= $self->open_element('filename',['file', $output_filename])
             .$self->close_element('filename')."\n";
  }
  return $header;
}

# following is not format specific.  Some infos are taken from generic
# XML, but XML specific formatting is stripped.

my %accents = (
 '=' => 'macr',
# following are not entities
 'H' => 'doubleacute',
 'u' => 'breve',
 'v' => 'caron',
);

# our because it is used in the xml to texi translator
our %accent_types = (%Texinfo::Convert::Converter::xml_accent_entities, %accents);

# no entity
my @other_accents = ('dotaccent', 'tieaccent', 'ubaraccent', 'udotaccent');
foreach my $accent (@other_accents) {
  $accent_types{$accent} = $accent;
}
# note that @dotless is not treated as an accent command but
# together with brace commands.

my %misc_command_line_attributes = (
  'setfilename' => 'file',
  'documentencoding' => 'encoding',
  'verbatiminclude' => 'file',
  'documentlanguage' => 'xml:lang',
);

my %misc_command_numbered_arguments_attributes = (
  'definfoenclose' => [ 'command', 'open', 'close' ],
  'alias' => [ 'new', 'existing' ],
  'syncodeindex' => [ 'from', 'to' ],
  'synindex' => [ 'from', 'to' ],
);

my %misc_commands = %Texinfo::Common::misc_commands;

foreach my $command ('item', 'headitem', 'itemx', 'tab',
                      keys %Texinfo::Common::def_commands) {
  delete $misc_commands{$command};
}

my %default_args_code_style
  = %Texinfo::Convert::Converter::default_args_code_style;
my %regular_font_style_commands = %Texinfo::Common::regular_font_style_commands;

# our because it is used in the xml to texi translator
our %commands_args_elements = (
  'email' => ['emailaddress', 'emailname'],
  'uref' => ['urefurl', 'urefdesc', 'urefreplacement'],
  'url' => ['urefurl', 'urefdesc', 'urefreplacement'],
  'inforef' => ['inforefnodename', 'inforefrefname', 'inforefinfoname'],
  'image' => ['imagefile', 'imagewidth', 'imageheight',
              'alttext', 'imageextension'],
  # * means that the previous element is variadic, ie can appear indefinitely
  'example' => ['examplelanguage', 'examplearg', '*'],
  'quotation' => ['quotationtype'],
  'float' => ['floattype', 'floatname'],
  'itemize' => ['itemprepend'],
  'enumerate' => ['enumeratefirst'],
);

foreach my $ref_cmd ('pxref', 'xref', 'ref') {
  $commands_args_elements{$ref_cmd}
    = ['xrefnodename', 'xrefinfoname', 'xrefprinteddesc', 'xrefinfofile',
       'xrefprintedname'];
}

foreach my $explained_command (keys(%Texinfo::Common::explained_commands)) {
  $commands_args_elements{$explained_command} = ["${explained_command}word",
                                                 "${explained_command}desc"];
}

foreach my $inline_command (keys(%Texinfo::Common::inline_commands)) {
  $commands_args_elements{$inline_command} = ["${inline_command}format",
                                              "${inline_command}content"];
}

my $inline_command = 'inlinefmtifelse';
$commands_args_elements{$inline_command} = ["${inline_command}format",
             "${inline_command}contentif", "${inline_command}contentelse"];

my %defcommand_name_type = (
 'deffn'     => 'function',
 'defvr'     => 'variable',
 'deftypefn' => 'function',
 'deftypeop' => 'operation',
 'deftypevr' => 'variable',
 'defcv'     => 'classvar',
 'deftypecv' => 'classvar',
 'defop'     => 'operation',
 'deftp'     => 'datatype',
);

my %ignored_types;
foreach my $type (
            # those are put as spaces in the corresponding @-command
            'empty_spaces_after_command',
            'empty_spaces_before_argument',
            # @-commands replaced in the tree
            'replaced',
  ) {
  $ignored_types{$type} = 1;
}

my %type_elements = (
  'paragraph' => 'para',
  'preformatted' => 'pre',
  'menu_entry' => 'menuentry',
  'menu_entry_node' => 'menunode',
  'menu_comment' => 'menucomment',
  'menu_entry_description' => 'menudescription',
  'menu_entry_name' => 'menutitle',
  'preamble_before_beginning' => 'preamblebeforebeginning',
  'table_item' => 'tableitem',
  'table_entry' => 'tableentry',
  'table_term' => 'tableterm',
  'row' => 'row',
  'multitable_head' => 'thead',
  'multitable_body' => 'tbody',
  'def_item' => 'definitionitem',
  'before_item' => 'beforefirstitem',
);

my %default_context_block_commands = (
  'float' => 1,
);

sub converter_defaults($$)
{
  return %defaults;
}

sub converter_initialize($)
{
  my $self = shift;

  $self->{'document_context'} = [{'monospace' => [0]}];
  $self->{'context_block_commands'} = {%default_context_block_commands};
  foreach my $raw (keys (%Texinfo::Common::format_raw_commands)) {
    $self->{'context_block_commands'}->{$raw} = 1
         if $self->{'expanded_formats_hash'}->{$raw};
  }
  if ($self->{'parser'}) {
    $self->{'indices_information'} = $self->{'parser'}->indices_information();
  }
}

# Main output function for the XML file.
sub output($$)
{
  my $self = shift;
  my $root = shift;

  my ($output_file, $destination_directory, $output_filename)
       = $self->determine_files_and_directory();
  my ($succeeded, $created_directory)
    = $self->create_destination_directory($destination_directory);
  return undef unless $succeeded;


  my $fh;
  if (! $output_file eq '') {
    $fh = Texinfo::Common::output_files_open_out(
                             $self->output_files_information(), $self,
                             $output_file);
    if (!$fh) {
      $self->document_error($self,
                 sprintf(__("could not open %s for writing: %s"),
                                    $output_file, $!));
      return undef;
    }
  }

  my $result = '';
  $result .= $self->write_or_return(
       $self->format_header($output_file, $output_filename), $fh);
  if ($self->get_conf('USE_NODES')) {
    $result .= $self->convert_document_nodes($root, $fh);
  } else {
    $result .= $self->convert_document_sections($root, $fh);
  }
  $result .= $self->write_or_return($self->close_element('texinfo')."\n", $fh);
  if ($fh and $output_file ne '-') {
    Texinfo::Common::output_files_register_closed(
                  $self->output_files_information(), $output_file);
    if (!close ($fh)) {
      $self->document_error($self,
                  sprintf(__("error on closing %s: %s"),
                                    $output_file, $!));
    }
  }

  return $result;
}

sub _format_command($$)
{
  my $self = shift;
  my $command = shift;

  if (ref($no_arg_commands_formatting{$command}) eq '') {
    return $self->format_atom($command);
  } else {
    my @spec = @{$no_arg_commands_formatting{$command}};
    my $format_element = shift @spec;
    return $self->element($format_element, \@spec);
  }
}

sub _index_entry($$)
{
  my $self = shift;
  my $element = shift;
  if ($element->{'extra'} and $element->{'extra'}->{'index_entry'}) {
    my $index_entry = $element->{'extra'}->{'index_entry'};
    my $attribute = ['index', $index_entry->{'index_name'}];
    push @$attribute, ('number', $index_entry->{'number'})
        if (defined($index_entry->{'number'}));
    # in case the index is not a default index, or the style of the
    # entry (in code or not) is not the default for this index
    if ($self->{'indices_information'}) {
      my $in_code
         = $self->{'indices_information'}->{$index_entry->{'index_name'}}->{'in_code'};
      if (!$Texinfo::Common::index_names{$index_entry->{'index_name'}}
          or $in_code != $Texinfo::Common::index_names{$index_entry->{'index_name'}}->{'in_code'}) {
        push @$attribute, ('incode', $in_code);
      }
      if ($self->{'indices_information'}->{$index_entry->{'index_name'}}->{'merged_in'}) {
        push @$attribute, ('mergedindex',
         $self->{'indices_information'}->{$index_entry->{'index_name'}}->{'merged_in'});
      }
    }
    my $result = $self->open_element('indexterm', $attribute);
    push @{$self->{'document_context'}}, {'monospace' => [0]};
    $self->{'document_context'}->[-1]->{'monospace'}->[-1] = 1
      if ($index_entry->{'in_code'});
    $result .= $self->_convert({'contents' => $index_entry->{'content'}});
    pop @{$self->{'document_context'}};
    $result .= $self->close_element('indexterm');
    return $result;
  }
  return '';
}

sub _infoenclose_attribute($$) {
  my $self = shift;
  my $element = shift;
  my @attribute = ();
  return @attribute if (!$element->{'extra'});
  push @attribute, ('begin', $element->{'extra'}->{'begin'})
    if (defined($element->{'extra'}->{'begin'}));
  push @attribute, ('end', $element->{'extra'}->{'end'})
    if (defined($element->{'extra'}->{'end'}));
  return @attribute;
}

sub _accent($$;$$$)
{
  my $self = shift;
  my $text = shift;
  my $element = shift;
  my $in_upper_case = shift;
  my $attributes = shift;
  $attributes = [] if (!defined($attributes));

  unshift @$attributes, ('type', $accent_types{$element->{'cmdname'}});
  my $result = $self->open_element('accent', $attributes);
  $result .= $text;
  $result .= $self->close_element('accent');
  return $result;
}

sub convert($$)
{
  my $self = shift;
  my $root = shift;
  
  return $self->convert_document_sections($root);
}

sub convert_tree($$)
{
  my $self = shift;
  my $root = shift;

  return $self->_convert($root);
}

sub _protect_in_spaces($)
{
  my $text = shift;
  $text =~ s/\n/\\n/g;
  $text =~ s/\f/\\f/g;
  return $text;
}

sub _leading_spaces_before_argument($)
{
  my $element = shift;
  if ($element->{'extra'} and $element->{'extra'}->{'spaces_before_argument'}
      and $element->{'extra'}->{'spaces_before_argument'} ne '') {
    return ('spaces', _protect_in_spaces(
                 $element->{'extra'}->{'spaces_before_argument'}));
  } else {
    return ();
  }
}

# return spaces only, end of line is gathered by calling
# format_comment_or_return_end_line
sub _end_line_spaces
{
  my $element = shift;

  my $end_spaces = '';
  if ($element->{'args'}->[-1]
      and $element->{'args'}->[-1]->{'extra'}
      and $element->{'args'}->[-1]->{'extra'}->{'spaces_after_argument'}) {
    $end_spaces = $element->{'args'}->[-1]->{'extra'}->{'spaces_after_argument'};
    chomp $end_spaces;
  }
  return $end_spaces;
}

sub _arg_line($)
{
  my $self = shift;
  my $element = shift;
  if ($element->{'extra'} and defined($element->{'extra'}->{'arg_line'})) {
    my $line = $element->{'extra'}->{'arg_line'};
    chomp($line);
    if ($line ne '') {
      return ('line', $line);
    }
  }
  return ();
}

# more generic than what is actually used, as the leading spaces
# are never used.  But it is relevant to collect them here in case
# there are only spaces.
sub _collect_leading_trailing_spaces_arg($$)
{
  my $self = shift;
  my $arg = shift;
  #print STDERR "$arg->{'type'}: @{$arg->{'contents'}}\n";
  my @result;
  if ($arg->{'extra'} and
      $arg->{'extra'}->{'spaces_before_argument'}) {
    $result[0] = $arg->{'extra'}->{'spaces_before_argument'};
  } elsif ($arg->{'contents'} and $arg->{'contents'}->[0]
      and defined($arg->{'contents'}->[0]->{'text'})
      and $arg->{'contents'}->[0]->{'text'} !~ /\S/
      and defined($arg->{'contents'}->[0]->{'type'})) {
    #print STDERR "$arg->{'contents'}->[0]->{'type'}\n";
    warn "Unknown leading space type $arg->{'contents'}->[0]->{'type'}\n"
      if ($arg->{'contents'}->[0]->{'type'} ne 'empty_spaces_after_command'
          and $arg->{'contents'}->[0]->{'type'} ne 'empty_spaces_before_argument'
          # FIXME should we really catch this too?
          and $arg->{'contents'}->[0]->{'type'} ne 'empty_line_after_command'
         );
    $result[0] = $arg->{'contents'}->[0]->{'text'};
    return @result if (scalar(@{$arg->{'contents'}}) == 1);
  }

  if ($arg->{'extra'} and
      $arg->{'extra'}->{'spaces_after_argument'}) {
    $result[1] = $arg->{'extra'}->{'spaces_after_argument'};
  } elsif ($arg->{'contents'}) {
    my $index = -1;
    $index-- if ($arg->{'contents'}->[-1]
                 and $arg->{'contents'}->[-1]->{'cmdname'}
                 and ($arg->{'contents'}->[-1]->{'cmdname'} eq 'c'
                      or $arg->{'contents'}->[-1]->{'cmdname'} eq 'comment'));
    if (scalar(@{$arg->{'contents'}}) + $index > 0) {
      if ($arg->{'contents'}->[$index]
          and defined($arg->{'contents'}->[$index]->{'text'})
          and $arg->{'contents'}->[$index]->{'text'} !~ /\S/
          and defined($arg->{'contents'}->[$index]->{'type'})) {
      #print STDERR "$arg->{'contents'}->[$index]->{'type'}\n";
        warn "Unknown trailing space type $arg->{'contents'}->[$index]->{'type'}\n"
          if ($arg->{'contents'}->[$index]->{'type'} ne 'spaces_at_end'
              and $arg->{'contents'}->[$index]->{'type'} ne 'space_at_end_block_command'
             );
        $result[1] = $arg->{'contents'}->[$index]->{'text'};
      }
    }
  }
  return @result;
}

sub _trailing_spaces_arg($$)
{
  my $self = shift;
  my $element = shift;
  
  my @spaces = $self->_collect_leading_trailing_spaces_arg($element);
  if (defined($spaces[1])) {
    chomp($spaces[1]);
    if ($spaces[1] ne '') {
      return ('trailingspaces', _protect_in_spaces($spaces[1]));
    }
  }
  return ();
}

sub _leading_trailing_spaces_arg($$)
{
  my $self = shift;
  my $element = shift;

  my @result = _leading_spaces_before_argument($element);
  push @result, $self->_trailing_spaces_arg($element);
  return @result;
}

sub _texinfo_line($$)
{
  my $self = shift;
  my $element = shift;

  if ($element->{'args'}) {
    my $line = Texinfo::Convert::Texinfo::convert_to_texinfo($element->{'args'}->[-1]);
    chomp($line);
    if ($line ne '') {
      return ('line', $line);
    }
  }
  return ();
}

sub _convert_argument_and_end_line($$)
{
  my $self = shift;
  my $element = shift;

  my $converted = $self->convert_tree($element->{'args'}->[-1]);
  $converted .= _end_line_spaces($element);
  my $end_line = $self->format_comment_or_return_end_line($element);
  return ($converted, $end_line);
}

my @node_directions = ('Next', 'Prev', 'Up');

# not used here, but it is consistent with other %commands_args_elements
# entries and may be used by XML to Texinfo converters
$commands_args_elements{'node'} = ['nodename'];
foreach my $direction (@node_directions) {
  push @{$commands_args_elements{'node'}}, 'node'.lc($direction);
}

sub _convert($$;$);

sub _convert($$;$)
{
  my $self = shift;
  my $element = shift;

  if (0) {
  #if (1) { #}
    print STDERR "root\n";
    print STDERR "  Command: $element->{'cmdname'}\n" if ($element->{'cmdname'});
    print STDERR "  Type: $element->{'type'}\n" if ($element->{'type'});
    print STDERR "  Text: $element->{'text'}\n" if (defined($element->{'text'}));
    #print STDERR "  Special def_command: $element->{'extra'}->{'def_command'}\n"
    #  if (defined($element->{'extra'}) and $element->{'extra'}->{'def_command'});
  }

  return '' if ($element->{'type'} and $ignored_types{$element->{'type'}});
  if (defined($element->{'text'})) {
    if ($self->{'document_context'}->[-1]->{'raw'}) {
      # ignore the newline at the end of the @xml line, and the last in xml
      if ($element->{'type'} and ($element->{'type'} eq 'empty_line_after_command'
                               or $element->{'type'} eq 'last_raw_newline')) {
        return '';
      } else {
        return $element->{'text'};
      }
    }
    return $self->format_text($element);
  }

  my @close_format_elements;
  # for @-commands with contents, to accumulate conversion results
  my $result = '';
  if ($element->{'cmdname'}) {
    if (defined($no_arg_commands_formatting{$element->{'cmdname'}})) {
      if ($element->{'cmdname'} eq 'click'
          and $element->{'extra'}
          and defined($element->{'extra'}->{'clickstyle'})) {
        return $self->element('click', ['command', $element->{'extra'}->{'clickstyle'}]);;
      }
      if ($self->{'itemize_line'} and $element->{'type'}
          and $element->{'type'} eq 'command_as_argument'
          and !$element->{'args'}) {
        return $self->element('formattingcommand', ['command', $element->{'cmdname'}]);
      }
      return $self->_format_command($element->{'cmdname'});
    } elsif ($accent_types{$element->{'cmdname'}}) {
      if ($self->get_conf('ENABLE_ENCODING')) {
        return $self->convert_accents($element, \&_accent);
      } else {
        my $attributes = [];
        my $arg;
        if (!$element->{'args'}) {
          $arg = '';
        } else {
          $arg = $self->_convert($element->{'args'}->[0]);
          if ($element->{'extra'} and $element->{'extra'}->{'spaces'}) {
            push @$attributes,  ('spaces', $element->{'extra'}->{'spaces'});
          }
          if ($element->{'args'}->[0]->{'type'} eq 'following_arg') {
             push @$attributes, ('bracketed', 'off');
          }
        }
        return $self->_accent($arg, $element, undef, $attributes);
      }
    } elsif ($element->{'cmdname'} eq 'item' or $element->{'cmdname'} eq 'itemx'
             or $element->{'cmdname'} eq 'headitem'
             or $element->{'cmdname'} eq 'tab') {
      if ($element->{'cmdname'} eq 'item'
          and $element->{'parent'}->{'cmdname'}
          and ($element->{'parent'}->{'cmdname'} eq 'itemize'
               or $element->{'parent'}->{'cmdname'} eq 'enumerate')) {
        $result .= $self->open_element('listitem',
                                [_leading_spaces_before_argument($element)]);
        if ($element->{'parent'}->{'cmdname'} eq 'itemize'
            and $element->{'parent'}->{'args'}
            and @{$element->{'parent'}->{'args'}}) {
          $result .= $self->open_element('prepend')
            .$self->_convert($element->{'parent'}->{'args'}->[0])
            .$self->close_element('prepend');
        }
        unshift @close_format_elements, 'listitem';
      } elsif (($element->{'cmdname'} eq 'item' or $element->{'cmdname'} eq 'itemx')
               and $element->{'parent'}->{'type'}
               and $element->{'parent'}->{'type'} eq 'table_term') {
        my $table_command = $element->{'parent'}->{'parent'}->{'parent'};
        my $format_item_command;
        my $attribute = [];
        if ($table_command->{'extra'}
            and $table_command->{'extra'}->{'command_as_argument'}) {
          $format_item_command
            = $table_command->{'extra'}->{'command_as_argument'}->{'cmdname'};
          $attribute
           = [$self->_infoenclose_attribute($table_command->{'extra'}->{'command_as_argument'})];
        }
        my $line_item_result = $self->open_element($element->{'cmdname'},
                                     [_leading_spaces_before_argument($element)]);
        if ($format_item_command) {
          $line_item_result .= $self->open_element('itemformat',
                                   ['command', $format_item_command, @$attribute]);
        }
        $line_item_result .= $self->_index_entry($element);
        my $in_code;
        $in_code = 1
          if ($format_item_command
              and defined($default_args_code_style{$format_item_command})
              and $default_args_code_style{$format_item_command}->[0]);
        my $in_monospace_not_normal;
        if ($format_item_command) {
          if (defined($default_args_code_style{$format_item_command})
              and $default_args_code_style{$format_item_command}->[0]) {
            $in_monospace_not_normal = 1;
          } elsif ($regular_font_style_commands{$format_item_command}) {
            $in_monospace_not_normal = 0;
          }
        }
        push @{$self->{'document_context'}->[-1]->{'monospace'}},
          $in_monospace_not_normal
            if (defined($in_monospace_not_normal));

        my ($arg, $end_line) = $self->_convert_argument_and_end_line($element);

        pop @{$self->{'document_context'}->[-1]->{'monospace'}}
          if (defined($in_monospace_not_normal));

        $line_item_result .= $arg;
        if ($format_item_command) {
          $line_item_result .= $self->close_element('itemformat');
        }
        $line_item_result .= $self->close_element($element->{'cmdname'}).$end_line;
        return $line_item_result;
      } else {
        unless (($element->{'cmdname'} eq 'item'
                     or $element->{'cmdname'} eq 'headitem'
                     or $element->{'cmdname'} eq 'tab')
                    and $element->{'parent'}->{'type'}
                    and $element->{'parent'}->{'type'} eq 'row') {
          print STDERR "BUG: multitable cell command not in a row "
            .Texinfo::Common::debug_print_element($element);
        }
        
        $result .= $self->open_element('entry', ['command',
               $element->{'cmdname'}, _leading_spaces_before_argument($element)]);
        unshift @close_format_elements, 'entry';
      }
    } elsif ($element->{'type'} and $element->{'type'} eq 'index_entry_command') {
      my $format_element;
      my $attribute = [];
      if (exists $Texinfo::Common::misc_commands{$element->{'cmdname'}}) {
        $format_element = $element->{'cmdname'};
      } else {
        $format_element = 'indexcommand';
        $attribute = ['command', $element->{'cmdname'}];
      }
      push @$attribute, ('index', $element->{'extra'}->{'index_entry'}->{'index_name'});
      push @$attribute, _leading_spaces_before_argument($element);

      my $end_line = $self->format_comment_or_return_end_line($element);

      return $self->open_element($format_element, ${attribute}).
        $self->_index_entry($element).$self->close_element($format_element)
         .${end_line};
    } elsif (exists($misc_commands{$element->{'cmdname'}})) {
      my $cmdname = $element->{'cmdname'};
      my $type = $misc_commands{$cmdname};
      if ($type eq 'text') {
        return '' if ($cmdname eq 'end');
        my $attribute;
        if ($misc_command_line_attributes{$cmdname}) {
          if ($element->{'extra'} and defined($element->{'extra'}->{'text_arg'})) {
            push @$attribute, ($misc_command_line_attributes{$cmdname},
                  $element->{'extra'}->{'text_arg'});
          }
        }
        my ($arg, $end_line) = $self->_convert_argument_and_end_line($element);
        push @$attribute, _leading_spaces_before_argument($element);
        return $self->open_element($cmdname, $attribute).$arg
                .$self->close_element($cmdname).${end_line};
      } elsif ($type eq 'line') {
        if ($cmdname eq 'node') {
          my $nodename;
          if (defined($element->{'extra'}->{'normalized'})) {
            $nodename = $element->{'extra'}->{'normalized'};
          } else {
            $nodename = '';
          }
          # FIXME avoid protection, here?
          $result .= $self->open_element('node', ['name', $nodename,
                                         _leading_spaces_before_argument($element)]);
          push @{$self->{'document_context'}->[-1]->{'monospace'}}, 1;
          $result .= $self->open_element('nodename',
            [$self->_trailing_spaces_arg($element->{'args'}->[0])])
             .$self->_convert({'contents' => $element->{'extra'}->{'node_content'}})
             .$self->close_element('nodename');
          # first arg is the node name.
          my $direction_index = 1;
          my $pending_empty_directions = '';
          foreach my $direction(@node_directions) {
            my $format_element = 'node'.lc($direction);
            if ($element->{'structure'}->{'node_'.lc($direction)}) {
              my $node_direction = $element->{'structure'}->{'node_'.lc($direction)};
              my $node_name = '';
              my $attribute = [];
              if (! defined($element->{'extra'}->{'nodes_manuals'}->[$direction_index])) {
                push @$attribute, ('automatic', 'on');
              }
              if ($element->{'args'}->[$direction_index]) {
                push @$attribute, $self->_leading_trailing_spaces_arg(
                                 $element->{'args'}->[$direction_index]);
              }
              if ($node_direction->{'extra'}->{'manual_content'}) {
                $node_name .= $self->_convert({
                             'contents' => [{'text' => '('},
                             @{$node_direction->{'extra'}->{'manual_content'}},
                                          {'text' => ')'}]});
              }
              if ($node_direction->{'extra'}->{'node_content'}) {
                $node_name .= Texinfo::Common::normalize_top_node_name($self->_convert({
                  'contents' => $node_direction->{'extra'}->{'node_content'}}));
              }
              $result .= "$pending_empty_directions".
                $self->open_element($format_element, ${attribute}).$node_name.
                $self->close_element($format_element);
              $pending_empty_directions = '';
            } else {
              if ($element->{'args'}->[$direction_index]) {
                $pending_empty_directions .= $self->open_element($format_element,
                    [$self->_leading_trailing_spaces_arg(
                                 $element->{'args'}->[$direction_index])])
                            .$self->close_element($format_element);
              }
            }
            $direction_index++;
          }
          if (! $self->get_conf('USE_NODES')) {
            $result .= $self->close_element('node');
          }
          $result .= $self->format_comment_or_return_end_line($element);
          pop @{$self->{'document_context'}->[-1]->{'monospace'}};
        } elsif ($Texinfo::Common::root_commands{$cmdname}) {
          my $attribute = [_leading_spaces_before_argument($element)];
          my $level_adjusted_cmdname
            = Texinfo::Structuring::section_level_adjusted_command_name($element);
          if ($level_adjusted_cmdname ne $cmdname) {
            unshift @$attribute, ('originalcommand', $cmdname);
          }
          $result .= $self->open_element($level_adjusted_cmdname, $attribute);
          my $closed_section_element;
          if ($self->get_conf('USE_NODES')) {
            $closed_section_element = $self->close_element($level_adjusted_cmdname);
          } else {
            $closed_section_element = '';
          }

          if ($element->{'args'} and $element->{'args'}->[0]) {
            my ($arg, $end_line) = $self->_convert_argument_and_end_line($element);
            $result .= $self->open_element('sectiontitle').$arg
                      .$self->close_element('sectiontitle')
                      .$closed_section_element.$end_line;
          } else {
            $result .= $closed_section_element;
          }
        } else {
          my $attribute = [_leading_spaces_before_argument($element)];
          if ($cmdname eq 'listoffloats' and $element->{'extra'}
              and $element->{'extra'}->{'type'}
              and defined($element->{'extra'}->{'type'}->{'normalized'})) {
            unshift @$attribute, ('type', $element->{'extra'}->{'type'}->{'normalized'});
          }
          my ($arg, $end_line) = $self->_convert_argument_and_end_line($element);
          return $self->open_element($cmdname, ${attribute}).$arg
               .$self->close_element($cmdname).$end_line;
        }
      } elsif ($type eq 'skipline') {
        # the command associated with an element is closed at the end of the
        # element. @bye is withing the element, but we want it to appear after
        # the command closing.  So we delay the output of @bye, and store it.
        if ($cmdname eq 'bye' and $element->{'structure'}->{'associated_unit'}
            and defined($element->{'structure'}->{'associated_unit'}->{'extra'}->{'unit_command'})) {
          $self->{'pending_bye'} = $self->open_element($cmdname)
                    .$self->close_element($cmdname)."\n";
          return '';
        }
        my $attribute = [];
        if ($element->{'args'} and $element->{'args'}->[0]
            and defined($element->{'args'}->[0]->{'text'})) {
          my $line = $element->{'args'}->[0]->{'text'};
          chomp($line);
          $attribute = ['line', $line]
             if ($line ne '');
        }
        return $self->open_element($cmdname, $attribute)
                 .$self->close_element($cmdname)."\n";
      } elsif ($type eq 'noarg' or $type eq 'skipspace') {
        my $spaces = '';
        $spaces = $element->{'extra'}->{'spaces_after_command'}
          if ($element->{'extra'} and $element->{'extra'}->{'spaces_after_command'}
              and $element->{'extra'}->{'spaces_after_command'} ne '');
        return $self->open_element($cmdname)
                .$self->close_element($cmdname).$spaces;
      } elsif ($type eq 'special') {
        if ($cmdname eq 'clear' or $cmdname eq 'set') {
          my $attribute = [];
          if ($element->{'args'} and $element->{'args'}->[0]
              and defined($element->{'args'}->[0]->{'text'})) {
            push @$attribute, ('name', $element->{'args'}->[0]->{'text'});
          }
          my $value = '';
          if ($cmdname eq 'set' and $element->{'args'} and $element->{'args'}->[1]
              and defined($element->{'args'}->[1]->{'text'})) {
            $value = $self->protect_text($element->{'args'}->[1]->{'text'});
          }
          push @$attribute, $self->_arg_line($element);
          return $self->open_element($cmdname, $attribute)
                         .$value.$self->close_element($cmdname)."\n";
        } elsif ($cmdname eq 'clickstyle') {
          my $attribute = [$self->_arg_line($element)];
          my $value = '';
          if ($element->{'args'} and $element->{'args'}->[0]
              and defined($element->{'args'}->[0]->{'text'})) {
            my $click_command = $element->{'args'}->[0]->{'text'};
            $click_command =~ s/^\@//;
            unshift @$attribute, ('command', $click_command);
            $value = $self->protect_text($element->{'args'}->[0]->{'text'});
          };
          return $self->open_element($cmdname, $attribute)
                         .$value.$self->close_element($cmdname)."\n";
        } else {
          # should only be unmacro
          my $attribute = [$self->_arg_line($element)];
          if ($element->{'args'} and $element->{'args'}->[0]
              and defined($element->{'args'}->[0]->{'text'})) {
            unshift @$attribute, ('name', $element->{'args'}->[0]->{'text'});
          }
          return $self->open_element($cmdname, $attribute)
                    .$self->close_element($cmdname)."\n";
        }
      } elsif ($type eq 'lineraw') {
        if ($cmdname eq 'c' or $cmdname eq 'comment') {
          return $self->format_comment(" $cmdname".$element->{'args'}->[0]->{'text'})
        } else {
          my $value = '';
          if ($element->{'args'} and $element->{'args'}->[0]
              and defined($element->{'args'}->[0]->{'text'})) {
            $value = $self->protect_text($element->{'args'}->[0]->{'text'});
          }
          chomp ($value);
          return $self->open_element($cmdname).$value
                    .$self->close_element($cmdname)."\n";
        }
      } else {
        print STDERR "BUG: unknown misc_command style $type\n" if ($type !~ /^\d$/);
        my $args_attributes;
        if ($misc_command_numbered_arguments_attributes{$cmdname}) {
          $args_attributes = $misc_command_numbered_arguments_attributes{$cmdname};
        } else {
          $args_attributes = ['value'];
        }
        my $attribute = [];
        my $arg_index = 0;
        if (defined($element->{'extra'})
            and defined($element->{'extra'}->{'misc_args'})) {
          foreach my $arg_attribute (@{$args_attributes}) {
            if (defined ($element->{'extra'}->{'misc_args'}->[$arg_index])) {
              push @$attribute, ( $arg_attribute,
                        $element->{'extra'}->{'misc_args'}->[$arg_index]);
            }
            $arg_index++;
          }
        }
        my $end_line = $self->format_comment_or_return_end_line($element);
        # not sure if it may happen
        $end_line = "\n" if ($end_line eq '');
        push @$attribute, $self->_texinfo_line($element);
        return $self->open_element($cmdname, $attribute)
                    .$self->close_element($cmdname).$end_line;
      }
    } elsif ($element->{'type'}
             and $element->{'type'} eq 'definfoenclose_command') {
      my $in_monospace_not_normal;
      if (defined($default_args_code_style{$element->{'cmdname'}})
          and $default_args_code_style{$element->{'cmdname'}}->[0]) {
        $in_monospace_not_normal = 1;
      } elsif ($regular_font_style_commands{$element->{'cmdname'}}) {
        $in_monospace_not_normal = 0;
      }
      push @{$self->{'document_context'}->[-1]->{'monospace'}},
        $in_monospace_not_normal
          if (defined($in_monospace_not_normal));
      my $arg = $self->_convert($element->{'args'}->[0]);
      pop @{$self->{'document_context'}->[-1]->{'monospace'}}
        if (defined($in_monospace_not_normal));
      my $command_result = $self->open_element('infoenclose', ['command', $element->{'cmdname'},
                                        $self->_infoenclose_attribute($element)])
                 .$arg.$self->close_element('infoenclose');
      return $command_result;
    } elsif ($element->{'args'}
             and exists($Texinfo::Common::brace_commands{$element->{'cmdname'}})) {

      if ($Texinfo::Common::inline_format_commands{$element->{'cmdname'}}
          and $element->{'extra'} and $element->{'extra'}->{'format'}
          and $self->{'expanded_formats_hash'}->{$element->{'extra'}->{'format'}}) {
        if ($element->{'cmdname'} eq 'inlineraw') {
          push @{$self->{'document_context'}}, {'monospace' => [0]};
          $self->{'document_context'}->[-1]->{'raw'} = 1;
        }
        my $command_result = '';
        if (scalar (@{$element->{'args'}}) == 2
              and defined($element->{'args'}->[-1])
              and @{$element->{'args'}->[-1]->{'contents'}}) {
          $command_result = $self->_convert({'contents'
                        => $element->{'args'}->[-1]->{'contents'}});
        }
        if ($element->{'cmdname'} eq 'inlineraw') {
          pop @{$self->{'document_context'}};
        }
        return $command_result;
      }


      # this is used for commands without args, or associated to the
      # first argument
      my $attribute = [];
      if ($element->{'cmdname'} eq 'verb') {
        push @$attribute, ('delimiter', $element->{'extra'}->{'delimiter'});
      } elsif ($element->{'cmdname'} eq 'anchor') {
        my $anchor_name;
        if (defined($element->{'extra'}->{'normalized'})) {
          $anchor_name = $element->{'extra'}->{'normalized'};
        } else {
          $anchor_name = '';
        }
        push @$attribute, ('name', $anchor_name);
      }

      my @format_elements;
      my $main_cmdname;
      if ($commands_args_elements{$element->{'cmdname'}}) {
        # command with arguments, format the arguments using their specific
        # elements
        @format_elements = @{$commands_args_elements{$element->{'cmdname'}}};
        $main_cmdname = $element->{'cmdname'};
      } else {
        # command with only one argument, the command itself is used as
        # element for the first argument
        @format_elements = ($element->{'cmdname'});
        # leading spaces are directly associated to the @-command for @-command
        # in context_brace_commands
        push @$attribute, _leading_spaces_before_argument($element);
      }

      if ($Texinfo::Common::context_brace_commands{$element->{'cmdname'}}) {
        push @{$self->{'document_context'}}, {'monospace' => [0]};
      }
      my $args_or_one_arg_cmd = '';
      my $arg_index = 0;
      foreach my $format_element (@format_elements) {
        if (defined($element->{'args'}->[$arg_index])) {
          # Leading spaces are gathered here except for context_brace_commands
          # (gathered just above).
          push @$attribute,
            _leading_spaces_before_argument($element->{'args'}->[$arg_index]);
          my $in_monospace_not_normal;
          if (defined($default_args_code_style{$element->{'cmdname'}})
              and $default_args_code_style{$element->{'cmdname'}}->[$arg_index]) {
            $in_monospace_not_normal = 1;
          } elsif ($regular_font_style_commands{$element->{'cmdname'}}) {
            $in_monospace_not_normal = 0;
          }
          push @{$self->{'document_context'}->[-1]->{'monospace'}},
            $in_monospace_not_normal
              if (defined($in_monospace_not_normal));
          my $arg = $self->_convert($element->{'args'}->[$arg_index]);
          pop @{$self->{'document_context'}->[-1]->{'monospace'}}
            if (defined($in_monospace_not_normal));

          if ($element->{'args'}->[$arg_index]->{'extra'}
              and $element->{'args'}->[$arg_index]->{'extra'}->{'spaces_after_argument'}) {
            $arg .= $element->{'args'}->[$arg_index]
                   ->{'extra'}->{'spaces_after_argument'};
          }

          if (!defined($main_cmdname) or $arg ne '' or scalar(@$attribute) > 0) {
            $args_or_one_arg_cmd .=
                 $self->open_element($format_element, $attribute).$arg
                      .$self->close_element($format_element);
          }
          $attribute = [];
        } else {
          last;
        }
        $arg_index++;
      }
      if ($Texinfo::Common::context_brace_commands{$element->{'cmdname'}}) {
        pop @{$self->{'document_context'}};
      }
      if (not defined($main_cmdname)) {
        # one argument @-command
        return $args_or_one_arg_cmd;
      }
      # This is for the main command
      $attribute = [];
      if ($element->{'cmdname'} eq 'image') {
        if (Texinfo::Common::element_is_inline($element)) {
          push @$attribute, ('where', 'inline');
        }
      } elsif ($Texinfo::Common::ref_commands{$element->{'cmdname'}}) {
        if ($element->{'args'}) {
          my $normalized;
          if ($element->{'extra'}->{'node_argument'}
              and $element->{'extra'}->{'node_argument'}->{'node_content'}) {
            my $normalized;
            if (defined($element->{'extra'}->{'node_argument'}->{'normalized'})) {
              $normalized = $element->{'extra'}->{'node_argument'}->{'normalized'};
            } else {
              $normalized = Texinfo::Convert::NodeNameNormalization::normalize_node( {'contents' => $element->{'extra'}->{'node_argument'}->{'node_content'} } );
            }
            if ($normalized) {
              push @$attribute, ('label', $normalized);
            }
          }
          my $manual;
          my $manual_arg_index = 3;
          if ($element->{'cmdname'} eq 'inforef') {
            $manual_arg_index = 2;
          }
          if (defined($element->{'args'}->[$manual_arg_index])
              and @{$element->{'args'}->[$manual_arg_index]->{'contents'}}) {
            $manual = Texinfo::Convert::Text::convert_to_text({'contents'
                     => $element->{'args'}->[$manual_arg_index]->{'contents'}},
                 {'code' => 1,
                  Texinfo::Convert::Text::copy_options_for_convert_text($self)});
          }
          if (!defined($manual) and $element->{'extra'}->{'node_argument'}
              and $element->{'extra'}->{'node_argument'}->{'manual_content'}) {
            $manual = Texinfo::Convert::Text::convert_to_text({'contents'
                   => $element->{'extra'}->{'node_argument'}->{'manual_content'}},
                 {'code' => 1,
                  Texinfo::Convert::Text::copy_options_for_convert_text($self)});
          }
          if (defined($manual)) {
            my $manual_base = $manual;
            $manual_base =~ s/\.[^\.]*$//;
            $manual_base =~ s/^.*\///;
            
            push @$attribute, ('manual', $manual_base)
                  if ($manual_base ne '');
          }
        }
      }
      # this never happens as there is no @-commands with more than one
      # argument that is also a context_brace_commands.  Leading spaces
      # after the command brace opening are only associated with command
      # if a context_brace_commands, therefore they are with the first argument.
      push @$attribute, _leading_spaces_before_argument($element);
      return $self->open_element($main_cmdname, $attribute).$args_or_one_arg_cmd
               .$self->close_element($main_cmdname);
    } elsif (exists($Texinfo::Common::block_commands{$element->{'cmdname'}})) {
      if ($self->{'context_block_commands'}->{$element->{'cmdname'}}) {
        push @{$self->{'document_context'}}, {'monospace' => [0]};
      }
      my $prepended_elements = '';
      my $attribute = [];
      $self->{'itemize_line'} = 1 if ($element->{'cmdname'} eq 'itemize');
      if ($element->{'extra'} and $element->{'extra'}->{'command_as_argument'}) {
        my $command_as_arg = $element->{'extra'}->{'command_as_argument'};
        push @$attribute,
         ('commandarg', $command_as_arg->{'cmdname'},
             $self->_infoenclose_attribute($command_as_arg));
      } elsif ($element->{'extra'}
               and $element->{'extra'}->{'enumerate_specification'}) {
        push @$attribute,('first', $element->{'extra'}->{'enumerate_specification'});
      } elsif ($element->{'cmdname'} eq 'float' and $element->{'extra'}) {
        if (defined($element->{'extra'}->{'node_content'})) {
          my $normalized =
            Texinfo::Convert::NodeNameNormalization::normalize_node (
                   { 'contents' => $element->{'extra'}->{'node_content'} });
          push @$attribute, ('name', $normalized);
        }
        if ($element->{'extra'}->{'type'} and
            defined($element->{'extra'}->{'type'}->{'normalized'})) {
          push @$attribute, ('type', $element->{'extra'}->{'type'}->{'normalized'});
        }
        if (defined($element->{'structure'}->{'float_number'})) {
          push @$attribute, ('number', $element->{'structure'}->{'float_number'});
        }
      } elsif ($element->{'cmdname'} eq 'verbatim') {
        push @$attribute, ('xml:space', 'preserve');
      } elsif ($element->{'cmdname'} eq 'macro'
               or $element->{'cmdname'} eq 'rmacro') {
        if (defined($element->{'args'})) {
          my @args = @{$element->{'args'}};
          my $name_arg = shift @args;
          if (defined($name_arg) and defined($name_arg->{'text'})) {
            push @$attribute, ('name', $name_arg->{'text'});
          }
          
          while (@args) {
            my $formal_arg = shift @args;
            $prepended_elements .= $self->open_element('formalarg')
                .$self->protect_text($formal_arg->{'text'})
                .$self->close_element('formalarg');
          }
        }
        push @$attribute, $self->_arg_line($element);
      }
      if ($self->{'expanded_formats_hash'}->{$element->{'cmdname'}}) {
        $self->{'document_context'}->[-1]->{'raw'} = 1;
      } else {
        my $end_command = $element->{'extra'}->{'end_command'};
        my $end_command_space = [_leading_spaces_before_argument($end_command)];
        if (scalar(@$end_command_space)) {
          $end_command_space->[0] = 'endspaces';
        }
        $result .= $self->open_element($element->{'cmdname'}, [@$attribute,
                       _leading_spaces_before_argument($element), @$end_command_space])
                      .${prepended_elements};
        if ($element->{'args'}) {
          my $end_line = '';
          if ($commands_args_elements{$element->{'cmdname'}}) {
            my $arg_index = 0;
            my $variadic_element = undef;
            while (defined($commands_args_elements{$element->{'cmdname'}}->[$arg_index])
                   or defined($variadic_element)) {
              my $format_element;
              if (defined($variadic_element)) {
                $format_element = $variadic_element;
              } else {
                if ($commands_args_elements{$element->{'cmdname'}}->[$arg_index] eq '*') {
                  $variadic_element = $commands_args_elements{$element->{'cmdname'}}->[$arg_index-1];
                  $format_element = $variadic_element;
                } else {
                  $format_element = $commands_args_elements{$element->{'cmdname'}}->[$arg_index];
                }
              }
              if (defined($element->{'args'}->[$arg_index])) {
                my $in_code;
                 $in_code = 1
                  if (defined($default_args_code_style{$element->{'cmdname'}})
                    and $default_args_code_style{$element->{'cmdname'}}->[$arg_index]);
                push @{$self->{'document_context'}->[-1]->{'monospace'}}, 1
                  if ($in_code);
                my $arg;
                if ($arg_index+1 eq scalar(@{$element->{'args'}})) {
                  # last argument
                  ($arg, $end_line)
                    = $self->_convert_argument_and_end_line($element);
                } else {
                  $arg = $self->_convert($element->{'args'}->[$arg_index]);
                }
                my $spaces = [];
                if ($arg_index != 0) {
                  push @$spaces, _leading_spaces_before_argument(
                                              $element->{'args'}->[$arg_index]);
                }
                if ($arg ne '' or scalar(@$spaces)) {
                  $result .= $self->open_element($format_element, $spaces).$arg
                           .$self->close_element($format_element);
                }
                pop @{$self->{'document_context'}->[-1]->{'monospace'}}
                  if ($in_code);
              } else {
                last;
              }
              $arg_index++;
            }
            $result .= $end_line;
          } else {

            # in that case the end of line is in the columnfractions line
            # or in the columnprototypes.
            if ($element->{'cmdname'} eq 'multitable') {
              if (not $element->{'extra'}->{'columnfractions'}) {
                # Like 'prototypes' extra value, but keeping spaces information
                my @prototype_line;
                if (defined $element->{'args'}[0]
                    and defined $element->{'args'}[0]->{'type'}
                    and $element->{'args'}[0]->{'type'} eq 'block_line_arg') {
                  foreach my $content (@{$element->{'args'}[0]{'contents'}}) {
                    if ($content->{'type'} and $content->{'type'} eq 'bracketed') {
                      push @prototype_line, $content;
                    } elsif ($content->{'text'}) {
                      # The regexp breaks between characters, with a non space
                      # followed by a space or a space followed by non space.
                      # It is like \b, but for \s \S, and not \w \W.
                      foreach my $prototype_or_space (
                          split /(?<=\S)(?=\s)|(?=\S)(?<=\s)/, $content->{'text'}) {
                        if ($prototype_or_space =~ /\S/) {
                          push @prototype_line, {'text' => $prototype_or_space,
                            'type' => 'row_prototype' };
                        } elsif ($prototype_or_space =~ /\s/) {
                          push @prototype_line, {'text' => $prototype_or_space,
                            'type' => 'prototype_space' };
                        }
                      }
                    } else {
                      # FIXME could this happen?  Should be a debug message?
                      if (!$content->{'cmdname'}) {
                      } elsif ($content->{'cmdname'} eq 'c'
                          or $content->{'cmdname'} eq 'comment') {
                      } else {
                        push @prototype_line, $content;
                      }
                    }
                  }
                  $element->{'extra'}->{'prototypes_line'} = \@prototype_line;
                }
              }

              if ($element->{'extra'}
                    and $element->{'extra'}->{'prototypes_line'}) {
                $result .= $self->open_element('columnprototypes');
                my $first_proto = 1;
                foreach my $prototype (@{$element->{'extra'}->{'prototypes_line'}}) {
                  if ($prototype->{'text'} and $prototype->{'text'} !~ /\S/) {
                    if (!$first_proto) {
                      my $spaces = $prototype->{'text'};
                      chomp($spaces);
                      $result .= $spaces;
                    }
                  } else {
                    my $attribute = [];
                    if ($prototype->{'type'}
                        and $prototype->{'type'} eq 'bracketed') {
                      push @$attribute, ('bracketed', 'on');
                      push @$attribute,
                                  _leading_spaces_before_argument($prototype);
                    }
                    $result .= $self->open_element('columnprototype',
                                                   $attribute)
                           .$self->_convert($prototype)
                           .$self->close_element('columnprototype');
                  }
                  $first_proto = 0;
                }
                $result .= $self->close_element('columnprototypes');
                $result .= $self->format_comment_or_return_end_line($element);
              } elsif ($element->{'extra'}
                         and $element->{'extra'}->{'columnfractions'}) {
                my $cmd;
                foreach my $content (@{$element->{'args'}->[0]->{'contents'}}) {
                  if ($content->{'cmdname'}
                      and $content->{'cmdname'} eq 'columnfractions') {
                    $cmd = $content;
                    last;
                  }
                }
                my $attribute = [$self->_texinfo_line($cmd)];
                $result .= $self->open_element('columnfractions', $attribute);
                foreach my $fraction (@{$element->{'extra'}->{'columnfractions'}
                                             ->{'extra'}->{'misc_args'}}) {
                  $result .= $self->open_element('columnfraction',
                                                ['value', $fraction])
                             .$self->close_element('columnfraction');
                }
                $result .= $self->close_element('columnfractions');
                $result .= $self->format_comment_or_return_end_line($cmd);
              } else { # bogus multitable
                $result .= "\n";
              }
            } else {
              # get end of lines from @*table and block @-commands with
              # no argument that have a bogus argument.
              $result .= _end_line_spaces($element);
              $result .= $self->format_comment_or_return_end_line($element);
            }
          }
        }
        unshift @close_format_elements, $element->{'cmdname'};
      }
      delete $self->{'itemize_line'} if ($self->{'itemize_line'});
    }
  }
  if ($element->{'type'}) {
    if (defined($type_elements{$element->{'type'}})) {
      my $attribute = [];
      if ($element->{'type'} eq 'preformatted') {
        push @$attribute, ('xml:space', 'preserve');
      } elsif ($element->{'type'} eq 'menu_entry') {
        push @$attribute, ('leadingtext',
                           $self->_convert($element->{'args'}->[0]));
      } elsif (($element->{'type'} eq 'menu_entry_node'
                or $element->{'type'} eq 'menu_entry_name')
               and $self->{'pending_menu_entry_separator'}) {
        push @$attribute, ('separator',
               $self->_convert($self->{'pending_menu_entry_separator'}));
        delete $self->{'pending_menu_entry_separator'};
      }
      $result .= $self->open_element($type_elements{$element->{'type'}},
                                     $attribute);
    }
    if ($element->{'type'} eq 'def_line') {
      if ($element->{'cmdname'}) {
        $result .= $self->open_element($element->{'cmdname'},
                            [_leading_spaces_before_argument($element)]);
      }
      $result .= $self->open_element('definitionterm');
      $result .= $self->_index_entry($element);
      push @{$self->{'document_context'}->[-1]->{'monospace'}}, 1;
      if ($element->{'args'} and @{$element->{'args'}}
          and $element->{'args'}->[0]->{'contents'}) {
        my $main_command;
        my $alias;
        if ($Texinfo::Common::def_aliases{$element->{'extra'}->{'def_command'}}) {
          $main_command
            = $Texinfo::Common::def_aliases{$element->{'extra'}->{'def_command'}};
          $alias = 1;
        } else {
          $main_command = $element->{'extra'}->{'def_command'};
          $alias = 0;
        }
        foreach my $arg (@{$element->{'args'}->[0]->{'contents'}}) {
          next if $arg->{'type'}
                   and ($arg->{'type'} eq 'empty_spaces_after_command'
                         or $arg->{'type'} eq 'empty_line_after_command');
          my $type = $arg->{'extra'}->{'def_role'};
          next if !$type and $arg->{'type'} eq 'spaces';
          my $content = $self->_convert($arg);
          if ($type eq 'spaces') {
            $content =~ s/\n$//;
            $result .= $content;
          } else {
            my $attribute = [];
            if ($type eq 'category' and $alias) {
              push @$attribute, ('automatic', 'on');
            }
            my $format_element;
            if ($type eq 'name') {
              $format_element = $defcommand_name_type{$main_command};
            } elsif ($type eq 'arg') {
              $format_element = 'param';
            } elsif ($type eq 'typearg') {
              $format_element = 'paramtype';
            } else {
              $format_element = $type;
            }
            if ($arg->{'type'}
                and ($arg->{'type'} eq 'bracketed_def_content'
                  or ($arg->{'type'} eq 'bracketed_inserted'))) {
              push @$attribute, ('bracketed', 'on');
              push @$attribute, _leading_spaces_before_argument($arg);
            }
            $result .= $self->open_element("def$format_element", $attribute).$content
                      .$self->close_element("def$format_element");
          }
        }
      }
      pop @{$self->{'document_context'}->[-1]->{'monospace'}};
      $result .= $self->close_element('definitionterm');
      if ($element->{'cmdname'}) {
        $result .= $self->close_element($element->{'cmdname'});
      }
      chomp ($result);
      $result .= "\n";
    }
  }
  if ($element->{'contents'}) {
    my $in_code;
    if ($element->{'cmdname'}
        and ($Texinfo::Common::preformatted_code_commands{$element->{'cmdname'}}
             or $Texinfo::Common::math_commands{$element->{'cmdname'}})) {
      $in_code = 1;
    }
    push @{$self->{'document_context'}->[-1]->{'monospace'}}, 1
      if ($in_code);
    if (ref($element->{'contents'}) ne 'ARRAY') {
      cluck "contents not an array($element->{'contents'}).";
    }
    foreach my $content (@{$element->{'contents'}}) {
      $result .= $self->_convert($content);
    }
    pop @{$self->{'document_context'}->[-1]->{'monospace'}}
      if ($in_code);
  }
  my $arg_nr = -1;
  if ($element->{'type'} and $element->{'type'} eq 'menu_entry') {
    foreach my $arg (@{$element->{'args'}}) {
      $arg_nr++;
      # menu_entry_leading_text is added as attribute leadingtext of menu_entry
      # menu_entry_separator is recorded here and then added ass attribute
      # separator
      next if ($arg->{'type'} eq 'menu_entry_leading_text'
               or $arg->{'type'} eq 'menu_entry_separator');
      if ($element->{'args'}->[$arg_nr +1]
          and $element->{'args'}->[$arg_nr +1]->{'type'}
          and $element->{'args'}->[$arg_nr +1]->{'type'} eq 'menu_entry_separator') {
        $self->{'pending_menu_entry_separator'} = $element->{'args'}->[$arg_nr +1];
      }
      my $in_code;
      if ($arg->{'type'} eq 'menu_entry_node') {
        $in_code = 1;
      }
      push @{$self->{'document_context'}->[-1]->{'monospace'}}, 1
        if ($in_code);
      $result .= $self->_convert($arg);
      pop @{$self->{'document_context'}->[-1]->{'monospace'}}
        if ($in_code);
    }
  }
  if ($element->{'type'}) {
    if (defined($type_elements{$element->{'type'}})) {
      $result .= $self->close_element($type_elements{$element->{'type'}});
    }
  }
  $result = '{'.$result.'}'
     if ($element->{'type'} and $element->{'type'} eq 'bracketed'
         and (!$element->{'parent'}->{'type'} or
              ($element->{'parent'}->{'type'} ne 'block_line_arg'
               and $element->{'parent'}->{'type'} ne 'line_arg')));
  foreach my $format_element (@close_format_elements) {
    $result .= $self->close_element($format_element);
  }
  if ($element->{'cmdname'}
      and exists($Texinfo::Common::block_commands{$element->{'cmdname'}})) {
    if ($self->{'expanded_formats_hash'}->{$element->{'cmdname'}}) {
    } else {
      my $end_command = $element->{'extra'}->{'end_command'};
      if ($end_command) {
        $result .= _end_line_spaces($end_command);
        $result .= $self->format_comment_or_return_end_line($end_command);
      }
    }
    if ($self->{'context_block_commands'}->{$element->{'cmdname'}}) {
      pop @{$self->{'document_context'}};
    }
  # The command is closed either when the corresponding tree element
  # is done, and the command is not associated to an element, or when
  # the element is closed.
  } elsif ((($element->{'type'} and $element->{'type'} eq 'unit'
             and $element->{'extra'} and $element->{'extra'}->{'unit_command'}
             and !($element->{'extra'}->{'unit_command'}->{'cmdname'}
                   and $element->{'extra'}->{'unit_command'}->{'cmdname'} eq 'node'))
            or ($element->{'cmdname'}
                and $Texinfo::Common::root_commands{$element->{'cmdname'}}
                and $element->{'cmdname'} ne 'node'
                and !($element->{'structure'}->{'associated_unit'}
                     and $element->{'structure'}->{'associated_unit'}->{'extra'}
                     and $element->{'structure'}->{'associated_unit'}->{'extra'}->{'unit_command'}
                     and $element->{'structure'}->{'associated_unit'}->{'extra'}->{'unit_command'} eq $element)))
           and !$self->get_conf('USE_NODES')) {
    if ($element->{'type'} and $element->{'type'} eq 'unit') {
      $element = $element->{'extra'}->{'unit_command'};
    }
    my $level_adjusted_cmdname
       = Texinfo::Structuring::section_level_adjusted_command_name($element);
    if (!($element->{'structure'}->{'section_childs'}
          and scalar(@{$element->{'structure'}->{'section_childs'}}))
        or $level_adjusted_cmdname eq 'top') {
      $result .= $self->close_element($level_adjusted_cmdname)."\n";
      my $current = $element;
      while ($current->{'structure'}->{'section_up'}
             # the most up element is a virtual sectioning root element, this
             # condition avoids getting into it
             and $current->{'structure'}->{'section_up'}->{'cmdname'}
             and !$current->{'structure'}->{'section_next'}
             and Texinfo::Structuring::section_level_adjusted_command_name($current->{'structure'}->{'section_up'}) ne 'top') {
        $current = $current->{'structure'}->{'section_up'};
        my $level_adjusted_current_cmdname
            = Texinfo::Structuring::section_level_adjusted_command_name($current);
        $result .= $self->close_element($level_adjusted_current_cmdname) ."\n";
      }
    }
    if ($self->{'pending_bye'}) {
      $result .= $self->{'pending_bye'};
      delete $self->{'pending_bye'};
    }
  } elsif ((($element->{'type'} and $element->{'type'} eq 'unit'
             and $element->{'extra'} and $element->{'extra'}->{'unit_command'}
             and $element->{'extra'}->{'unit_command'}->{'cmdname'}
             and $element->{'extra'}->{'unit_command'}->{'cmdname'} eq 'node')
            or ($element->{'cmdname'}
                and $element->{'cmdname'} eq 'node'
                and !($element->{'structure'}->{'associated_unit'}
                     and $element->{'structure'}->{'associated_unit'}->{'extra'}
                     and $element->{'structure'}->{'associated_unit'}->{'extra'}->{'unit_command'}
                     and $element->{'structure'}->{'associated_unit'}->{'extra'}->{'unit_command'} eq $element)))
           and $self->get_conf('USE_NODES')) {
    $result .= $self->close_element('node');
    
    if ($self->{'pending_bye'}) {
      $result .= $self->{'pending_bye'};
      delete $self->{'pending_bye'};
    }
  }
  return $result;
}

1;

__END__
# Automatically generated from maintain/template.pod

=head1 NAME

Texinfo::Convert::TexinfoXML - Convert Texinfo tree to TexinfoXML

=head1 SYNOPSIS

  my $converter
    = Texinfo::Convert::TexinfoXML->converter({'parser' => $parser});

  $converter->output($tree);
  $converter->convert($tree);
  $converter->convert_tree($tree);

=head1 DESCRIPTION

Texinfo::Convert::TexinfoXML converts a Texinfo tree to TexinfoXML.

=head1 METHODS

=over

=item $converter = Texinfo::Convert::TexinfoXML->converter($options)

Initialize converter from Texinfo to TexinfoXML.

The I<$options> hash reference holds options for the converter.  In
this option hash reference a parser object may be associated with the
I<parser> key.  The other options should be configuration options
described in the Texinfo manual.  Those options, when appropriate,
override the document content.  The parser should not be available
directly anymore after getting the associated information.

See L<Texinfo::Convert::Converter> for more informations.

=item $converter->output($tree)

Convert a Texinfo tree I<$tree> and output the result in files as
described in the Texinfo manual.

=item $result = $converter->convert($tree)

Convert a Texinfo tree I<$tree> or tree portion and return
the resulting output.

=item $result = $converter->convert_tree($tree)

Convert a Texinfo tree portion I<$tree> and return the resulting
output.  This function does not try to output a full document but only
portions.  For a full document use C<convert>.

=back

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 Free Software Foundation, Inc.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
