# Copyright 2022-2025 Free Software Foundation, Inc.
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# Make the output file names consist of the base name followed by a number,
# maxima_nnn.html or maxima_toc.html for the table of contents.
# In addition the appendices or indices don't get a number.

# See
#  https://lists.gnu.org/archive/html/help-texinfo/2022-08/msg00000.html

use strict;

# ./texi2any.pl --split=chapter --no-node-files --html --force -e 10000 --init-file contrib/init_examples/maxima_file_names.pm --set-customization-variable HTML_MATH=mathjax maxima_init.texi

# REMARK: if more than one manual is processed, $file_nr, %reference_file_name_file_nr
# and $after_appendix_printindex should be reset, using a handler

my $file_nr = -1;

my %reference_file_name_file_nr = ();

my $after_appendix_printindex = 0;

sub _filename_simple_except_indices($$$$)
{
  my $converter = shift;
  my $output_unit = shift;
  my $filename = shift;
  my $filepath = shift;

  return ($filename, $filepath) if (defined($filepath));

  my $prefix = $converter->get_info('document_name');
  # If we're not splitting, just return the name.  Note that it should
  # not happen, as in that case the $filepath should be set and the previous
  # condition should also hold.
  if (!$converter->get_conf('SPLIT')) {
    return ($prefix.'.'.$converter->get_conf('EXTENSION'),
            undef);
  }
  if ($converter->unit_is_top_output_unit($output_unit)) {
    # The table of contents file should be named this.
    return ("maxima_toc.html", undef);
  } else {
    if ($after_appendix_printindex) {
      return ($filename, undef);
    } else {
      # FIXME would be more efficient to set it up in a handler (probably 'init')
      # once for all
      my $printindex_unit = $converter->global_direction_unit('Index');
      if (defined($printindex_unit) and $printindex_unit eq $output_unit) {
        $after_appendix_printindex = 1;
        return ($filename, undef);
      }
      if ($output_unit->{'unit_command'}) {
        my $associated_command_element = $output_unit->{'unit_command'};
        my $sectioning_command;
        if ($associated_command_element->{'cmdname'} eq 'node') {
          if ($associated_command_element->{'extra'}
              and $associated_command_element->{'extra'}->{'associated_section'}) {
            $sectioning_command
              = $associated_command_element->{'extra'}->{'associated_section'}->{'cmdname'};
          }
        } else {
          $sectioning_command = $associated_command_element->{'cmdname'};
        }
        if (defined($sectioning_command) and $sectioning_command =~ /appendix/) {
          $after_appendix_printindex = 1;
          return ($filename, undef);
        }
      }
    }
    if (defined($reference_file_name_file_nr{$filename})) {
      $file_nr = $reference_file_name_file_nr{$filename};
    } else {
      $file_nr++;
      $reference_file_name_file_nr{$filename} = $file_nr;
    }
    if ($file_nr == 0) {
      return ($prefix.'.'.$converter->get_conf('EXTENSION'), undef);
    } else {
      return ($prefix.'_'.$file_nr.'.'.$converter->get_conf('EXTENSION'), undef);
    }
  }
}

texinfo_register_file_id_setting_function('unit_file_name',
                                        \&_filename_simple_except_indices);

1;
