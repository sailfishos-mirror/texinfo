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

print CODE "void\nfree_options (OPTIONS *options)\n{\n";
foreach my $category (sort(keys(%option_categories))) {
  print CODE "\n/* ${category} */\n\n";
  foreach my $option_info (@{$option_categories{$category}}) {
    my ($option, $value, $type) = @$option_info;
    if ($type eq 'STRING_LIST') {
      print CODE "  free_strings_list (&options->$option);\n";
    } elsif ($type eq 'char *') {
      print CODE " free (options->$option);\n";
    }
  }
}
print CODE "};\n\n";

# associate commands to options
print CODE "#include \"command_ids.h\"\n\n";
print CODE 'COMMAND_OPTION_REF *
get_command_option (OPTIONS *options,
                    enum command_id cmd)
{
  int type = 0;
  char **char_ref = 0;
  int *int_ref = 0;
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
    {\n";
    my $str_type = 'char';
    if ($type eq 'int') {
      $str_type = 'int';
    }
    print CODE "      type = GO_${str_type};\n";
    print CODE "      ${str_type}_ref = &options->${command};\n";
    print CODE "      break;\n";
    print CODE "    }\n";
  }
}

print CODE "
    default:
      return 0;
    }

  COMMAND_OPTION_REF *result
    = (COMMAND_OPTION_REF *)malloc (sizeof (COMMAND_OPTION_REF));
  result->type = type;
  if (type == GO_int)
    result->int_ref = int_ref;
  else
    result->char_ref = char_ref;

  return result;
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
    my $GO_type = 'GO_char';
    if ($type eq 'int') {
      $GO_type = 'GO_int';
      $int_value = -1;
    }
    if ($value ne 'undef') {
      if ($type eq 'int') {
        $int_value = $value;
      } else {
        $char_value = '"'.$value.'"';
      }
    }
    print CODE "{$GO_type, $int_value, $char_value},   /* $command ($category) */\n";
  } else {
    print CODE "{GO_NONE, -2, 0},\n";
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


