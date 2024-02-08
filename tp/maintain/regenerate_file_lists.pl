#! /usr/bin/env perl
# Copyright 2011-2024 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# Originally written by Patrice Dumas.

use strict;

# emulates -w
BEGIN
{
  $^W = 1;
}
use File::Find;
use File::Basename;
use File::Spec;

my ($command, $mydir, $suffix) = fileparse($0);
my $parent = File::Spec->catdir($mydir, File::Spec->updir());
chdir($parent) || die "chdir $parent: $!";
-d "t" || (die "goodbye, no t directory in " . `pwd`);

my %files;
find (\&wanted, ('t'));
sub wanted 
{
  if ((/\.pl$/ and $File::Find::dir =~ m:^t/results/[^/]+:)
      or (!/^CVS$/ and !/^\.svn$/ 
          # to list each file
          # FIXME it would be better to list each file but then this leads to
          # an "Argument list too long" error for the shell in make dist
          #and $File::Find::dir =~ m:^t/results/[^/]+/[^/]+/res_[^/]+$:)) {
          # list only directories
          and $File::Find::name =~ m:^t/results/[^/]+/[^/]+/res_[^/]+$:)) {
    $files{$File::Find::name} = 1;
  }
}

my %tap_files;
find (\&wanted_tap_files, ('t'));
sub wanted_tap_files
{
  if (/\.t$/ and $File::Find::dir =~ /t$/) {
    $tap_files{$File::Find::name} = 1;
  }
}

open (INCLUDE, '>Makefile.tres') or die "open(>Makefile.tres) failed: $!";
print INCLUDE <<EOH;
# Makefile.tres generated by maintain/regenerate_file_lists.pl
#
EOH

print INCLUDE 'test_tap_files_generated_list =';
foreach my $file (sort(keys(%tap_files))) {
  print INCLUDE " \\\n  $file";
}
print INCLUDE "\n\n";

print INCLUDE 'test_files_generated_list = $(test_tap_files_generated_list)';
foreach my $file (sort(keys(%files))) {
  print INCLUDE " \\\n  $file";
}
print INCLUDE "\n\n";
