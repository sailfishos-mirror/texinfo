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

use Texinfo::Convert::Unicode;

my $unicode_to_eight_bit_file_name =  $ARGV[0];
die "Need a file\n"
   if (!defined($unicode_to_eight_bit_file_name));

open (UEB, '>', $unicode_to_eight_bit_file_name)
   or die "Open $unicode_to_eight_bit_file_name: $!\n";

print UEB "struct ENCODING_CODEPOINTS unicode_to_eight_bit[] = {\n";

my %unicode_to_eight_bit = %Texinfo::Convert::Unicode::unicode_to_eight_bit;
foreach my $encoding (sort (keys (%unicode_to_eight_bit))) {
  my @codepoints = sort (keys (%{$unicode_to_eight_bit{$encoding}}));
  print UEB '{"'.$encoding.'", '.scalar(@codepoints).", {\n";
  foreach my $codepoint (@codepoints) {
    print UEB '  "'.$codepoint.'",    /* '
         .$unicode_to_eight_bit{$encoding}->{$codepoint}.' */ '."\n";
  }
  print UEB "}},\n";
}
print UEB "};\n\n";

close (UEB);


