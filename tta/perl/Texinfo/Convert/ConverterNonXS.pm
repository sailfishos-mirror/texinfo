# ConverterNonXS.pm: Common code for Converters.
#
# Copyright 2011-2026 Free Software Foundation, Inc.
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
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# Original author: Patrice Dumas <pertusus@free.fr>

# ALTIMP perl/XSTexinfo/convert/ConvertConverter.xs
# ALTIMP C/convert/converter.c

package Texinfo::Convert::Converter;

use 5.006;
use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

#use Data::Dumper;

use Carp qw(cluck confess);

eval { require Devel::Cycle; Devel::Cycle->import(); };

use Texinfo::Options;

use Texinfo::Common;

use Texinfo::Report;

use Texinfo::Document;

use Texinfo::Convert::Utils;
use Texinfo::Convert::Text;

our $VERSION = '7.3dev';

# values for integer and string options in code generated from
# Texinfo/Convert/converters_defaults.txt
# customization variables defaults for all converters that are
# not defined elsewhere.
# Integer and string customization variables common for all the converters
# with values different from main program values
my $converter_common_defaults
  = Texinfo::Options::get_regular_options('converter_common');

# Non-customization variables defaults for all converters.
# undef values in general mark information passed by the caller that
# is valid here.  These defaults are not considered as
# "configuration/customization" and therefore are not available through
# get_conf(), but are available directly in the converter as a hash key.
# TODO check that those items are not valid customization options?
# TODO make those items customization variables that can only be set
# from init files, like buttons or icons?
# NOTE converters should never set those items.
my %common_converters_non_options_defaults = (
  # Following are set in the main program
  'deprecated_config_directories' => undef,

  # Not set in the main program
  'translated_commands'  => {'error' => 'error@arrow{}',},
);

my %all_converters_defaults
 = (%Texinfo::Options::converter_cmdline_options,
    %Texinfo::Options::converter_customization_options,
    %Texinfo::Options::unique_at_command_options,
    %Texinfo::Options::multiple_at_command_options,
    %$converter_common_defaults,
    %common_converters_non_options_defaults
);

################################################################
# converter API

sub set_document($$) {
  my ($converter, $document) = @_;

  confess('set_document: document undef') if (!defined($document));

  $converter->{'document'} = $document;

  Texinfo::Common::set_output_encoding($converter, $document);

  $converter->{'convert_text_options'}
     = Texinfo::Convert::Text::copy_options_for_convert_text($converter);
}

# initialization either in generic XS converter or in Perl
sub _generic_converter_init($$;$) {
  my ($converter, $format_defaults, $conf) = @_;

  my %defaults = %all_converters_defaults;

  $converter->{'commands_init_conf'} = {};
  if (defined($format_defaults)) {
    foreach my $key (keys(%$format_defaults)) {
      $defaults{$key} = $format_defaults->{$key};
      if (exists($Texinfo::Common::document_settable_at_commands{$key})) {
        $converter->{'commands_init_conf'}->{$key} = $defaults{$key};
      }
    }
  }
  $converter->{'conf'} = {};
  foreach my $key (keys(%defaults)) {
    if (Texinfo::Common::valid_customization_option($key)) {
      $converter->{'conf'}->{$key} = $defaults{$key};
    } else {
      $converter->{$key} = $defaults{$key};
    }
  }

  $converter->{'configured'} = {};
  # customization options obtained from command-line for @-commands.
  if (defined($conf)) {
    foreach my $key (keys(%$conf)) {
      if (Texinfo::Common::valid_customization_option($key)) {
        $converter->{'conf'}->{$key} = $conf->{$key};
        if (exists($Texinfo::Common::document_settable_at_commands{$key})) {
          $converter->{'commands_init_conf'}->{$key} = $conf->{$key};
        }
      } elsif (!exists($defaults{$key})) {
        my $class = ref($converter);
        warn "$class: $key not a possible configuration\n";
      } else {
        $converter->{$key} = $conf->{$key};
      }
      # configuration set here, from the argument of the converter,
      # in general coming from command-line or from init files will not
      # be reset by set_conf.
      $converter->{'configured'}->{$key} = 1;
    }

    if (exists($conf->{'documentlanguage'})) {
      Texinfo::Convert::Utils::switch_lang_translations($converter,
                                           $conf->{'documentlanguage'});
    }
  }
  # used for output files information, to register opened
  # and not closed files.  Accessed through output_files_information()
  $converter->{'output_files'}
    = Texinfo::Convert::Utils::output_files_initialize();

  # setup expanded formats as a hash.
  $converter->{'expanded_formats'} = {};
  if (exists($converter->{'conf'}->{'EXPANDED_FORMATS'})) {
    my $expanded_formats = $converter->{'conf'}->{'EXPANDED_FORMATS'};
    foreach my $expanded_format (@$expanded_formats) {
      $converter->{'expanded_formats'}->{$expanded_format} = 1;
    }
  }

  $converter->{'error_warning_messages'} = [];
}

# ALTIMP convert/texinfo.c txi_converter_remove_output_units
sub converter_remove_output_units($) {
  my $self = shift;

  $self->perl_converter_remove_output_units();
}

# ALTIMP convert/texinfo.c txi_destroy_converter
#        convert/converter.c destroy_converter
# Has an XS override, that calls the converter_perl_release Perl function
# in addition to C code.
sub destroy_converter($) {
  my $self = shift;

  $self->converter_perl_release();
  #find_cycle($self);
}

sub XS_get_unclosed_stream($$) {
  return undef;
}

# returns main output units list, special output units list and associated
# output units lists, for output units managed in C/XS only.  Not generally
# needed, as all the computations are done through XS, but can be useful
# for debugging.
# (Access of pure Perl converters output units lists should be through
# get_output_units_lists)
sub XS_get_output_units_lists($) {
  return (undef, undef, undef);
}




# errors and warnings

sub converter_line_error($$$;$) {
  my ($self, $text, $error_location_info, $continuation) = @_;

  my $message = Texinfo::Report::format_line_message('error', $text,
                                 $error_location_info, $continuation,
                                            $self->get_conf('DEBUG'));
  push @{$self->{'error_warning_messages'}}, $message;
}

sub converter_line_warn($$$;$) {
  my ($self, $text, $error_location_info, $continuation) = @_;

  my $message = Texinfo::Report::format_line_message('warning', $text,
                                   $error_location_info, $continuation,
                                              $self->get_conf('DEBUG'));
  push @{$self->{'error_warning_messages'}}, $message;
}

sub converter_document_error($$;$) {
  my ($self, $text, $continuation) = @_;

  my $program_name;

  if ($self->get_conf('PROGRAM') && $self->get_conf('PROGRAM') ne '') {
    $program_name = $self->get_conf('PROGRAM');
  }

  my $message
      = Texinfo::Report::format_document_message('error', $text, $program_name,
                                                 $continuation);
  push @{$self->{'error_warning_messages'}}, $message;
}

sub converter_document_warn($$;$) {
  my ($self, $text, $continuation) = @_;

  my $program_name;

  if ($self->get_conf('PROGRAM') && $self->get_conf('PROGRAM') ne '') {
    $program_name = $self->get_conf('PROGRAM');
  }

  my $message
      = Texinfo::Report::format_document_message('warning', $text,
                                        $program_name, $continuation);
  push @{$self->{'error_warning_messages'}}, $message;
}

sub get_converter_errors($) {
  my $self = shift;

  my $errors = $self->{'error_warning_messages'};

  $self->{'error_warning_messages'} = [];
  return $errors;
}

sub merge_converter_error_messages_lists($$) {
  my ($dst, $src) = @_;

  if (!defined($src) or !exists($src->{'error_warning_messages'})) {
    return;
  }

  push @{$dst->{'error_warning_messages'}},
       splice(@{$src->{'error_warning_messages'}});
}



###############################################################
# Implementation of the customization API that is used in many
# Texinfo modules

# Unknown variables can only happen when called from init files.  From
# command-line checks are done before.

sub get_conf($$) {
  my ($self, $var_name) = @_;

  if (!Texinfo::Common::valid_customization_option($var_name)) {
    $self->converter_document_error(sprintf(__(
                       "unknown customization variable: %s"),
                                      $var_name));
    if ($self->{'conf'}->{'TEST'}) {
      cluck ("BUG: get_conf: unknown customization variable: $var_name");
    }
    return undef;
  }

  return $self->{'conf'}->{$var_name};
}

sub set_conf($$$) {
  my ($self, $var_name, $value) = @_;

  if (!Texinfo::Common::valid_customization_option($var_name)) {
    $self->converter_document_error(sprintf(__(
                       "unknown customization variable: %s"),
                                      $var_name));
    if ($self->{'conf'}->{'TEST'}) {
      cluck ("BUG: set_conf: unknown customization variable: $var_name");
    }
    return 0;
  }

  if ($self->{'configured'}->{$var_name}) {
    return 0;
  } else {
    $self->{'conf'}->{$var_name} = $value;
    return 1;
  }
}

sub force_conf($$$) {
  my ($self, $var_name, $value) = @_;

  if (!Texinfo::Common::valid_customization_option($var_name)) {
    $self->converter_document_error(sprintf(__(
                       "unknown customization variable: %s"),
                                      $var_name));
    if ($self->{'conf'}->{'TEST'}) {
      cluck ("BUG: force_conf: unknown customization variable: $var_name");
    }
    return 0;
  }

  $self->{'conf'}->{$var_name} = $value;
  return 1;
}



# $COMMANDS_LOCATION is 'before', 'last', 'preamble' or 'preamble_or_first'
# 'before' means setting to the values before the document commands
# (defaults and command-line).
# 'preamble' means setting sequentially to the values in the preamble.
# 'preamble_or_first'  means setting to the first value for the command
# in the document if the first command is not in the preamble, else set
# sequentially to the values in the preamble.
# 'last' means setting to the last value for the command in the document.
#
# Notice that the only effect is to use set_conf (directly or through
# set_global_document_command), no @-commands setting side effects are done
# and associated customization variables are not set/reset either.
sub set_global_document_commands($$$) {
  my ($self, $commands_location, $selected_commands) = @_;

  my $init_conf = $self->{'commands_init_conf'};

  if (not defined($selected_commands)) {
    die "set_global_document_commands: requires selected commands";
  }
  if ($commands_location eq 'before') {
    foreach my $global_command (@{$selected_commands}) {
      # for commands not appearing in the document, this should set to
      # the converter initialization value, which is in init_conf,
      # or generic default
      my $conf_value = get_command_init($global_command, $init_conf);
      $self->set_conf($global_command, $conf_value);
      # NOTE if the variable is set from an handler, or in the converter after
      # $init_conf was set, but before starting the conversion, it is ignored
      # here and the $init_conf value is set.  The previously set value
      # could be in $self->get_conf(), but what is available from
      # $self->get_conf() could also be a value set by a previous call of
      # set_global_document_commands.
      # There is no easy way to deal with this issue, other than making sure
      # that a customization value that is expected to be set early is set in
      # $init_conf.
    }
  } else {
    my $global_commands;
    if (exists($self->{'document'})) {
      $global_commands = $self->{'document'}->global_commands_information();
    }
    foreach my $global_command (@{$selected_commands}) {
      if ($self->get_conf('DEBUG')) {
        print STDERR "SET_global($commands_location) $global_command\n";
      }

      my $element;
      if (defined($global_commands)) {
        $element = Texinfo::Common::set_global_document_command($self,
                  $global_commands, $global_command, $commands_location);
      }
      if (not defined($element)) {
        # for commands not appearing in the document, this should set to
        # the converter initialization value, which is in init_conf,
        # or generic default
        # the NOTE above in 'before' holds here too.
        $self->set_conf($global_command,
                        get_command_init($global_command, $init_conf));
      }
    }
  }
}



# Specific elements formatting and other helper functions

# ALTIMP partial in main/targets.c
# For user-defined HTML customization, documented in the specific manual.
# Return the element in the tree that $IDENTIFIER refers to.
sub converter_find_identifier_target($$) {
  my ($self, $identifier) = @_;

  if (!defined($identifier)) {
    cluck;
  }
  my $identifiers_target;
  if (exists($self->{'document'})) {
    $identifiers_target = $self->{'document'}->labels_information();

    if (defined($identifiers_target)) {
      return $identifiers_target->{$identifier};
    }
  }
  return undef;
}

sub get_converter_indices_sorted_by_letter($) {
  my $self = shift;

  my $indices_information;
  if (exists($self->{'document'})) {
    $indices_information = $self->{'document'}->indices_information();

    if (defined($indices_information)) {
      my $use_unicode_collation
        = $self->get_conf('USE_UNICODE_COLLATION');
      my $locale_lang;
      if (!(defined($use_unicode_collation) and !$use_unicode_collation)) {
        $locale_lang = $self->get_conf('COLLATION_LANGUAGE');
        if (!defined($locale_lang)
            and $self->get_conf('DOCUMENTLANGUAGE_COLLATION')) {
          $locale_lang = $self->get_conf('documentlanguage');
        }
      }

      return Texinfo::Document::sorted_indices_by_letter($self->{'document'},
                            $self, $use_unicode_collation, $locale_lang);
    }
  }
  return undef;
}

sub get_converter_indices_sorted_by_index($) {
  my $self = shift;

  my $indices_information;
  if (exists($self->{'document'})) {
    $indices_information = $self->{'document'}->indices_information();

    if (defined($indices_information)) {
      my $use_unicode_collation
        = $self->get_conf('USE_UNICODE_COLLATION');
      my $locale_lang;
      if (!(defined($use_unicode_collation) and !$use_unicode_collation)) {
        $locale_lang = $self->get_conf('COLLATION_LANGUAGE');
        if (!defined($locale_lang)
            and $self->get_conf('DOCUMENTLANGUAGE_COLLATION')) {
          $locale_lang = $self->get_conf('documentlanguage');
        }
      }

      return Texinfo::Document::sorted_indices_by_index($self->{'document'},
                            $self, $use_unicode_collation, $locale_lang);
    }
  }
  return undef;
}

1;

__END__
