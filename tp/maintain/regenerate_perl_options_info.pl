#! /usr/bin/env perl

# regenerate_options_infos.pl: generate perl hashes based on
# commands information, structure and code used in XS.
#
# Copyright 2022-2023 Free Software Foundation, Inc.
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

# emulates -w
BEGIN
{
  $^W = 1;
}

my %option_categories;

while (<STDIN>) {
  if (not (/^#/ or /^ *$/)) {
    if (/^([^ ]+) +([^ ]+) +([^ ]+) +(.+)$/) {
      my $option = $1;
      my $category = $2;
      my $value = $3;
      my $type = $4;

      if ($type eq 'char *' and $value ne 'undef') {
        $value = "'".$value."'";
      }

      if (!exists($option_categories{$category})) {
        $option_categories{$category} = [];
      }
      push @{$option_categories{$category}}, [$option, $value, $type];
      #print STDERR "$option, $category, $value, $type\n";
    } else {
      warn "ERROR: unexpected line: $_";
    }
  }
}

my $out_file = $ARGV[0];
die "Need an output file\n" if (!defined($out_file));

open (OUT, ">$out_file") or die "Open $out_file: $!\n";

print OUT "# Automatically generated from $0\n\n";

print OUT "package Texinfo::Options;\n\n";

foreach my $category (sort(keys(%option_categories))) {
  print OUT "our %${category}_options = (\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print OUT '  '.sprintf('%-34s', '"'.$option.'"')." => $value,\n";
  }
  print OUT ");\n\n";
}

print OUT "1;\n";

