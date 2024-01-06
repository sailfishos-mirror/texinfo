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

my %commands_options;

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

my $code_file = $ARGV[1];
die "Need a code file\n" if (!defined($code_file));

my $header_file = $ARGV[2];
die "Need a header file\n" if (!defined($header_file));

my $get_file = $ARGV[3];
die "Need an XS code file\n" if (!defined($get_file));

open (HEADER, '>', $header_file)
      or die "Open $header_file: $!\n";
print HEADER "/* Automatically generated from $0 */\n\n";

print HEADER "#ifndef OPTIONS_TYPE_H\n#define OPTIONS_TYPE_H\n\n";

print HEADER "#include \"tree_types.h\"\n";
print HEADER "#include \"converter_types.h\"\n\n";

print HEADER "typedef struct OPTIONS {\n";

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


open (CODE, ">$code_file") or die "Open $code_file: $!\n";
print CODE "/* Automatically generated from $0 */\n\n";

print CODE '#include <config.h>'."\n\n";

print CODE '#include <stdlib.h>'."\n\n";
print CODE '#include <string.h>'."\n\n";

print CODE '#include "options_types.h"'."\n";
print CODE '#include "converter_types.h"'."\n";
print CODE '#include "utils.h"'."\n\n";

print CODE "void\ninitialize_options (OPTIONS *options)\n{\n";

foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE " initialize_option (&options->$option, GO_$type);\n";
  }
}
print CODE "};\n\n";

print CODE "void\nfree_options (OPTIONS *options)\n{\n";
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  free_option (&options->$option);\n";
  }
}
print CODE "};\n\n";

print CODE "void\nclear_options (OPTIONS *options)\n{\n";
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print CODE "  clear_option (&options->$option);\n";
  }
}
print CODE "};\n\n";

# set configured based on the name
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
};\n\n";

# table of defaults for options corresponding to commands
print CODE "COMMAND_OPTION_DEFAULT command_option_default_table[] = {\n";

foreach my $command_name (@commands_order) {
  my $command = $command_name;
  if (exists($name_commands{$command_name})) {
    $command = $name_commands{$command_name};
  }
  if ($commands_options{$command}) {
    my ($category, $value, $type) = @{$commands_options{$command}};
    #print STDERR "$command $category, $value, $type\n";
    my $char_value = 0;
    my $int_value = '-2';
    if ($type eq 'integer') {
      $int_value = -1;
    }
    if ($value ne 'undef') {
      if ($type eq 'integer') {
        $int_value = $value;
      } else {
        $char_value = '"'.$value.'"';
      }
    }
    print CODE "{GO_$type, $int_value, $char_value},   /* $command ($category) */\n";
  } else {
    print CODE "{GO_NONE, -2, 0},\n";
  }
}

print CODE "};\n\n";

close(CODE);


open (GET, ">$get_file") or die "Open $get_file: $!\n";
print GET "/* Automatically generated from $0 */\n\n";

print GET '
/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
/* Avoid warnings about Perl headers redefining symbols that gnulib
   redefined already. */
#if defined _WIN32 && !defined __CYGWIN__
  #undef free
#endif
#include "XSUB.h"

#undef context

';

# FIXME include before or after perl?  Include config.h?
print GET '#include <string.h>'."\n";
print GET '#include <stdlib.h>'."\n\n";

print GET '#include "options_types.h"'."\n";
print GET '#include "converter_types.h"'."\n";
print GET '#include "utils.h"'."\n";
print GET '#include "get_perl_info.h"'."\n";
print GET '#include "build_perl_info.h"'."\n\n";

print GET 'void
get_sv_option (OPTIONS *options, const char *key, SV *value, int force, CONVERTER *converter)
{
  dTHX;

  if (0) {}
';

foreach my $category (sort(keys(%option_categories))) {
  print GET "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print GET "  else if (!strcmp (key, \"$option\"))
    {
      if (force <= 0 && options->$option.configured > 0)
        return;\n\n";
    if ($type eq 'char' or $type eq 'bytes') {
      my $SV_function_type = 'utf8';
      if ($type eq 'bytes') {
        $SV_function_type = 'byte';
      }
      print GET "      free (options->$option.string);
      if (SvOK (value))
        options->$option.string = strdup (SvPV${SV_function_type}_nolen (value));
      else
        options->$option.string = 0;
    }\n";
    } elsif ($type eq 'integer') {
      print GET "      if (SvOK (value))
        options->$option.integer = SvIV (value);
      else
        options->$option.integer = -1;
    }\n";
    } elsif ($type =~ /_string_list$/) {
      my $dir_string_arg = 'svt_byte';
      if ($type eq 'file_string_list') {
        $dir_string_arg = 'svt_dir';
      } elsif ($type eq 'char_string_list') {
        $dir_string_arg = 'svt_char';
      }
      print GET "      clear_strings_list (options->$option.strlist);
      add_svav_to_string_list (value, options->$option.strlist, $dir_string_arg);
    }\n";
    } elsif ($type eq 'buttons') {
      print GET "      html_free_button_specification_list (options->$option.buttons);
      options->$option.buttons = html_get_button_specification_list (converter, value);
    }\n";
    } elsif ($type eq 'icons') {
      print GET "      html_free_direction_icons (options->$option.icons);
      html_get_direction_icons_sv (converter, options->$option.icons, value);
    }\n";
    } else {
      print GET "    {}\n";
    }
  }
}

print GET '}

';

print GET 'SV *
build_sv_option (OPTIONS *options, const char *key, CONVERTER *converter)
{
  dTHX;

  if (0) {return newSV (0);}
';

foreach my $category (sort(keys(%option_categories))) {
  print GET "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    print GET "  else if (!strcmp (key, \"$option\"))\n";
    if ($type eq 'char' or $type eq 'bytes') {
      my $SV_function_type = 'utf8';
      if ($type eq 'bytes') {
        $SV_function_type = 'byte';
      }
      print GET "    {
      if (!options->$option.string)
        return newSV (0);
      return newSVpv_${SV_function_type} (options->$option.string, 0);
    }\n";
    } elsif ($type eq 'integer') {
      print GET "    {
      if (options->$option.integer == -1)
        return newSV (0);
      return newSViv (options->$option.integer);
    }\n";
    } elsif ($type =~ /_string_list$/) {
      my $dir_string_arg = 'svt_byte';
      if ($type eq 'file_string_list') {
        $dir_string_arg = 'svt_dir';
      } elsif ($type eq 'char_string_list') {
        $dir_string_arg = 'svt_char';
      }
      print GET "    {
      return newRV_noinc ((SV *) build_string_list(options->$option.strlist, $dir_string_arg));
    }\n";
    } elsif ($type eq 'buttons') {
      print GET "    {
      if (!options->$option.buttons) return newSV (0);
      return newRV_inc ((SV *) options->$option.buttons->av);
    }\n";
    } elsif ($type eq 'icons') {
      print GET "    {
      return html_build_direction_icons (converter, options->$option.icons);
    }\n";
    } else {
      print GET "    {return newSV (0);}\n";
    }
  }
}

print GET '
  return newSV (0);
}

';

close(GET);


