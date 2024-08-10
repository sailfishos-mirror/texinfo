#! /usr/bin/env perl

# regenerate_options_infos.pl: generate perl hashes based on
# commands information, structure and code used in XS.
#
# Copyright 2022-2024 Free Software Foundation, Inc.
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

use warnings;

use File::Basename;

my %option_categories;

my %commands_options;

my %options;

my $options_nr = 0;

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
      if ($category eq 'multiple_at_command' or $category eq 'unique_at_command') {
        $commands_options{$option} = [$category, $value, $type];
      }
      $options{$option} = [$category, $value, $type];
      $options_nr++;
    } else {
      warn "ERROR: unexpected line: $_";
    }
  }
}

my $commands_order_file = $ARGV[0];
die "Need a commands order input file\n" if (!defined($commands_order_file));

open(ORDER, $commands_order_file)
  or die "open $commands_order_file: $!";

my @commands_order = ('');

my %commands_map = (
 '\\t' => "\t",
 '\\n' => "\n",
 '\\x20' => ' ',
  '\"' => '"',
  '\\\\' => '\\',
);

my %name_commands;
while (<ORDER>) {
  my $command;
  if (/^"([^"]+?)", /) {
    $command = $1;
  } elsif (/^"\\"", /) {
    $command = '\"';
  }
  next if (!defined($command));
  my $command_name = $command;
  if (exists $commands_map{$command}) {
    $command_name = $commands_map{$command};
    $name_commands{$command_name} = $command;
  }
  push @commands_order, $command_name;
  #print STDERR "$command\n";
}

my $converter_defaults_file = $ARGV[1];
die "Need converter defaults file\n" if (!defined($converter_defaults_file));

open(CDEF, $converter_defaults_file)
  or die "open $converter_defaults_file: $!";

my %converter_defaults;
my $format;
my $line = 1;
while (<CDEF>) {
  if (not (/^ *#/ or /^ *$/)) {
    if (/^ *- *(\S+)/) {
      $format = $1;
      if (!defined($converter_defaults{$format})) {
        $converter_defaults{$format} = [];
      }
    } elsif (defined($format)) {
      if (/^ *([A-Za-z][A-Za-z0-9_]*)( +(.*))?$/) {
        my $option = $1;
        my $value = $3;
        if (!defined($value) or $value =~ /^ +$/) {
          $value = '';
        }
        #print STDERR "$format|$variable|'$value'\n";
        if (!defined($options{$option})) {
          print STDERR "$converter_defaults_file: $line: unknown option $option\n";
        } else {
          push @{$converter_defaults{$format}}, [$option, $value];
        }
      }
    }
  }
  $line++;
}

close(CDEF);

my $code_file = $ARGV[2];
die "Need a code file\n" if (!defined($code_file));

my $header_file = $ARGV[3];
die "Need a header file\n" if (!defined($header_file));

my $converter_defaults_code_file = $ARGV[4];
die "Need a converter code defaults file\n"
   if (!defined($converter_defaults_code_file));

my $converter_defaults_header_file = $ARGV[5];
die "Need a converter header defaults file\n"
   if (!defined($converter_defaults_header_file));

my $get_file = $ARGV[6];
die "Need an XS code file\n" if (!defined($get_file));

my $program_name = basename($0);

open(HEADER, '>', $header_file)
      or die "Open $header_file: $!\n";
print HEADER "/* Automatically generated from $program_name */\n\n";

print HEADER "#ifndef OPTIONS_TYPES_H\n#define OPTIONS_TYPES_H\n\n";

print HEADER "#include \"main/option_types.h\"\n\n";

print HEADER "/* Undefine values set from autoconf as we use these as\n";
print HEADER "   customization variable names.  The original values are\n";
print HEADER "   available with a _CONFIG suffix, e.g. PACKAGE_CONFIG for\n";
print HEADER "   PACKAGE. */\n";
print HEADER "#undef PACKAGE\n";
print HEADER "#undef PACKAGE_NAME\n";
print HEADER "#undef PACKAGE_URL\n";
print HEADER "#undef PACKAGE_VERSION\n\n";

print HEADER "#define TXI_OPTIONS_NR $options_nr\n\n";

print HEADER "typedef struct OPTIONS {\n";
print HEADER "    size_t BIT_user_function_number;\n";

foreach my $category (sort(keys(%option_categories))) {
  print HEADER "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print HEADER "    OPTION $option;\n";
  }
}
print HEADER "} OPTIONS;\n\n";

print HEADER "#endif\n";

close(HEADER);


open(CODE, ">$code_file") or die "Open $code_file: $!\n";
print CODE "/* Automatically generated from $program_name */\n\n";

print CODE '#include <config.h>'."\n\n";

print CODE '#include <stdlib.h>'."\n";
print CODE '#include <string.h>'."\n\n";

print CODE '#include "option_types.h"'."\n";
print CODE '#include "options_types.h"'."\n";
print CODE '#include "converter_types.h"'."\n";
print CODE '#include "utils.h"'."\n\n";

print CODE "void\ninitialize_options (OPTIONS *options)\n{\n";
print CODE "  options->BIT_user_function_number = 0;\n";

foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  initialize_option (&options->$option, GOT_$type, \"$option\");\n";
  }
}

print CODE "}\n\n";

print CODE "OPTION **\nsetup_sortable_options (OPTIONS *options)\n{\n";
print CODE "  OPTION **result = (OPTION **)\n"
           ."    malloc (sizeof (OPTION *) * TXI_OPTIONS_NR);\n\n";
my $index = 0;
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  result[$index] = &options->$option;\n";
    $index++;
  }
}

print CODE "\n  return result;\n"
."}\n\n";

print CODE "void\nfree_options (OPTIONS *options)\n{\n";
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  free_option (&options->$option);\n";
  }
}
print CODE "}\n\n";

print CODE "void\nclear_options (OPTIONS *options)\n{\n";
print CODE "  options->BIT_user_function_number = 0;\n";
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  clear_option (&options->$option);\n";
  }
}
print CODE "}\n\n";

print CODE "void\ncopy_options (OPTIONS *destination, const OPTIONS *source)\n{\n";
print CODE "  destination->BIT_user_function_number = source->BIT_user_function_number;\n";
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  copy_option (&destination->$option, &source->$option);\n";
  }
}
print CODE "}\n\n";

# set configured based on the name
# NOTE currently unused, as there is another function that uses a bsearch
print CODE 'void
set_option_key_configured (OPTIONS *options, const char *key, int configured)
{
  if (0) {}
';
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  else if (!strcmp (key, \"$option\"))
    {
      if (configured > 0)
        options->$option.configured = configured;
    }\n";
  }
}

print CODE "}\n\n";

# associate commands to options
print CODE "#include \"command_ids.h\"\n\n";
print CODE 'OPTION *
get_command_option (OPTIONS *options,
                    enum command_id cmd)
{
  switch (cmd)
    {
';

foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if ($commands_options{$command}) {
    my ($category, $value, $type) = @{$commands_options{$command}};
    print CODE "    case CM_${command}:
    {
      return &options->${command};
      break;
    }\n";
  }
}

print CODE "
    default:
      return 0;
    }
}\n\n";

print CODE 'void
html_fill_options_directions (OPTIONS *options, const CONVERTER *converter)
{
';
foreach my $category (sort(keys(%option_categories))) {
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    if ($type eq 'buttons') {
      print CODE "  if (options->$option.o.buttons)\n"
                ."    html_fill_button_directions_specification_list (converter, options->$option.o.buttons);\n\n";
    }
  }
}
print CODE '}

';

# table of defaults for options corresponding to commands
print CODE "COMMAND_OPTION_DEFAULT command_option_default_table[] = {\n";

sub get_value($$)
{
  my $type = shift;
  my $value = shift;

  my $char_value = 0;
  my $int_value = '-2';
  if ($type eq 'integer') {
    $int_value = -1;
  }
  if ($value ne 'undef') {
    if ($type eq 'integer') {
      $int_value = $value;
    } else {
      my $protected = $value;
      $protected =~ s/\"/\\\"/g;
      $char_value = '"'.$protected.'"';
    }
  }

  return $int_value, $char_value;
}

foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if ($commands_options{$command}) {
    my ($category, $value, $type) = @{$commands_options{$command}};
    #print STDERR "$command $category, $value, $type\n";
    my ($int_value, $char_value) = get_value($type, $value);
    print CODE "{GOT_$type, $int_value, $char_value},   /* $command ($category) */\n";
  } else {
    print CODE "{GOT_NONE, -2, 0},\n";
  }
}

print CODE "};\n\n";

close(CODE);

open(OCDEF, ">$converter_defaults_code_file")
 or die "Open $converter_defaults_code_file: $!\n";

print OCDEF "/* Automatically generated from $program_name */\n\n";

print OCDEF '#include <config.h>'."\n\n";

print OCDEF '#include "options_types.h"'."\n";
print OCDEF '#include "utils.h"'."\n";
print OCDEF '#include "converters_defaults.h"'."\n\n";

open(OHDEF, ">$converter_defaults_header_file")
 or die "Open $converter_defaults_header_file: $!\n";

print OHDEF "#ifndef CONVERTERS_DEFAULTS_H\n#define CONVERTERS_DEFAULTS_H\n\n";

print OHDEF "#include \"main/option_types.h\"\n\n";

print OHDEF "/* Undefine values set from autoconf as we use these as\n";
print OHDEF "   customization variable names.  The original values are\n";
print OHDEF "   available with a _CONFIG suffix, e.g. PACKAGE_CONFIG for\n";
print OHDEF "   PACKAGE. */\n";
print OHDEF "#undef PACKAGE\n";
print OHDEF "#undef PACKAGE_NAME\n";
print OHDEF "#undef PACKAGE_URL\n";
print OHDEF "#undef PACKAGE_VERSION\n\n";

foreach my $category (sort(keys(%option_categories))) {
  print OCDEF "\n/* ${category} */\n\n";
  my $fun = "void set_${category}_regular_defaults (OPTIONS *options)";

  print OHDEF "$fun;\n\n";

  print OCDEF "$fun\n{\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    my ($int_value, $char_value) = get_value($type, $value);
    print OCDEF "  option_set_conf (&options->${option}, $int_value, $char_value);\n";
  }
  print OCDEF "}\n\n";
}

my @sorted_formats = sort(keys(%converter_defaults));

foreach my $format (@sorted_formats) {
  my $fun = "void set_${format}_regular_options_defaults (OPTIONS *options)";

  print OHDEF "$fun;\n\n";

  print OCDEF "$fun\n{\n";
  foreach my $option_spec (@{$converter_defaults{$format}}) {
    my ($option, $value) = @$option_spec;
    my $option_info = $options{$option};
    my ($option_unused, $main_default, $type) = @$option_info;
    my ($int_value, $char_value) = get_value($type, $value);
    print OCDEF "  option_set_conf (&options->${option}, $int_value, $char_value);\n";
  }
  print OCDEF "}\n\n";
}

close(OCDEF);

print OHDEF "#endif\n";
close(OHDEF);


open(GET, ">$get_file") or die "Open $get_file: $!\n";
print GET "/* Automatically generated from $program_name */\n\n";

print GET '#include "options_types.h"'."\n";
print GET '#include "converter_types.h"'."\n";
print GET '#include "get_perl_info.h"'."\n\n";

print GET 'void
html_fill_sv_options (OPTIONS *options, const CONVERTER *converter)
{
';
foreach my $category (sort(keys(%option_categories))) {
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    if ($type eq 'buttons') {
      print GET "  if (options->$option.o.buttons)\n"
                ."    html_fill_button_sv_specification_list (converter, options->$option.o.buttons);\n\n";
    } elsif ($type eq 'icons') {
      print GET "  if (options->$option.o.icons)\n"
                ."    html_fill_direction_icons (converter, options->$option.o.icons);\n\n";
    }
  }
}
print GET '}

';

close(GET);


