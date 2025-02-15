#! /usr/bin/env perl

# generate_code_convert_data.pl: generate perl hashes and C structures
# based on data information on representation of commands as text and
# unicode characters
#
# Copyright 2024-2025 Free Software Foundation, Inc.
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

use Encode;
use File::Basename;

my $program_name = basename($0);

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

sub _unicode_characters
{
  my $unicode_map = shift;

  my $result = {};

  foreach my $command (keys(%$unicode_map)) {
  # FIXME Using charnames::vianame as in the following is the clean documented
  # way to create an unicode character at runtime.  However, in tests of perl
  # 5.10.1 (on solaris), if charnames::vianame is used for @aa{} '00E5', uc()
  # on the resulting character does not leads to \x{00C5} (@AA{}) (when
  # formatting @sc{@aa{}} or @var{@aa{}} in plaintext).
  #  $result->{$command}
  #    = charnames::vianame("U+$unicode_map{$command}");
    my $char_nr = hex($unicode_map->{$command});
    if ($char_nr > 126 and $char_nr < 255) {
      # this is very strange, indeed.  The reason lies certainly in the
      # magic backward compatibility support in Perl for 8bit encodings.
      $result->{$command} =
         Encode::decode("iso-8859-1", chr($char_nr));
    } else {
      $result->{$command} = chr($char_nr);
    }
  }
  return $result;
}

my $commands_text_file = $ARGV[0];
die "Need an input file\n" if (!defined($commands_text_file));

open(CMD, $commands_text_file)
  or die "open $commands_text_file: $!";

my %commands_map = (
 '\\t' => "\t",
 '\\n' => "\n",
 '\\x20' => ' ',
  '\"' => '"',
  '\\\\' => '\\',
);

# map to the preferred name for command
my %character_command_name;
foreach my $command (keys(%commands_map)) {
  my $character = $commands_map{$command};
  if ($character ne ' ' and $character ne '"') {
    $character_command_name{$commands_map{$command}} = $command;
  }
}

my $map;
my %maps;
my %ordered_maps;
my $line = 1;
while (<CMD>) {
  if (not (/^ *#/ or /^ *$/)) {
    chomp;
    if (/^ *-- *(\S+)/) {
      $map = $1;
      if (!defined($maps{$map})) {
        $maps{$map} = {};
        $ordered_maps{$map} = [];
      }
    } elsif (defined($map)) {
      my $command;
      my $value = '';
      if (/^([^ ]+) +(.+)$/) {
        $command = $1;
        $value = $2;
        if (!defined($value) or $value =~ /^ +$/) {
          $value = '';
        }
      } elsif (/^([^ ]+)$/) {
        $command = $1;
      }
      my $command_name;
      if (exists $commands_map{$command}) {
        $command_name = $commands_map{$command};
      } else {
        $command_name = $command;
      }
      if ($value and exists $commands_map{$value}) {
        $value = $commands_map{$value};
      }

      $maps{$map}->{$command_name} = $value;
      push @{$ordered_maps{$map}}, [$command_name, $value];
    }
  }
  $line++;
}

my $lang = $ARGV[1];
die "Need a programming language\n" if (!defined($lang));

my $perl_format = 0;
my $C_format = 0;
if ($lang eq 'perl') {
  $perl_format = 1;
} else {
  $C_format = 1;
}

my @commands_order = ('');

my %name_commands;
my $text_file = $ARGV[2];

die "Need a file for text tables\n" if (!defined($text_file));

open(TEXT, '>', $text_file) or die "Open $text_file: $!\n";

my $commands_text_base_name = basename($commands_text_file);

if ($perl_format) {
  print TEXT "# Automatically generated by $program_name\n";
  print TEXT "# Generated from $commands_text_base_name\n\n";

  print TEXT "package Texinfo::TextData;\n\n";

  foreach my $map (sort(keys(%maps))) {
    print TEXT "our \%$map = (\n";
    my $ordered_map = $ordered_maps{$map};
    foreach my $command_value (@$ordered_map) {
      my ($command, $value) = @$command_value;
      my $command_double_quotes = 0;
      my $value_double_quotes = 0;
      if (exists($character_command_name{$command})) {
        $command = $character_command_name{$command};
        $command_double_quotes = 1;
      } elsif ($command eq "'") {
        $command_double_quotes = 1;
      }
      if (exists($character_command_name{$value})) {
        $value = $character_command_name{$value};
        $value_double_quotes = 1;
      } elsif ($value eq "'") {
        $value_double_quotes = 1;
      }
      my $command_code_string;
      if ($command_double_quotes) {
        $command_code_string = "\"$command\"";
      } else {
        $command_code_string = "'$command'";
      }
      my $value_code_string;
      if ($value_double_quotes) {
        $value_code_string = "\"$value\"";
      } else {
        $value_code_string = "'$value'";
      }
      print TEXT "    $command_code_string    => $value_code_string,\n";
    }
    print TEXT ");\n\n";
  }

  close(TEXT);
  exit(0);
}

# Remainder if for $C_format
my $unicode_diacritics = $maps{'unicode_diacritics'};

my ($normalization_file, $unicode_file, $commands_order_file);

$unicode_file = $ARGV[3];
  die "Need a file for unicode tables\n" if (!defined($unicode_file));

$commands_order_file = $ARGV[4];
 die "Need a commands order input file\n" if (!defined($commands_order_file));

open(ORDER, $commands_order_file)
  or die "open $commands_order_file: $!";
  
while (<ORDER>) {
  my $command;
  if (/^{"([^"]+?)", /) {
    $command = $1;
  } elsif (/^{"\\"", /) {
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

open(UNIC, '>', $unicode_file) or die "Open $unicode_file: $!\n";

print UNIC "/* Automatically generated by $program_name */\n";
print UNIC "/* Generated from $commands_text_base_name */\n\n";

print UNIC "#include \"unicode.h\"\n\n";
print UNIC "const DIACRITIC_UNICODE unicode_diacritics[] = {\n";

foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }

  if (defined($unicode_diacritics->{$command_name})) {
    my $numeric_codepoint = hex($unicode_diacritics->{$command_name});
    my $result = chr($numeric_codepoint);
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print UNIC "{\"$protected\", \"$numeric_codepoint\","
              ." \"$unicode_diacritics->{$command_name}\"},  /* $command */\n";
  } else {
    print UNIC "{0, 0, 0},\n";
  }
}
print UNIC "};\n\n";

foreach my $map ('base_unicode_map', 'extra_unicode_map') {
  my $unicode_map = $maps{$map};
  my $unicode_chars_map = _unicode_characters($unicode_map);
  print UNIC "const COMMAND_UNICODE_CHARACTER $map\[] = {\n";
  foreach my $command_name (@commands_order) {
    my $command = $command_name;
    if (exists($name_commands{$command_name})) {
       $command = $name_commands{$command_name};
    }
    #print UNIC "$command; ";

    if (defined($unicode_map->{$command_name})) {
      my $encoded_character = $unicode_chars_map->{$command_name};
      my $protected = '"'.join ('', map {_protect_char($_)} split ('', $encoded_character)).'"';
      my $codepoint = '"'.$unicode_map->{$command_name}.'"';
      # note that this is not used for ASCII characters and some specific
      # characters.
      # This could be constructed in C, but having it in a const table
      # avoids the need to allocate memory.
      my $css_string = '"\\\\'.$unicode_map->{$command_name}.' "';
      print UNIC "{$codepoint, $protected, $css_string},   /* $command */\n";
    } else {
      print UNIC "{0, 0, 0},\n";
    }
  }
  print UNIC "};\n\n";
}

close(UNIC);

my $nobrace_symbol_text = $maps{'nobrace_symbol_text'};

print TEXT "/* Automatically generated from $program_name */\n";
print TEXT "/* Generated from $commands_text_base_name */\n\n";

print TEXT "#include <config.h>\n\n";
print TEXT "#include \"convert_to_text.h\"\n\n";

print TEXT "const char *nobrace_symbol_text[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($nobrace_symbol_text->{$command_name})) {
    my $symbol = $nobrace_symbol_text->{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $symbol));
    print TEXT "\"$protected\",   /* $command */\n";
  } else {
    print TEXT "0,\n";
  }
}
print TEXT "};\n\n";

my $text_brace_no_arg_commands = $maps{'text_brace_no_arg_commands'};

print TEXT "const char *text_brace_no_arg_commands[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($text_brace_no_arg_commands->{$command_name})) {
    my $result = $text_brace_no_arg_commands->{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print TEXT "\"$protected\",   /* $command */\n";
  } else {
    print TEXT "0,\n";
  }
}
print TEXT "};\n\n";

my $sort_brace_no_arg_commands = $maps{'sort_brace_no_arg_commands'};

print TEXT "const char *sort_brace_no_arg_commands[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if (defined($sort_brace_no_arg_commands->{$command_name})) {
    my $result = $sort_brace_no_arg_commands->{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print TEXT "\"$protected\",   /* $command */\n";
  } else {
    print TEXT "0,\n";
  }
}
print TEXT "};\n\n";

close(TEXT);
