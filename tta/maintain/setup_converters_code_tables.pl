#! /usr/bin/env perl
# setup_converters_code_tables.pl: use perl data, mainly manually
# generated hashes, to generate corresponding C data.

# Copyright 2023-2025 Free Software Foundation, Inc.
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
# for fileparse and basename
use File::Basename;

use Encode;

my $program_name = basename($0);

BEGIN
{
  # do not load XS code, to avoid both depending on and generating
  # XS code.  Also we do not want to have to find XS object files.
  $ENV{'TEXINFO_XS'} = 'omit';
  # NOTE we do not use Texinfo::ModulePath as it may not have been
  # created yet, as tta/C may be processed before tta.
  # Also we have less modules to find, only pure Perl code.
  my ($real_command_name, $command_directory, $command_suffix)
   = fileparse($0, '.pl');
  my $updir = File::Spec->updir();
  # tta directory
  my $t2a_srcdir;
  if (defined($ENV{'srcdir'})) {
    # srcdir is tta/C
    $t2a_srcdir = join('/', ($ENV{'srcdir'}, $updir));
  } else {
    $t2a_srcdir = join('/', ($command_directory, $updir));
  }

  # find Perl Texinfo modules in srcdir
  unshift @INC, join('/', ($t2a_srcdir, 'perl'));

  my $lib_dir = join('/', ($t2a_srcdir, 'maintain'));
  # we ignore --with-external-*
  unshift @INC, join('/', ($lib_dir, 'lib', 'libintl-perl', 'lib'));
  unshift @INC, join('/', ($lib_dir, 'lib', 'Unicode-EastAsianWidth', 'lib'));
  unshift @INC, join('/', ($lib_dir, 'lib', 'Text-Unidecode', 'lib'));
}

use Texinfo::Common;
use Texinfo::Convert::Unicode;
use Texinfo::Convert::Text;
use Texinfo::Convert::Converter;


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

my $structuring_file = $ARGV[0];
die "Need a file for structuring tables\n" if (!defined($structuring_file));

my $converter_file = $ARGV[1];
die "Need a file for converter tables\n" if (!defined($converter_file));

my %command_structuring_level = %Texinfo::Common::command_structuring_level;
my %level_to_structuring_command
  = %Texinfo::Common::level_to_structuring_command;

open(STRUC, '>', $structuring_file) or die "Open $structuring_file: $!\n";

print STRUC "/* Automatically generated from $program_name */\n\n";

print STRUC "#include \"command_ids.h\"\n\n";
print STRUC "int const command_structuring_level[] = {\n";
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

close (STRUC);

my %xml_text_entity_no_arg_commands
 = %Texinfo::Convert::Converter::xml_text_entity_no_arg_commands;

open(CONV, '>', $converter_file) or die "Open $converter_file: $!\n";

print CONV "/* Automatically generated from $program_name */\n\n";

print CONV "const char *xml_text_entity_no_arg_commands[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  #print CONV "$command; ";

  my $result = $xml_text_entity_no_arg_commands{$command_name};

  if (defined($result)) {
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print CONV "\"$protected\",  /* $command */\n";
  } else {
    print CONV "0,\n";
  }
}
print CONV "};\n\n";

close(CONV);


