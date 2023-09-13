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

my $code_file = $ARGV[0];
die "Need a code file\n" if (!defined($code_file));

my $header_file = $ARGV[1];
die "Need a header file\n" if (!defined($header_file));

my $get_file = $ARGV[2];
die "Need an XS code file\n" if (!defined($get_file));

open (HEADER, '>', $header_file)
      or die "Open $header_file: $!\n";
print HEADER "/* Automatically generated from $0 */\n\n";

print HEADER "#ifndef OPTIONS_TYPE_H\n#define OPTIONS_TYPE_H\n\n";

print HEADER "#include \"tree_types.h\"\n\n";

print HEADER '
/* temporary */
typedef struct {
} BUTTONS;

typedef struct {
} ICONS;

';

print HEADER "typedef struct OPTIONS {\n";

foreach my $category (sort(keys(%option_categories))) {
  print HEADER "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print HEADER "    $type $option;\n";
  }
}
print HEADER "} OPTIONS;\n\n";

print HEADER "#endif\n";

close(HEADER);


open (CODE, ">$code_file") or die "Open $code_file: $!\n";
print CODE "/* Automatically generated from $0 */\n\n";

print CODE "void\ninitialize_options (OPTIONS *options)\n{\n";

foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    if ($type eq 'STRING_LIST') {
      print CODE "  memset (&options->$option, 0, sizeof ($type));\n";
    } else {
      my $init_value = 0;
      if ($type eq 'int') {
        $init_value = -1;
      }
      print CODE " options->$option = $init_value;\n";
    }
  }
}
print CODE "};\n\n";

close(CODE);


open (GET, ">$get_file") or die "Open $get_file: $!\n";
print GET "/* Automatically generated from $0 */\n\n";

print GET 'void
get_sv_options (SV *sv, OPTIONS *options)
{
  I32 hv_number;
  I32 i;
  HV *hv;

  dTHX;

  hv = (HV *)SvRV (sv);
  hv_number = hv_iterinit (hv);
  for (i = 0; i < hv_number; i++)
    {
      char *key;
      I32 retlen;
      SV *value = hv_iternextsv(hv, &key, &retlen);
      if (value && SvOK (value))
        {
          if (0) {}
';


foreach my $category (sort(keys(%option_categories))) {
  print GET "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print GET "          else if (!strcmp (key, \"$option\"))\n";
    if ($type eq 'char *') {
      print GET "            options->$option = strdup (SvPVbyte_nolen (value));\n";
    } elsif ($type eq 'int') {
      print GET "            options->$option = SvIV (value);\n";
    } elsif ($type eq 'STRING_LIST') {
      my $dir_string_arg = 0;
      $dir_string_arg = 1
        if ($option eq 'INCLUDE_DIRECTORIES');
      print GET "            add_svav_to_string_list (&value, &options->$option, $dir_string_arg);\n";
    } else {
      print GET "            {}\n";
    }
  }
}

print GET '        }
    }
}
';

close(GET);


