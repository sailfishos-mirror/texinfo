#!/usr/bin/perl
# Create HTML index of a directory.  Public domain.

# run as mkwebdir.pl DIR >DIR/index.html

use strict;

my $dir = $ARGV[0];

if (!defined($dir)) {
  print "invalid\n";
  exit 1;
}

chdir $dir;
my $dir = `pwd`;
$dir = `basename $dir`;
chomp $dir;

my @files = `ls`;

print "<!DOCTYPE html>\n";

print "<html><head><title=\"Index of $dir\"></head>\n";

print "<body>\n";
print "<h1>Index of $dir</h1>\n";

print "<ul>\n";
print "<li><a href=..><code>..</code></a>\n";

my @subdirs;

for my $file (@files) {
  chomp $file;
  next if $file eq 'index.html';
  next if $file eq 'mkwebdir.pl';
  if (-d $file) {
    push @subdirs, $file;
  } else {
    print "<li><a href=./$file><code>$file</code></a>\n";
  }
}
for my $subdir (@subdirs) {
  print "<li><a href=./$subdir><code>$subdir/</code></a>\n";
}


print "</ul>\n";

print "</body></html>\n";


