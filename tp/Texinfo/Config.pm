# Config.pm: namespace used for user configuration (init files) evaluation
#
# Copyright 2010-2019 Free Software Foundation, Inc.
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
# 
# Original author: Patrice Dumas <pertusus@free.fr>
#
# functions that should not be called by user init files codes are
# prefixed by GNUT_ while functions that can be called by user init
# files codes are prefixed by texinfo_.
# 
# TODO document all texinfo_ in a pod section, but wait for stabilization
# document that GNUT_, _GNUT_ and texinfo_ are reserved prefixes.

package Texinfo::Config;

# for __( and p__(
use Texinfo::Common;

# for carp
use Carp;

# not that there is no use strict to avoid warnings for users code

my $real_command_name;

my $cmdline_options;
my $main_program_default_options;
my $init_files_options = {};

# list options are not handled like string options.  Indeed,
# the lists need to be defined in the main program, therefore
# the main program list options would always take precedence
# if there is a precedence, and the list options set from
# init file would not have any effect. For list options, items
# are added and removed by calls to texinfo_add_to_option_list
# and texinfo_remove_from_option_list, be it from command line
# or init files, there is no precedence, but the order of calls
# matter.
my %options_as_lists;

# called from texi2any.pl main program
sub GNUT_initialize_config($$$) {
  $real_command_name = shift;
  $main_program_default_options = shift;
  $cmdline_options = shift;
  # consider options passed from main program for initialization
  # as list options
  foreach my $cmdline_option (keys(%$cmdline_options)) {
    if (not ref($cmdline_options->{$cmdline_option})
        or ref($cmdline_options->{$cmdline_option}) ne 'ARRAY') {
      warn "BUG: $cmdline_option not an ARRAY $cmdline_options->{$cmdline_option}\n";
    }
    $options_as_lists{$cmdline_option} = 1;
  }
  #print STDERR "cmdline_options: ".join('|',keys(%$cmdline_options))."\n";
  return $init_files_options;
}

# duplicated from texi2any.pl
sub _GNUT_document_warn($) {
  return if (texinfo_get_conf('NO_WARN'));
  my $text = shift;
  chomp ($text);
  warn(sprintf(__p("program name: warning: warning_message",
                   "%s: warning: %s\n"), $real_command_name,  $text));
}

# called from texi2any.pl main program.
# eval init file in the Texinfo::Config namespace.
sub GNUT_load_init_file($) {
  my $file = shift;
  eval { require($file) ;};
  my $e = $@;
  if ($e ne '') {
    _GNUT_document_warn(sprintf(__("error loading %s: %s\n"),
                                 $file, $e));
  }
}

# L2H removed in 2021
# return undef for var there is nothing to set.
sub _GNUT_map_obsolete_options($$)
{
  my $input_var = shift;
  my $input_value = shift;

  my $var = $input_var;
  my $value = $input_value;

  if ($input_var eq 'L2H') {
    _GNUT_document_warn(sprintf(__("obsolete option: %s"), $input_var));
    if (! $input_value) {
      # nothing to do in that case
      $var = undef;
      $value = undef;
    } else {
      $var = 'HTML_MATH';
      $value = 'l2h';
    }
  }
  return $var, $value;
}

# Called from init files to set configuration options.
sub texinfo_set_from_init_file($$) {
  my $var = shift;
  my $value = shift;

  ($var, $value) = _GNUT_map_obsolete_options($var, $value);
  if (!defined($var)) {
    return 1;
  }
  if (!Texinfo::Common::valid_option($var)) {
    # carp may be better, but infortunately, it points to the routine that 
    # loads the file, and not to the init file.
    _GNUT_document_warn(sprintf(__("%s: unknown variable %s"),
                                'texinfo_set_from_init_file', $var));
    return 0;
  }
  return 0 if (defined($cmdline_options->{$var}));
  delete $main_program_default_options->{$var};
  $init_files_options->{$var} = $value;
  return 1;
}

# set option from the command line.  Highest precedence.
sub GNUT_set_from_cmdline($$) {
  my $var = shift;
  my $value = shift;

  ($var, $value) = _GNUT_map_obsolete_options($var, $value);
  if (!defined($var)) {
    return 1;
  }

  delete $init_files_options->{$var};
  delete $main_program_default_options->{$var};
  if (!Texinfo::Common::valid_option($var)) {
    _GNUT_document_warn(sprintf(__("%s: unknown variable %s\n"),
                          'GNUT_set_from_cmdline', $var));
    return 0;
  }
  $cmdline_options->{$var} = $value;
  return 1;
}

# called both from main program and init files.
sub texinfo_add_to_option_list($$)
{
  my $var = shift;
  my $values_array_ref = shift;
  if (not $options_as_lists{$var}) {
    return 0;
  }
  foreach my $value (@$values_array_ref) {
    push @{$cmdline_options->{$var}}, $value
      unless (grep {$_ eq $value} @{$cmdline_options->{$var}});
  }
  return 1;
}

# called both from main program and init files.
sub texinfo_remove_from_option_list($$)
{
  my $var = shift;
  my $values_array_ref = shift;
  if (not $options_as_lists{$var}) {
    return 0;
  }
  foreach my $value (@$values_array_ref) {
    @{$cmdline_options->{$var}}
      = grep {$_ ne $value} @{$cmdline_options->{$var}};
  }
  return 1;
}

# This also could get and set some @-command results.
# FIXME But it does not take into account what happens during conversion,
# for that something like $converter->get_conf(...) has to be used.
sub texinfo_get_conf($) {
  my $var = shift;
  if (exists($cmdline_options->{$var})) {
    return $cmdline_options->{$var};
  } elsif (exists($init_files_options->{$var})) {
    return $init_files_options->{$var};
  } elsif (exists($main_program_default_options->{$var})) {
    return $main_program_default_options->{$var};
  } else {
    return undef;
  }
}

# to dynamically add customization options from init files
sub texinfo_add_valid_option($)
{
  my $option = shift;
  return Texinfo::Common::add_valid_option($option);
}

my @possible_stages = ('setup', 'structure', 'init', 'finish');
my %possible_stages;
foreach my $stage (@possible_stages) {
  $possible_stages{$stage} = 1;
}

my $default_priority = 'default';

# These variables should not be accessed directly by the users who
# customize formatting and should use the associated functions,
# such as texinfo_register_handler(), texinfo_register_formatting_function(),
# texinfo_register_command_formatting() or texinfo_register_type_formatting().
#
# FIXME add another level with format?  Not needed now as HTML is
# the only customizable format for now.
my $GNUT_stage_handlers = {};
my $GNUT_formatting_references = {};
my $GNUT_commands_conversion = {};
my $GNUT_types_conversion = {};

sub texinfo_register_handler($$;$)
{
  my $stage = shift;
  my $handler = shift;
  my $priority = shift;

  if (!$possible_stages{$stage}) {
    carp ("Unknown stage $stage\n");
    return 0;
  }
  $priority = $default_priority if (!defined($priority));
  push @{$GNUT_stage_handlers->{$stage}->{$priority}}, $handler;
  return 1;
}

# called from the Converter
sub GNUT_get_stage_handlers()
{
  return $GNUT_stage_handlers;
}

# called from init files
sub texinfo_register_formatting_function($$)
{
  my $thing = shift;
  my $handler = shift;
  $GNUT_formatting_references->{$thing} = $handler;
}

# called from the Converter
sub GNUT_get_formatting_references()
{
  return $GNUT_formatting_references;
}

# called from init files
sub texinfo_register_command_formatting($$)
{
  my $command = shift;
  my $reference = shift;
  $GNUT_commands_conversion->{$command} = $reference;
}

# called from the Converter
sub GNUT_get_commands_conversion()
{
  return $GNUT_commands_conversion;
}

# called from init files
sub texinfo_register_type_formatting($$)
{
  my $command = shift;
  my $reference = shift;
  $GNUT_types_conversion->{$command} = $reference;
}

# called from the Converter
sub GNUT_get_types_conversion()
{
  return $GNUT_types_conversion;
}


1;
