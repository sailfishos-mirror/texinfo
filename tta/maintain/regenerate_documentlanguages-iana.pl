#! /usr/bin/env perl

# regenerate_documentlanguages-iana.pl: download the iana files language
# and regenerate Texinfo/Documentlanguages.pm list of languages and regions
#
# Copyright 2010-2025 Free Software Foundation, Inc.
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.
#
# Original author: Patrice Dumas <pertusus@free.fr>
#
# This script is not used, as the Texinfo manual describes other code sources

use strict;

use warnings;

use File::Basename;

my $dir = 'maintain';
system ("cd $dir && wget -N http://www.iana.org/assignments/language-subtag-registry");

open(TXT,"$dir/language-subtag-registry") or die "Open $dir/language-subtag-registry: $!\n";

my $entry;
my @entries;
while (<TXT>) {
 if (/^%%/) {
   push @entries, $entry if (defined($entry));
   $entry = undef;
 } else {
   if (/^(\w+): (.*)/) {
     $entry->{$1} = $2;
   }
 }
}
push @entries, $entry if (defined($entry));
if (!defined($entry->{'Type'})) {
  die "Type not defined for $entry ".join('|', keys(%$entry))."\n";
}

my $program_name = basename($0);

open(OUT, ">Texinfo/Documentlanguages.pm") or die "Open Texinfo/Documentlanguages.pm: $!\n";

print OUT "# This file was automatically generated from $program_name\n\n";

print OUT "package Texinfo::Documentlanguages;\n\n";

print OUT 'our %language_codes = ('."\n";
foreach my $entry (@entries) {
  # Scope collection macrolanguage are used
  if ($entry->{'Type'} eq 'language' and !defined($entry->{'Preferred-Value'})
       and !defined($entry->{'Macrolanguage'})
       and (!defined($entry->{'Scope'})
            or ($entry->{'Scope'} ne 'special'
                and $entry->{'Scope'} ne 'private-use'))) {
    print OUT "'$entry->{'Subtag'}' => 1,\n";
    print STDERR "$entry->{'Subtag'} Scope $entry->{'Scope'}\n"
       if defined($entry->{'Scope'});
  }
}
print OUT ");\n\n";

print OUT 'our %region_codes = ('."\n";
foreach my $entry (@entries) {
  if ($entry->{'Type'} eq 'region' and !defined($entry->{'Preferred-Value'})
      and $entry->{'Description'} ne 'Private use'
      and $entry->{'Subtag'} !~ /^\d{3}$/) {
    print OUT "'$entry->{'Subtag'}' => 1,\n";
  }
}
print OUT ");\n\n1;\n";
