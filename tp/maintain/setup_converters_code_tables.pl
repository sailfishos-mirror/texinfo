#! /usr/bin/env perl

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

BEGIN
{   
  my ($real_command_name, $command_directory, $command_suffix)
   = fileparse($0, '.pl');
  my $updir = File::Spec->updir();
  if (defined($ENV{'top_builddir'})) {
    unshift @INC, File::Spec->catdir($ENV{'top_builddir'}, 'tp');
  } else {
    my $modulepath_dir = File::Spec->catdir($command_directory, $updir);
    unshift @INC, File::Spec->catdir($modulepath_dir);
  }
  require Texinfo::ModulePath;
  Texinfo::ModulePath::init(undef, undef, undef, 'updirs' => 2);
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
  if (ord($char) < 127 and $char ne '\\' and $char ne '"') {
    return $char;
  }
  my $encoded = Encode::encode('UTF-8', $char);
  return join('', map {"\\x".sprintf("%02x",ord($_))} split('', $encoded));
}

my $out_file = $ARGV[0];
die "Need a file\n" if (!defined($out_file));

my $unicode_file = $ARGV[1];
die "Need a file for unicode tables\n" if (!defined($unicode_file));

my %unicode_diacritics = %Texinfo::Convert::Unicode::unicode_diacritics;

open (UNIC, '>', $unicode_file) or die "Open $out_file: $!\n";

print UNIC "char * unicode_diacritics[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  #print UNIC "$command; ";

  if (defined($unicode_diacritics{$command_name})) {
    my $result = $unicode_diacritics{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print UNIC "\"$protected\",\n";
  } else {
    print UNIC "0,\n";
  }
}
print UNIC "};\n\n";

close(UNIC);

# Finish by this file as it is used as make target
open (OUT, '>', $out_file) or die "Open $out_file: $!\n";

print OUT "char * command_normalization_text[] = {\n";
foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  #print OUT "$command; ";

  if (defined($normalize_node_nobrace_symbol_text{$command_name})) {
    print OUT "\"$normalize_node_nobrace_symbol_text{$command_name}\",\n";
  } elsif (defined($normalize_node_brace_no_arg_commands{$command_name})) {
    my $result = $normalize_node_brace_no_arg_commands{$command_name};
    my $protected = join ('', map {_protect_char($_)} split ('', $result));
    print OUT "\"$protected\",\n";
  } else {
    print OUT "0,\n";
  }
}
print OUT "};\n\n";

close(OUT);

