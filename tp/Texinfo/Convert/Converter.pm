# Converter.pm: Common code for Converters.
#
# Copyright 2011-2020 Free Software Foundation, Inc.
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

package Texinfo::Convert::Converter;

use 5.00405;
use strict;

# for fileparse
use File::Basename;
# for file names portability
use File::Spec;
use Encode;

use Texinfo::Common;

use Texinfo::Report;
use Texinfo::Translations;

use Texinfo::Convert::Utils;
use Texinfo::Convert::Unicode;
use Texinfo::Convert::Text;
use Texinfo::Convert::NodeNameNormalization;
use Texinfo::Structuring;

use Carp qw(cluck);

require Exporter;
use vars qw($VERSION @ISA @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter Texinfo::Report Texinfo::Translations);

%EXPORT_TAGS = ( 'all' => [ qw(
xml_protect_text
xml_comment
xml_accent
xml_accents
) ] );

@EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

$VERSION = '6.8dev';


my %defaults = (
  'documentlanguage'     => undef,
);

# defaults for all converters that are not defined elsewhere.
# undef values in general marks information passed by the caller that
# is valid in the parser configuration initialization hash, but
# is not considered as "configuration", and is available directly
# in the converter, not through get_conf().
# FIXME separate the two types of information and check that those
# items are not valid customization options?
my %common_converters_defaults = (
  'language_config_dirs' => undef,
  'output_format'        => undef,
  'structuring'          => undef,
  'translated_commands'  => {'error' => 'error@arrow{}',},
# This is the default, mainly for tests; the caller should set them.  These
# values are what is used in tests of the Converters.
  'PACKAGE_AND_VERSION'  => 'texinfo',
  'PACKAGE_VERSION'      => '',
  'PACKAGE_URL'          => 'http://www.gnu.org/software/texinfo/',
  'PROGRAM'              => '',
);

my %all_converters_defaults = (%Texinfo::Common::default_converter_command_line_options,
  %Texinfo::Common::default_converter_customization,
  %Texinfo::Common::document_settable_unique_at_commands,
  %Texinfo::Common::document_settable_multiple_at_commands,
  %common_converters_defaults
);

# For translation of in document string.
if (0) {
  my $self;
  $self->gdt('error@arrow{}');
}

sub converter_defaults($$)
{
  return %defaults;
}

sub converter_initialize($)
{
}

sub output_internal_links($)
{
  my $self = shift;
  return undef;
}

sub _informative_command_value($$)
{
  my $self = shift;
  my $element = shift;

  my $cmdname = $element->{'cmdname'};

  if ($Texinfo::Common::misc_commands{$cmdname} eq 'skipline') {
    return 1;
  } elsif (exists($element->{'extra'}->{'text_arg'})) {
    return $element->{'extra'}->{'text_arg'};
  } elsif ($element->{'extra'} and $element->{'extra'}->{'misc_args'}
           and exists($element->{'extra'}->{'misc_args'}->[0])) {
    return $element->{'extra'}->{'misc_args'}->[0];
  }
  return undef;
}

# REMARK documentencoding handling is not reverted by resetting
# a value with set_conf, as the encodings are set using other
# informations (possibly based on @documentencoding) in converter.
sub set_informative_command_value($$)
{
  my $self = shift;
  my $element = shift;

  my $cmdname = $element->{'cmdname'};
  $cmdname = 'shortcontents' if ($cmdname eq 'summarycontents');

  my $value = $self->_informative_command_value($element);
  if (defined($value)) {
    $self->set_conf($cmdname, $value);
  }
}

sub converter(;$)
{
  my $class = shift;
  my $converter = { 'set' => {} };

  my $conf;
  my $name = 'converter';

  if (ref($class) eq 'HASH') {
    $conf = $class;
    bless $converter;
  } elsif (defined($class)) {
    bless $converter, $class;
    $name = ref($converter);
    $conf = shift;
  } else {
    bless $converter;
    $conf = shift;
    $name = ref($converter);
  }
  my %defaults = $converter->converter_defaults($conf);
  foreach my $key (keys(%all_converters_defaults)) {
    $defaults{$key} = $all_converters_defaults{$key} 
      if (!exists($defaults{$key}));
  }
  foreach my $key (keys(%defaults)) {
    if (Texinfo::Common::valid_option($key)) {
      $converter->{'conf'}->{$key} = $defaults{$key};
    } else {
      $converter->{$key} = $defaults{$key};
    }
  }
  #$converter->{'converter_pre_conf'} = \%defaults;
  if (defined($conf)) {
    if ($conf->{'parser'}) {
      $converter->{'parser'} = $conf->{'parser'};
      $converter->{'global_commands'}
         = $converter->{'parser'}->global_commands_information();
      $converter->{'parser_info'} = $converter->{'parser'}->global_informations();
      my $floats = $converter->{'parser'}->floats_information();
      my ($labels, $targets_list, $nodes_list)
        = $converter->{'parser'}->labels_information();

      $converter->{'floats'} = $floats if ($floats);
      $converter->{'labels'} = $labels if ($labels);
      delete $conf->{'parser'};
    }
    foreach my $key (keys(%$conf)) {
      if (Texinfo::Common::valid_option($key)) {
        $converter->{'conf'}->{$key} = $conf->{$key};
      } elsif (!exists($defaults{$key})) {
        warn "$key not a possible configuration in $name\n";
      } else {
        $converter->{$key} = $conf->{$key};
      }
      # configuration set here, in general coming from command-line
      # will not be reset by set_conf.
      $converter->{'set'}->{$key} = 1;
    }
  }
  # set $converter->{'converter_init_conf'} to the configuration
  # options obtained after setting the defaults and applying
  # the configuration passed as argument.
  $converter->{'converter_init_conf'} = {};
  foreach my $key (keys(%{$converter->{'conf'}})) {
    $converter->{'converter_init_conf'}->{$key} = $converter->{'conf'}->{$key};
  }
  foreach my $key (keys (%defaults)) {
    if (defined($converter->{$key})) {
      $converter->{'converter_init_conf'}->{$key} = $converter->{$key};
    }
  }

  Texinfo::Common::set_output_encodings($converter,
    $converter->{'parser_info'});

  # turn the array to a hash for speed.  Not sure it really matters for such
  # a small array.
  my $expanded_formats = $converter->get_conf('EXPANDED_FORMATS');
  if (defined($expanded_formats)) {
    foreach my $expanded_format (@{$converter->get_conf('EXPANDED_FORMATS')}) {
      $converter->{'expanded_formats_hash'}->{$expanded_format} = 1;
    }
  }

  # used for output files information, to register opened
  # and not closed files.  Accessed through output_files_information()
  $converter->{'output_files'} = {};

  $converter->Texinfo::Report::new();

  $converter->converter_initialize();

  return $converter;
}

sub output_files_information($)
{
  my $self = shift;
  return $self->{'output_files'};
}

# $COMMANDS_LOCATION is 0, 1 or -1.
# 0 means setting to the values before the document commands
# (default and command-line).
# 1 means setting to the first value for the command in the document
# -1 means setting to the last value for the command in the document.
#
# For unique command, the last may be considered to be the same as the first.
#
# If a value was given in converter input, it is never reset by documents
# @-commands values.
#
# Notice that the only effect is to use set_conf (directly or through
# _informative_command), @-commands side effects or settings using other
# customization is not set/reset.
sub set_global_document_commands($$;$)
{
  my $self = shift;
  my $commands_location = shift;
  my $selected_commands = shift;

  my $init_conf;
  if (defined($self->{'output_init_conf'})) {
    # use in priority the initial configuration per output
    $init_conf = $self->{'output_init_conf'};
  } else {
    $init_conf = $self->{'converter_init_conf'};
  }

  # gather the defaults
  my $commands_init = {};
  foreach my $global_command (keys(%Texinfo::Common::document_settable_at_commands)) {
    if (defined($init_conf->{$global_command})) {
      $commands_init->{$global_command} = $init_conf->{$global_command};
    } elsif (defined($Texinfo::Common::document_settable_at_commands{$global_command})) {
      $commands_init->{$global_command} =
            $Texinfo::Common::document_settable_at_commands{$global_command};
    }
  }

  if (not defined($selected_commands)) {
    $selected_commands = [keys(%{$commands_init})];
  }
  if ($commands_location == 0) {
    foreach my $global_command (@{$selected_commands}) {
      # for commands not appearing in the document, this should set the
      # same value, the converter initialization value
      $self->set_conf($global_command, $commands_init->{$global_command});
    }
  } else {
    foreach my $global_command (@{$selected_commands}) {
      my $element;
      if (defined($self->{'global_commands'}->{$global_command})
          and ref($self->{'global_commands'}->{$global_command}) eq 'ARRAY') {
        # used when $commands_location == 1
        my $index_in_global_commands = 0;
        if ($commands_location < 0) {
          $index_in_global_commands = -1;
        }
        $element =
          $self->{'global_commands'}->{$global_command}->[$index_in_global_commands];
      } elsif (defined($self->{'global_commands'}->{$global_command})) {
        # unique command, first and last are the same
        $element = $self->{'global_commands'}->{$global_command};
      }
      if ($self->get_conf('DEBUG')) {
        print STDERR "SET_global_multiple_commands($commands_location) $global_command\n";
      }
      if (defined($element)) {
        $self->set_informative_command_value($element);
      } else {
        # commands not appearing in the document, this should set the
        # same value, the converter initialization value
        $self->set_conf($global_command, $commands_init->{$global_command});
      }
    }
  }
}

use Carp;
sub get_conf($$)
{
  my $self = shift;
  my $conf = shift;
  if (!Texinfo::Common::valid_option($conf)) {
    cluck "CBUG: unknown option $conf\n";
    die;
    return undef;
  }
  return $self->{'conf'}->{$conf};
}

sub set_conf($$$)
{
  my $self = shift;
  my $conf = shift;
  my $value = shift;
  if (!Texinfo::Common::valid_option($conf)) {
    die "BBUG: unknown option $conf\n";
    return undef;
  }
  if ($self->{'set'}->{$conf}) {
    return 0;
  } else {
    $self->{'conf'}->{$conf} = $value;
    return 1;
  }
}

sub force_conf($$$)
{
  my $self = shift;
  my $conf = shift;
  my $value = shift;
  if (!Texinfo::Common::valid_option($conf)) {
    die "ABUG: unknown option $conf\n";
    return undef;
  }
  $self->{'conf'}->{$conf} = $value;
  return 1;
}

my $STDIN_DOCU_NAME = 'stdin';

sub determine_files_and_directory($)
{
  my $self = shift;

  # determine input file base name
  my $input_basefile;
  if (defined($self->{'parser_info'}->{'input_file_name'})) {
    my ($directories, $suffix);
    ($input_basefile, $directories, $suffix)
       = fileparse($self->{'parser_info'}->{'input_file_name'});
  } else {
    # This could happen if called on a piece of texinfo
    $input_basefile = '';
  }

  my $input_basename;
  if ($input_basefile eq '-') {
    $input_basename = $STDIN_DOCU_NAME;
  } else {
    $input_basename = $input_basefile;
    $input_basename =~ s/\.te?x(i|info)?$//;
  }

  my $setfilename;
  if (defined($self->get_conf('setfilename'))) {
    $setfilename = $self->get_conf('setfilename');
  } elsif ($self->{'global_commands'}
           and $self->{'global_commands'}->{'setfilename'}
           and $self->{'global_commands'}->{'setfilename'}->{'extra'}
           and defined($self->{'global_commands'}->{'setfilename'}->{'extra'}->{'text_arg'})) {
     $setfilename
       = $self->{'global_commands'}->{'setfilename'}->{'extra'}->{'text_arg'};
  }

  my $input_basename_for_outfile = $input_basename;
  my $setfilename_for_outfile = $setfilename;
  # PREFIX overrides both setfilename and the input file base name
  if (defined($self->get_conf('PREFIX'))) {
    $setfilename_for_outfile = undef;
    $input_basename_for_outfile = $self->get_conf('PREFIX');
  }

  # the document path, in general the outfile without
  # extension and can be set from setfilename if outfile is not set
  my $document_path;
  # determine output file and output file name
  my $output_file;
  if (!defined($self->get_conf('OUTFILE'))) {
    if (defined($setfilename_for_outfile) and !$self->get_conf('NO_USE_SETFILENAME')) {
      $output_file = $setfilename_for_outfile;
      $document_path = $setfilename_for_outfile;
      $document_path =~ s/\.[^\.]*$//;
      if (!$self->get_conf('USE_SETFILENAME_EXTENSION')) {
        $output_file =~ s/\.[^\.]*$//;
        $output_file .= '.'.$self->get_conf('EXTENSION')
          if (defined($self->get_conf('EXTENSION'))
              and $self->get_conf('EXTENSION') ne '');
      }
    } elsif ($input_basename_for_outfile ne '') {
      $output_file = $input_basename_for_outfile;
      $document_path = $input_basename_for_outfile;
      $output_file .= '.'.$self->get_conf('EXTENSION')
        if (defined($self->get_conf('EXTENSION'))
            and $self->get_conf('EXTENSION') ne '');
    } else {
      $output_file = '';
      $document_path = $output_file;
    }
    if (defined($self->get_conf('SUBDIR')) and $output_file ne '') {
      my $dir = File::Spec->canonpath($self->get_conf('SUBDIR'));
      $output_file = File::Spec->catfile($dir, $output_file);
    }
  } else {
    $document_path = $self->get_conf('OUTFILE');
    $document_path =~ s/\.[^\.]*$//;
    $output_file = $self->get_conf('OUTFILE');
  }

  # the output file path, in general same as the outfile but can be
  # set from setfilename if outfile is not set.
  my $output_filepath = $output_file;
  # in this case one wants to get the result in a string and there
  # is a setfilename.  The setfilename is used to get something.
  # This happens in the test suite.
  if ($output_file eq '' and defined($setfilename_for_outfile)
      and !$self->get_conf('NO_USE_SETFILENAME')) {
    $output_filepath = $setfilename_for_outfile;
    $document_path = $setfilename_for_outfile;
    $document_path =~ s/\.[^\.]*$//;
  }

  # $document_name is the name of the document, which is the output
  # file basename, $output_filename, without extension.
  my ($document_name, $output_filename, $directories, $suffix);
  # We may be handling setfilename there, so it is not obvious that we
  # want to use fileparse and not consider unixish separators.  However,
  # if this is setfilename, it should be a simple file name, so it
  # should hopefully be harmless to use fileparse
  ($document_name, $directories, $suffix) = fileparse($document_path);
  ($output_filename, $directories, $suffix) = fileparse($output_filepath);
  my $destination_directory;
  if ($self->get_conf('SPLIT')) {
    if (defined($self->get_conf('OUTFILE'))) {
      $destination_directory = $self->get_conf('OUTFILE');
    } elsif (defined($self->get_conf('SUBDIR'))) {
      $destination_directory = $self->get_conf('SUBDIR');
    } else {
      $destination_directory = $document_name;
    }
  } else {
    my ($out_filename, $output_dir, $suffix) = fileparse($output_file);
    if ($output_dir ne '') {
      $destination_directory = $output_dir;
    }
  }
  if (defined($destination_directory)
      and $destination_directory ne '') {
    $destination_directory = File::Spec->canonpath($destination_directory);
  }
  return ($output_file, $destination_directory, $output_filename,
          $document_name, $input_basefile);
}

sub _id_to_filename($$)
{
  my $self = shift;
  my $id = shift;
  return substr($id, 0, $self->get_conf('BASEFILENAME_LENGTH'));
}

sub normalized_sectioning_command_filename($$)
{
  my $self = shift;
  my $command = shift;
  my $no_unidecode;

  $no_unidecode = 1 if (defined($self->get_conf('USE_UNIDECODE')) 
                        and !$self->get_conf('USE_UNIDECODE'));

  my $normalized_name = Texinfo::Convert::NodeNameNormalization::transliterate_texinfo(
       {'contents' => $command->{'args'}->[0]->{'contents'}},
                $no_unidecode);

  my $filename = $self->_id_to_filename($normalized_name);
  $filename .= '.'.$self->get_conf('EXTENSION') 
    if (defined($self->get_conf('EXTENSION')) 
      and $self->get_conf('EXTENSION') ne '');
  return ($normalized_name, $filename);
}

sub node_information_filename($$)
{
  my $self = shift;
  my $node_info = shift;

  my $no_unidecode;
  $no_unidecode = 1 if (defined($self->get_conf('USE_UNIDECODE'))
                        and !$self->get_conf('USE_UNIDECODE'));

  my $filename;
  if (defined($node_info->{'normalized'})) { 
    if ($self->get_conf('TRANSLITERATE_FILE_NAMES')) {
      $filename = Texinfo::Convert::NodeNameNormalization::transliterate_texinfo(
       {'contents' => $node_info->{'node_content'}},
            $no_unidecode);
    } else {
      $filename = $node_info->{'normalized'};
    }
  } elsif (defined($node_info->{'node_content'})) { 
    $filename = Texinfo::Convert::NodeNameNormalization::normalize_node (
             { 'contents' => $node_info->{'node_content'} });
  } else {
    $filename = '';
  }
  $filename = $self->_id_to_filename($filename);
  return $filename;
}

sub set_tree_unit_file($$$$)
{
  my $self = shift;
  my $tree_unit = shift;
  my $filename = shift;
  my $destination_directory = shift;

  if (!defined($filename)) {
    cluck("set_tree_unit_file: filename not defined\n");
  }
  if ($self->get_conf('CASE_INSENSITIVE_FILENAMES')) {
    if (exists($self->{'filenames'}->{lc($filename)})) {
      if ($self->get_conf('DEBUG')) {
        print STDERR "Reusing ".$self->{'filenames'}->{lc($filename)}
                     ." for $filename\n";
      }
      $filename = $self->{'filenames'}->{lc($filename)};
    } else {
      $self->{'filenames'}->{lc($filename)} = $filename;
    }
  }
  $tree_unit->{'filename'} = $filename;
  if (defined($destination_directory) and $destination_directory ne '') {
    $tree_unit->{'out_filename'} =
      File::Spec->catfile($destination_directory, $filename);
  } else {
    $tree_unit->{'out_filename'} = $filename;
  }
}

sub top_node_filename($$)
{
  my $self = shift;
  my $document_name = shift;

  my $top_node_filename;
  if (defined($self->get_conf('TOP_FILE')) 
      and $self->get_conf('TOP_FILE') ne '') {
    $top_node_filename = $self->get_conf('TOP_FILE');
  } else {
    my $extension = '';
    $extension = '.'.$self->get_conf('EXTENSION')
      if (defined($self->get_conf('EXTENSION'))
            and $self->get_conf('EXTENSION') ne '');

    $top_node_filename = $document_name;
    if (defined($top_node_filename)) {
      $top_node_filename .= $extension;
    }
  }
  return $top_node_filename;
}

sub _get_root_element($$)
{
  my $self = shift;
  my $command = shift;
  my $find_container = shift;

  my $current = $command;

  while (1) {
    if ($current->{'type'}) {
      if ($current->{'type'} eq 'unit') {
        return $current;
      }
    }
    if ($current->{'parent'}) {
      $current = $current->{'parent'};
    } else {
      return undef;
    }
  }
}

sub _set_tree_units_files($$$$$$)
{
  my $self = shift;
  my $tree_units = shift;
  my $output_file = shift;
  my $destination_directory = shift;
  my $output_filename = shift;
  my $document_name = shift;

  # Ensure that the document has pages
  return undef if (!defined($tree_units) or !@$tree_units);

  my $extension = '';
  $extension = '.'.$self->get_conf('EXTENSION') 
            if (defined($self->get_conf('EXTENSION')) 
                and $self->get_conf('EXTENSION') ne '');

  if (!$self->get_conf('SPLIT')) {
    foreach my $tree_unit (@$tree_units) {
      if (!defined($tree_unit->{'filename'})) {
        $tree_unit->{'filename'} = $output_filename;
        $tree_unit->{'out_filename'} = $output_file;
      }
    }
  } else {
    my $node_top;
    $node_top = $self->{'labels'}->{'Top'} if ($self->{'labels'});
  
    my $top_node_filename = $self->top_node_filename($document_name);
    # first determine the top node file name.
    if ($node_top and defined($top_node_filename)) {
      my ($node_top_unit) = $self->_get_root_element($node_top);
      die "BUG: No element for top node" if (!defined($node_top));
      $self->set_tree_unit_file($node_top_unit, $top_node_filename,
                                $destination_directory);
    }
    my $file_nr = 0;
    my $previous_page;
    foreach my $tree_unit (@$tree_units) {
      # For Top node.
      next if (defined($tree_unit->{'filename'}));
      if (!$tree_unit->{'extra'}->{'first_in_page'}) {
        cluck ("No first_in_page for $tree_unit\n");
      }
      if (!defined($tree_unit->{'extra'}->{'first_in_page'}->{'filename'})) {
        my $file_tree_unit = $tree_unit->{'extra'}->{'first_in_page'};
        foreach my $root_command (@{$file_tree_unit->{'contents'}}) {
          if ($root_command->{'cmdname'} 
              and $root_command->{'cmdname'} eq 'node') {
            my $node_filename;
            # double node are not normalized, they are handled here
            if (!defined($root_command->{'extra'}->{'normalized'})
                or !defined($self->{'labels'}->{$root_command->{'extra'}->{'normalized'}})) {
              $node_filename = 'unknown_node';
            } else {
              $node_filename
               = $self->node_information_filename($root_command->{'extra'});
            }
            $node_filename .= $extension;
            $self->set_tree_unit_file($file_tree_unit, $node_filename,
                                      $destination_directory);
            last;
          }
        }
        if (!defined($file_tree_unit->{'filename'})) {
          # use section to do the file name if there is no node
          my $command = $file_tree_unit->{'extra'}->{'unit_command'};
          if ($command) {
            if ($command->{'cmdname'} eq 'top' and !$node_top
                and defined($top_node_filename)) {
              $self->set_tree_unit_file($file_tree_unit, $top_node_filename,
                                        $destination_directory);
            } else {
              my ($normalized_name, $filename) 
                 = $self->normalized_sectioning_command_filename($command);
              $self->set_tree_unit_file($file_tree_unit, $filename,
                                        $destination_directory);
            }
          } else {
            # when everything else has failed
            if ($file_nr == 0 and !$node_top 
                and defined($top_node_filename)) {
              $self->set_tree_unit_file($file_tree_unit, $top_node_filename,
                                        $destination_directory);
            } else {
              my $filename = $document_name . "_$file_nr";
              $filename .= $extension;
              $self->set_tree_unit_file($tree_unit, $filename,
                                        $destination_directory);
            }
            $file_nr++;
          }
        }
      }
      $tree_unit->{'filename'}
         = $tree_unit->{'extra'}->{'first_in_page'}->{'filename'};
      $tree_unit->{'out_filename'}
         = $tree_unit->{'extra'}->{'first_in_page'}->{'out_filename'};
    }
  }

  foreach my $tree_unit (@$tree_units) {
    $self->{'file_counters'}->{$tree_unit->{'filename'}}++;
    print STDERR "Page $tree_unit ".Texinfo::Structuring::_print_element_command_texi($tree_unit).": $tree_unit->{'filename'}($self->{'file_counters'}->{$tree_unit->{'filename'}})\n"
      if ($self->get_conf('DEBUG'));
  }
}

# In general, converters override this method, but simple
# converters can use it.  It is used for the plaintext
# output format.
sub output($$)
{
  my $self = shift;
  my $root = shift;

  my $tree_units;

  if (defined($self->get_conf('OUTFILE'))
      and ($Texinfo::Common::null_device_file{$self->get_conf('OUTFILE')}
           or $self->get_conf('OUTFILE') eq '-'
           or $self->get_conf('OUTFILE') eq '')) {
    if ($self->get_conf('SPLIT')) {
      $self->document_warn($self,
               sprintf(__("%s: output incompatible with split"),
                                   $self->get_conf('OUTFILE')));
      $self->force_conf('SPLIT', 0);
    }
  }
  if ($self->get_conf('SPLIT')) {
    $self->set_conf('NODE_FILES', 1);
  }

  my ($output_file, $destination_directory, $output_filename,
                  $document_name) = $self->determine_files_and_directory();
  my ($succeeded, $created_directory)
    = $self->create_destination_directory($destination_directory);
  return undef unless $succeeded;

  if ($self->get_conf('USE_NODES')) {
    $tree_units = Texinfo::Structuring::split_by_node($root);
  } else {
    $tree_units = Texinfo::Structuring::split_by_section($root);
  }

  Texinfo::Structuring::split_pages($tree_units, $self->get_conf('SPLIT'));

  # determine file names associated with the different pages
  if ($output_file ne '') {
    $self->_set_tree_units_files($tree_units, $output_file, $destination_directory,
                                 $output_filename, $document_name);
  }

  #print STDERR "$tree_units $tree_units->[0]->{'filename'}\n";

  # Now do the output
  my $fh;
  my $output = '';
  if (!$tree_units or !defined($tree_units->[0]->{'filename'})) {
    # no page
    my $outfile;
    if ($output_file ne '') {
      if ($self->get_conf('SPLIT')) {
        $outfile = $self->top_node_filename($document_name);
        if (defined($created_directory) and $created_directory ne '') {
          $outfile = File::Spec->catfile($created_directory, $outfile);
        }
      } else {
        $outfile = $output_file;
      }
      print STDERR "DO No pages, output in $outfile\n"
        if ($self->get_conf('DEBUG'));
      $fh = Texinfo::Common::output_files_open_out(
                    $self->output_files_information(), $self, $outfile);
      if (!$fh) {
        $self->document_error($self,
                 sprintf(__("could not open %s for writing: %s"),
                                      $outfile, $!));
        return undef;
      }
    } else {
      print STDERR "DO No pages, string output\n"
        if ($self->get_conf('DEBUG'));
    }

    if ($tree_units and @$tree_units) {
      foreach my $tree_unit (@$tree_units) {
        my $tree_unit_text = $self->convert_tree($tree_unit);
        $output .= $self->write_or_return($tree_unit_text, $fh);
      }
    } else {
      $output .= $self->write_or_return($self->convert($root), $fh);
    }
    # NOTE do not close STDOUT now to avoid a perl warning.
    if ($fh and $outfile ne '-') {
      Texinfo::Common::output_files_register_closed(
                  $self->output_files_information(), $outfile);
      if (!close($fh)) {
        $self->document_error($self,
                 sprintf(__("error on closing %s: %s"),
                                      $outfile, $!));
      }
    }
    return $output if ($output_file eq '');
  } else {
    # output with pages
    print STDERR "DO Elements with filenames\n"
      if ($self->get_conf('DEBUG'));
    my %files;
    
    foreach my $tree_unit (@$tree_units) {
      my $file_fh;
      # open the file and output the elements
      if (!$files{$tree_unit->{'filename'}}->{'fh'}) {
        $file_fh = Texinfo::Common::output_files_open_out(
                             $self->output_files_information(), $self,
                             $tree_unit->{'out_filename'});
        if (!$file_fh) {
          $self->document_error($self,
                sprintf(__("could not open %s for writing: %s"),
                                    $tree_unit->{'out_filename'}, $!));
          return undef;
        }
        $files{$tree_unit->{'filename'}}->{'fh'} = $file_fh;
      } else {
        $file_fh = $files{$tree_unit->{'filename'}}->{'fh'};
      }
      my $tree_unit_text = $self->convert_tree($tree_unit);
      print $file_fh $tree_unit_text;
      $self->{'file_counters'}->{$tree_unit->{'filename'}}--;
      if ($self->{'file_counters'}->{$tree_unit->{'filename'}} == 0) {
        # NOTE do not close STDOUT here to avoid a perl warning
        if ($tree_unit->{'out_filename'} ne '-') {
          Texinfo::Common::output_files_register_closed(
            $self->output_files_information(), $tree_unit->{'out_filename'});
          if (!close($file_fh)) {
            $self->document_error($self,
                     sprintf(__("error on closing %s: %s"),
                                  $tree_unit->{'out_filename'}, $!));
            return undef;
          }
        }
      }
    }
  }
}

sub present_bug_message($$;$)
{
  my $self = shift;
  my $message = shift;
  my $current = shift;

  my $line_message = '';
  my $current_element_message = '';
  if ($current) {
    if ($current->{'line_nr'}) {
      my $line_number = $current->{'line_nr'};
      my $file = $line_number->{'file_name'};
      $line_message
        = "in: $line_number->{'file_name'}:$line_number->{'line_nr'}";
      if ($line_number->{'macro'} ne '') {
        $line_message .= " (possibly involving $line_number->{'macro'})";
      }
      $line_message .= "\n";
    }
    if ($current) {
      $current_element_message = "current: ". 
        Texinfo::Common::debug_print_element($current);
    }
  }
  my $additional_information = '';
  if ($line_message.$current_element_message ne '') {
    $additional_information = "Additional informations:\n".
       $line_message.$current_element_message;
  }
  warn "You found a bug: $message\n\n".$additional_information;
}

# This is not used as code, but used to mark months as strings to be
# translated
if (0) {
  my $self;
  my @mark_month_for_translation = (
   $self->gdt('January'),
   $self->gdt('February'),
   $self->gdt('March'),
   $self->gdt('April'),
   $self->gdt('May'),
   $self->gdt('June'),
   $self->gdt('July'),
   $self->gdt('August'),
   $self->gdt('September'),
   $self->gdt('October'),
   $self->gdt('November'),
   $self->gdt('December')
  );
}

sub create_destination_directory($$)
{
  my $self = shift;
  my $destination_directory = shift;

  if (defined($destination_directory)
      and ! -d $destination_directory) {
    if (!mkdir($destination_directory, oct(755))) {
      if ($self->get_conf('SPLIT') 
          and $self->get_conf('EXTENSION')
          and $self->get_conf('EXTENSION') ne '') {
        my ($volume, $directories, $file) 
           = File::Spec->splitpath($destination_directory, 1);
        my $new_directory = File::Spec->catpath($volume, 
                 $directories . '.' . $self->get_conf('EXTENSION'), $file);
        if (! -d $new_directory) {
          if (!mkdir($new_directory, oct(755))) {
            $self->document_error($self, sprintf(__(
              "could not create directories `%s' or `%s': %s"), 
              $destination_directory, $new_directory, $!));
            return (0, $destination_directory);
          }
        }
        $destination_directory = $new_directory;
      } else {
        $self->document_error($self, sprintf(__(
             "could not create directory `%s': %s"), 
             $destination_directory, $!));
        return (0, $destination_directory);
      }
    }
  }
  return (1, $destination_directory);
}

sub txt_image_text($$$)
{
  my ($self, $element, $basefile) = @_;

  my $txt_file = Texinfo::Common::locate_include_file($self, $basefile.'.txt');
  if (!defined($txt_file)) {
    return undef;
  } else {
    my $filehandle = do { local *FH };
    if (open ($filehandle, $txt_file)) {
      my $enc = $element->{'extra'}->{'input_perl_encoding'};
      binmode($filehandle, ":encoding($enc)")
        if ($enc);
      my $result = '';
      my $max_width = 0;
      while (<$filehandle>) {
        my $width = Texinfo::Convert::Unicode::string_width($_);
        if ($width > $max_width) {
          $max_width = $width;
        }
        $result .= $_;
      }
      # remove last end of line
      chomp ($result);
      if (!close ($filehandle)) {
        $self->document_warn($self,
           sprintf(__("error on closing image text file %s: %s"),
                                     $txt_file, $!));
      }
      return ($result, $max_width);
    } else {
      $self->line_warn($self,
                  sprintf(__("\@image file `%s' unreadable: %s"),
                               $txt_file, $!), $element->{'line_nr'});
    }
  }
  return undef;
}


sub float_type_number($$)
{
  my $self = shift;
  my $float = shift;

  my $type;
  if ($float->{'extra'}->{'type'}
      and $float->{'extra'}->{'type'}->{'normalized'} ne '') { 
    $type = {'contents' => $float->{'extra'}->{'type'}->{'content'}};
  }

  my $tree;
  if ($type) {
    if (defined($float->{'number'})) {
      $tree = $self->gdt("{float_type} {float_number}",
          {'float_type' => $type,
            'float_number' => $float->{'number'}});
    } else {
      $tree = $self->gdt("{float_type}",
          {'float_type' => $type});
    }
  } elsif (defined($float->{'number'})) {
    $tree = $self->gdt("{float_number}",
       {'float_number' => $float->{'number'}});
  }
  return $tree;
}

sub float_name_caption($$)
{
  my $self = shift;
  my $element = shift;

  my $caption;
  if ($element->{'extra'}->{'caption'}) {
    $caption = $element->{'extra'}->{'caption'};
  } elsif ($element->{'extra'}->{'shortcaption'}) {
    $caption = $element->{'extra'}->{'shortcaption'};
  }
  #if ($self->get_conf('DEBUG')) {
  #  my $caption_texi =
  #    Texinfo::Convert::Texinfo::convert_to_texinfo({ 'contents' => $caption->{'contents'}});
  #  print STDERR "  CAPTION: $caption_texi\n";
  #}
  my $type;
  if ($element->{'extra'}->{'type'}->{'normalized'} ne '') {
    $type = {'contents' => $element->{'extra'}->{'type'}->{'content'}};
  }

  my $prepended;
  if ($type) {
    if ($caption) {
      if (defined($element->{'number'})) {
        $prepended = $self->gdt('{float_type} {float_number}: ',
            {'float_type' => $type,
             'float_number' => $element->{'number'}});
      } else {
        $prepended = $self->gdt('{float_type}: ',
          {'float_type' => $type});
      }
    } else {
      if (defined($element->{'number'})) {
        $prepended = $self->gdt("{float_type} {float_number}\n",
            {'float_type' => $type,
              'float_number' => $element->{'number'}});
      } else {
        $prepended = $self->gdt("{float_type}\n",
            {'float_type' => $type});
      }
    }
  } elsif (defined($element->{'number'})) {
    if ($caption) {
      $prepended = $self->gdt('{float_number}: ',
          {'float_number' => $element->{'number'}});
    } else {
      $prepended = $self->gdt("{float_number}\n",
           {'float_number' => $element->{'number'}});
    }
  }
  return ($caption, $prepended);
}

# This is used when the formatted text has no comment nor new line, but
# one want to add the comment or new line from the original arg
sub format_comment_or_return_end_line($$)
{
  my $self = shift;
  my $element = shift;

  my $end_line;

  my $comment = $element->{'args'}->[-1]->{'extra'}->{'comment_at_end'}
    if $element->{'args'} and $element->{'args'}->[-1]->{'extra'};

  if ($comment) {
    $end_line = $self->convert_tree($comment);
  } elsif ($element->{'args'} and $element->{'args'}->[-1]->{'extra'}
      and $element->{'args'}->[-1]->{'extra'}->{'spaces_after_argument'}) {
    my $text = $element->{'args'}->[-1]->{'extra'}->{'spaces_after_argument'};
    if (chomp($text)) {
      $end_line = "\n";
    } else {
      $end_line = '';
    }
  } else {
    $end_line = '';
  }
  return $end_line;
}

sub table_item_content_tree($$$)
{
  my $self = shift;
  my $element = shift;
  my $contents = shift;

  my $table_item_tree = {'parent' => $element};
  my $table_command = $element->{'parent'}->{'parent'}->{'parent'};
  if ($table_command->{'extra'}
     and $table_command->{'extra'}->{'command_as_argument'}) {
    my $command_as_argument
      = $table_command->{'extra'}->{'command_as_argument'};
    my $command = {'cmdname' => $command_as_argument->{'cmdname'},
               'line_nr' => $element->{'line_nr'},
               'parent' => $table_item_tree };
    if ($command_as_argument->{'type'} eq 'definfoenclose_command') {
      $command->{'type'} = $command_as_argument->{'type'};
      $command->{'extra'}->{'begin'} = $command_as_argument->{'extra'}->{'begin'};
      $command->{'extra'}->{'end'} = $command_as_argument->{'extra'}->{'end'};
    }
    my $arg = {'type' => 'brace_command_arg',
               'contents' => $contents,
               'parent' => $command,};
    $command->{'args'} = [$arg];
    $contents = [$command];
  }
  $table_item_tree->{'contents'} = $contents;
  return $table_item_tree;
}

sub _level_corrected_section($$)
{
  my $self = shift;
  my $element = shift;
  my $heading_level = $element->{'level'};
  my $command;
  if ($heading_level ne $Texinfo::Common::command_structuring_level{$element->{'cmdname'}}) {
    $command
      = $Texinfo::Common::level_to_structuring_command{$element->{'cmdname'}}->[$heading_level];
  } else {
    $command = $element->{'cmdname'};
  }
  return $command;
}

# generic output method, not used anywhere.
# FIXME remove?
sub output_no_split($$)
{
  my $self = shift;
  my $root = shift;

  my ($output_file, $destination_directory) = $self->determine_files_and_directory();
  my ($succeeded, $created_directory)
    = $self->create_destination_directory($destination_directory);
  return undef unless $succeeded;
  
  my $fh;
  if (! $output_file eq '') {
    $fh = Texinfo::Common::output_files_open_out(
                             $self->output_files_information(), $self,
                                     $output_file);
    if (!$fh) {
      $self->document_error($self,
               sprintf(__("could not open %s for writing: %s"),
                                    $output_file, $!));
      return undef;
    }
  }

  my $result = '';
  if ($self->get_conf('USE_NODES')) {
    $result .= $self->convert_document_nodes($root, $fh);
  } else {
    $result .= $self->convert_document_sections($root, $fh);
  }

  if ($fh and $output_file ne '-') {
    Texinfo::Common::output_files_register_closed(
                  $self->output_files_information(), $output_file);
    if (!close ($fh)) {
      $self->document_error($self,
            sprintf(__("error on closing %s: %s"),
                                    $output_file, $!));
    }
  }
  return $result;
}

# output fo $fh if defined, otherwise return the text.
sub write_or_return($$$)
{
  my $self = shift;
  my $text = shift;
  my $fh = shift;
  if ($fh) { 
    print $fh $text;
    return '';
  } else {
    return $text;
  } 
}

sub _convert_document_tree_units($$;$$)
{
  my $self = shift;
  my $root = shift;
  my $tree_units = shift;
  my $fh = shift;

  if ($tree_units) {
    my $result = '';
    foreach my $tree_unit (@$tree_units) {
      $result .= $self->write_or_return($self->convert_tree($tree_unit), $fh);
    }
    return $result;
  } else {
    return $self->write_or_return($self->convert_tree($root), $fh);
  }
}

sub convert_document_sections($$;$)
{
  my $self = shift;
  my $root = shift;
  my $fh = shift;

  my $tree_units = Texinfo::Structuring::split_by_section($root);
  return $self->_convert_document_tree_units($root, $tree_units, $fh);
}

sub convert_document_nodes($$;$)
{
  my $self = shift;
  my $root = shift;
  my $fh = shift;

  my $tree_units = Texinfo::Structuring::split_by_node($root);
  return $self->_convert_document_tree_units($root, $tree_units, $fh);
}

our %default_args_code_style = (
  'email' => [1],
  'anchor' => [1],
  'uref' => [1],
  'url' => [1],
  'math' => [1],
  'inforef' => [1,undef,1],
  'image' => [1, 1, 1, undef, 1],
# and type?
  'float' => [1],
);

foreach my $code_style_command (keys(%Texinfo::Common::code_style_commands)) {
  $default_args_code_style{$code_style_command} = [1];
}
foreach my $ref_cmd ('pxref', 'xref', 'ref') {
  $default_args_code_style{$ref_cmd} = [1, undef, undef, 1];
}

sub convert_accents($$$;$)
{
  my $self = shift;
  my $accent = shift;
  my $format_accents = shift;
  my $in_upper_case = shift;

  my ($contents, $stack)
      = Texinfo::Convert::Utils::find_innermost_accent_contents($accent);
  my $result = $self->convert_tree({'contents' => $contents});

  my $encoded;
  if ($self->get_conf('ENABLE_ENCODING')) {
    $encoded = Texinfo::Convert::Unicode::encoded_accents($self, $result, $stack,
                                       $self->get_conf('OUTPUT_ENCODING_NAME'),
                                       $format_accents,
                                       $in_upper_case);
  }
  if (!defined($encoded)) {
    foreach my $accent_command (reverse(@$stack)) {
      $result = &$format_accents ($self, $result, $accent_command, 
                                  $in_upper_case);
    }
    return $result;
  } else {
    return $encoded;
  }
}

# Add any index sub-entries specified with @subentry, separated by commas.
sub convert_index_subentries {
  my ($self, $entry) = @_;

  my $result = '';
  my $tmp = $entry->{'command'};
  while ($tmp->{'extra'} and $tmp->{'extra'}->{'subentry'}) {
    $tmp = $tmp->{'extra'}->{'subentry'};
    $result .= $self->convert_tree({'text' => ', '});
    $result .= $self->convert_tree($tmp->{'args'}->[0]);
  }
  return $result;
}

# This method allows to count words in elements and returns an array
# and a text already formatted.
sub sort_element_counts($$;$$)
{
  my $converter =  shift;
  my $tree = shift;
  my $use_sections = shift;
  my $count_words = shift;

  my $elements;
  if ($use_sections) {
    $elements = Texinfo::Structuring::split_by_section($tree);
  } else {
    $elements = Texinfo::Structuring::split_by_node($tree);
  }

  if (!$elements) {
    @$elements = ($tree);
  } elsif (scalar(@$elements) >= 1
           and (!$elements->[0]->{'extra'}->{'node'}
                and !$elements->[0]->{'extra'}->{'section'})) {
    shift @$elements;
  }

  my $max_count = 0;
  my @name_counts_array;

  require Texinfo::Convert::Texinfo;
  foreach my $element (@$elements) {
    my $name = 'UNNAMED tree element';
    if ($element->{'extra'}
        and ($element->{'extra'}->{'node'} or $element->{'extra'}->{'section'})) {
      my $command = $element->{'extra'}->{'unit_command'};
      if ($command->{'cmdname'} eq 'node') {
        $name = Texinfo::Convert::Texinfo::convert_to_texinfo({'contents' 
          => $command->{'extra'}->{'nodes_manuals'}->[0]->{'node_content'}});
      } else {
        $name = "\@$command->{'cmdname'}"
          .Texinfo::Convert::Texinfo::convert_to_texinfo($command->{'args'}->[0]);
      }
    }
    chomp($name);
    my $count;
    my $converted_element = $converter->convert_tree($element);
    if ($count_words) {
      my @res = split /\W+/, $converted_element;
      $count = scalar(@res);
    } else {
      my @res = split /^/, $converted_element;
      $count = scalar(@res);
    }
    push @name_counts_array, [$count, $name];
    if ($count > $max_count) {
      $max_count = $count;
    }
  }

  my @sorted_name_counts_array = sort {$a->[0] <=> $b->[0]} @name_counts_array;
  @sorted_name_counts_array = reverse(@sorted_name_counts_array);

  my $max_length = length($max_count);
  my $result = '';
  foreach my $sorted_count (@sorted_name_counts_array) {
    $result .=  sprintf("%${max_length}d  $sorted_count->[1]\n", $sorted_count->[0]);
  }
  return (\@sorted_name_counts_array, $result);
}


# XML related methods and variables that may be used in different
# XML Converters.
sub xml_protect_text($$)
{
  my $self = shift;
  my $text = shift;
  if (!defined($text)) {
    cluck;
  }
  $text =~ s/&/&amp;/g;
  $text =~ s/</&lt;/g;
  $text =~ s/>/&gt;/g;
  $text =~ s/\"/&quot;/g;
  return $text;
}

# 'today' is not set here.
our %default_xml_no_arg_commands_formatting;
$default_xml_no_arg_commands_formatting{'normal'} = {
               'TeX'          => 'TeX',
               'LaTeX'          => 'LaTeX',
               'bullet'       => '&bull;',
               'copyright'    => '&copy;',
               'registeredsymbol'   => '&reg;',
               'dots'         => '&hellip;',
               'enddots'      => '...',
               'equiv'        => '&equiv;',
               # in general the following is not used since error
               # appears in 'translated_commands'
               'error'        => 'error--&gt;',
               'expansion'    => '&rarr;',
               'arrow'        => '&rarr;',
               'click'        => '&rarr;',
               'minus'        => '-',
               'point'        => '&lowast;',
               'print'        => '-|',
               'result'       => '&rArr;',
               'aa'           => '&aring;',
               'AA'           => '&Aring;',
               'ae'           => '&aelig;',
               'oe'           => '&oelig;', #pertusus: also &#156;. &oelig; not in html 3.2
               'AE'           => '&AElig;',
               'OE'           => '&OElig;', #pertusus: also &#140;. &OElig; not in html 3.2
               'o'            =>  '&oslash;',
               'O'            =>  '&Oslash;',
               'ss'           => '&szlig;',
               'DH'           => '&ETH;',
               'dh'           => '&eth;',
               'TH'           => '&THORN;',
               'th'           => '&thorn;',
               'l'            => '&#322;',
               'L'            => '&#321;',
               'exclamdown'   => '&iexcl;',
               'questiondown' => '&iquest;',
               'pounds'       => '&pound;',
               'ordf'         => '&ordf;',
               'ordm'         => '&ordm;',
               'comma'        => ',',
               'atchar'       => '@',
               'ampchar'      => '&amp;',
               'lbracechar'   => '{',
               'rbracechar'   => '}',
               'backslashchar' => '\\',
               'hashchar' => '#',
               'euro'         => '&euro;',
               'geq'          => '&ge;',
               'leq'          => '&le;',
               'tie'          => '&nbsp;',
               'textdegree'          => '&deg;',
               'quotedblleft'          => '&ldquo;',
               'quotedblright'          => '&rdquo;',
               'quoteleft'          => '&lsquo;',
               'quoteright'          => '&rsquo;',
               'quotedblbase'          => '&bdquo;',
               'quotesinglbase'          => '&sbquo;',
               'guillemetleft'          => '&laquo;',
               'guillemetright'          => '&raquo;',
               'guillemotleft'          => '&laquo;',
               'guillemotright'          => '&raquo;',
               'guilsinglleft'          => '&lsaquo;',
               'guilsinglright'          => '&rsaquo;',
};

foreach my $no_brace_command (keys(%Texinfo::Common::no_brace_commands)) {
  $default_xml_no_arg_commands_formatting{'normal'}->{$no_brace_command}
    = $Texinfo::Common::no_brace_commands{$no_brace_command};
}

$default_xml_no_arg_commands_formatting{'normal'}->{'&'} = '&amp;';

sub xml_comment($$)
{
  my $self = shift;
  my $text = shift;
  chomp $text;
  $text =~ s/--+/-/go;
  return '<!--' . $text . ' -->' . "\n";
}

our %xml_accent_entities = (
          '"',  'uml',
          '~',  'tilde',
          '^',  'circ',
          '`',  'grave',
          "'", 'acute',
          ",", 'cedil',
          'ringaccent', 'ring',
          'ogonek', 'ogon',
         );

my %xml_accent_text_with_entities = (
      'ringaccent' => 'aA',
      "'"          => 'aeiouyAEIOUY',
      ','          => 'cC',
      '^'          => 'aeiouAEIOU',
      '`'          => 'aeiouAEIOU',
      '~'          => 'nNaoAO',
      '"'          => 'aeiouyAEIOU',
# according to http://www2.lib.virginia.edu/small/vhp/download/ISO.txt
# however this doesn't seems to work in firefox
#      'ogonek'     => 'aeiuAEIU',
);


sub xml_accent($$$;$$)
{
  my $self = shift;
  my $text = shift;
  my $command = shift;
  my $in_upper_case = shift;
  my $use_numeric_entities = shift;
  my $accent = $command->{'cmdname'};
  
  if ($in_upper_case and $text =~ /^\w$/) {
    $text = uc ($text);
  }
 
  return "&${text}$xml_accent_entities{$accent};" 
    if (defined($xml_accent_entities{$accent}) 
        and defined($xml_accent_text_with_entities{$accent}) 
        and ($text =~ /^[$xml_accent_text_with_entities{$accent}]$/));
  if ($use_numeric_entities
      and exists($Texinfo::Convert::Unicode::unicode_accented_letters{$accent}) 
      and exists($Texinfo::Convert::Unicode::unicode_accented_letters{$accent}->{$text})) {
    return '&#' .
      hex($Texinfo::Convert::Unicode::unicode_accented_letters{$accent}->{$text}). ';';
  }
  if ($use_numeric_entities
      and exists($Texinfo::Convert::Unicode::unicode_diacritics{$accent})) {
    my $diacritics_entity = '&#'
       .hex($Texinfo::Convert::Unicode::unicode_diacritics{$accent}). ';';
    if ($accent ne 'tieaccent') {
      return $text . $diacritics_entity;
    } else {
      # tieaccent diacritic is naturally and correctly composed
      # between two characters
      my $remaining_text = $text;
      # we consider that letters are either characters or entities
      if ($remaining_text =~ s/^([\p{L}\d]|&[a-zA-Z0-9];)([\p{L}\d]|&[a-zA-Z0-9];)(.*)$/$3/) {
        return $1.$diacritics_entity.$2.$remaining_text;
      } else {
        return $text . $diacritics_entity;
      }
    }
  }

  return $text . '&lt;' if ($accent eq 'v');
  # FIXME it is not possible to call xml_protect_text since what is in $text
  # may already be xml.  But this means that each time ascii_accent changes
  # it should be changed here too.
  return Texinfo::Convert::Text::ascii_accent($text, $command);
}

sub _xml_accent_numeric_entities($$;$)
{
  my $self = shift;
  my $text = shift;
  my $command = shift;
  my $in_upper_case = shift;
  return $self->xml_accent($text, $command, $in_upper_case, 1);
}

sub xml_accents($$;$)
{
  my $self = shift;
  my $accent = shift;
  my $in_upper_case = shift;

  my $format_accents;
  if ($self->get_conf('USE_NUMERIC_ENTITY')) {
    $format_accents = \&_xml_accent_numeric_entities;
  } else {
    $format_accents = \&xml_accent;
  }
  
  return $self->convert_accents($accent, $format_accents, $in_upper_case);
}

1;

__END__

=head1 NAME

Texinfo::Convert::Converter - Parent class for Texinfo tree converters

=head1 SYNOPSIS

  package Texinfo::Convert::MyConverter;

  use Texinfo::Convert::Converter;
  @ISA = qw(Texinfo::Convert::Converter);

  sub converter_defaults ($$) {
    return %myconverter_defaults;
  }
  sub converter_initialize($) {
    my $self = shift;
    $self->{'document_context'} = [{}];
  }

  sub convert($$) {
    ...
  }
  sub convert_tree($$) {
    ...
  }
  sub output($$) {
    ...
  }

  # end of Texinfo::Convert::MyConverter

  my $converter = Texinfo::Convert::MyConverter->converter(
                                               {'parser' => $parser});
  $converter->output($texinfo_tree);

=head1 DESCRIPTION

Texinfo::Convert::Converter is a super class that can be used to
simplify converters initialization.  The class also provide some
useful methods.

In turn, the converter should define some methods.  Two are
optional, C<converter_defaults>, C<converter_initialize> and
used for initialization, to give C<Texinfo::Convert::Converter>
some informations.

The C<convert_tree> method is more or less mandatory and should
convert portions of Texinfo tree.  The C<output> and C<convert>
are not required, but customarily used by converters as entry
points for conversion to a file with headers and so on, or
conversion of a whole Texinfo tree.

Existing backends may be used as examples that implement those
methods.  C<Texinfo::Convert::Texinfo> together with
C<Texinfo::Convert::PlainTexinfo>, as well as
C<Texinfo::Convert::TextContent> are trivial examples.
C<Texinfo::Convert::Text> is less trivial, although still simple,
while C<Texinfo::Convert::DocBook> is a real converter
that is also not too complex.

L<Texinfo::Common>, L<Texinfo::Convert::Unicode>
and L<Texinfo::Report> document modules or additional function
that may be useful for backends, while the parsed Texinfo tree is
described in L<Texinfo::Parser>.


=head1 METHODS

=head2 Initialization

A module subclassing C<Texinfo::Convert::Converter> is created by calling
the C<converter> method that should be inherited from
C<Texinfo::Convert::Converter>.

=over

=item $converter = MyConverter->converter($options)

The I<$options> hash reference holds options for the converter.  In
this option hash reference a L<parser object|Texinfo::Parser>
may be associated with the I<parser> key.  The other options
should be configuration options described in the Texinfo manual.
Those options, when appropriate, override the document content.

The C<converter> function returns a converter object (a blessed hash
reference) after checking the options and performing some initializations,
especially when a parser is given among the options.  The converter is
also initialized as a L<Texinfo::Report>.

=back

To help with these initializations, the modules can define two methods:

=over

=item %defaults = $converter->converter_defaults($options)

The converter can provide a defaults hash for configuration options.
The I<$options> hash reference holds options for the converter.

=item converter_initialize

This method is called at the end of the Texinfo::Convert::Converter
converter initialization.

=back

=head2 Helper methods

The module provides methods that may be useful for converter.
Most methods take a I<$converter> as argument to get some
information and use methods for error reporting, see L<Texinfo::Report>.  Also
to translate strings, see L<Texinfo::Translations>.  For
useful methods that need a converter optionally and can be used
in converters that do not inherit from Texinfo::Convert::Converter,
see L<Texinfo::Convert::Utils>.

=over

=item $result = $converter->convert_accents($accent_command, \&format_accents, $in_upper_case)

I<$accent_command> is an accent command, which may have other accent
commands nested.  The function returns the accents formatted either
as encoded letters, or formatted using I<\&format_accents>.
If I<$in_upper_case> is set, the result should be uppercased.

=item $result = $converter->convert_document_sections($root, $file_handler)

This method splits the I<$root> Texinfo tree at sections and
calls C<convert_tree> on the elements.  If the optional I<$file_handler>
is given in argument, the result are output in I<$file_handler>, otherwise
the resulting string is returned.

=item ($succeeded, $created_directory) = $converter->create_destination_directory($destination_directory)

Create destination directory.  I<$succeeded> is true if the creation was
successful or uneeded, false otherwise.  I<$created_directory> is the directory
actually created, which is, if possible, I<$destination_directory>, but can also
be different from I<$destination_directory> if I<$destination_directory>
already exists as a file, output is split and there is an extension.

=item ($output_file, $destination_directory, $output_filename, $document_name, $input_basefile) = $converter->determine_files_and_directory()

Determine output file and directory, as well as names related to files.  The
result depends on the presence of C<@setfilename>, on the Texinfo input file
name, and on customization options such as OUTPUT, SUBDIR or SPLIT, as described
in the Texinfo manual.

I<$output_file> is mainly relevant when not split and should be used as the
output file name.  In general, if not split and I<$output_file> is an empty
string, it means that text should be returned by the converter instead of being
written to an output file.  This is used in the test suite.
I<$destination_directory> is either the directory C<$output_file> is in, or if
split, the directory where the files should be created.  I<$output_filename>
is, in general, the file name portion of C<$output_file> (without directory)
but can also be set based on C<@setfilename>, in particular when
C<$output_file> is an empty string. I<$document_name> is C<$output_filename>
without extension.  I<$input_basefile> is based on the input texinfo file name,
with the file name portion only (without directory).

=item ($caption, $prepended) = $converter->float_name_caption ($float)

I<$float> is a texinfo tree C<@float> element.  This function
returns the caption that should be used for the float formatting
and the I<$prepended> texinfo tree combining the type and label
of the float.

=item $tree = $converter->float_type_number($float)

I<$float> is a texinfo tree C<@float> element.  This function
returns the type and number of the float as a texinfo tree with
translations.

=item $converter->force_conf($option_string, $value)

Set the Texinfo configuration option I<$option_string> to I<$value>.
This should rarely be used, but the purpose of this method is to be able
to revert a configuration that is always wrong for a given output
format, like the splitting for example.

=item $end_line = $converter->format_comment_or_return_end_line($element)

Format comment at end of line or return the end of line associated with
the element.  In many cases, converters ignore comments and output is
better formatted with new lines added independently of the presence
of newline or comment in the initial Texinfo line, so most converters
are better off not using this method.

=item $converter->get_conf($option_string)

Returns the value of the Texinfo configuration option I<$option_string>.

=item $filename = sub $converter->node_information_filename($node_info)

Returns the normalized file name correponding to the I<$node_info>
node element tree C<extra> field.

=item ($normalized_name, $filename) = $converter->normalized_sectioning_command_filename($element)

Returns a normalized name I<$normalized_name> corresponding to a sectioning
command tree element I<$element>, expanding the command argument using
transliteration and characters protection.  Also returns I<$filename> 
the corresponding filename based on C<$normalized_name> taking into
account additional constraint on file names and adding a file extension.

=item $converter->present_bug_message($message, $element)

Show a bug message using I<$message> text.  Add informations on
I<$element> tree element if given in argument.

=item $converter->set_conf($option_string, $value)

Set the Texinfo configuration option I<$option_string> to I<$value> if
not set as a converter option.

=item $converter->set_informative_command_value($element)

Set the Texinfo configuration option corresponding to the tree element
I<$element>.  The command associated to the tree element should be
a command that sets some information, such as C<@documentlanguage>,
C<@contents> or C<@footnotestyle> for example.

=item $table_item_tree = $converter->table_item_content_tree($element, $contents)

I<$element> should be an C<@item> or C<@itemx> tree element,
I<$contents> should be corresponding texinfo tree contents.
Returns a tree in which the @-command in argument of @*table
of the I<$element> has been applied to I<$contents>.

=item $result = $converter->top_node_filename($document_name)

Returns a file name for the Top node file using either TOP_FILE
customization value, or EXTENSION customization value and I<$document_name>.

=back

Other C<Texinfo::Convert::Converter> methods target conversion to XML:

=over

=item $protected_text = $converter->xml_protect_text($text)

Protect special XML characters (&, E<lt>, E<gt>, ") of I<$text>.

=item $comment = $converter->xml_comment($text)

Returns an XML comment for I<$text>.

=item $result = xml_accent($text, $accent_command, $in_upper_case, $use_numeric_entities)

I<$text> is the text appearing within an accent command.  I<$accent_command>
should be a Texinfo tree element corresponding to an accent command taking
an argument.  I<$in_upper_case> is optional, and, if set, the text is put
in upper case.  The function returns the accented letter as XML entity
if possible.  I<$use_numeric_entities> is also optional, and, if set, and
there is no XML entity, the numerical entity corresponding to Unicode
points is preferred to an ASCII transliteration.  If I<$use_numeric_entities>
is set numerical entities are also used for diacritics instead of ASCII
characters.

=item $result = $converter->xml_accents($accent_command, $in_upper_case)

I<$accent_command> is an accent command, which may have other accent
commands nested.  If I<$in_upper_case> is set, the result should be
upper cased.  The function returns the accents formatted as XML.

=back

Finally, there is:

=item $result = $converter->output_internal_links()

At this level, the method just returns undef.  It is used in the HTML
output, following the C<--internal-links> option of texi2any/makeinfo
specification.

=back

=head1 SEE ALSO

L<Texinfo::Common>, L<Texinfo::Convert::Unicode>, L<Texinfo::Report>,
L<Texinfo::Translations>, L<Texinfo::Convert::Utils> and L<Texinfo::Parser>.

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=cut
