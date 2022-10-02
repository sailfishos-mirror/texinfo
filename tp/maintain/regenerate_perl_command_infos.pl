#! /usr/bin/env perl

# regenerate_perl_command_infos.pl: generate perl hashes based on
# commands information setup for the XS parser.
#
# Copyright 2022 Free Software Foundation, Inc.
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

my %command_categories;
my %flags_hashes;

while (<>) {
  if (not (/^#/ or /^ *$/)) {
    my ($command, $flags, $data, $args_nr) = split;
    my @flags = split /,/, $flags;
    #print STDERR "$command, ".join('|',@flags).", $data, $args_nr\n";
    my $category;
    my $type = 'other';
    if (defined($data) and $data ne '') {
      if ($data =~ /^([A-Z]+)_([a-z_]+)$/) {
        $category = lc($1);
        $type = $2;
      } else {
        die "$command: abnormal data: $data\n";
      }
    }
    if (defined($category)) {
      $command_categories{$category} = {} if (!$command_categories{$category});
      if (!grep {$_ eq $category} @flags) {
        die "$command: ".join('|',@flags).": $category: not in flags\n";
      }
    } else {
      my @categories = grep {exists($command_categories{$_})} @flags;
      if (scalar(@categories) == 0) {
        die "$command: ".join('|',@flags).": cannot find a category ("
                          .join('|', sort(keys(%command_categories))).")\n";
      } elsif (scalar(@categories) > 1) {
        warn "$command: ".join('|',@flags)
            .": multiple categories: ".join('|',@categories)."\n";
      }
      $category = $categories[0];
    }
    $command_categories{$category}->{$type} = []
        if not ($command_categories{$category}->{$type});
    push @{$command_categories{$category}->{$type}}, $command;
    # gives the same result as {$_ ne $category} as the
    # command with multiple categories, txiinternalvalue appears
    # at the very beginning of the file
    foreach my $flag (grep {not $command_categories{$_}} @flags) {
      $flags_hashes{$flag} = [] if (!$flags_hashes{$flag});
      push @{$flags_hashes{$flag}}, $command;
    }
  }
}

#open (OUT, ">Texinfo/Commands.pm") or die "Open Texinfo/Commands.pm: $!\n";

print STDOUT "# Automatically generated from $0\n\n";

print STDOUT "package Texinfo::Commands;\n\n";

foreach my $category (sort(keys(%command_categories))) {
  print STDOUT "our %${category}_commands = (\n";
  foreach my $type (sort(keys(%{$command_categories{$category}}))) {
    foreach my $command (sort(@{$command_categories{$category}->{$type}})) {
      print STDOUT '  '.sprintf('%-25s', '"'.$command.'"')." => '$type',\n";
    }
  }
  print STDOUT ");\n\n";
}

print STDOUT "\n";
print STDOUT "# flag hashes\n";

foreach my $hash_flag (sort(keys(%flags_hashes))) {
  # happens for 'txiinternalvalue' which is also brace
  next if ($command_categories{$hash_flag});
  print STDOUT "our %${hash_flag}_commands = (\n";
  foreach my $command (sort(@{$flags_hashes{$hash_flag}})) {
    print STDOUT '  '.sprintf('%-25s', '"'.$command.'"')." => 1,\n";
  }
  print STDOUT ");\n\n";
}

print STDOUT "1;\n";
