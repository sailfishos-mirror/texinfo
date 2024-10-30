# Copyright 2022-2024 Free Software Foundation, Inc.
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# Make the output file names consist of the base name followed by a number,
# like my_manual_nnn.html

use strict;

# REMARK: if more than one manual is processed, $file_nr should be reset,
# using a handler

my $file_nr = -1;

sub _texinfo_filename_simple($$$$)
{
  my $converter = shift;
  my $output_unit = shift;
  my $filename = shift;
  my $filepath = shift;

  return ($filename, $filepath) if (defined($filepath));

  my $prefix = $converter->get_info('document_name');
  if ($converter->unit_is_top_output_unit($output_unit)) {
    return (undef, undef);
  } else {
    $file_nr++;
    return ($prefix.'_'.$file_nr.'.'.$converter->get_conf('EXTENSION'), undef);
  }
}

texinfo_register_file_id_setting_function('unit_file_name',
                                          \&_texinfo_filename_simple);

1;
