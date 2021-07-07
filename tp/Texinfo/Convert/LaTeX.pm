# LaTeX.pm: output tree as LaTeX
#
# Copyright 2010-2021 Free Software Foundation, Inc.
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

package Texinfo::Convert::LaTeX;

use 5.00405;

# See comment at start of HTML.pm
use if $] >= 5.012, feature => qw(unicode_strings);

use strict;

use Texinfo::Convert::Converter;
use Texinfo::Common;
use Texinfo::Convert::Texinfo;

use Texinfo::Convert::Text;

require Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Texinfo::Convert::Converter);

%EXPORT_TAGS = ( 'all' => [ qw(
  convert
  output
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

@EXPORT = qw(
);

$VERSION = '6.8';

# misc commands that are of use for formatting.
my %formatting_misc_commands = %Texinfo::Convert::Text::formatting_misc_commands;

my $NO_NUMBER_FOOTNOTE_SYMBOL = '*';

my @informative_global_commands = ('paragraphindent', 'firstparagraphindent',
'frenchspacing', 'documentencoding', 'footnotestyle', 'documentlanguage',
'contents', 'shortcontents', 'summarycontents', 'deftypefnnewline');

my %informative_commands;
foreach my $informative_command (@informative_global_commands) {
  $informative_commands{$informative_command} = 1;
}

my %no_brace_commands = %Texinfo::Common::no_brace_commands;
my %brace_no_arg_commands;
foreach my $command (keys (%Texinfo::Common::brace_commands)) {
  $brace_no_arg_commands{$command} = 1 
    if ($Texinfo::Common::brace_commands{$command} eq '0');
}
my %accent_commands = %Texinfo::Common::accent_commands;
my %misc_commands = %Texinfo::Common::misc_commands;
my %sectioning_commands = %Texinfo::Common::sectioning_commands;
my %def_commands = %Texinfo::Common::def_commands;
my %ref_commands = %Texinfo::Common::ref_commands;
my %block_commands = %Texinfo::Common::block_commands;
my %menu_commands = %Texinfo::Common::menu_commands;
my %root_commands = %Texinfo::Common::root_commands;
my %preformatted_commands = %Texinfo::Common::preformatted_commands;
my %math_commands = %Texinfo::Common::math_commands;
my %explained_commands = %Texinfo::Common::explained_commands;
my %inline_format_commands = %Texinfo::Common::inline_format_commands;
my %inline_commands = %Texinfo::Common::inline_commands;
my %item_container_commands = %Texinfo::Common::item_container_commands;
my %raw_commands = %Texinfo::Common::raw_commands;
my %format_raw_commands = %Texinfo::Common::format_raw_commands;
my %code_style_commands       = %Texinfo::Common::code_style_commands;
my %regular_font_style_commands = %Texinfo::Common::regular_font_style_commands;
my %preformatted_code_commands = %Texinfo::Common::preformatted_code_commands;
my %default_index_commands = %Texinfo::Common::default_index_commands;
my %letter_no_arg_commands = %Texinfo::Common::letter_no_arg_commands;

foreach my $kept_command(keys (%informative_commands),
  keys (%default_index_commands),
  'verbatiminclude', 'insertcopying', 
  'listoffloats', 'printindex', ) {
  $formatting_misc_commands{$kept_command} = 1;
}

foreach my $def_command (keys(%def_commands)) {
  $formatting_misc_commands{$def_command} = 1 if ($misc_commands{$def_command});
}

# There are stacks that define the context.
# context:   relevant for alignement of text.  Set in math, footnote, 
#            listoffloats, flush_commands, preformatted_context_commands 
#            (preformatted + menu + verbatim), and raw commands if 
#            on top level.


my %default_preformatted_context_commands = (%preformatted_commands,
                                             %format_raw_commands);
foreach my $preformatted_command ('verbatim', keys(%menu_commands)) {
  $default_preformatted_context_commands{$preformatted_command} = 1;
}

my %block_math_commands;
foreach my $block_math_command (keys(%math_commands)) {
  if (exists($block_commands{$block_math_command})) {
    $block_math_commands{$block_math_command} = 1;
  }
}

my %ignored_misc_commands;
foreach my $misc_command (keys(%misc_commands)) {
  $ignored_misc_commands{$misc_command} = 1 
    unless ($formatting_misc_commands{$misc_command});
}

my %ignored_commands = %ignored_misc_commands;
foreach my $ignored_brace_commands ('caption', 'shortcaption', 
  'hyphenation', 'sortas') {
  $ignored_commands{$ignored_brace_commands} = 1;
}

my %item_indent_format_length = ('enumerate' => 2,
    'itemize' => 3,
    'table' => 0,
    'vtable' => 0,
    'ftable' => 0,
 );

my $indent_length = 5;

my %indented_commands;
foreach my $indented_command (keys(%item_indent_format_length), 
           keys(%preformatted_commands), 'quotation', 'smallquotation', 
           'indentedblock', 'smallindentedblock',
           keys(%def_commands)) {
  $indented_commands{$indented_command} = 1 
    if exists($block_commands{$indented_command});
}

my %default_format_context_commands = %indented_commands;

foreach my $non_indented('format', 'smallformat') {
  delete $indented_commands{$non_indented};
}

# FIXME should keys(%math_brace_commands) be added here?
# How can this be tested?
foreach my $format_context_command (keys(%menu_commands), 'verbatim',
 'flushleft', 'flushright', 'multitable', 'float') {
  $default_format_context_commands{$format_context_command} = 1;
}

my %flush_commands = (
  'flushleft'  => 1,
  'flushright' => 1
);

foreach my $ignored_block_commands ('ignore', 'macro', 'rmacro', 'copying',
  'documentdescription', 'titlepage', 'direntry') {
  $ignored_commands{$ignored_block_commands} = 1;
}

my %punctuation_no_arg_commands;
foreach my $punctuation_command('enddots', 'exclamdown', 'questiondown') {
  $punctuation_no_arg_commands{$punctuation_command} = 1;
}

my %upper_case_commands = (
 'sc' => 1,
 'var' => 1
);

my %ignorable_space_types;
foreach my $type ('empty_line_after_command',
            'empty_spaces_after_command', 'spaces_at_end',
            'empty_spaces_before_argument', 'empty_spaces_before_paragraph',
            'empty_spaces_after_close_brace') {
  $ignorable_space_types{$type} = 1;
}

my %ignored_types;
foreach my $type ('preamble',
            'preamble_before_setfilename') {
  $ignored_types{$type} = 1;
}

my %ignorable_types = %ignorable_space_types;
foreach my $ignored_type(keys(%ignored_types)) {
  $ignorable_types{$ignored_type} = 1;
}

# All those commands run with the text.
my %style_map = (
  'strong' => '*',
  'dfn'    => '"',
  'emph'   => '_',
);

foreach my $command (keys(%style_map)) {
  $style_map{$command} = [$style_map{$command}, $style_map{$command}];
}

# math is special
my @asis_commands = ('asis', 'w', 'b', 'i', 'sc', 't', 'r',
  'slanted', 'sansserif', 'var', 'verb', 'clicksequence',
  'headitemfont', 'dmn');

foreach my $asis_command (@asis_commands) {
  $style_map{$asis_command} = ['', ''];
}

my @quoted_commands = ('cite', 'code', 'command', 'env', 'file', 'kbd',
  'option', 'samp', 'indicateurl');

# %non_quoted_commands_when_nested have no quote when in code command contexts
my %non_quoted_commands_when_nested;

# Quotes are reset in converter_initialize and unicode quotes are used 
# if @documentencoding utf-8 is used.
foreach my $quoted_command (@quoted_commands) {
  $style_map{$quoted_command} = ["'", "'"];
  if ($code_style_commands{$quoted_command}) {
    $non_quoted_commands_when_nested{$quoted_command} = 1;
  }
}
# always quoted even when nested
delete $non_quoted_commands_when_nested{'samp'};
delete $non_quoted_commands_when_nested{'indicateurl'};

$style_map{'key'} = ['<', '>'];
$style_map{'sub'} = ['_{', '}'];
$style_map{'sup'} = ['^{', '}'];

# Commands producing styles that are output in node names and index entries.
my %index_style_commands;
for my $index_style_command ('strong', 'emph', 'sub', 'sup', 'key') {
  $index_style_commands{$index_style_command} = 1;
}


# in those commands, there is no addition of double space after a dot.
# math is special
my %no_punctation_munging_commands;
foreach my $command ('var', 'cite', 'dmn', keys(%code_style_commands)) {
  $no_punctation_munging_commands{$command} = 1;
}

my %defaults = (
  'ENABLE_ENCODING'      => 1,
  'FORMAT_MENU'          => 'nomenu',
  #'EXTENSION'            => 'info',
  'EXTENSION'            => 'txt',
  #'USE_SETFILENAME_EXTENSION' => 1,
  'INFO_SPECIAL_CHARS_WARNING' => 1,

  #'OUTFILE'              => undef,
  'OUTFILE'              => '-',
  'SUBDIR'               => undef,
  'documentlanguage'     => undef,

  'output_format'        => '',
  'USE_NODES'            => 1,
);


my %contents_commands = (
 'contents' => 1,
 'shortcontents' => 1,
 'summarycontents' => 1,
);

sub converter_defaults($$)
{
  return %defaults;
}

sub converter_global_commands($)
{
  return @informative_global_commands;
}

sub converter_initialize($)
{
  my $self = shift;

  $self->{'context'} = [];

  %{$self->{'ignored_types'}} = %ignored_types;
  %{$self->{'ignorable_space_types'}} = %ignorable_space_types;
  %{$self->{'ignored_commands'}} = %ignored_commands;
  # this is dynamic because raw formats may either be full commands if
  # isolated, or simple text if in a paragraph
  %{$self->{'preformatted_context_commands'}} 
     = %default_preformatted_context_commands;

  foreach my $format (keys(%format_raw_commands)) {
    $self->{'ignored_commands'}->{$format} = 1 
       unless ($self->{'expanded_formats_hash'}->{$format});
  }

  %{$self->{'style_map'}} = %style_map;
  $self->{'convert_text_options'} 
      = {Texinfo::Common::_convert_text_options($self)};

  if ($self->get_conf('ENABLE_ENCODING') and $self->get_conf('OUTPUT_ENCODING_NAME')
      and $self->get_conf('OUTPUT_ENCODING_NAME') eq 'utf-8') {
    # cache this to avoid redoing calls to get_conf
    $self->{'to_utf8'} = 1;
    if (!$self->{'extra'}->{'documentencoding'}) {
      # Do not use curly quotes or some other unnecessary non-ASCII characters
      # if '@documentencoding UTF-8' is not given.
      $self->{'convert_text_options'}->{'no_extra_unicode'} = 1;
    } else {
      foreach my $quoted_command (@quoted_commands) {
        # Directed single quotes
        $self->{'style_map'}->{$quoted_command} = ["\x{2018}", "\x{2019}"];
      }
      # Directed double quotes
      $self->{'style_map'}->{'dfn'} = ["\x{201C}", "\x{201D}"];
    }
  }
  if (defined($self->get_conf('OPEN_QUOTE_SYMBOL'))) {
    foreach my $quoted_command (@quoted_commands) {
      $self->{'style_map'}->{$quoted_command}->[0] 
       = $self->get_conf('OPEN_QUOTE_SYMBOL');
    }
  }
  if (defined($self->get_conf('CLOSE_QUOTE_SYMBOL'))) {
    foreach my $quoted_command (@quoted_commands) {
      $self->{'style_map'}->{$quoted_command}->[1] 
       = $self->get_conf('CLOSE_QUOTE_SYMBOL');
    }
  }
  if ($self->get_conf('FILLCOLUMN')) {
    $self->{'fillcolumn'} = $self->get_conf('FILLCOLUMN');
    # else it's already set via the defaults
  }
  # some caching to avoid calling get_conf
  if ($self->get_conf('OUTPUT_PERL_ENCODING')) {
    $self->{'output_perl_encoding'} = $self->get_conf('OUTPUT_PERL_ENCODING');
  } else {
    $self->{'output_perl_encoding'} = '';
  }
  $self->{'enable_encoding'} = $self->get_conf('ENABLE_ENCODING');
  $self->{'output_encoding_name'} = $self->get_conf('OUTPUT_ENCODING_NAME');
  $self->{'debug'} = $self->get_conf('DEBUG');

  return $self;
}


sub _latex_header {
  return
'\documentclass{book}
\usepackage{makeidx}\makeindex
\begin{document}
';
}

sub _latex_footer {
  return
'\end{document}
';
}

sub output($$)
{
  my ($self, $root) = @_;

  my $result = '';

  $result .= $self->_latex_header();
  $result .= $self->_convert($root);
  $result .= $self->_latex_footer();

  print $result;
}



sub convert_line($$;$)
{
  my ($self, $converted, $conf) = @_;
  my $text = $self->_convert($converted);
  $text .= "\n\n";
  return $text;
}

sub convert_unfilled($$;$)
{
  my ($self, $converted, $conf) = @_;
  my $result = $self->_convert($converted);
  $result .= "\n\n";
  return $result;
}





# Protect LaTeX special characters.
sub _protect_text($)
{
  my ($text) = @_;

  # temporarily replace \ with a control character
  $text =~ s/\\/\x08/g;

  # replace the other special characters
  $text =~ s/([#%&{}_\$])/\\$1/g;
  $text =~ s/~/\\~{}/g;
  $text =~ s/\^/\\^{}/g;

  $text =~ s/\x08/\\textbackslash{}/g;

  return $text;
}


sub _contents($$$)
{
  my ($self, $section_root, $contents_or_shortcontents) = @_;

  my $contents = 1 if ($contents_or_shortcontents eq 'contents');
  
  if ($contents) {
    return "\\tableofcontents\\newpage\n";
  }
  return '';
}

sub _printindex($$)
{
  my ($self, $printindex) = @_;
  return '\printindex
';
}

sub _normalize_top_node($)
{
  my $node = shift;
  return Texinfo::Common::normalize_top_node_name($node);
}


sub _node($$)
{
  my $self = shift;
  my $node = shift;

  return '';
}

# no error in plaintext
sub _error_outside_of_any_node($$)
{
  my $self = shift;
  my $root = shift;
}

sub _anchor($$)
{
  my $self = shift;
  my $anchor = shift;

  if (!($self->{'multiple_pass'} or $self->{'in_copying_header'})) {
    $self->_error_outside_of_any_node($anchor);
  }
  return '';
}

my $listoffloat_entry_length = 41;
my $listoffloat_append = '...';

sub _image_text($$$)
{
  my ($self, $root, $basefile) = @_;

  my $txt_file = $self->Texinfo::Common::locate_include_file($basefile.'.txt');
  if (!defined($txt_file)) {
    return undef;
  } else {
    my $filehandle = do { local *FH };
    if (open ($filehandle, $txt_file)) {
      my $enc = $root->{'extra'}->{'input_perl_encoding'};
      binmode($filehandle, ":encoding($enc)")
        if ($enc);
      my $result = '';
      my $max_width = 0;
      while (<$filehandle>) {
        my $width = Texinfo::Convert::Unicode::string_width($_);
        if ($width > $max_width) {
          $max_width = $width;
        }
        $result .= $_;
      }
      # remove last end of line
      chomp ($result);
      if (!close ($filehandle)) {
        $self->document_warn(sprintf(__("error on closing image text file %s: %s"),
                                     $txt_file, $!));
      }
      return ($result, $max_width);
    } else {
      $self->line_warn(sprintf(__("\@image file `%s' unreadable: %s"), 
                               $txt_file, $!), $root->{'line_nr'});
    }
  }
  return undef;
}

sub _image_formatted_text($$$$)
{
  my ($self, $root, $basefile, $text) = @_;

  my $result;
  if (defined($text)) {
    $result = $text;
  } elsif (defined($root->{'args'}->[3])
      and @{$root->{'args'}->[3]->{'contents'}}) {
    $result = '[' .Texinfo::Convert::Text::convert(
      {'contents' => $root->{'args'}->[3]->{'contents'}},
      $self->{'convert_text_options'}) .']';
  } else {
    $self->line_warn(sprintf(__(
                    "could not find \@image file `%s.txt' nor alternate text"),
                             $basefile), $root->{'line_nr'});
    $result = '['.$basefile.']';
  }
  return $result;
}

sub _image($$)
{
  my ($self, $root) = @_;

  if (defined($root->{'args'}->[0])
        and @{$root->{'args'}->[0]->{'contents'}}) {
    my $basefile = Texinfo::Convert::Text::convert(
     {'contents' => $root->{'args'}->[0]->{'contents'}},
     {'code' => 1, %{$self->{'convert_text_options'}}});
    my ($text, $width) = $self->_image_text($root, $basefile);
    my $result = $self->_image_formatted_text($root, $basefile, $text);
    my $lines_count = ($result =~ tr/\n/\n/);
    if (!defined($width)) {
      $width = Texinfo::Convert::Unicode::string_width($result);
    }
    return ($result, $lines_count);
  }
  return ('', 0);
}

sub _get_form_feeds($)
{
  my $form_feeds = shift;
  $form_feeds =~ s/^[^\f]*//;
  $form_feeds =~ s/[^\f]$//;
  return $form_feeds;
}

sub _convert($$);

# Convert the Texinfo tree under $ROOT
sub _convert($$)
{
  my ($self, $root) = @_;

  if (($root->{'type'} and $self->{'ignored_types'}->{$root->{'type'}})
       or ($root->{'cmdname'} 
            and ($self->{'ignored_commands'}->{$root->{'cmdname'}}
                 or ($inline_commands{$root->{'cmdname'}}
                     and $root->{'cmdname'} ne 'inlinefmtifelse'
                     and (($inline_format_commands{$root->{'cmdname'}}
                          and (!$root->{'extra'}->{'format'}
                               or !$self->{'expanded_formats_hash'}->{$root->{'extra'}->{'format'}}))
                         or (!$inline_format_commands{$root->{'cmdname'}}
                             and !defined($root->{'extra'}->{'expand_index'}))))))) {
    return '';
  }
  my $result = '';

  my $type = $root->{'type'};
  my $command = $root->{'cmdname'};

  # in ignorable spaces, keep only form feeds.
  if ($type and $self->{'ignorable_space_types'}->{$type}
      and ($type ne 'empty_spaces_before_paragraph'
           or $self->get_conf('paragraphindent') ne 'asis')) {
    if ($root->{'text'} =~ /\f/) {
      $result = _get_form_feeds($root->{'text'});
    }
    return $result;
  }

  if ($type and ($type eq 'empty_line' 
                           or $type eq 'after_description_line')) {
    return '';
  }

  # process text
  if (defined($root->{'text'})) {
    if (!$type or $type ne 'untranslated') {
      my $result = _protect_text($root->{'text'});
      return $result;
    } else {
      my $tree = $self->gdt($root->{'text'});
      my $converted = _convert($self, $tree);
      return $converted;
    }
  }

  if ($root->{'extra'}) {
    if ($root->{'extra'}->{'missing_argument'} 
             and (!$root->{'contents'} or !@{$root->{'contents'}})) {
      return '';
    }
  }

  my $cell;
  my $preformatted;
  if ($command) {
    my $unknown_command;
    if (defined($no_brace_commands{$command})) {
      if ($command eq ':') {
        $result = "\\\@";
        return '';
      } elsif ($command eq '*') {
        $result = "\\\\\n";
      } elsif ($command eq '.' or $command eq '?' or $command eq '!') {
        $result .=  "\\\@$command";
      } elsif ($command eq ' ' or $command eq "\n" or $command eq "\t") {
        $result .= "\\ {}";
      } else {
        $result .= _protect_text($no_brace_commands{$command});
      }
      return $result;
    } elsif ($command eq 'today') {
      my $today = $self->Texinfo::Common::expand_today();
      unshift @{$self->{'current_contents'}->[-1]}, $today;
    } elsif (exists($brace_no_arg_commands{$command})) {
      my $text;
      
      if ($command eq 'dots' or $command eq 'enddots') {
        # Don't use Unicode ellipsis character.
        $text = '...';
      } else {
        $text = Texinfo::Convert::Text::brace_no_arg_command($root, 
                                           $self->{'convert_text_options'});
      }

      if ($punctuation_no_arg_commands{$command}) {
        $result .= _protect_text($text);
        # should have an end sentence space after @enddots
      } elsif ($command eq 'tie') {
        $result .= '\hbox{';
        $result .= _protect_text($text);
        $result .= '}';
      } else {
        $result .= _protect_text($text);

        if ($command eq 'dots') {
          $result .= '\\@';
        }
      }
      return $result;
    # commands with braces
    } elsif ($accent_commands{$command}) {
      my $encoding;
      if ($self->{'enable_encoding'}) {
        $encoding = $self->{'output_encoding_name'};
      }
      my $sc;
      my $accented_text 
         = Texinfo::Convert::Text::text_accents($root, $encoding, $sc);
      $result .= _protect_text($accented_text);

      my $accented_text_original;

      return $result;
    } elsif ($self->{'style_map'}->{$command} 
         or ($root->{'type'} and $root->{'type'} eq 'definfoenclose_command')) {
      if ($root->{'args'}) {
        $result .= _convert($self, $root->{'args'}->[0]);
        if ($command eq 'strong' 
             and scalar (@{$root->{'args'}->[0]->{'contents'}})
             and $root->{'args'}->[0]->{'contents'}->[0]->{'text'}
             and $root->{'args'}->[0]->{'contents'}->[0]->{'text'} =~ /^Note\s/i
             and $self->{'output_format'}
             and $self->{'output_format'} eq 'info') {
          $self->line_warn(__(
    "\@strong{Note...} produces a spurious cross-reference in Info; reword to avoid that"), 
                           $root->{'line_nr'});
        }
      }
      return $result;
    } elsif ($command eq 'image') {
      my ($image, $lines_count) = $self->_image($root);
      $result .= $image; 
      return $result;
    } elsif ($command eq 'email') {
      # nothing is output for email, instead the command is substituted.
      my @email_contents;
      if ($root->{'args'}) {
        my $name;
        my $email;
        if (scalar (@{$root->{'args'}}) == 2
            and defined($root->{'args'}->[1])
            and @{$root->{'args'}->[1]->{'contents'}}) {
          $name = $root->{'args'}->[1]->{'contents'};
        }
        if (defined($root->{'args'}->[0])
            and @{$root->{'args'}->[0]->{'contents'}}) {
          $email = $root->{'args'}->[0]->{'contents'};
        }
        my $prepended;
        if ($name and $email) {
          $prepended = $self->gdt('{name} @url{{email}}', 
                           {'name' => $name, 'email' => $email});
        } elsif ($email) {
          $prepended = $self->gdt('@url{{email}}', 
                           {'email' => $email});
        } elsif ($name) {
          $prepended = {'contents' => $name};
        } else {
          return '';
        }
        unshift @{$self->{'current_contents'}->[-1]}, $prepended;
      }
      return '';
    } elsif ($command eq 'uref' or $command eq 'url') {
      if ($root->{'args'}) {
        if (scalar(@{$root->{'args'}}) == 3
             and defined($root->{'args'}->[2])
             and @{$root->{'args'}->[2]->{'contents'}}) {
          unshift @{$self->{'current_contents'}->[-1]}, 
            {'contents' => $root->{'args'}->[2]->{'contents'}};
        } elsif (@{$root->{'args'}->[0]->{'contents'}}) {
          # no mangling of --- and similar in url.
          my $url = {'type' => '_code',
              'contents' => $root->{'args'}->[0]->{'contents'}};
          if (scalar(@{$root->{'args'}}) == 2
             and defined($root->{'args'}->[1])
             and @{$root->{'args'}->[1]->{'contents'}}) {
            my $prepended = $self->gdt('{text} ({url})', 
                 {'text' => $root->{'args'}->[1]->{'contents'},
                  'url' => $url });
            unshift @{$self->{'current_contents'}->[-1]}, $prepended;
          } else {
            my $prepended = $self->gdt('@t{<{url}>}', 
                                        {'url' => $url});
            unshift @{$self->{'current_contents'}->[-1]}, $prepended
          }
        } elsif (scalar(@{$root->{'args'}}) == 2
                 and defined($root->{'args'}->[1])
                 and @{$root->{'args'}->[1]->{'contents'}}) {
          unshift @{$self->{'current_contents'}->[-1]}, 
            {'contents' => $root->{'args'}->[1]->{'contents'}};
        }
      }
      return '';
    } elsif ($command eq 'footnote') {
      $result .= '\footnote{';
      $result .= $self->_convert($root->{'args'}->[0]); 
      $result .= '}';

      return $result;
    } elsif ($command eq 'anchor') {
      $result .= $self->_anchor($root);
      return $result;
    } elsif ($ref_commands{$command}) {
      if (scalar(@{$root->{'args'}})) {
        my @args;
        for my $a (@{$root->{'args'}}) {
          if (defined $a->{'contents'} and @{$a->{'contents'}}) {
            push @args, $a->{'contents'};
          } else {
            push @args, undef;
          }
        }
        $args[0] = [{'text' => ''}] if (!defined($args[0]));

        # normalize node name, to get a ref with the right formatting
        # NOTE as a consequence, the line numbers appearing in case of errors
        # correspond to the node lines numbers, and not the @ref.
        my $node_content;
        if ($root->{'extra'}
            and $root->{'extra'}->{'label'}) {
          $node_content = $root->{'extra'}->{'label'}->{'extra'}->{'node_content'};
        } else { 
          $node_content = $args[0];
        }

        # if it a reference to a float with a label, $arg[1] is
        # set to '$type $number' or '$number' if there is no type.
        if (! defined($args[1]) 
            and $root->{'extra'}
            and $root->{'extra'}->{'label'}
            and $root->{'extra'}->{'label'}->{'cmdname'}
            and $root->{'extra'}->{'label'}->{'cmdname'} eq 'float') {
          my $float = $root->{'extra'}->{'label'};

          my $name = $self->_float_type_number($float);
          $args[1] = $name->{'contents'};
        }
        if ($command eq 'inforef' and scalar(@args) == 3) {
          $args[3] = $args[2];
          $args[2] = undef;
        }

        if ($command eq 'xref') {
          $result = _convert($self, {'contents' => [{'text' => '*Note '}]});
        } else {
          $result = _convert($self, {'contents' => [{'text' => '*note '}]});
        }
        my $name;
        if (defined($args[1])) {
          $name = $args[1];
        } elsif (defined($args[2])) {
          $name = $args[2];
        }
        my $file;
        if (defined($args[3])) {
          $file = [{'text' => '('},
                   {'type' => '_code',
                    'contents' => $args[3]},
                   {'text' => ')'},];
        } elsif (defined($args[4])) {
          # add a () such that the node is considered to be external, 
          # even though the manual name is not known.
          $file = [{'text' => '()'}];
        }
         
        if ($name) {
          my $name_text = _convert($self, {'contents' => $name});

          $result .= $name_text;

          if ($file) {
            $result .= _convert($self, {'contents' => $file});
          }
          # node name
          my $node_text = _convert($self, {'type' => '_code',
                                           'contents' => $node_content});

          $result .= $node_text;
        } else { # Label same as node specification
          if ($file) {
            $result .= _convert($self, {'contents' => $file});
          }
          my $node_text = _convert($self, {'type' => '_code',
                                           'contents' => $node_content});

          $result .= $node_text;
        }

        if ($name and ($command eq 'xref')) {
          my $next = $self->{'current_contents'}->[-1]->[0];
          if (!($next and $next->{'text'} and $next->{'text'} =~ /^[\.,]/)) {
            if ($command eq 'xref') {
              if ($next and defined($next->{'text'}) and $next->{'text'} =~ /\S/) {
                my $text = $next->{'text'};
                $text =~ s/^\s*//;
                my $char = substr($text, 0, 1);
                $self->line_warn(sprintf(__(
                            "`.' or `,' must follow \@xref, not %s"), 
                                         $char), $root->{'line_nr'});
              } else {
                $self->line_warn(__("`.' or `,' must follow \@xref"), 
                                 $root->{'line_nr'});
              }
            }
            my @added = ({'text' => '.'});
            # The added full stop does not end a sentence.  Info readers will
            # have a chance of guessing correctly whether the full stop was
            # added by whether it is followed by 2 spaces (although this
            # doesn't help at the end of a line).
            push @added, {'cmdname' => ':'};
            unshift @{$self->{'current_contents'}->[-1]}, @added;
          }
        }
        return $result;
      }
      return '';
    } elsif ($explained_commands{$command}) {
      if ($root->{'args'}
          and defined($root->{'args'}->[0])
          and @{$root->{'args'}->[0]->{'contents'}}) {
        # in abbr spaces never end a sentence.
        my $argument;
        if ($command eq 'abbr') {
          $argument = {'type' => 'frenchspacing',
                       'contents' => $root->{'args'}->[0]->{'contents'}};
        } else {
          $argument = { 'contents' => $root->{'args'}->[0]->{'contents'}};
        }
        if (scalar (@{$root->{'args'}}) == 2
            and defined($root->{'args'}->[-1])
            and @{$root->{'args'}->[-1]->{'contents'}}) {
          my $prepended = $self->gdt('{abbr_or_acronym} ({explanation})', 
                           {'abbr_or_acronym' => $argument, 
                            'explanation' => $root->{'args'}->[-1]->{'contents'}});
          unshift @{$self->{'current_contents'}->[-1]}, $prepended;
          return '';
        } else {
          $result = _convert($self, $argument);

          return $result;
        }
      }
      return '';
    } elsif ($inline_commands{$command}) {
      my $arg_index = 1;
      if ($command eq 'inlinefmtifelse'
          and (!$root->{'extra'}->{'format'} 
               or !$self->{'expanded_formats_hash'}->{$root->{'extra'}->{'format'}})) {
        $arg_index = 2;
      }
      if (scalar(@{$root->{'args'}}) > $arg_index
         and defined($root->{'args'}->[$arg_index])
         and @{$root->{'args'}->[$arg_index]->{'contents'}}) {
        my $argument;
        if ($command eq 'inlineraw') {
          $argument->{'type'} = '_code';
        }
        $argument->{'contents'} = $root->{'args'}->[$arg_index]->{'contents'};
        unshift @{$self->{'current_contents'}->[-1]}, ($argument);
      }
      return '';
      # condition should actually be that the $command is inline
    } elsif ($math_commands{$command} and not exists($block_commands{$command})) {
      push @{$self->{'context'}}, $command;
      if ($root->{'args'}) {
        $result .= _convert($self, {'type' => 'frenchspacing',
             'contents' => [{'type' => '_code',
                            'contents' => [$root->{'args'}->[0]]}]});
      }
      my $old_context = pop @{$self->{'context'}};
      die if ($old_context ne $command);
      return $result;
    } elsif ($command eq 'titlefont') {
      $result = $self->convert_line ({'type' => 'frenchspacing',
               'contents' => [$root->{'args'}->[0]]});
      $result = Texinfo::Convert::Text::heading({'level' => 0, 
        'cmdname' => 'titlefont'}, $result, $self, 
        $self->get_conf('NUMBER_SECTIONS'));
      $result =~ s/\n$//; # final newline has its own tree element
      return $result;

    } elsif ($command eq 'U') {
      my $arg;
      if ($root->{'args'}
          and $root->{'args'}->[0]
          and $root->{'args'}->[0]->{'contents'}
          and $root->{'args'}->[0]->{'contents'}->[0]
          and $root->{'args'}->[0]->{'contents'}->[0]->{'text'}) {
        $arg = $root->{'args'}->[0]->{'contents'}->[0]->{'text'};
      }
      if ($arg) {
        # Syntactic checks on the value were already done in Parser.pm,
        # but we have one more thing to test: since this is the one
        # place where we might output actual UTF-8 binary bytes, we have
        # to check that chr(hex($arg)) is valid.  Perl gives a warning
        # and will not output UTF-8 for Unicode non-characters such as
        # U+10FFFF.  In this case, silently fall back to plain text, on
        # the theory that the user wants something.
        my $res;
        if ($self->{'to_utf8'}) {
          my $error = 0;
          # The warning about non-characters is only given when the code
          # point is attempted to be output, not just manipulated.
          # http://stackoverflow.com/questions/5127725/how-could-i-catch-an-unicode-non-character-warning
          #
          # Therefore, we have to try to output it within an eval.
          # Since opening /dev/null or a temporary file means
          # more system-dependent checks, use a string as our
          # filehandle.
          eval {
            use warnings FATAL => qw(all);
            my ($fh, $string);
            open($fh, ">", \$string) || die "open(U string eval) failed: $!";
            binmode($fh, ":utf8") || die "binmode(U string eval) failed: $!";
            print $fh chr(hex("$arg"));
          };
          if ($@) {
            warn "\@U chr(hex($arg)) eval failed: $@\n" if ($self->{'DEBUG'});
            $error = 1;
          } elsif (hex($arg) > 0x10FFFF) {
            # The check above appears not to work in older versions of perl,
            # so check the argument is not greater the maximum Unicode code 
            # point.
            $error = 1;
          }
          if ($error) {
            $res = "U+$arg";
          } else {
            $res = chr(hex($arg)); # ok to call chr
          }
        } else {
          $res = "U+$arg";  # not outputting UTF-8
        }
        $result .= _protect_text($res);
      } else {
        $result = '';  # arg was not defined
      }
      return $result;

    } elsif ($command eq 'value') {
      my $expansion = $self->gdt('@{No value for `{value}\'@}', 
                                    {'value' => $root->{'type'}});
      $expansion = {'type' => 'paragraph',
                    'contents' => [$expansion]};
      $result .= _convert($self, $expansion);
      #  unshift @{$self->{'current_contents'}->[-1]}, $expansion;
      #return '';
      return $result;
    } elsif ($root->{'args'} and $root->{'args'}->[0] 
             and $root->{'args'}->[0]->{'type'}
             and $root->{'args'}->[0]->{'type'} eq 'brace_command_arg') {
    # block commands
    } elsif (exists($block_commands{$command})) {
      # remark:
      # cartouche group and raggedright -> nothing on format stack

      if ($menu_commands{$command}) {
        return '';
      }
      if ($self->{'preformatted_context_commands'}->{$command}
          or $command eq 'float') {
        if ($format_raw_commands{$command}) {
          $result .= "\n\n";
        }
        push @{$self->{'context'}}, $command;
      } elsif ($flush_commands{$command}) {
        push @{$self->{'context'}}, $command;
      } elsif ($raw_commands{$command} or $block_math_commands{$command}) {
        $result .= "\n\n";
      }

      if ($command eq 'quotation'
          or $command eq 'smallquotation') {
        if ($root->{'args'} and $root->{'args'}->[0]
            and $root->{'args'}->[0]->{'contents'}
            and @{$root->{'args'}->[0]->{'contents'}}) {
          my $prepended = $self->gdt('@b{{quotation_arg}:} ', 
             {'quotation_arg' => $root->{'args'}->[0]->{'contents'}});
          $prepended->{'type'} = 'frenchspacing';
          $result .= $self->convert_line($prepended);
        }
      } elsif ($command eq 'multitable') {
        my $columnsize;
        if ($root->{'extra'}->{'columnfractions'}) {
        } elsif ($root->{'extra'}->{'prototypes'}) {
          foreach my $prototype (@{$root->{'extra'}->{'prototypes'}}) {
            my ($formatted_prototype) = $self->convert_line($prototype, 
                                                        {'indent_length' => 0});
            push @$columnsize, 
                 2+Texinfo::Convert::Unicode::string_width($formatted_prototype);
          }
        }
      } elsif ($command eq 'float') {
        $result .= "\n";
        if ($root->{'extra'} and $root->{'extra'}->{'node_content'}) {
          $result .= $self->_anchor($root);
        }
      }
    } elsif ($command eq 'node') {
      $self->{'node'} = $root;
      $result .= $self->_node($root);
    } elsif ($sectioning_commands{$command}) {
      # use settitle for empty @top
      # ignore @part
      my $contents;
      if ($root->{'args'}->[0]->{'contents'} 
          and @{$root->{'args'}->[0]->{'contents'}} 
          and $command ne 'part') {
        $contents = $root->{'args'}->[0]->{'contents'};
      } elsif ($command eq 'top'
          and $self->{'extra'}->{'settitle'} 
          and $self->{'extra'}->{'settitle'}->{'args'}
          and @{$self->{'extra'}->{'settitle'}->{'args'}}
          and $self->{'extra'}->{'settitle'}->{'args'}->[0]->{'contents'}
          and @{$self->{'extra'}->{'settitle'}->{'args'}->[0]->{'contents'}}) {
        $contents = $self->{'extra'}->{'settitle'}->{'args'}->[0]->{'contents'};
      }
             
      if ($contents) {
        my $heading = $self->convert_line({'type' => 'frenchspacing',
                         'contents' => $contents});
        $heading =~ s/\s*$//;

        my %section_map = (
          'part' => '\\part',
          'chapter' => '\\chapter',
          'section' => '\\section',
          'subsection' => '\\subsection',
          'subsubsection' => '\\subsubsection',
          'chapheading' => '\\chapter*',
          'heading' => '\\section*',
          'subheading' => '\\subsection*',
          'subsubheading' => '\\subsubsection*',
          'unnumbered' => '\\chapter*',
          'unnumberedsec' => '\\section*',
          'unnumberedsubsec' => '\\subsection*',
          'unnumberedsubsubsec' => '\\subsubsection*',
        );
        my $section_cmd = $section_map{$command};
        if ($section_cmd) {
          $result .= $section_cmd."{$heading}\n";
        }
      }
    } elsif (($command eq 'item' or $command eq 'itemx')
            and $root->{'args'} and $root->{'args'}->[0] 
            and $root->{'args'}->[0]->{'type'}
            and $root->{'args'}->[0]->{'type'} eq 'line_arg') {
      if ($root->{'args'} and @{$root->{'args'}}
          and $root->{'args'}->[0]->{'contents'}) {

        my $converted_tree = $self->_table_item_content_tree($root,
                                         $root->{'args'}->[0]->{'contents'});

        $converted_tree->{'type'} = 'frenchspacing';
        $result = $self->convert_line($converted_tree);
        if ($result ne '') {
          $result .= "\n";
        }
      }
    } elsif ($command eq 'item' and $root->{'parent'}->{'cmdname'}
             and $item_container_commands{$root->{'parent'}->{'cmdname'}}) {
      if ($root->{'parent'}->{'cmdname'} eq 'enumerate') {
        $result = _protect_text(Texinfo::Common::enumerate_item_representation(
                 $root->{'parent'}->{'extra'}->{'enumerate_specification'},
                 $root->{'extra'}->{'item_number'}) . '. ');
      } elsif ($root->{'parent'}->{'args'}
          and $root->{'parent'}->{'args'}->[0]) {
        # this is the text prepended to items.
        
        $result = _convert($self, $root->{'parent'}->{'args'}->[0]);
        $result .= _convert($self, { 'text' => ' ' });
      }
      $result .= "\n\n";
    # open a multitable cell
    } elsif ($command eq 'headitem' or $command eq 'item'
             or $command eq 'tab') {
      # ...
    } elsif ($command eq 'center') {
      $result = $self->convert_line (
                       {'type' => 'frenchspacing',
                        'contents' => $root->{'args'}->[0]->{'contents'}},
                       {'indent_length' => 0});
      return $result;
    } elsif ($command eq 'exdent') {
      if ($self->{'preformatted_context_commands'}->{$self->{'context'}->[-1]}) {
        $result = $self->convert_unfilled({'contents' => $root->{'args'}->[0]->{'contents'}});
      } else {
        $result = $self->convert_line({'contents' => $root->{'args'}->[0]->{'contents'}});
      }
      if ($result ne '') {
        $result .= "\n";
      }
      return $result;
    } elsif ($command eq 'verbatiminclude') {
      my $expansion = $self->Texinfo::Common::expand_verbatiminclude($root);
      unshift @{$self->{'current_contents'}->[-1]}, $expansion
        if ($expansion);
      return '';
    } elsif ($command eq 'insertcopying') {
      if ($self->{'extra'} and $self->{'extra'}->{'copying'}) {
        unshift @{$self->{'current_contents'}->[-1]}, 
           {'contents' => $self->{'extra'}->{'copying'}->{'contents'}};
      }
      return '';
    } elsif ($command eq 'printindex') {
      $result = $self->_printindex($root);
      return $result;
    } elsif ($command eq 'listoffloats') {
      return '';
    } elsif ($command eq 'sp') {
      if ($root->{'extra'}->{'misc_args'}->[0]) {
        # this useless copy avoids perl changing the type to integer!
        my $sp_nr = $root->{'extra'}->{'misc_args'}->[0];

        # add vertical space here
      }
      return $result;
    } elsif ($command eq 'contents') {
      if ($self->{'structuring'}
            and $self->{'structuring'}->{'sectioning_root'}) {
        $result
            = $self->_contents($self->{'structuring'}->{'sectioning_root'}, 
                              'contents');
      }
      return $result;
    } elsif ($command eq 'shortcontents' 
               or $command eq 'summarycontents') {
      if ($self->{'structuring'}
            and $self->{'structuring'}->{'sectioning_root'}) {
        my $lines_count;
        $result
              = $self->_contents($self->{'structuring'}->{'sectioning_root'}, 
                              'shortcontents');
      }
      return $result;
    # all the @-commands that have an information for the formatting, like
    # @paragraphindent, @frenchspacing...
    } elsif ($informative_commands{$command}) {
      $self->_informative_command($root);
      return '';
    } else {
      $unknown_command = 1;
    }
    if ($unknown_command
        and !($root->{'extra'} 
                and ($root->{'extra'}->{'index_entry'}
                     or $root->{'extra'}->{'seeentry'}
                     or $root->{'extra'}->{'seealso'}))
        # commands like def*x are not processed above, since only the def_line
        # associated is processed. If they have no name and no category they 
        # are not considered as index entries either so they have a specific
        # condition
        and !($def_commands{$command} 
              and $command =~ /x$/)) {
      warn "Unhandled $command\n";
      $result .= "!!!!!!!!! Unhandled $command !!!!!!!!!\n";
    }
  }

  # open 'type' constructs.
  my $paragraph;
  if ($root->{'type'}) {
    if ($root->{'type'} eq 'paragraph') {
      # ...
    } elsif ($root->{'type'} eq 'preformatted'
             or $root->{'type'} eq 'rawpreformatted') {
      # ...
    } elsif ($root->{'type'} eq 'def_line') {
      if ($root->{'extra'} and $root->{'extra'}->{'def_parsed_hash'}
             and %{$root->{'extra'}->{'def_parsed_hash'}}) {
        my $arguments = Texinfo::Common::definition_arguments_content($root);
        my $tree;
        my $command;
        if ($Texinfo::Common::def_aliases{$root->{'extra'}->{'def_command'}}) {
          $command = $Texinfo::Common::def_aliases{$root->{'extra'}->{'def_command'}};
        } else {
          $command = $root->{'extra'}->{'def_command'};
        }
        my $name;
        if ($root->{'extra'}->{'def_parsed_hash'}->{'name'}) {
          $name = $root->{'extra'}->{'def_parsed_hash'}->{'name'};
        } else {
          $name = '';
        }
        
        if ($command eq 'deffn'
            or $command eq 'defvr'
            or $command eq 'deftp'
            or (($command eq 'deftypefn'
                 or $command eq 'deftypevr')
                and !$root->{'extra'}->{'def_parsed_hash'}->{'type'})) {
          if ($arguments) {
            $tree = $self->gdt("\@tie{}-- {category}: {name} {arguments}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'arguments' => $arguments});
          } else {
            $tree = $self->gdt("\@tie{}-- {category}: {name}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name});
          }
        } elsif ($command eq 'deftypefn'
                 or $command eq 'deftypevr') {
          if ($arguments) {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'arguments' => $arguments};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree = $self->gdt("\@tie{}-- {category}:\@*{type}\@*{name} {arguments}",
                                 $strings);
            } else {
              $tree = $self->gdt("\@tie{}-- {category}: {type} {name} {arguments}",
                                 $strings);
            }
          } else {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'name' => $name};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree = $self->gdt("\@tie{}-- {category}:\@*{type}\@*{name}",
                                 $strings);
            } else {
              $tree = $self->gdt("\@tie{}-- {category}: {type} {name}",
                                 $strings);
            }
          }
        } elsif ($command eq 'defcv'
                 or ($command eq 'deftypecv'
                     and !$root->{'extra'}->{'def_parsed_hash'}->{'type'})) {
          if ($arguments) {
            $tree = $self->gdt("\@tie{}-- {category} of {class}: {name} {arguments}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'arguments' => $arguments});
          } else {
            $tree = $self->gdt("\@tie{}-- {category} of {class}: {name}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name});
          }
        } elsif ($command eq 'defop'
                 or ($command eq 'deftypeop'
                     and !$root->{'extra'}->{'def_parsed_hash'}->{'type'})) {
          if ($arguments) {
            $tree = $self->gdt("\@tie{}-- {category} on {class}: {name} {arguments}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'arguments' => $arguments});
          } else {
            $tree = $self->gdt("\@tie{}-- {category} on {class}: {name}", {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name});
          }
        } elsif ($command eq 'deftypeop') {
          if ($arguments) {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'arguments' => $arguments};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}:\@*{type}\@*{name} {arguments}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}: {type} {name} {arguments}",
                             $strings);
            }
          } else {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}:\@*{type}\@*{name}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} on {class}: {type} {name}",
                             $strings);
            }
          }
        } elsif ($command eq 'deftypecv') {
          if ($arguments) {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'name' => $name,
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'arguments' => $arguments};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}:\@*{type}\@*{name} {arguments}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}: {type} {name} {arguments}",
                             $strings);
            }
          } else {
            my $strings = {
                    'category' => $root->{'extra'}->{'def_parsed_hash'}->{'category'},
                    'type' => $root->{'extra'}->{'def_parsed_hash'}->{'type'},
                    'class' => $root->{'extra'}->{'def_parsed_hash'}->{'class'},
                    'name' => $name};
            if ($self->get_conf('deftypefnnewline') eq 'on') {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}:\@*{type}\@*{name}",
                             $strings);
            } else {
              $tree 
                = $self->gdt("\@tie{}-- {category} of {class}: {type} {name}",
                             $strings);
            }
          }
        }


        $result .= _convert($self, {'type' => '_code', 'contents' => [$tree]});
        $result .= "\n\n";
      }
      $result .= "\n";

    } elsif ($root->{'type'} eq 'frenchspacing') {
      # ...
    } elsif ($root->{'type'} eq '_code') {
      # ...
    } elsif ($root->{'type'} eq 'bracketed') {
      $result .= _protect_text('{');
    }
  }

  # The processing of contents is done here.
  if ($root->{'contents'}) {
    my @contents = @{$root->{'contents'}};
    push @{$self->{'current_contents'}}, \@contents;
    push @{$self->{'current_roots'}}, $root;
    while (@contents) {
      my $content = shift @contents;
      my $text = _convert($self, $content);
      $result .= $text;
    }
    pop @{$self->{'current_contents'}};
    pop @{$self->{'current_roots'}};
  }

  # now closing. First, close types.
  if ($root->{'type'}) {
    if ($root->{'type'} eq 'frenchspacing') {
    } elsif ($root->{'type'} eq '_code') {
    } elsif ($root->{'type'} eq 'bracketed') {
      $result .= _protect_text('}');
    } elsif ($root->{'type'} eq 'row') {
      # ...
    } elsif ($root->{'type'} eq 'text_root') {
      $self->{'text_before_first_node'} = $result;
    }
  }
  # close paragraphs and preformatted
  if ($paragraph) {
    $result .= "\n\n";
    if ($self->{'context'}->[-1] eq 'flushright') {
    }
  } elsif ($preformatted) {
    $result .= "\n\n";
    if ($result ne '') {
      $result .= "\n";
    }
    if ($self->{'context'}->[-1] eq 'flushright') {
    }
  }

  # close commands
  if ($command) {
    if ($command eq 'float') {
      if ($root->{'extra'}
          and ($root->{'extra'}->{'type'}->{'normalized'} ne '' 
               or defined($root->{'number'})
               or $root->{'extra'}->{'caption'} or $root->{'extra'}->{'shortcaption'})) {
        
        $result .= "\n";
        my ($caption, $prepended) = Texinfo::Common::float_name_caption($self,
                                                                        $root);
        if ($prepended) {
          $prepended->{'type'} = 'frenchspacing';
          my $float_number = $self->convert_line ($prepended);
          $result .= $float_number;
        }
        if ($caption) {
          my $tree = $caption->{'args'}->[0];
          $result .= _convert($self, $tree);
        }
      }
    } elsif (($command eq 'quotation' 
               or $command eq 'smallquotation')
             and $root->{'extra'} and $root->{'extra'}->{'authors'}) {
      foreach my $author (@{$root->{'extra'}->{'authors'}}) {
        $result .= _convert($self, 
                 $self->gdt("\@center --- \@emph{{author}}\n",
                    {'author' => $author->{'args'}->[0]->{'contents'}}));
      }
    }
 
    # close the contexts and register the cells
    if ($self->{'preformatted_context_commands'}->{$command}
        or $command eq 'float') {
      my $old_context = pop @{$self->{'context'}};
      die "Not a preformatted context: $old_context"
        if (!$self->{'preformatted_context_commands'}->{$old_context}
            and $old_context ne 'float');
      delete ($self->{'preformatted_context_commands'}->{$command})
       unless ($default_preformatted_context_commands{$command});
    } elsif ($flush_commands{$command}) {
      my $old_context = pop @{$self->{'context'}};
      die if (! $flush_commands{$old_context});
    }

    if ($cell) {
      $result = '';
    }
  }

  return $result;
}

1;
