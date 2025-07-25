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

package _Texinfo_Tests;

use strict;

# for fileparse
use File::Basename;
use File::Spec;
use Test::More;

my ($real_command_name, $command_directory, $command_suffix)
              = fileparse($0, '.pl');
my $updir = File::Spec->updir();

# to find Texinfo.pm
my $srcdir = $ENV{'srcdir'};
if (!defined($srcdir)) {
  $command_directory = File::Spec->curdir()
    if (!defined($command_directory) or $command_directory eq '');
  $srcdir = join('/', ($command_directory, $updir));
}
unshift @INC, $srcdir;
# To find the XS extension
my $t2a_builddir = $ENV{'t2a_builddir'};
if (!defined($t2a_builddir) and defined($srcdir)) {
  # this is correct for in-source builds only.
  $t2a_builddir = join('/', ($srcdir, $updir, $updir));
}
if (defined($t2a_builddir)) {
  unshift @INC, join('/', ($t2a_builddir, 'swig', 'perl', '.libs'));
}

eval { require Text::Diff; Text::Diff->import('diff'); };

my $text_diff_loading_error = $@;

sub is_diff($$$)
{
  my $result = shift;
  my $reference = shift;
  my $test_name = shift;

  #if (!$test_differences_loading_error) {
  #  eq_or_diff_text($result, $reference, $test_name);
  #} elsif ($text_diff_loading_error) {
  if ($text_diff_loading_error or !defined($reference)
      or ref($reference) ne '' or !defined($result)) {
    is($result, $reference, $test_name);
  } else {
    ok($result eq $reference, $test_name)
       or note((diff(\$result, \$reference)));
    #is($result, $reference, $test_name) or note(diff(\$result, \$reference));
  }
}

1;
