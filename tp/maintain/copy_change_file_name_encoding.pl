#! /usr/bin/env perl

# copy_change_file_name_encoding.pl: copy file changing
# the encoding of the file name
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
#
# Original author: Patrice Dumas <pertusus@free.fr>

use File::Copy;
use File::Basename;
use File::Spec;

use Encode qw(from_to);

use Getopt::Long qw(GetOptions);

my $from = 'UTF-8';
my $to = 'ISO-8859-1';
my $result_options = Getopt::Long::GetOptions (
 'from|f=s' => \$from,
 'to|t=s' => \$to,
);

exit 1 if (!$result_options);

my ($src_path, $dest_dir) = @ARGV;

if (not defined($src_path)) {
  die "Need source file\n";
}

my $dest_path;
if (defined($dest_dir)) {
  my ($file_name, $dir, $suffix) = fileparse($src_path);
  $dest_path = File::Spec->catfile($dest_dir, $file_name);
} else {
  $dest_path = $src_path;
}

my $succeeded = from_to($dest_path, $from, $to);

if (not defined($succeeded)) {
  warn "could not recode $src_path\n";
  exit(1);
}

my $copy_succeeded = copy($src_path, $dest_path);
if (not $copy_succeeded) {
  warn "could not copy $src_path: $!\n";
  exit(1);
}


