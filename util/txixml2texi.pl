#! /usr/bin/env perl
#
# texixml2texi -- convert Texinfo XML to Texinfo code
#
# Copyright 2012-2025 Free Software Foundation, Inc.
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

use strict;
use warnings;

use Getopt::Long qw(GetOptions);
# for dirname and fileparse.
use File::Basename;
use File::Spec;
use Encode;

Getopt::Long::Configure("gnu_getopt");

BEGIN
{
  my ($real_command_name, $command_directory, $command_suffix)
     = fileparse($0, '.pl');

  my $updir = File::Spec->updir();

  my $datadir = '@datadir@';
  my $converter = '@CONVERTER@';
  my $libdir = '@libdir@';
  my $xsdir;

  # in-source run
  if ($datadir eq '@' .'datadir@'
      or defined($ENV{'TEXINFO_DEV_SOURCE'})
         and $ENV{'TEXINFO_DEV_SOURCE'} ne '0') {

    # Use uninstalled modules
    my $t2a_builddir;
    if (defined($ENV{'t2a_builddir'})) {
      $t2a_builddir = $ENV{'t2a_builddir'};
    } else {
      if (defined($ENV{'top_builddir'})) {
        $t2a_builddir = join('/', ($ENV{'top_builddir'}, 'tta'));
      } else {
        $t2a_builddir = join('/', ($command_directory, $updir, 'tta'));
      }
      $ENV{'t2a_builddir'} = $t2a_builddir;
    }

    my $t2a_srcdir;
    if (defined($ENV{'t2a_srcdir'})) {
      $t2a_srcdir = $ENV{'t2a_srcdir'};
    } else {
      if (defined($ENV{'top_srcdir'})) {
        $t2a_srcdir = join('/', ($ENV{'top_srcdir'}, 'tta'));
      } else {
        $t2a_srcdir = join('/', ($command_directory, $updir, 'tta'));
      }
      $ENV{'t2a_srcdir'} = $t2a_srcdir;
    }

    # to find Texinfo::ModulePath
    unshift @INC, join('/', ($t2a_builddir, 'perl'));

    require Texinfo::ModulePath;
    Texinfo::ModulePath::init(undef, undef, undef);
  } else {
    # Look for modules in their installed locations.
    my $modules_dir = join('/', ($datadir, $converter));
    # look for package data in the installed location.
    my $modules_converterdatadir = $modules_dir;

    # try to make package relocatable, will only work if
    # standard relative paths are used
    if (! -f join('/', ($modules_dir, 'Texinfo', 'Parser.pm'))
        and -f join('/', ($command_directory, $updir, 'share',
                                   $converter, 'Texinfo', 'Parser.pm'))) {
      $modules_dir = join('/', ($command_directory, $updir,
                                          'share', $converter));
      $modules_converterdatadir = join('/', ($command_directory, $updir,
                                          'share', $converter));
      $xsdir = join('/', ($command_directory, $updir,
                                          'lib', $converter));
    }
    unshift @INC, $modules_dir;

    require Texinfo::ModulePath;
    Texinfo::ModulePath::init($modules_dir, $xsdir, $modules_converterdatadir,
                              'installed' => 1);
  }
}

use XML::LibXML::Reader;

use Texinfo::Commands;
# gather information on Texinfo markup language elements
use Texinfo::Convert::TexinfoMarkup;

my $debug = 0;
my $result_options = Getopt::Long::GetOptions (
 'debug|d' => \$debug,
);

# to get unbuffered output
if ($debug) {
  my $previous_default = select(STDOUT);  # save previous default
  $|++;                                   # autoflush STDOUT
  select(STDERR);
  $|++;                                   # autoflush STDERR, to be sure
  select($previous_default);              # restore previous default
}

sub command_with_braces($)
{
  my $command = shift;
  if ($command =~ /^[a-z]/i) {
    return "\@".$command.'{}';
  } else {
    return "\@".$command;
  }
}

my %ignored_elements = (
  'prepend' => 1,
  'formalarg' => 1,
  # not ignored everytime
  'indexterm' => 1,
);

my %elements_end_attributes = (
  'accent' => 1,
  'menunode' => 1,
  'menutitle' => 1,
);

# keys are markup elements.  If the element is associated to one @-command
# only, the value is a string, the corresponding @-command formatted.
# If the element is associated to more than one @-command, the value is a
# hash to select the command based on an attribute value.  They key of the
# hash attribute is an attribute name and the value is another hash
# reference which associates an attribute value to the formatted @-command
# string.
my %element_at_commands;

# entities not associated to @-commands
my %entity_texts = (
  'textldquo' => '``',
  'textrdquo' => "''",
  'textmdash' => '---',
  'textndash' => '--',
  'textrsquo' => "'",
  'textlsquo' => '`',
  'formfeed' => "\f",
  'verticaltab' => "\x{000B}",
  # following mappings are not used in pratice, as attrformfeed and similar
  # appear in attributes and thus are already expanded to text.
  'attrformfeed' => "\f",
  'attrverticaltab' => "\x{000B}",
);

# contains nobrace symbol and brace noarg commands
my %no_arg_commands_formatting
  = %Texinfo::Convert::TexinfoMarkup::no_arg_commands_formatting;

foreach my $command (keys(%no_arg_commands_formatting)) {
  if (!ref($no_arg_commands_formatting{$command})) {
    $entity_texts{$no_arg_commands_formatting{$command}}
      = command_with_braces($command);
  } else {
    my $spec = $no_arg_commands_formatting{$command};
    my $element = $spec->[0];
    if ($element eq 'spacecmd') {
      if ($spec->[1]->[0] eq 'type') {
        $element_at_commands{$element}->{"type"}->{$spec->[1]->[1]}
          = command_with_braces($command);
      } else {
        die "BUG, bad spacecmd specification";
      }
    } else {
      $element_at_commands{$element} = command_with_braces($command);
    }
  }
}

my %arg_elements;
my %variadic_elements;

foreach my $command (keys(%Texinfo::Convert::TexinfoMarkup::commands_args_elements)) {
  my $arg_index = 0;
  my @element_arguments
    = @{$Texinfo::Convert::TexinfoMarkup::commands_args_elements{$command}};
  foreach my $element_argument (@element_arguments) {
    if ($element_argument ne '*') {
      # need to disambiguate by command as some markup argument elements
      # are common, for @*ref, for example.  It should not matter, in general,
      # if the argument indices are the same, which should be the case, but
      # it is cleaner anyway.
      $arg_elements{$element_argument}->{$command} = $arg_index;
    } else {
      my $previous_element_argument = $element_arguments[$arg_index - 1];
      $variadic_elements{$previous_element_argument}->{$command} = $arg_index;
    }
    $arg_index++;
  }
}

my %accent_type_command;
foreach my $accent_command (keys(%Texinfo::Convert::TexinfoMarkup::accent_types)) {
  $accent_type_command{$Texinfo::Convert::TexinfoMarkup::accent_types{$accent_command}}
    = $accent_command;
}

my %eat_space_elements;
foreach my $element ('texinfo', 'filename') {
  $eat_space_elements{$element} = 1;
}

my $infile = shift @ARGV;

if (!defined($infile) or $infile !~ /\S/) {
  die "Missing file\n";
}

my $reader_options = {'location' => $infile,
                      'expand_entities' => 0,
                      'pedantic_parser' => $debug,
                      #'validation' => 1,
                     };
my $reader = XML::LibXML::Reader->new($reader_options)
       or die "cannot read $infile\n";

sub skip_until_end($$)
{
  my $reader = shift;
  my $name = shift;
  while ($reader->read) {
    if ($reader->nodeType() eq XML_READER_TYPE_END_ELEMENT
        and $reader->name eq $name) {
      return;
    }
  }
}

sub unprotect_spaces($)
{
  my $spaces = shift;

  if (defined($spaces)) {
    $spaces =~ s/\\n/\n/g;
    # convert back formfeed and other special characters
    $spaces =~ s/\\f/\f/g;
    $spaces =~ s/\\v/\x{000B}/g;
    return $spaces;
  } else {
    return '';
  }
}

my $perl_encoding;
sub _encode($)
{
  my $input_text = shift;
  if (defined($perl_encoding)) {
    return Encode::encode($perl_encoding, $input_text);
  } else {
    return $input_text;
  }
}

my $eat_space = 0;
my $skip_comment = 0;
my @commands_with_args_stack;

while ($reader->read) {

  # ============================================================ begin debug
  if ($debug) {
    my $args_stack_str = join('|', map {'['.$_->[0].','.$_->[1].']'}
                                        @commands_with_args_stack);
    printf STDERR "(args: $args_stack_str) (eat_space $eat_space) (skip_comment $skip_comment) %d %d %s %d", (
          $reader->depth, $reader->nodeType, $reader->name, $reader->isEmptyElement);
    my $value = '';
    if ($reader->hasValue()) {
      $value = $reader->value();
      $value =~ s/\n/\\n/g;
      print STDERR " |$value|";
    }
    if ($reader->nodeType() eq XML_READER_TYPE_ELEMENT
        and $reader->hasAttributes()
        and defined($reader->getAttribute('spaces'))) {
      my $spaces = $reader->getAttribute('spaces');
      print STDERR " spaces:$spaces|";
    }
    print STDERR "\n";
  }
  # ============================================================ end debug

  if ($reader->nodeType() eq XML_READER_TYPE_SIGNIFICANT_WHITESPACE
      and $eat_space) {
    $eat_space = 0;
    next;
  } elsif ($reader->nodeType() eq XML_READER_TYPE_TEXT
      or $reader->nodeType() eq XML_READER_TYPE_WHITESPACE
      or $reader->nodeType() eq XML_READER_TYPE_SIGNIFICANT_WHITESPACE
     ) {
    if ($reader->hasValue()) {
      my $value = $reader->value();
      print _encode($value);
    }
  }
  my $name = $reader->name;
  if ($reader->nodeType() eq XML_READER_TYPE_ELEMENT) {
    my $user_defined_index_command;
    if (($name eq 'entry' or $name eq 'indexcommand')
        and $reader->hasAttributes()
        and defined($reader->getAttribute('command'))) {
      $name = $reader->getAttribute('command');
      $user_defined_index_command = 1;
    } elsif ($name eq 'listitem') {
      $name = 'item';
    }
    if ($Texinfo::Convert::TexinfoMarkup::commands_args_elements{$name}) {
      push @commands_with_args_stack, [$name, 0];
    }
    my $spaces = unprotect_spaces($reader->getAttribute('spaces'));
    my $spaces_after_command
      = unprotect_spaces($reader->getAttribute('spacesaftercmd'));
    if ($name eq 'accent') {
      if ($reader->hasAttributes()) {
        if (defined($reader->getAttribute('type'))) {
          my $command = $accent_type_command{$reader->getAttribute('type')};
          print _encode("\@${command}${spaces_after_command}")
            if (defined($command));
        }
        if (!(defined($reader->getAttribute('bracketed'))
              and $reader->getAttribute('bracketed') eq 'off')) {
          print _encode('{');
        }
      } else {
        print _encode('{');
      }
    } elsif (exists $element_at_commands{$name}) {
      if (!ref($element_at_commands{$name})) {
        print _encode($element_at_commands{$name});
      } else {
        my ($attribute) = keys(%{$element_at_commands{$name}});
        if ($reader->hasAttributes()
            and defined($reader->getAttribute($attribute))) {
          print _encode($element_at_commands{$name}->{$attribute}->{
                             $reader->getAttribute($attribute)});
        }
      }
    } elsif (exists($Texinfo::Commands::brace_commands{$name})) {
      print _encode("\@${name}${spaces_after_command}".'{');
      if ($name eq 'verb' and $reader->hasAttributes()
          and defined($reader->getAttribute('delimiter'))) {
        print _encode($reader->getAttribute('delimiter'));
      }
      print _encode($spaces);
    } elsif (exists($Texinfo::Commands::block_commands{$name})) {
      print _encode("\@$name");
      if ($name eq 'macro' or $name eq 'rmacro' or $name eq 'linemacro') {
        if ($reader->hasAttributes() and defined($reader->getAttribute('line'))) {
          print _encode($reader->getAttribute('line'));
        }
      } else {
        # leading spaces are already in the line attribute for (r)macro
        print _encode($spaces);
      }
    } elsif (defined($Texinfo::Commands::line_commands{$name})
             or defined($Texinfo::Commands::nobrace_commands{$name})
             or $user_defined_index_command) {
      if ($reader->hasAttributes()
          and defined($reader->getAttribute('originalcommand'))) {
        $name = $reader->getAttribute('originalcommand');
      }
      if ($name eq 'documentencoding' and $reader->hasAttributes()
          and defined($reader->getAttribute('encoding'))) {
        my $resolved_encoding
          = Encode::resolve_alias($reader->getAttribute('encoding'));

        if (defined($resolved_encoding)) {
          $perl_encoding = $resolved_encoding;
          if ($debug) {
            print STDERR "Using encoding $resolved_encoding\n";
          }
          # prefer encoding with _encode, as using binmode is unreliable
          # unless set at the file opening and never changed again.
          #binmode(STDOUT, ":encoding($resolved_encoding)");
        }
      }
      print _encode("\@$name$spaces");
      if ($reader->hasAttributes() and defined($reader->getAttribute('line'))) {
        my $line = $reader->getAttribute('line');
        $line =~ s/\\\\/\x{1F}/g;
        # convert back formfeed
        $line =~ s/\\f/\f/g;
        $line =~ s/\x{1F}/\\/g;
        # FIXME needed?
        #$line =~ s/\\v/\x{000B}/g;
        print _encode($line);
      }
      my $specific_line = (defined($Texinfo::Commands::line_commands{$name})
                and $Texinfo::Commands::line_commands{$name} eq 'specific');
      if ($name eq 'columnfractions' or $specific_line) {
        skip_until_end($reader, $name);
        if ($name eq 'columnfractions' or $specific_line) {
          # specific line commands have a line argument obtained by converting
          # their line to Texinfo, which would include a comment on the line,
          # and could also have a comment associated to the command appearing
          # after the command as an XML comment.  Similar for columnfraction.
          #
          # We skip the possibly existing redundant XML comment following the
          # closing element.
          #
          # start at 2 as there is a -1 right down at the end of
          # the loop, and another -1 for the next element (possibly
          # an ignored comment).
          $skip_comment = 2;
        }
      }
    } elsif ($arg_elements{$name}) {
      # elements corresponding to @-commands arguments
      if ($reader->hasAttributes()
          and defined($reader->getAttribute('automatic'))
          and $reader->getAttribute('automatic') eq 'on') {
        skip_until_end($reader, $name);
        next;
      }
      my ($command, $current_index) = @{$commands_with_args_stack[-1]};
      my $arg_element_index = $arg_elements{$name}->{$command};
      if ($commands_with_args_stack[-1]->[1] < $arg_element_index) {
        while ($commands_with_args_stack[-1]->[1] < $arg_element_index) {
          $commands_with_args_stack[-1]->[1]++;
          print _encode(',');
        }
      } elsif ($commands_with_args_stack[-1]->[1] > 0) {
        # the index is already at or above the argument index.  Either it is
        # a variadic command, or an incorrect input.
        if ($variadic_elements{$name}
            and defined($variadic_elements{$name}->{$command})) {
          $commands_with_args_stack[-1]->[1]++;
          print _encode(',');
          # a debug consistency check
          my $variadic_arg_index = $variadic_elements{$name}->{$command};
          if ($commands_with_args_stack[-1]->[1] < $variadic_arg_index) {
            print STDERR "BUG: $command: $name: current index < variadic_arg_index: "
               ."$commands_with_args_stack[-1]->[1] < $variadic_arg_index\n"
                  if ($debug);
          }
        } else {
          # could happen with duplicate markup argument elements and
          # markup argument elements in the wrong order
          print STDERR "BAD INPUT: $command: $name(not variadic): "
                 ."current index >= arg_element_index: "
                 ."$commands_with_args_stack[-1]->[1] >= $arg_element_index\n"
                       if ($debug);
        }
      }
      print _encode($spaces);
    } elsif ($ignored_elements{$name}) {
      my $keep_indexterm = 0;
      if ($name eq 'indexterm') {
        my $node_path = $reader->nodePath();
        if ($node_path =~ m:([a-z]+)/indexterm$:) {
          my $parent = $1;
          if ($parent =~ /^[a-z]?[a-z]index$/ or $parent eq 'indexcommand') {
            $keep_indexterm = 1;
          }
        }
      }
      if (!$keep_indexterm) {
        #print STDERR "IGNORE $name\n" if ($debug);
        skip_until_end($reader, $name);
        next;
      }
    } elsif ($name eq 'formattingcommand') {
      if ($reader->hasAttributes()) {
        if (defined($reader->getAttribute('command'))
            and (not (defined($reader->getAttribute('automatic'))
                      and $reader->getAttribute('automatic') eq 'on'))) {
          print _encode('@'.$reader->getAttribute('command'));
        }
      }
    } elsif ($name eq 'infoenclose') {
      if ($reader->hasAttributes()
          and defined($reader->getAttribute('command'))) {
        my $command = $reader->getAttribute('command');
        print _encode("\@${command}${spaces_after_command}".'{'.$spaces);
      }
    # def* automatic
    } elsif ($reader->hasAttributes()
             and defined($reader->getAttribute('automatic'))
             and $reader->getAttribute('automatic') eq 'on') {
      skip_until_end($reader, $name);
      # eat the following space
      $reader->read();
    } elsif ($eat_space_elements{$name}) {
      $eat_space = 1;
    } else {
      print STDERR "UNKNOWN $name\n" if ($debug);
    }
    if ($reader->hasAttributes()) {
      if (defined($reader->getAttribute('bracketed'))
          and $reader->getAttribute('bracketed') eq 'on') {
        print _encode('{'.$spaces);
      }
      # menus 'star' and following spaces
      if (defined($reader->getAttribute('leadingtext'))) {
        print _encode($reader->getAttribute('leadingtext'));
      }
    }
    if ($Texinfo::Commands::block_commands{$name}
        and $Texinfo::Commands::block_commands{$name} eq 'item_line'
        and $reader->hasAttributes()
        and defined($reader->getAttribute('commandarg'))) {
      # happens when formatting command argument is missing and there
      # are no spaces.
      print _encode(' ') if ($spaces eq '');
      print _encode('@'.$reader->getAttribute('commandarg'));
    }
  } elsif ($reader->nodeType() eq XML_READER_TYPE_END_ELEMENT) {
    if ($Texinfo::Convert::TexinfoMarkup::commands_args_elements{$name}) {
      pop @commands_with_args_stack;
    }
    my $trailingspaces = '';
    if ($reader->hasAttributes()
        and defined($reader->getAttribute('trailingspaces'))) {
      $trailingspaces
         = unprotect_spaces($reader->getAttribute('trailingspaces'));
    }
    if ($reader->hasAttributes()) {
      if (defined($reader->getAttribute('bracketed'))
          and $reader->getAttribute('bracketed') eq 'on') {
        print _encode($trailingspaces);
        # such that spaces are not prepended below when prepended
        # for elements without bracketed attribute below
        $trailingspaces = '';
        print _encode('}');
      }
    }
    if (exists ($Texinfo::Commands::brace_commands{$name})) {
      if ($name eq 'verb' and $reader->hasAttributes()
          and defined($reader->getAttribute('delimiter'))) {
        print _encode($reader->getAttribute('delimiter'));
      }
      print _encode('}');
    } elsif (exists($Texinfo::Commands::block_commands{$name})) {
      my $end_spaces;
      if ($reader->hasAttributes()
          and defined($reader->getAttribute('endspaces'))) {
        $end_spaces = $reader->getAttribute('endspaces');
      }
      $end_spaces = ' ' if (!defined($end_spaces) or $end_spaces eq '');
      print _encode("\@end".$end_spaces.$name);
    } elsif (defined($Texinfo::Commands::line_commands{$name})
             or defined($Texinfo::Commands::nobrace_commands{$name})) {
      if ($Texinfo::Commands::root_commands{$name} and $name ne 'node') {
        $eat_space = 1;
      }
      print _encode($trailingspaces);
    } elsif ($elements_end_attributes{$name}) {
      if ($name eq 'accent') {
        if ($reader->hasAttributes()) {
          if (!(defined($reader->getAttribute('bracketed'))
                and $reader->getAttribute('bracketed') eq 'off')) {
            print _encode('}');
          }
        } else {
          print _encode('}');
        }
      } elsif ($reader->hasAttributes()
               and defined($reader->getAttribute('separator'))) {
        print $reader->getAttribute('separator');
        print _encode($trailingspaces);
      }
    } elsif ($name eq 'infoenclose') {
      print _encode($trailingspaces.'}');
    } elsif ($eat_space_elements{$name}) {
      $eat_space = 1;
    } else {
      print STDERR "END UNKNOWN $name\n" if ($debug);
      print _encode($trailingspaces);
    }
  } elsif ($reader->nodeType() eq XML_READER_TYPE_ENTITY_REFERENCE) {
    # for some reason XML_READER_TYPE_ENTITY is never emitted
    #       or $reader->nodeType() eq XML_READER_TYPE_ENTITY) {
    if (defined($entity_texts{$name})) {
      print _encode($entity_texts{$name});
    }
  } elsif ($reader->nodeType() eq XML_READER_TYPE_COMMENT) {
    my $comment;
    if ($reader->hasValue()) {
      $comment = $reader->value();
      $comment =~ s/^ (comment|c)//;
      my $command = $1;
      $comment =~ s/ $//;
      print _encode("\@${command}$comment") unless ($skip_comment);
    }
  } elsif ($reader->nodeType() eq XML_READER_TYPE_DOCUMENT_TYPE) {
    $eat_space = 1;
  }
  $skip_comment-- if ($skip_comment);
}

1;
