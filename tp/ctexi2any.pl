#! /usr/bin/env perl

use strict;
use File::Basename;


my $command_dir;
my $top_srcdir = $ENV{'top_srcdir'};
if (defined($top_srcdir)) {
  $command_dir = "$top_srcdir/tp";
} else {
  my ($real_command_name, $command_directory, $command_suffix)
    = fileparse($0, '.pl');
  $command_dir = $command_directory;
  $ENV{'top_srcdir'} = "$command_dir/..";
}
exec("${command_dir}/Texinfo/XS/ctexi2any", '--mimick', @ARGV);

