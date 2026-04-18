#! /usr/bin/env perl

# regenerate_documentlanguages-iana.pl: download the iana files language
# and regenerate Texinfo/Documentlanguages.pm list of languages and regions
#
# Copyright 2010-2026 Free Software Foundation, Inc.
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.
#
# Original author: Patrice Dumas <pertusus@free.fr>
#
# Call that script from the tta directory for each release to keep
# the lists updated.

use strict;

use warnings;

use File::Basename;

# from gnulib/lib/bcp47.c
my %alias_ISO_script = (
   "latin",      "Latn",
   "cyrillic",   "Cyrl",
   "hebrew",     "Hebr",
   "arabic",     "Arab",
   "devanagari", "Deva",
   "gurmukhi",   "Guru",
   "mongolian",  "Mong"
);

my $dir = 'maintain/documentlanguage';
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

open(OUT, ">perl/Texinfo/Documentlanguages.pm") or die "Open Texinfo/Documentlanguages.pm: $!\n";
#open(OUT, ">$dir/Documentlanguages.pm") or die "Open Texinfo/Documentlanguages.pm: $!\n";

my @languages;
my @regions;
my @scripts;
my @variants;
foreach my $entry (@entries) {
  # Scope macrolanguage are used, as well as special, partially
  if ($entry->{'Type'} eq 'language') {
    if (!defined($entry->{'Preferred-Value'})
        and (!defined($entry->{'Scope'})
             or ($entry->{'Scope'} ne 'private-use'
                 and $entry->{'Scope'} ne 'collection'
                 and ($entry->{'Scope'} ne 'special'
      # there are 4 special codes
      # mis Uncoded languages
      # mul Multiple languages
      # und Undetermined
      # zxx No linguistic content; Not applicable
      # This is not very useful, but we accept mis and und, but not mul,
      # as multiple @documentlanguage are valid, nor zxx
                      or ($entry->{'Subtag'} ne 'zxx'
                          and $entry->{'Subtag'} ne 'mul'))))) {
     push @languages, $entry->{'Subtag'};
     #print STDERR "$entry->{'Subtag'} Scope $entry->{'Scope'}\n"
     #   if defined($entry->{'Scope'});
    }
  } elsif ($entry->{'Type'} eq 'region') {
     if (!defined($entry->{'Preferred-Value'})
         and !defined($entry->{'Deprecated'})
         and $entry->{'Description'} ne 'Private use'
         and $entry->{'Subtag'} !~ /^\d{3}$/) {
      push @regions, $entry->{'Subtag'};
    }
  } elsif ($entry->{'Type'} eq 'script') {
    if ($entry->{'Description'} ne 'Private use') {
      push @scripts, $entry->{'Subtag'};
    }
  } elsif ($entry->{'Type'} eq 'variant') {
    push @variants, $entry->{'Subtag'};
  #} else {
  #  print STDERR "$entry->{'Type'}\n";
  }
}

my $declarations = "%{\n#include <config.h>\n%}\n"
                   ."%includes\n%%\n";
open(LANGUAGES, ">$dir/languages.gperf") or die "Open $dir/languages.gperf: $!\n";
print LANGUAGES $declarations;

open(REGIONS, ">$dir/regions.gperf") or die "Open $dir/regions.gperf: $!\n";
print REGIONS $declarations;

# we setup aliases, so we need to declare a structure
my $scripts_declarations = "%{\n#include <config.h>\n%}\n"
     ."struct TXI_DOCUMENT_SCRIPT { char const *name; const char *code; };\n"
                   ."%includes\n%%\n";
open(SCRIPTS, ">$dir/scripts.gperf") or die "Open $dir/scripts.gperf: $!\n";
print SCRIPTS $scripts_declarations;

open(VARIANTS, ">$dir/variants.gperf") or die "Open $dir/variants.gperf: $!\n";
print VARIANTS $declarations;

print OUT "# This file was automatically generated from $program_name\n\n";

print OUT "package Texinfo::Documentlanguages;\n\n";

print OUT 'our %language_codes = ('."\n";

foreach my $language (sort @languages) {
  print OUT "'$language' => 1,\n";
  print LANGUAGES "$language\n";
}
print OUT ");\n\n";

print OUT 'our %region_codes = ('."\n";

foreach my $region (@regions) {
  print OUT "'$region' => 1,\n";
  print REGIONS "$region\n";
}
print OUT ");\n\n";

print OUT 'our %scripts = ('."\n";
foreach my $script (@scripts) {
  print OUT "'$script' => 1,\n";
  print SCRIPTS "$script, 0\n";
}
print OUT ");\n\n";

print OUT 'our %documentscript_alias_ISO_script = ('."\n";
# aliases
foreach my $alias (sort(keys(%alias_ISO_script))) {
  print OUT "'$alias' => '$alias_ISO_script{$alias}',\n";
  print SCRIPTS "$alias, \"$alias_ISO_script{$alias}\"\n";
}
print OUT ");\n\n";

print OUT 'our %documentscript_XPG_script = ('."\n";
foreach my $alias (sort(keys(%alias_ISO_script))) {
  print OUT "'$alias_ISO_script{$alias}' => '$alias',\n";
}
print OUT ");\n\n";

print OUT 'our %variants = ('."\n";
foreach my $variant (@variants) {
  print OUT "'$variant' => 1,\n";
  print VARIANTS "$variant\n";
}
print OUT ");\n\n";

print OUT "1;\n";

system ("gperf --output-file=C/main/txi_documentlanguage_languages.c -N txi_in_language_codes $dir/languages.gperf");
system ("gperf --output-file=C/main/txi_documentlanguage_regions.c -N txi_in_language_regions $dir/regions.gperf");
system ("gperf -t --output-file=C/main/txi_documentlanguage_scripts.c -N txi_in_language_scripts $dir/scripts.gperf");
system ("gperf --output-file=C/main/txi_documentlanguage_variants.c -N txi_in_language_variants $dir/variants.gperf");
