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

package Texinfo::Config;

# for %Texinfo::Convert::HTML::default_formatting_references
use Texinfo::Convert::HTML;

# for carp
use Carp;

# not that there is no use strict to avoid warnings for users code

# eval init file in the Texinfo::Config namespace.  Needed functions are in
# the Texinfo::Convert::HTML Texinfo::Config package namespace code.
sub _load_init_file($) {
  my $file = shift;
  eval { require($file) ;};
  my $e = $@;
  if ($e ne '') {
    main::document_warn(sprintf(main::__("error loading %s: %s\n"),
                                 $file, $e));
  }
}

# used in main program
our $options = {};
my $cmdline_options;
my $default_options;

sub _load_config($$) {
  $default_options = shift;
  $cmdline_options = shift;
  #print STDERR "cmdline_options: ".join('|',keys(%$cmdline_options))."\n";
}

# FIXME: maybe use an opaque return status that can be used to retrieve
# an error message?
#
# Called from init files to set configuration options.
sub set_from_init_file($$) {
  my $var = shift;
  my $value = shift;
  if (!Texinfo::Common::valid_option($var)) {
    # carp may be better, but infortunately, it points to the routine that 
    # loads the file, and not to the init file.
    main::document_warn(sprintf(main::__("%s: unknown variable %s"),
                                'set_from_init_file', $var));
    return 0;
  }
  return 0 if (defined($cmdline_options->{$var}));
  delete $default_options->{$var};
  $options->{$var} = $value;
  return 1;
}

# set option from the command line.  Highest precedence.
sub set_from_cmdline($$) {
  my $var = shift;
  my $value = shift;
  delete $options->{$var};
  delete $default_options->{$var};
  if (!Texinfo::Common::valid_option($var)) {
    main::document_warn(sprintf(main::__("%s: unknown variable %s\n"),
                                'set_from_cmdline', $var));
    return 0;
  }
  $cmdline_options->{$var} = $value;
  return 1;
}

# This also could get and set some @-command results.
# FIXME But it does not take into account what happens during conversion,
# for that something like $converter->get_conf(...) has to be used.
sub get_conf($) {
  my $var = shift;
  if (exists($cmdline_options->{$var})) {
    return $cmdline_options->{$var};
  } elsif (exists($options->{$var})) {
    return $options->{$var};
  } elsif (exists($default_options->{$var})) {
    return $default_options->{$var};
  } else {
    return undef;
  }
}

# to dynamically add options from init files
sub texinfo_add_valid_option($)
{
  my $option = shift;
  return Texinfo::Common::add_valid_option($option);
}

# FIXME this is unclean, but it is texi2any.pl that loads init files
# so it needs to knwow the %default_formatting_references for 
# texinfo_register_formatting_function.
my %default_formatting_references = %Texinfo::Convert::HTML::default_formatting_references;

# FIXME would be better to do the reverse, but Texinfo::Convert::HTML
# is loaded first
#our @possible_stages = ('setup', 'structure', 'init', 'finish');
my @possible_stages = @Texinfo::Convert::HTML::possible_stages;
my %possible_stages;
foreach my $stage (@possible_stages) {
  $possible_stages{$stage} = 1;
}

my $default_priority = 'default';

# Note that these variables are available for the Texinfo modules
# but, in general should not be accessed directly by the users who
# customize formatting and should use the associated functions,
# such as texinfo_register_handler(), texinfo_register_formatting_function(),
# texinfo_register_command_formatting() or texinfo_register_type_formatting().
use vars qw(%texinfo_default_stage_handlers %texinfo_formatting_references
            %texinfo_commands_conversion %texinfo_types_conversion);

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
  push @{$texinfo_default_stage_handlers{$stage}->{$priority}}, $handler;
  return 1;
}

sub texinfo_register_formatting_function($$)
{
  my $thing = shift;
  my $handler = shift;
  if (!$default_formatting_references{$thing}) {
    carp ("Unknown formatting type $thing\n");
    return 0;
  }
  $texinfo_formatting_references{$thing} = $handler;
}

sub texinfo_register_command_formatting($$)
{
  my $command = shift;
  my $reference = shift;
  $texinfo_commands_conversion{$command} = $reference;
}

sub texinfo_register_type_formatting($$)
{
  my $command = shift;
  my $reference = shift;
  $texinfo_types_conversion{$command} = $reference;
}



1;
