#!/usr/bin/perl

# Script to check that the LINGUAS file matches the *.po files
# present in a directory.

use strict;
use warnings;

my $filename = 'LINGUAS';

my $dir = $ARGV[0];
if (!$dir) {
    warn "usage: check-linguas.pl DIRECTORY\n";
    exit 1;
}

if (!chdir($dir)) {
    warn "could not chdir to $dir\n";
    exit 1;
}

my $fh;
if (!open($fh, '<', $filename)) {
    warn "could not open $filename\n";
    exit 1;
}

my @linguas;
while (<$fh>) {
    s/#.*$//;
    chomp;
    my @langs = split (' ', $_);
    @linguas = (@linguas, @langs);
}
close ($fh);

my @po_files;
@po_files = glob "*.po";
map { s/.po$// } @po_files;

@linguas = sort @linguas;
@po_files = sort @po_files;

my $linguas_str = join(',', @linguas);
my $po_files_str = join(',', @po_files);
if ($linguas_str ne $po_files_str) {
    print "LINGUAS does not match existing *.po files\n";
    print "LINGUAS languages: $linguas_str\n";
    print "po file languages: $po_files_str\n";
    exit 1;
}

print "success: LINGUAS and *.po match\n";
exit 0;
