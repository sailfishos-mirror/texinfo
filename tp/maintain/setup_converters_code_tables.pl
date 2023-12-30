#! /usr/bin/env perl
# setup_converters_code_tables.pl: use perl data, mainly manually
# generated hashes, to generate corresponding C data.

# Copyright 2023 Free Software Foundation, Inc.
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

use strict;

use warnings;

use if $] >= 5.014, re => '/a';

# for file names portability
use File::Spec;
# for dirname and fileparse
use File::Basename;

use Encode;

BEGIN
{
  # do not load XS code, to avoid both depending on and generating
  # XS code.  Also we do not want to have to find XS object files.
  $ENV{'TEXINFO_XS'} = 'omit';
  # NOTE we do not use Texinfo::ModulePath as it may not have been
  # created yet, as tp/Texinfo/XS may be processed before tp.
  # Also we have less modules to find, only pure perl code.
  my ($real_command_name, $command_directory, $command_suffix)
   = fileparse($0, '.pl');
  my $updir = File::Spec->updir();
  # tp director
  my $tp_srcdir;
  if (defined($ENV{'srcdir'})) {
    # srcdir is tp/Texinfo/XS
    $tp_srcdir = File::Spec->catdir($ENV{'srcdir'}, $updir, $updir);
  } else {
    $tp_srcdir = File::Spec->catdir($command_directory, $updir);
  }
  unshift @INC, $tp_srcdir;
  my $lib_dir = File::Spec->catdir($tp_srcdir, 'maintain');
  # we ignore --with-external-*
  unshift @INC, (File::Spec->catdir($lib_dir, 'lib', 'libintl-perl', 'lib'));
  unshift @INC, (File::Spec->catdir($lib_dir, 'lib', 'Unicode-EastAsianWidth', 'lib'));
  unshift @INC, (File::Spec->catdir($lib_dir, 'lib', 'Text-Unidecode', 'lib'));
}

use Texinfo::Common;
use Texinfo::Convert::Text;
use Texinfo::Convert::Unicode;



my @commands_order = ('');

my %commands_map = (
 '\\t' => "\t",
 '\\n' => "\n",
 '\\x20' => ' ',
  '\"' => '"',
  '\\\\' => '\\',
);

my %name_commands;
while (<STDIN>) {
  my $command;
  if (/^"([^"]+?)", /) {
    $command = $1;
  } elsif (/^"\\"", /) {
    $command = '\"';
  }
  next if (!defined($command));
  my $command_name = $command;
  if (exists $commands_map{$command}) {
    $command_name = $commands_map{$command};
    $name_commands{$command_name} = $command;
  }
  push @commands_order, $command_name;
  #print STDERR "$command\n";
}

# Texinfo::Convert::NodeNameNormalization
my %normalize_node_brace_no_arg_commands
  = %Texinfo::Convert::Text::text_brace_no_arg_commands;
foreach my $command (keys(%Texinfo::Convert::Unicode::unicode_character_brace_no_arg_commands)) {
  $normalize_node_brace_no_arg_commands{$command} =
     $Texinfo::Convert::Unicode::unicode_character_brace_no_arg_commands{$command};
}

my %normalize_node_nobrace_symbol_text
  = %Texinfo::Common::nobrace_symbol_text;
$normalize_node_nobrace_symbol_text{'*'} = ' ';


# remove click to avoid having an arrow, the mapping depends on
# the clickstyle value

delete $normalize_node_brace_no_arg_commands{'click'};

sub _protect_char
{
  my $char = shift;
  return '\\n' if ($char eq "\n");
  if (ord($char) < 127 and $char ne '\\' and $char ne '"') {
    return $char;
  }
  my $encoded = Encode::encode('UTF-8', $char);
  return join('', map {"\\x".sprintf("%02x",ord($_))} split('', $encoded));
}

my $normalization_file = $ARGV[0];
die "Need a file for normalization tables\n"
   if (!defined($normalization_file));

my $unicode_file = $ARGV[1];
die "Need a file for unicode tables\n" if (!defined($unicode_file));

my $structuring_file = $ARGV[2];
die "Need a file for structuring tables\n" if (!defined($structuring_file));

my $symbol_file = $ARGV[3];
die "Need a file for symbols tables\n" if (!defined($symbol_file));

my $text_file = $ARGV[4];
die "Need a file for text tables\n" if (!defined($text_file));

my %unicode_diacritics = %Texinfo::Convert::Unicode::unicode_diacritics;
my %unicode_character_brace_no_arg_commands
   = %Texinfo::Convert::Unicode::unicode_character_brace_no_arg_commands;
my %unicode_map = %Texinfo::Convert::Unicode::unicode_map;
my %extra_unicode_map = %Texinfo::Convert::Unicode::extra_unicode_map;

open (UNIC, '>', $unicode_file) or die "Open $unicode_file: $!\n";

print UNIC '#include "unicode.h"'."\n\n";
print UNIC "DIACRITIC_UNICODE unicode_diacritics[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  #print UNIC "$command; ";

  if (defined($unicode_diacritics{$command_name})) {
    my $numeric_codepoint = hex($unicode_diacritics{$command_name});
    my $result = chr($numeric_codepoint);
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print UNIC "{\"$protected\", \"$numeric_codepoint\"},  /* $command */\n";
  } else {
    print UNIC "{0, 0},\n";
  }
}
print UNIC "};\n\n";

print UNIC "COMMAND_UNICODE unicode_character_brace_no_arg_commands[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  #print UNIC "$command; ";

  if (defined($unicode_map{$command_name})
      or defined($unicode_character_brace_no_arg_commands{$command_name})) {
    my $result = 0;
    my $protected = 0;
    if (defined($unicode_character_brace_no_arg_commands{$command_name})) {
      $result = $unicode_character_brace_no_arg_commands{$command_name};
      $protected = '"'.join ('', map {_protect_char($_)} split ('', $result)).'"';
    }
    my $codepoint = 0;
    if (defined($unicode_map{$command_name})) {
      $codepoint = '"'.$unicode_map{$command_name}.'"';
    }
    my $is_extra = 0;
    if (defined($extra_unicode_map{$command_name})) {
      $is_extra = 1;
    }
    print UNIC "{$codepoint, $protected, $is_extra},   /* $command */\n";
  } else {
    print UNIC "{0, 0, -1},\n";
  }
}
print UNIC "};\n\n";

close(UNIC);

my %command_structuring_level = %Texinfo::Common::command_structuring_level;
my %level_to_structuring_command
  = %Texinfo::Common::level_to_structuring_command;

open (STRUC, '>', $structuring_file) or die "Open $structuring_file: $!\n";

print STRUC "#include \"command_ids.h\"\n\n";
print STRUC "int command_structuring_level[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($command_structuring_level{$command_name})) {
    print STRUC "$command_structuring_level{$command_name},  /* $command */\n";
  } else {
    print STRUC "-1,\n";
  }
}
print STRUC "};\n\n";

print STRUC "enum command_id level_to_structuring_command[][5] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($level_to_structuring_command{$command_name})) {
    print STRUC "{";
    foreach my $structuring_command
        (@{$level_to_structuring_command{$command_name}}) {
      # level 0 not defined except for unnumbered
      $structuring_command = 'NONE' if (!defined($structuring_command));
      print STRUC "CM_$structuring_command, ";
    }
    print STRUC "},  /* $command */\n";
  } else {
    print STRUC "{0, 0, 0, 0, 0},\n";
  }
}
print STRUC "};\n\n";

close (STRUC);

open (SYMB, '>', $symbol_file) or die "Open $symbol_file: $!\n";

print SYMB "char *nobrace_symbol_text[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($Texinfo::Common::nobrace_symbol_text{$command_name})) {
    my $symbol = $Texinfo::Common::nobrace_symbol_text{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $symbol));
    print SYMB "\"$protected\",   /* $command */\n";
  } else {
    print SYMB "0,\n";
  }
}
print SYMB "};\n\n";

close(SYMB);

open (TEXT, '>', $text_file) or die "Open $text_file: $!\n";

print TEXT "char *text_brace_no_arg_commands[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($Texinfo::Convert::Text::text_brace_no_arg_commands{$command_name})) {
    my $result = $Texinfo::Convert::Text::text_brace_no_arg_commands{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print TEXT "\"$protected\",   /* $command */\n";
  } else {
    print TEXT "0,\n";
  }
}
print TEXT "};\n\n";

print TEXT "char *sort_brace_no_arg_commands[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($Texinfo::Convert::Text::sort_brace_no_arg_commands{$command_name})) {
    my $result = $Texinfo::Convert::Text::sort_brace_no_arg_commands{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print TEXT "\"$protected\",   /* $command */\n";
  } else {
    print TEXT "0,\n";
  }
}
print TEXT "};\n\n";

close(TEXT);

open (NORM, '>', $normalization_file) or die "Open $normalization_file: $!\n";

print NORM "char * command_normalization_text[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  #print NORM "$command; ";

  my $result;
  if (defined($normalize_node_nobrace_symbol_text{$command_name})) {
    $result = $normalize_node_nobrace_symbol_text{$command_name};
  } elsif (defined($normalize_node_brace_no_arg_commands{$command_name})) {
    $result = $normalize_node_brace_no_arg_commands{$command_name};
  }

  if (defined($result)) {
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print NORM "\"$protected\",  /* $command */\n";
  } else {
    print NORM "0,\n";
  }
}
print NORM "};\n\n";

close(NORM);

