# Text.pm: output tree as simple text.
#
# Copyright 2010-2020 Free Software Foundation, Inc.
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

package Texinfo::Convert::Text;

use 5.00405;
use strict;

# accent commands list.
use Texinfo::Common;
use Texinfo::Convert::Unicode;
# for debugging
use Texinfo::Convert::Texinfo;
# misc functions and data
use Texinfo::Convert::Utils;

use Data::Dumper;
use Carp qw(cluck carp);

use File::Basename;

require Exporter;
use vars qw($VERSION @ISA @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

%EXPORT_TAGS = ( 'all' => [ qw(
  convert_to_text
  ascii_accent
  text_accents
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

$VERSION = '6.8dev';


# this is in fact not needed for 'footnote', 'shortcaption', 'caption'
# when they have no brace_command_arg, see below.
my %ignored_brace_commands;
foreach my $ignored_brace_command (#'xref','ref','pxref','inforef',
   'anchor', 'sortas', 'seealso', 'seeentry',
   'footnote', 'shortcaption', 'caption', 'hyphenation', 'errormsg') {
  $ignored_brace_commands{$ignored_brace_command} = 1;
}

my %ignored_block_commands;
foreach my $ignored_command ('titlepage', 'copying', 'documentdescription',
  'html', 'tex', 'xml', 'docbook', 'latex', 'ignore', 'macro', 'rmacro') {
  $ignored_block_commands{$ignored_command} = 1;
}

# used by Texinfo::Convert::NodeNormalization
our %text_brace_no_arg_commands = (
               'TeX'                => 'TeX',
               'LaTeX'              => 'LaTeX',
               'bullet'             => '*',
               'copyright'          => '(C)',
               'registeredsymbol'   => '(R)',
               'dots'         => '...',
               'enddots'      => '...',
               'equiv'        => '==',
               'error'        => 'error-->',
               'expansion'    => '==>',
               'arrow'        => '->',
               'minus'        => '-',
               'point'        => '-!-',
               'print'        => '-|',
               'result'       => '=>',
               'today'        => '',
               'aa'           => 'aa',
               'AA'           => 'AA',
               'ae'           => 'ae',
               'oe'           => 'oe',
               'AE'           => 'AE',
               'OE'           => 'OE',
               'o'            => '/o',
               'O'            => '/O',
               'ss'           => 'ss',
               'l'            => '/l',
               'L'            => '/L',
               'DH'           => 'D',
               'dh'           => 'd',
               'TH'           => 'TH', # http://www.evertype.com/standards/wynnyogh/thorn.html

               'th'           => 'th',
               'exclamdown'   => '!',
               'questiondown' => '?',
               'pounds'       => '#',
               'ordf'         => 'a',
               'ordm'         => 'o',
               'comma'        => ',',
               'atchar'       => '@',
               'ampchar'      => '&',
               'lbracechar'   => '{',
               'rbracechar'   => '}',
               'backslashchar' => '\\',
               'hashchar'      => '#',
               'euro'         => 'Euro',
               'geq'          => '>=',
               'leq'          => '<=',
               'tie'          => ' ',
               'textdegree'      => 'o',
               'quotedblleft'    => '"',
               'quotedblright'   => '"',
               'quoteleft'       => '`',
               'quoteright'      => "'",
               'quotedblbase'    => ',,',
               'quotesinglbase'  => ',',
               'guillemetleft'   => '<<',
               'guillemetright'  => '>>',
               'guillemotleft'   => '<<',
               'guillemotright'  => '>>',
               'guilsinglleft'   => '<',
               'guilsinglright'  => '>',
               'click'           => '', # specially treated
);

my %sort_brace_no_arg_commands = (
  'copyright' => 'C',
  'registeredsymbol' => 'R',
  'today' => 't', 
);

foreach my $accent_letter ('o','O','l','L') {
  $sort_brace_no_arg_commands{$accent_letter} = $accent_letter;
}

my %accent_commands = %Texinfo::Common::accent_commands;
my %no_brace_commands = %Texinfo::Common::no_brace_commands;

our %formatting_misc_commands;
foreach my $command ('verbatiminclude', 'sp', 'center', 'exdent', 
                     'item', 'itemx', 'tab', 'headitem',
    'node', keys(%Texinfo::Common::sectioning_commands)) {
  $formatting_misc_commands{$command} = 1;
}
 
my %ignored_types;
foreach my $type ('empty_line_after_command', 'preamble_before_beginning',
            'empty_spaces_after_command', 'spaces_at_end',
            'empty_spaces_before_argument', 'empty_spaces_before_paragraph',
            'empty_spaces_after_close_brace') {
  $ignored_types{$type} = 1;
}


sub ascii_accent($$)
{
  my $text = shift;
  my $command = shift;
  my $accent = $command->{'cmdname'};
  return $text if ($accent eq 'dotless');
  return $text . "''" if ($accent eq 'H');
  return $text . '.' if ($accent eq 'dotaccent');
  return $text . '*' if ($accent eq 'ringaccent');
  return $text . '[' if ($accent eq 'tieaccent');
  return $text . '(' if ($accent eq 'u');
  return $text . '_' if ($accent eq 'ubaraccent');
  return '.' . $text  if ($accent eq 'udotaccent');
  return $text . '<' if ($accent eq 'v');
  return $text . ';' if ($accent eq 'ogonek');
  return $text . $accent;
}

# format a stack of accents as ascii
sub ascii_accents($$;$)
{
  my $result = shift;
  my $stack = shift;
  my $set_case = shift;

  if ($set_case and $result =~ /^\w$/) {
    if ($set_case > 0) {
      $result = uc($result);
    } else {
      $result = lc($result);
    }
  }
  foreach my $accent_command (reverse(@$stack)) {
    $result = ascii_accent($result, $accent_command);
  }
  return $result;
}

# Same as ascii_accent, but with a converter as first argument to be consistent
# with calling conventions of fallback accent formatting functions given
# to Convert::Converter::convert_accents() or Convert::Unicode::encoded_accents()
sub ascii_accent_fallback($$$)
{
  my $converter = shift;
  my $text = shift;
  my $command = shift;

  return ascii_accent($text, $command);
}

# format an accent command and nested accents within as Text.
sub text_accents($;$$)
{
  my $accent = shift;
  my $encoding = shift;
  my $set_case = shift;
  
  my ($contents, $stack)
      = Texinfo::Convert::Utils::find_innermost_accent_contents($accent);

  my $options = {};
  $options->{'enabled_encoding'} = $encoding if (defined($encoding));
  $options->{'sc'} = $set_case if (defined($set_case));
  my $text = convert_to_text({'contents' => $contents}, $options);

  my $result = Texinfo::Convert::Unicode::encoded_accents(undef, $text, 
                     $stack, $encoding, \&ascii_accent_fallback, $set_case);
  if (defined($result)) {
    return $result;
  } else {
    return ascii_accents($text, $stack, $set_case);
  }
}

sub brace_no_arg_command($;$)
{
  my $element = shift;
  my $options = shift;
  my $encoding;
  $encoding = $options->{'enabled_encoding'}
    if ($options and $options->{'enabled_encoding'});

  my $command = $element->{'cmdname'};
  $command = $element->{'extra'}->{'clickstyle'}
     if ($element->{'extra'}
      and defined($element->{'extra'}->{'clickstyle'})
      and defined($text_brace_no_arg_commands{$element->{'extra'}->{'clickstyle'}}));
  my $result;
  if (!$options->{'ascii_punctuation'}
        or !exists($Texinfo::Convert::Unicode::extra_unicode_map{$command})) {
    $result = Texinfo::Convert::Unicode::brace_no_arg_command($command, $encoding);
  }
  if (!defined($result) and $options and $options->{'converter'}) {
    my $tree
      = Texinfo::Convert::Utils::translated_command_tree($options->{'converter'},
                                                                         $command);
    if ($tree) {
      $result = _convert($tree, $options);
    }
  }
  if (!defined($result)) {
    if ($options and $options->{'sort_string'} 
        and $sort_brace_no_arg_commands{$command}) {
      $result = $sort_brace_no_arg_commands{$command};
    } else {
      $result = $text_brace_no_arg_commands{$command};
    }
  }
  if ($options and $Texinfo::Common::letter_no_arg_commands{$command}) {
    if ($options->{'sc'}) {
      $result = uc($result);
    } elsif ($options->{'lc'}) {
      $result = lc($result);
    }
  }
  return $result;
}

my %underline_symbol = (
  0 => '*',
  1 => '*',
  2 => '=',
  3 => '-',
  4 => '.'
);

# Return the text of an underlined heading, possibly indented.
sub heading($$$;$$)
{
  my $current = shift;
  my $text = shift;
  my $converter = shift;
  my $numbered = shift;
  my $indent_length = shift;

  # REMARK to get the numbering right in case of an indented text, the
  # indentation should be given here.  But this should never happen as
  # the only @-commands allowed in indented context are not numbered.
  $text = Texinfo::Convert::Utils::numbered_heading($converter, $current, $text,
                                                     $numbered);
  return '' if ($text !~ /\S/);
  my $result = $text ."\n";
  if (defined($indent_length)) {
    if ($indent_length < 0) {
      $indent_length = 0;
    }
    $result .= (' ' x $indent_length);
  } else {
    $indent_length = 0;
  }
  if (!defined $current->{'level'}) {
    $current->{'level'} = Texinfo::Structuring::section_level($current);
  }
  $result .=($underline_symbol{$current->{'level'}} 
     x (Texinfo::Convert::Unicode::string_width($text) - $indent_length))."\n";
  return $result;
}

# $SELF is typically a converter object.
# Setup options as used by Texinfo::Convert::Text::convert_to_text
# based on the converter informations.
sub copy_options_for_convert_text($)
{
  my $self = shift;
  my %options;
  if ($self->get_conf('ENABLE_ENCODING')
      and $self->get_conf('OUTPUT_ENCODING_NAME')) {
    $options{'enabled_encoding'} = $self->get_conf('OUTPUT_ENCODING_NAME');
  }
  $options{'TEST'} = 1 if ($self->get_conf('TEST'));
  $options{'NUMBER_SECTIONS'} = $self->get_conf('NUMBER_SECTIONS');
  $options{'converter'} = $self;
  $options{'expanded_formats_hash'} = $self->{'expanded_formats_hash'};
  # for locate_include_file
  $options{'INCLUDE_DIRECTORIES'} = $self->get_conf('INCLUDE_DIRECTORIES');
  # for error registering
  $options{'DEBUG'} = $self->get_conf('DEBUG');
  $options{'PROGRAM'} = $self->get_conf('PROGRAM');
  return %options;
}

sub convert_to_text($;$)
{
  my $root = shift;
  my $options = shift;

  #print STDERR "CONVERT\n";
  # this is needed for locate_include_file which uses
  # $configurations_informations->get_conf() and thus requires a blessed reference.
  if (defined($options)) {
    bless $options;
    if ($options->{'code'}) {
      $options->{'_code_options'} = 1;
    }
  }
  return _convert($root, $options);
}

sub _convert($;$);

sub _convert($;$)
{
  my $element = shift;
  my $options = shift;

  return '' if (!($element->{'type'} and $element->{'type'} eq 'def_line')
     and (($element->{'type'} and $ignored_types{$element->{'type'}})
          or ($element->{'cmdname'}
             and ($ignored_brace_commands{$element->{'cmdname'}}
                 or ($ignored_block_commands{$element->{'cmdname'}}
                     and !(defined($options->{'expanded_formats_hash'})
                           and $options->{'expanded_formats_hash'}->{$element->{'cmdname'}}))
                 or ($Texinfo::Common::inline_commands{$element->{'cmdname'}}
                     and $element->{'cmdname'} ne 'inlinefmtifelse'
                     and (($Texinfo::Common::inline_format_commands{$element->{'cmdname'}}
                          and (!$element->{'extra'}->{'format'}
                               or !$options->{'expanded_formats_hash'}->{$element->{'extra'}->{'format'}}))
                         or (!$Texinfo::Common::inline_format_commands{$element->{'cmdname'}}
                             and !defined($element->{'extra'}->{'expand_index'}))))
             # here ignore most of the misc commands
                 or ($element->{'args'} and $element->{'args'}->[0]
                     and $element->{'args'}->[0]->{'type'}
                     and ($element->{'args'}->[0]->{'type'} eq 'line_arg'
                         or $element->{'args'}->[0]->{'type'} eq 'misc_arg')
                     and !$formatting_misc_commands{$element->{'cmdname'}})))));
  my $result = '';
  if (defined($element->{'text'})) {
    if ($element->{'type'} and $element->{'type'} eq 'untranslated'
        and $options and $options->{'converter'}) {
      my $tree = $options->{'converter'}->gdt($element->{'text'}, undef,
                        undef, $element->{'extra'}->{'documentlanguage'});
      $result = _convert($tree, $options);
    } else {
      $result = $element->{'text'};
      if ((! defined($element->{'type'})
           or $element->{'type'} ne 'raw')
           and !$options->{'raw'}) {
        if ($options->{'sc'}) {
          $result = uc($result);
        }
        if (!$options->{'_code_options'}) {
          $result =~ s/``/"/g;
          $result =~ s/\'\'/"/g;
          $result =~ s/---/\x{1F}/g;
          $result =~ s/--/-/g;
          $result =~ s/\x{1F}/--/g;
        }
      }
    }
  }
  if ($element->{'cmdname'}) {
    my $command = $element->{'cmdname'};
    if (defined($no_brace_commands{$element->{'cmdname'}})) {
      return $no_brace_commands{$element->{'cmdname'}};
    } elsif ($element->{'cmdname'} eq 'today') {
      if ($options->{'sort_string'} 
          and $sort_brace_no_arg_commands{$element->{'cmdname'}}) {
        return $sort_brace_no_arg_commands{$element->{'cmdname'}};
      } elsif ($options->{'converter'}) {
        return _convert(Texinfo::Convert::Utils::expand_today($options->{'converter'}),
                        $options);
      } elsif ($options->{'TEST'}) {
        return 'a sunny day';
      } else {
        my($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst)
          = localtime(time);
        $year += ($year < 70) ? 2000 : 1900;
        return "$Texinfo::Convert::Utils::MONTH_NAMES[$mon] $mday, $year";
      }
    } elsif (defined($text_brace_no_arg_commands{$element->{'cmdname'}})) {
      return brace_no_arg_command($element, $options);
    # commands with braces
    } elsif ($accent_commands{$element->{'cmdname'}}) {
      my $result = text_accents ($element, $options->{'enabled_encoding'},
                                        $options->{'sc'});
      return $result;
    } elsif ($element->{'cmdname'} eq 'image') {
      $options->{_code_options}++;
      my $text = _convert($element->{'args'}->[0], $options);
      $options->{_code_options}--;
      return $text;
    } elsif ($element->{'cmdname'} eq 'email') {
      $options->{_code_options}++;
      my $mail = _convert($element->{'args'}->[0], $options);
      $options->{_code_options}--;
      my $text;
      $text = _convert($element->{'args'}->[1], $options)
         if (defined($element->{'args'}->[1]));
      return $text if (defined($text) and ($text ne ''));
      return $mail;
    } elsif ($element->{'cmdname'} eq 'uref' or $element->{'cmdname'} eq 'url') {
      my $replacement;
      $replacement = _convert($element->{'args'}->[2], $options)
        if (defined($element->{'args'}->[2]));
      return $replacement if (defined($replacement) and $replacement ne '');
      my $text;
      $text = _convert($element->{'args'}->[1], $options)
        if (defined($element->{'args'}->[1]));
      $options->{_code_options}++;
      my $url = _convert($element->{'args'}->[0], $options);
      $options->{_code_options}--;
      if (defined($text) and $text ne '') {
        return "$url ($text)";
      } else {
        return $url;
      }
    } elsif ($Texinfo::Common::explained_commands{$element->{'cmdname'}}
             and $element->{'args'} and $element->{'args'}->[1]) {
      my $explanation = _convert($element->{'args'}->[1], $options);
      if ($explanation ne '') {
        return _convert($element->{'args'}->[0], $options) ." ($explanation)";
      } else {
        return _convert($element->{'args'}->[0], $options);
      }
    } elsif ($Texinfo::Common::inline_commands{$element->{'cmdname'}}) {
      $options->{'raw'} = 1 if ($element->{'cmdname'} eq 'inlineraw');
      my $arg_index = 1;
      if ($element->{'cmdname'} eq 'inlinefmtifelse'
          and (!$element->{'extra'}->{'format'}
               or !$options->{'expanded_formats_hash'}->{$element->{'extra'}->{'format'}})) {
        $arg_index = 2;
      }
      if (scalar(@{$element->{'args'}}) > $arg_index) {
        return _convert($element->{'args'}->[$arg_index], $options);
      } else {
        return '';
      }
    } elsif ($element->{'args'} and $element->{'args'}->[0]
           and (($element->{'args'}->[0]->{'type'}
                and $element->{'args'}->[0]->{'type'} eq 'brace_command_arg')
                or $Texinfo::Common::math_commands{$element->{'cmdname'}})) {
      my $result;
      my $in_code;
      $options->{'sc'}++ if ($element->{'cmdname'} eq 'sc');
      if ($Texinfo::Common::code_style_commands{$element->{'cmdname'}}
               or $Texinfo::Common::math_commands{$element->{'cmdname'}}) {
        $in_code = 1;
      }
      $options->{_code_options}++ if ($in_code);
      $result = _convert($element->{'args'}->[0], $options);
      $options->{_code_options}-- if ($in_code);
      $options->{'sc'}-- if ($element->{'cmdname'} eq 'sc');
      return $result;
    # block commands
    } elsif ($element->{'cmdname'} eq 'quotation'
             or $element->{'cmdname'} eq 'smallquotation'
             or $element->{'cmdname'} eq 'float') {
      if ($element->{'args'}) {
        foreach my $arg (@{$element->{'args'}}) {
          my $converted_arg = _convert($arg, $options);
          if ($converted_arg =~ /\S/) {
            $result .= $converted_arg.", ";
          }
        }
        $result =~ s/, $//;
        chomp ($result);
        $result .= "\n" if ($result =~ /\S/);
      }
    } elsif ($options->{'expanded_formats_hash'}->{$element->{'cmdname'}}) {
      $options->{'raw'} = 1;
    } elsif ($formatting_misc_commands{$element->{'cmdname'}} and $element->{'args'}) {
      if ($element->{'cmdname'} eq 'sp') {
        if ($element->{'extra'} and $element->{'extra'}->{'misc_args'}
            and $element->{'extra'}->{'misc_args'}->[0]) {
          # this useless copy avoids perl changing the type to integer!
          my $sp_nr = $element->{'extra'}->{'misc_args'}->[0];
          $result = "\n" x $sp_nr;
        }
      } elsif ($element->{'cmdname'} eq 'verbatiminclude') {
        my $verbatim_include_verbatim
          = Texinfo::Convert::Utils::expand_verbatiminclude(
                               $options->{'converter'}, $options, $element);
        if (defined($verbatim_include_verbatim)) {
          $result .= _convert($verbatim_include_verbatim, $options);
        }
      } elsif ($element->{'cmdname'} ne 'node') {
        $result = _convert($element->{'args'}->[0], $options);
        if ($Texinfo::Common::sectioning_commands{$element->{'cmdname'}}) {
          $result = heading($element, $result, $options->{'converter'},
                            $options->{'NUMBER_SECTIONS'});
        } else {
        # we always want an end of line even if is was eaten by a command
          chomp($result);
          $result .= "\n";
        }
      }
    } elsif ($element->{'cmdname'} eq 'item'
            and $element->{'parent'}->{'cmdname'}
            and $element->{'parent'}->{'cmdname'} eq 'enumerate') {
      $result .= Texinfo::Common::enumerate_item_representation(
         $element->{'parent'}->{'extra'}->{'enumerate_specification'},
         $element->{'extra'}->{'item_number'}) . '. ';
    }
  }
  if ($element->{'type'} and $element->{'type'} eq 'def_line') {
    #print STDERR "$element->{'extra'}->{'def_command'}\n";
    if ($element->{'extra'} and $element->{'extra'}->{'def_parsed_hash'}
             and %{$element->{'extra'}->{'def_parsed_hash'}}) {
      my $parsed_definition_category
        = Texinfo::Convert::Utils::definition_category($options->{'converter'},
                                                       $element);
      my @contents = ($parsed_definition_category, {'text' => ': '});
      if ($element->{'extra'}->{'def_parsed_hash'}->{'type'}) {
        push @contents, ($element->{'extra'}->{'def_parsed_hash'}->{'type'},
                         {'text' => ' '});
      }
      push @contents, $element->{'extra'}->{'def_parsed_hash'}->{'name'};

      my $arguments = Texinfo::Convert::Utils::definition_arguments_content($element);
      if ($arguments) {
        push @contents, {'text' => ' '};
        push @contents, @$arguments;
      }
      push @contents, {'text' => "\n"};
      $options->{_code_options}++;
      $result = _convert({'contents' => \@contents}, $options);
      $options->{_code_options}--;
    }
  } elsif ($element->{'type'} and $element->{'type'} eq 'menu_entry') {
    foreach my $arg (@{$element->{'args'}}) {
      if ($arg->{'type'} eq 'menu_entry_node') {
        $options->{_code_options}++;
        $result .= _convert($arg, $options);
        $options->{_code_options}--;
      } else {
        $result .= _convert($arg, $options);
      }
    }
    if (!$element->{'parent'}->{'type'}
        or ($element->{'parent'}->{'type'} ne 'preformatted'
            and $element->{'parent'}->{'type'} ne 'rawpreformatted')) {
      chomp($result);
      $result .= "\n";
    }
  }
  if ($element->{'contents'}) {
    my $in_code;
    if ($element->{'cmdname'}
        and ($Texinfo::Common::preformatted_code_commands{$element->{'cmdname'}}
             or $Texinfo::Common::math_commands{$element->{'cmdname'}}
             or (defined($Texinfo::Common::block_commands{$element->{'cmdname'}})
                 and $Texinfo::Common::block_commands{$element->{'cmdname'}} eq 'raw'))) {
      $in_code = 1;
    }
    if (ref($element->{'contents'}) ne 'ARRAY') {
      cluck "contents not an array($element->{'contents'}).";
    }
    $options->{_code_options}++ if ($in_code);
    foreach my $content (@{$element->{'contents'}}) {
      $result .= _convert($content, $options);
    }
    $options->{_code_options}-- if ($in_code);
  }
  $result = '{'.$result.'}' 
     if ($element->{'type'} and $element->{'type'} eq 'bracketed'
         and (!$element->{'parent'}->{'type'} or
              ($element->{'parent'}->{'type'} ne 'block_line_arg'
               and $element->{'parent'}->{'type'} ne 'line_arg')));
  #print STDERR "  RR ($element) -> $result\n";
  return $result;
}



# Implement the converters API, but as simply as possible
# initialization
sub converter($)
{
  my $class = shift;
  my $conf;
  my $converter = {};
  if (ref($class) eq 'HASH') {
    $conf = $class;
    bless $converter;
  } elsif (defined($class)) {
    bless $converter, $class;
    $conf = shift;
  } else {
    bless $converter;
    $conf = shift;
  }

  if ($conf) {
    %{$converter} = %{$conf};
    #print STDERR "CTe ".join("|", sort(keys(%{$conf})))."\n";
  }

  my $expanded_formats = $converter->{'EXPANDED_FORMATS'};;
  if ($converter->{'parser'}) {
    $converter->{'parser_info'} = $converter->{'parser'}->global_informations();
    $converter->{'global_commands'}
       = $converter->{'parser'}->global_commands_information();
    foreach my $global_command ('documentencoding') {
      if (defined($converter->{'global_commands'}->{$global_command})) {
        my $element = $converter->{'global_commands'}->{$global_command}->[0];
        if ($global_command eq 'documentencoding'
            and defined($element->{'extra'})
            and defined($element->{'extra'}->{'input_perl_encoding'})) {
          $converter->{'OUTPUT_ENCODING_NAME'} 
             = $element->{'extra'}->{'input_encoding_name'};
          $converter->{'OUTPUT_PERL_ENCODING'} 
             = $element->{'extra'}->{'input_perl_encoding'};
        }
      }
    }
    if (!$expanded_formats and $converter->{'parser'}->{'EXPANDED_FORMATS'}) {
      $expanded_formats = $converter->{'parser'}->{'EXPANDED_FORMATS'};
    }
  }
  if ($expanded_formats) {
    foreach my $expanded_format(@$expanded_formats) {
      $converter->{'expanded_formats_hash'}->{$expanded_format} = 1;
    }
  }

  bless $converter;
  return $converter;
}

sub convert_tree($$)
{
  my $self = shift;
  my $element = shift;

  return _convert($element);
}

sub convert($$)
{
  my $self = shift;
  my $element = shift;

  return _convert($element);
}

# determine outfile and output to that file
my $STDIN_DOCU_NAME = 'stdin';
sub output($$)
{
  my $self = shift;
  my $tree = shift;
  #print STDERR "OUTPUT\n";
  my $input_basename;
  if (defined($self->{'parser_info'}->{'input_file_name'})) {
    my ($directories, $suffix);
    ($input_basename, $directories, $suffix)
       = fileparse($self->{'parser_info'}->{'input_file_name'});
  } else {
    # This could happen if called on a piece of texinfo
    $input_basename = '';
  }
  $input_basename = $STDIN_DOCU_NAME if ($input_basename eq '-');
  $input_basename =~ s/\.te?x(i|info)?$//;

  my $setfilename;
  $setfilename
   = $self->{'global_commands'}->{'setfilename'}->{'extra'}->{'text_arg'}
    if ($self->{'global_commands'} and $self->{'global_commands'}->{'setfilename'}
        and $self->{'global_commands'}->{'setfilename'}->{'extra'}
        and defined($self->{'global_commands'}->{'setfilename'}->{'extra'}->{'text_arg'}));
  my $outfile;
  if (!defined($self->{'OUTFILE'})) {
    if (defined($setfilename)) {
      $outfile = $setfilename;
      $outfile =~ s/\.[^\.]*$//;
    } elsif ($input_basename ne '') {
      $outfile = $input_basename;
    }
    if (defined($outfile)) {
      $outfile .= '.txt';
    }
    if (defined($self->{'SUBDIR'})) {
      my $destination_directory = File::Spec->canonpath($self->{'SUBDIR'});
      if (! -d $destination_directory) {
        if (!mkdir($destination_directory, oct(755))) {
          #sprintf(__(
          #   "could not create directory `%s': %s"),
          #   $destination_directory, $!));
          return undef;
        }
      }
      $outfile = File::Spec->catfile($destination_directory, $outfile);
    }
  } else {
    $outfile = $self->{'OUTFILE'};
  }
  my $fh;
  $self->{'output_files'} = {};
  if (defined($outfile)) {
    $fh = Texinfo::Common::output_files_open_out(
                             $self->{'output_files'}, $self,
                             $outfile);
    return undef if (!$fh);
  }
  # mostly relevant for 'enabled_encoding', other options should be the same.
  my %options = copy_options_for_convert_text($self);
  # remove $self Text converter without translation nor error reporting.
  delete $options{'converter'};
  # Some functions call $self->get_conf(), so the options need to be a blessed
  # reference, merge specific Text options with $self (possibly
  # overwriting/ignoring but values should be the same).
  %$self = (%$self, %options);
  my $result = _convert($tree, $self);
  if ($fh) {
    print $fh $result;
    Texinfo::Common::output_files_register_closed(
                  $self->{'output_files'}, $outfile);
    return undef if (!close($fh));
    $result = '';
  }
  return $result;
}

sub get_conf($$)
{
  my $self = shift;
  my $key = shift;

  return $self->{$key};
}

sub errors()
{
  return undef;
}

sub converter_defaults()
{
  return ();
}

sub output_files_information($)
{
  my $self = shift;
  return $self->{'output_files'};
}

1;

__END__

=head1 NAME

Texinfo::Convert::Text - Convert Texinfo tree to simple text

=head1 SYNOPSIS

  use Texinfo::Convert::Text qw(convert_to_text ascii_accent text_accents);

  my $result = convert_to_text($tree);
  my $result_encoded = convert_to_text($tree, 
             {'enabled_encoding' => 'utf-8'});
  my $result_converter = convert_to_text($tree,
             {'converter' => $converter});

  my $result_accent_text = ascii_accent('e', $accent_command);
  my $accents_text = text_accents($accents, 'utf-8');

=head1 DESCRIPTION

Texinfo::Convert::Text is a simple backend that converts a Texinfo tree
to simple text.  It is used for some command argument expansion in
C<Texinfo::Parser>, for instance the file names, or encoding names.
It is also used in some converters, especially for file names.
The converter is very simple, and, in the default case, cannot handle 
output strings translation or error handling.

=head1 METHODS

=over

=item $result = convert_to_text($tree, $options)

Convert a Texinfo tree to simple text.  I<$options> is a hash reference of 
options.  The converter is very simple, and has almost no internal state besides
the options.  It cannot handle as is output strings translation or error 
storing.

If the I<converter> option is set, some additional features may be available
for the conversion of some @-commands, like output strings translation or
error reporting.

The following options may be set:

=over

=item enabled_encoding

If set, the value is considered to be the encoding name texinfo accented
letters should be converted to.  This option corresponds to the 
C<--enable-encoding> option, or the C<ENABLE_ENCODING> customization 
variable.

=item sc

If set, the text is upper-cased.

=item code

If set the text is in code style.  (mostly --, ---, '' and `` are kept as 
is).

=item NUMBER_SECTIONS

If set, sections are numbered when output.

=item sort_string

A somehow internal option to convert to text more suitable for alphabetical
sorting rather than presentation.

=item converter

If this converter object is passed to the function, some features of this
object may be used during conversion.  Mostly error reporting and strings
translation, as the converter object is also supposed to be a 
L<Texinfo::Report> objet.  See also L<Texinfo::Convert::Converter>.

=item expanded_formats_hash

A reference on a hash.  The keys should be format names (like C<html>, 
C<tex>), and if the corresponding  value is set, the format is expanded.

=back

=item $result_accent_text = ascii_accent($text, $accent_command)

I<$text> is the text appearing within an accent command.  I<$accent_command>
should be a Texinfo tree element corresponding to an accent command taking
an argument.  The function returns a transliteration of the accented
character.

=item $result_accent_text = ascii_accent_fallback($converter, $text, $accent_command)

Same as C<ascii_accent> but  with an additional first argument
converter, which is in ignored, but needed if this function is to 
be in argument of functions that need a fallback for accents
conversion.

=item $accents_text = text_accents($accents, $encoding, $set_case)

I<$accents> is an accent command that may contain other nested accent 
commands.  The function will format the whole stack of nested accent 
commands and the innermost text.  If I<$encoding> is set, the formatted
text is converted to this encoding as much as possible instead of being
converted as simple ascii.  If I<$set_case> is positive, the result
is meant to be upper-cased, if it is negative, the result is to be 
lower-cased.

=back

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=cut
