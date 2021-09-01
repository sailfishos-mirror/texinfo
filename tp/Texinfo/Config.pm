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

package Texinfo::Config;

# for __( and p__(
use Texinfo::Common;

# for carp
use Carp;

# not that there is no use strict to avoid warnings for users code

my $real_command_name;

my $cmdline_options;
my $default_options;
my $init_files_options = {};

# called from texi2any.pl main program
sub GNUT_initialize_config($$$) {
  $real_command_name = shift;
  $default_options = shift;
  $cmdline_options = shift;
  #print STDERR "cmdline_options: ".join('|',keys(%$cmdline_options))."\n";
  return $init_files_options;
}

# duplicated from texi2any.pl
sub _document_warn($) {
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
    _document_warn(sprintf(__("error loading %s: %s\n"),
                                 $file, $e));
  }
}

# Called from init files to set configuration options.
sub texinfo_set_from_init_file($$) {
  my $var = shift;
  my $value = shift;
  if (!Texinfo::Common::valid_option($var)) {
    # carp may be better, but infortunately, it points to the routine that 
    # loads the file, and not to the init file.
    _document_warn(sprintf(__("%s: unknown variable %s"),
                                'texinfo_set_from_init_file', $var));
    return 0;
  }
  return 0 if (defined($cmdline_options->{$var}));
  delete $default_options->{$var};
  $init_files_options->{$var} = $value;
  return 1;
}

# set option from the command line.  Highest precedence.
sub GNUT_set_from_cmdline($$) {
  my $var = shift;
  my $value = shift;
  delete $init_files_options->{$var};
  delete $default_options->{$var};
  if (!Texinfo::Common::valid_option($var)) {
    _document_warn(sprintf(__("%s: unknown variable %s\n"),
                          'GNUT_set_from_cmdline', $var));
    return 0;
  }
  $cmdline_options->{$var} = $value;
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
  } elsif (exists($default_options->{$var})) {
    return $default_options->{$var};
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
