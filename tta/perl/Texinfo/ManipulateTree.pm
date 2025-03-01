# ManipulateTree.pm: common Texinfo tree manipulation
#
# Copyright 2010-2025 Free Software Foundation, Inc.
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

# functions useful for Texinfo tree transformations
# and some tree transformations functions, mostly those
# used in conversion to main output formats.  In general,
# tree transformations functions are documented in the POD section.

# Some helper functions defined here are used in other
# modules but are not generally useful in converters
# and therefore not public.

package Texinfo::ManipulateTree;

use 5.006;

# stop \s from matching non-ASCII spaces, etc.  \p{...} can still be
# used to match Unicode character classes.
use if $] >= 5.014, re => '/a';

use strict;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

# debugging
use Carp qw(cluck confess);

# for fileparse
use File::Basename;

use Texinfo::StructTransfXS;

use Texinfo::XSLoader;

use Texinfo::Common;

require Exporter;
our @ISA = qw(Exporter);

our @EXPORT_OK = qw(
move_index_entries_after_items_in_document
relate_index_entries_to_table_items_in_document
protect_colon_in_tree
protect_comma_in_tree
protect_first_parenthesis
protect_node_after_label_in_tree
);

our $VERSION = '7.2dev';

my $XS_structuring = Texinfo::XSLoader::XS_structuring_enabled();

our %XS_overrides = (
  "Texinfo::ManipulateTree::copy_tree"
    => "Texinfo::StructTransfXS::copy_tree",
  "Texinfo::ManipulateTree::relate_index_entries_to_table_items_in_document"
    => "Texinfo::StructTransfXS::relate_index_entries_to_table_items_in_document",
  "Texinfo::ManipulateTree::move_index_entries_after_items_in_document"
    => "Texinfo::StructTransfXS::move_index_entries_after_items_in_document",
  "Texinfo::ManipulateTree::protect_colon_in_document"
    => "Texinfo::StructTransfXS::protect_colon_in_document",
  "Texinfo::ManipulateTree::protect_comma_in_document"
    => "Texinfo::StructTransfXS::protect_comma_in_document",
  "Texinfo::ManipulateTree::protect_node_after_label_in_document"
    => "Texinfo::StructTransfXS::protect_node_after_label_in_document",
);

our $module_loaded = 0;
sub import {
  if (!$module_loaded) {
    if ($XS_structuring) {
      for my $sub (keys %XS_overrides) {
        Texinfo::XSLoader::override ($sub, $XS_overrides{$sub});
      }
    }
    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}



# copy a Texinfo tree.

# To do the copy, we do two pass.  First with copy_tree_internal, the tree is
# copied and a reference to the copy is put in all the elements,
# taking care that each element is processed once only.
# Then, remove_element_copy_info goes through the tree again and remove
# the references to the copies.

# the *_directions extra items are not elements, they contain
# up, next and prev that point to elements.
# it could also have been possible to determine that it is
# an extra_directions if the keys are only up, next and prev
my %extra_directions;
foreach my $type ('menu', 'node', 'section', 'toplevel') {
  $extra_directions{$type.'_directions'} = 1;
}

sub _copy_tree($);
sub _copy_tree($)
{
  my $current = shift;

  # either a duplicate in a tree (should be rare/avoided) or an
  # element referred to in extra/info, either directly or
  # (probably rare) in the extra element tree that has already
  # been seen in the tree
  if ($current->{'_copy'}) {
    #print STDERR "RCT $current ".debug_print_element($current)
    # .": $current->{'_counter'}\n";
    return $current->{'_copy'};
  }

  my $new = {};
  foreach my $key ('type', 'text') {
    $new->{$key} = $current->{$key} if (exists($current->{$key}));
  }

  $current->{'_copy'} = $new;

  if (exists($current->{'text'})) {
    if ($current->{'info'} and defined($current->{'info'}->{'inserted'})) {
      $new->{'info'} = {'inserted' => $current->{'info'}->{'inserted'}};
    }
    return $new;
  }

  my $command_or_type = '';
  if (defined($current->{'cmdname'})) {
    $new->{'cmdname'} = $current->{'cmdname'};
    $command_or_type = '@'.$current->{'cmdname'};
  } elsif ($current->{'type'}) {
    $command_or_type = $current->{'type'};
  }

  #print STDERR "CTNEW $current ".debug_print_element($current)." $new\n";

  foreach my $key ('contents') {
    if ($current->{$key}) {
      if (ref($current->{$key}) ne 'ARRAY') {
        my $command_or_type = '';
        if ($new->{'cmdname'}) {
          $command_or_type = '@'.$new->{'cmdname'};
        } elsif ($new->{'type'}) {
          $command_or_type = $new->{'type'};
        }
        print STDERR "BUG: Not an array [$command_or_type] $key ".
                                             ref($current->{$key})."\n";
      }
      $new->{$key} = [];
      foreach my $child (@{$current->{$key}}) {
        my $added = _copy_tree($child);
        $added->{'parent'} = $new;
        push @{$new->{$key}}, $added;
      }
    }
  }
  foreach my $info_type ('info', 'extra') {
    next if (!$current->{$info_type});
    $new->{$info_type} = {};
    foreach my $key (sort(keys(%{$current->{$info_type}}))) {
      my $value = $current->{$info_type}->{$key};
      if (ref($value) eq '') {
        $new->{$info_type}->{$key} = $value;
      } elsif (ref($value) eq 'ARRAY') {
        # authors menus
        if (ref($value->[0]) eq 'HASH') {
          #print STDERR "II ARRAY $key $value\n";
          $new->{$info_type}->{$key} = [];
          foreach my $target (@{$value}) {
            push @{$new->{$info_type}->{$key}}, _copy_tree($target);
          }
        } elsif (ref($value->[0]) eq '') {
        # misc_args index_entry
          $new->{$info_type}->{$key} = [@$value];
        } else {
          print STDERR "Unexpected array $info_type [$command_or_type]{$key}: "
                                                     .ref($value->[0])."\n";
        }
      } elsif (ref($value) eq 'HASH') {
        #print STDERR "II HASH $key $value\n";
        if ($extra_directions{$key}) {
          $new->{$info_type}->{$key} = {};
          foreach my $direction (sort (keys(%$value))) {
            my $target = $value->{$direction};
            $new->{$info_type}->{$key}->{$direction} = _copy_tree($target);
          }
        } else {
          if (not defined($value->{'cmdname'}) and not defined($value->{'type'})
              and not defined($value->{'text'}) and not defined($value->{'extra'})
              and not defined($value->{'contents'})
              and scalar(keys(%$value))) {
            print STDERR "HASH NOT ELEMENT $info_type [$command_or_type]{$key}\n";
          }
          $new->{$info_type}->{$key} = _copy_tree($value);
        }
      } else {
        print STDERR "Unexpected $info_type [$command_or_type]{$key}: "
                                                          .ref($value)."\n";
      }
    }
  }
  return $new;
}

sub _remove_element_copy_info($;$);
sub _remove_element_copy_info($;$)
{
  my $current = shift;
  my $level = shift;

  my $command_or_type = '';
  if ($current->{'cmdname'}) {
    $command_or_type = '@'.$current->{'cmdname'};
  } elsif ($current->{'type'}) {
    $command_or_type = $current->{'type'};
  }

  $level = 0 if (!defined($level));

  if (!$current->{'_copy'}) {
    #print STDERR "DONE $current ".debug_print_element($current)."\n";
    return;
  }

  delete $current->{'_copy'};

  $level++;
  #print STDERR (' ' x $level)
  #   .Texinfo::Common::debug_print_element($current).": $current\n";

  foreach my $key ('contents') {
    if ($current->{$key}) {
      my $index = 0;
      foreach my $child (@{$current->{$key}}) {
        _remove_element_copy_info($child, $level);
        $index++;
      }
    }
  }

  foreach my $info_type ('info', 'extra') {
    next if (!$current->{$info_type});
    foreach my $key (sort(keys(%{$current->{$info_type}}))) {
      my $value = $current->{$info_type}->{$key};
      #print STDERR (' ' x $level) . "K $info_type $key |$value\n";
      if (ref($value) eq 'ARRAY') {
        if (ref($value->[0]) eq 'HASH') {
        #print STDERR (' ' x $level) .
        #           "Array $command_or_type $info_type -> $key\n";
          # authors manual_content menus node_content
          for (my $index = 0; $index < scalar(@{$value}); $index++) {
            #my $context = "$info_type [$command_or_type]{$key} [$index]";
            _remove_element_copy_info($value->[$index], $level);
          }
        }
      } elsif (ref($value) eq 'HASH') {
        #print STDERR (' ' x $level)
        #         . "Hash $command_or_type $info_type -> $key\n";
        if ($extra_directions{$key}) {
          foreach my $direction (sort(keys(%$value))) {
            #my $context = "$info_type [$command_or_type]{$key} {$direction}";
            _remove_element_copy_info($value->{$direction}, $level);
          }
        } else {
          if (not defined($value->{'cmdname'}) and not defined($value->{'type'})
              and not defined($value->{'text'}) and not defined($value->{'extra'})
              and not defined($value->{'contents'})
              and scalar(keys(%$value))) {
            print STDERR "HASH NOT ELEMENT $info_type [$command_or_type]{$key}\n";
          }
          _remove_element_copy_info($value, $level);
        }
      }
    }
  }
}

# The functions called in Perl code outside of tests are the copy_*NonXS
# functions.
# TODO document?
sub copy_tree($)
{
  my $current = shift;
  my $copy = _copy_tree($current);
  _remove_element_copy_info($current, $copy);
  return $copy;
}

# Never overriden by XS version
sub copy_treeNonXS($)
{
  my $current = shift;
  my $copy = _copy_tree($current);
  _remove_element_copy_info($current, $copy);
  return $copy;
}

sub copy_contents($;$)
{
  my $element = shift;
  my $type = shift;
  my $tmp = {'contents' => $element->{'contents'}};
  my $copy = copy_tree($tmp);
  if (defined($type)) {
    $copy->{'type'} = $type;
  }
  return $copy;
}

sub copy_contentsNonXS($;$)
{
  my $element = shift;
  my $type = shift;
  my $tmp = {'contents' => $element->{'contents'}};
  my $copy = copy_treeNonXS($tmp);
  if (defined($type)) {
    $copy->{'type'} = $type;
  }
  return $copy;
}



sub set_element_tree_numbers($$);

sub set_element_tree_numbers($$)
{
  my $element = shift;
  my $current_nr = shift;

  if (defined($element->{'text'})) {
    return $current_nr;
  }

  my $type = $element->{'type'};
  my $cmdname = $element->{'cmdname'};

  my $builtin_cmdname;

  if ($type and $type eq 'definfoenclose_command') {
    $builtin_cmdname = 'definfoenclose_command';
  } elsif (defined($cmdname)) {
    $builtin_cmdname = $cmdname;
  }

  if ((($type and $type eq 'index_entry_command')
       or ($builtin_cmdname
           and ($builtin_cmdname eq 'node'
                or $Texinfo::Commands::brace_commands{$builtin_cmdname}
         or $Texinfo::Commands::sectioning_heading_commands{$builtin_cmdname}
                or $Texinfo::Commands::block_commands{$builtin_cmdname}
                or $builtin_cmdname eq 'nodedescription'
                or $builtin_cmdname eq 'columnfractions'
                or $Texinfo::Commands::in_index_commands{$builtin_cmdname}
                or $builtin_cmdname eq 'author')))
    # no reason for this to happen, but if it does, avoid clobbering
      and not exists($element->{'_number'})) {
    $element->{'_number'} = $current_nr;
    $current_nr++;
  }

  if ($element->{'contents'}) {
    foreach my $content (@{$element->{'contents'}}) {
      $current_nr = set_element_tree_numbers($content, $current_nr);
    }
  }
  return $current_nr;
}

my $SOURCE_MARK_PREPEND = '>';

sub print_element_details($$$$;$$);

sub _print_source_marks($$$$;$$)
{
  my $element = shift;
  my $level = shift;
  my $prepended = shift;
  my $current_nr = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  return ($current_nr, '') if (!$element->{'source_marks'});

  my $s_mark_prepended;
  if (defined($prepended)) {
    $s_mark_prepended = $prepended . $SOURCE_MARK_PREPEND;
  } else {
    $s_mark_prepended = $SOURCE_MARK_PREPEND;
  }

  my $result = (' ' x $level) . $s_mark_prepended . "SOURCEMARKS\n";
  my @source_marks = @{$element->{'source_marks'}};
  foreach my $s_mark (@source_marks) {
    $result .= (' ' x $level) . $s_mark_prepended
               . $s_mark->{'sourcemark_type'}.'<';
    if ($s_mark->{'status'}) {
      $result .= "$s_mark->{'status'};";
    }
    $result .= "$s_mark->{'counter'}>";
    if (defined($s_mark->{'position'})) {
      $result .= "<p:$s_mark->{'position'}>";
    }
    if (defined($s_mark->{'line'})) {
      $result .= "{$s_mark->{'line'}}";
    }
    $result .= "\n";

    if ($s_mark->{'element'}) {
      my $element_result;
      ($current_nr, $element_result)
       = print_element_details($s_mark->{'element'}, $level+1,
                         $s_mark_prepended, $current_nr, $fname_encoding,
                         $use_filename);
      $result .= $element_result;
    }
  }

  return ($current_nr, $result);
}

sub _print_text_element($$$$;$$)
{
  my $element = shift;
  my $level = shift;
  my $prepended = shift;
  my $current_nr = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  my $result = '';
  if ($element->{'info'} and $element->{'info'}->{'inserted'}) {
    $result .= '(i)';
  }

  my $element_text = _debug_protect_eol($element->{'text'});

  if ($element->{'type'}) {
    $result .= "{$element->{'type'}:${element_text}}";
  } else {
    $result .= "{${element_text}}";
  }
  $result .= "\n";

  my $source_marks_result;
  ($current_nr, $source_marks_result)
    = _print_source_marks($element, $level, $prepended, $current_nr,
                          $fname_encoding, $use_filename);

  $result .= $source_marks_result;
  return ($current_nr, $result);
}

my $ADDITIONAL_INFO_PREPEND = '|';

sub _print_element_add_prepend_info($$$$;$$)
{
  my $element = shift;
  my $level = shift;
  my $prepended = shift;
  my $current_nr = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  my $info_prepended;
  if (defined($prepended)) {
    $info_prepended = $prepended . $ADDITIONAL_INFO_PREPEND;
  } else {
    $info_prepended = $ADDITIONAL_INFO_PREPEND;
  }

  return print_element_details($element, $level, $info_prepended, $current_nr,
                               $fname_encoding, $use_filename);
}

# extra elements out of tree.  Need to look at C add_extra_element_oot
# to know which one are out of tree.  Use of gdt/copy is good evidence.
my @extra_out_of_tree = ('def_index_element', 'def_index_ref_element',
                         'sectioning_root');

# keep in sync with elt_info_names in C/main/tree.c
my @elt_info_names = ('spaces_before_argument', 'spaces_after_cmd_before_arg',
                      'spaces_after_argument', 'comment_at_end');

my %out_of_tree_element_name;
foreach my $name (@extra_out_of_tree, @elt_info_names) {
  $out_of_tree_element_name{$name} = 1;
}

# from Texinfo::Structuring
my @node_directions_names = ('next', 'prev', 'up');

sub element_number_or_error($)
{
  my $element = shift;

  if (defined($element->{'_number'})) {
    return "E$element->{'_number'}";
  } else {
    return "MISSING: ".Texinfo::Common::debug_print_element($element);
  }
}

sub _debug_protect_eol($)
{
  my $line = shift;
  $line =~ s/\n/\\n/g;
  $line =~ s/\t/\\t/g;
  $line =~ s/\f/\\f/g;
  return $line;
}

sub _print_element_associated_info($$$$$;$$)
{
  my $associated_info = shift;
  my $header = shift;
  my $level = shift;
  my $prepended = shift;
  my $current_nr = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  my @keys = sort(keys(%$associated_info));

  return ($current_nr, '') if (!scalar(@keys));

  my $info_prepended;
  if (defined($prepended)) {
    $info_prepended = $prepended . $ADDITIONAL_INFO_PREPEND;
  } else {
    $info_prepended = $ADDITIONAL_INFO_PREPEND;
  }

  my $result = (' ' x $level) . $info_prepended . "$header\n";

  foreach my $key (@keys) {
    my $had_eol = 0;
    my $value = $associated_info->{$key};
    my $ref = ref($value);
    $result .= (' ' x $level) . $info_prepended . "$key:";
    if ($ref eq '') {
      if ($key eq 'arg_line') {
        $value = _debug_protect_eol($value);
      }
      $result .= "{${value}}";
    } elsif ($ref eq 'HASH') {
      if ($extra_directions{$key}) {
        my @directions_strings;
        foreach my $d_key (@node_directions_names) {
          if ($value->{$d_key}) {
            my $e = $value->{$d_key};
            my $element_str = element_number_or_error($e);
            push @directions_strings, "${d_key}->$element_str";
          }
        }
        $result .= 'D['.join('|', @directions_strings).']';
      } elsif ($key eq 'node_content' or $key eq 'manual_content') {
        my $container_value
          = Texinfo::Convert::Texinfo::convert_to_texinfo($value);
        $container_value = _debug_protect_eol($container_value);
        $result .= "{$container_value}";
      } elsif ($out_of_tree_element_name{$key}) {
        my $info_e_text;
        ($current_nr, $info_e_text)
          = _print_element_add_prepend_info($value, $level+1, $prepended,
                                            $current_nr,
                                            $fname_encoding, $use_filename);
        $result .= "\n$info_e_text";
        $had_eol = 1;
      } else {
        my $element_value = element_number_or_error($value);
        $result .= "[$element_value]";
      }
    } elsif ($key eq 'misc_args') {
      $result .= 'A{'.join('|', @{$value}).'}';
    } elsif ($key eq 'index_entry') {
      my ($index_name, $number) = @{$value};
      $result .= "I{${index_name},${number}}";
    } elsif ($ref eq 'ARRAY') {
      my @elts_list;
      foreach my $e (@$value) {
        push @elts_list, element_number_or_error($e);
      }
      $result .= 'EC['.join('|', @elts_list).']';
    }
    if (!$had_eol) {
      $result .= "\n";
    }
  }

  #'misc_args' array of strings
  #'node_content' 'node_manual' special
  #'index_entry'} = [$index_name, $number]
  #'authors' 'menus' array of elements
  return ($current_nr, $result);
}

sub _print_element_source_info($;$$)
{
  my $element = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  my $source_info = $element->{'source_info'};

  return '' if (!defined($source_info));

  my $result = ' ';

  my $line_nr = $source_info->{'line_nr'};
  my $macro = $source_info->{'macro'};
  if (defined($source_info->{'file_name'})) {
    my $file_name = $source_info->{'file_name'};
    if ($use_filename) {
      my ($directories, $suffix);
      ($file_name, $directories, $suffix) = fileparse($file_name);
    }
    if (defined($fname_encoding)) {
      $file_name = Encode::decode($fname_encoding, $file_name);
    }
    $result .= $file_name;
    $result .= ':' if ($line_nr or defined($macro));
  }

  if ($line_nr) {
    $result .= "l$line_nr";
    $result .= ':' if (defined($macro));
  }

  if (defined($macro)) {
    $result .= '@'.$macro;
  }

  return $result;
}

sub print_element_details($$$$;$$)
{
  my $element = shift;
  my $level = shift;
  my $prepended = shift;
  my $current_nr = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  my $result = ' ' x $level;

  if (defined($prepended)) {
    $result .= $prepended;
  }

  if (defined($element->{'text'})) {
    my $text_result;
    ($current_nr, $text_result)
      = _print_text_element($element, $level, $prepended, $current_nr,
                            $fname_encoding, $use_filename);
    $result .= $text_result;
    return ($current_nr, $result);
  }

  $result .= '+';

  if (defined($element->{'_number'})) {
    $result .= "$element->{'_number'} ";
  }

  if (defined($element->{'type'})) {
    $result .= $element->{'type'};
  }
  if (defined($element->{'cmdname'})) {
    $result .= '@'.Texinfo::Common::debug_command_name($element->{'cmdname'});
  }

  my $contents_nr = 0;
  if ($element->{'contents'}) {
    $contents_nr = scalar(@{$element->{'contents'}});
  }
  if ($contents_nr) {
    $result .= " *$contents_nr";
  }

  $result .= _print_element_source_info($element, $fname_encoding,
                                        $use_filename);

  $result .= "\n";

  my $info = $element->{'info'};
  if ($info) {
    my $result_info;
    foreach my $info_oot (@elt_info_names) {
      if ($info->{$info_oot}) {
        $current_nr = set_element_tree_numbers($info->{$info_oot},
                                               $current_nr);
      }
    }
    ($current_nr, $result_info)
      = _print_element_associated_info($info, 'INFO', $level,
                                       $prepended, $current_nr,
                                       $fname_encoding, $use_filename);
    $result .= $result_info;
  }

  my $extra = $element->{'extra'};
  if ($extra) {
    my $result_info;

    foreach my $extra_oot (@extra_out_of_tree) {
      if ($extra->{$extra_oot}) {
        $current_nr = set_element_tree_numbers($extra->{$extra_oot},
                                               $current_nr);
      }
    }

    ($current_nr, $result_info)
      = _print_element_associated_info($extra, "EXTRA", $level,
                                       $prepended, $current_nr,
                                       $fname_encoding, $use_filename);
    $result .= $result_info;
  }

  my $source_marks_result;
  ($current_nr, $source_marks_result)
    = _print_source_marks($element, $level, $prepended, $current_nr,
                          $fname_encoding, $use_filename);
  $result .= $source_marks_result;

  if ($contents_nr) {
    foreach my $content (@{$element->{'contents'}}) {
      my $content_result;
      ($current_nr, $content_result)
        = print_element_details($content, $level+1, $prepended,
                                $current_nr, $fname_encoding, $use_filename);
      $result .= $content_result;
    }
  }
  return ($current_nr, $result);
}

sub remove_element_tree_numbers($);

sub remove_element_tree_numbers($)
{
  my $element = shift;

  if (defined($element->{'text'})) {
    return;
  }

  delete $element->{'_number'};

  if ($element->{'extra'}) {
    foreach my $extra_oot (@extra_out_of_tree) {
      if ($element->{'extra'}->{$extra_oot}) {
        remove_element_tree_numbers($element->{'extra'}->{$extra_oot});
      }
    }
  }
}

sub print_tree($;$$)
{
  my $tree = shift;
  my $fname_encoding = shift;
  my $use_filename = shift;

  my $result;

  my $current_nr = set_element_tree_numbers($tree, 0);

  ($current_nr, $result) = print_element_details($tree, 0, undef, $current_nr,
                                             $fname_encoding, $use_filename);

  remove_element_tree_numbers($tree);

  return $result;
}



# Texinfo tree transformations used in main output formats conversion.

sub modify_tree($$;$);
sub modify_tree($$;$)
{
  my $tree = shift;
  my $operation = shift;
  my $argument = shift;
  #print STDERR "modify_tree tree: $tree\n";

  if (!defined($tree) or ref($tree) ne 'HASH') {
    cluck "tree ".(!defined($tree) ? 'UNDEF' : "not a hash: $tree");
    return undef;
  }

  if ($tree->{'contents'}) {
    my $contents_nr = scalar(@{$tree->{'contents'}});
    for (my $i = 0; $i < $contents_nr; $i++) {
      my $new_contents = &$operation('content',
                                     $tree->{'contents'}->[$i], $argument);
      if ($new_contents) {
        # replace by new content
        splice(@{$tree->{'contents'}}, $i, 1, @$new_contents);
        $i += scalar(@$new_contents) -1;
        $contents_nr += scalar(@$new_contents) -1;
      } else {
        modify_tree($tree->{'contents'}->[$i], $operation, $argument);
      }
    }
  }
  if ($tree->{'source_marks'}) {
    my @source_marks = @{$tree->{'source_marks'}};
    for (my $i = 0; $i <= $#source_marks; $i++) {
      if ($source_marks[$i]->{'element'}) {
        my $new_element
          = &$operation('source_mark', $source_marks[$i]->{'element'},
                        $argument);
        if ($new_element) {
          $source_marks[$i]->{'element'} = $new_element->[0];
        }
      }
    }
  }
  return $tree;
}

sub _protect_comma($$)
{
  my $type = shift;
  my $current = shift;

  return _protect_text($current, quotemeta(','));
}

sub protect_comma_in_tree($)
{
  my $tree = shift;

  return modify_tree($tree, \&_protect_comma);
}

# Has an XS override. Defined to be able to test Perl and XS. Undocumented
# on purpose.
sub protect_comma_in_document($)
{
  my $document = shift;

  protect_comma_in_tree($document->tree());
  return;
}

sub _new_asis_command_with_text($$;$)
{
  my $text = shift;
  my $parent = shift;
  my $text_type = shift;
  my $new_command = {'cmdname' => 'asis', 'parent' => $parent };
  push @{$new_command->{'contents'}}, {'type' => 'brace_container',
                                   'parent' => $new_command};
  push @{$new_command->{'contents'}->[0]->{'contents'}}, {
    'text' => $text,
    'parent' => $new_command->{'contents'}->[0]};
  if (defined($text_type)) {
    $new_command->{'contents'}->[0]->{'contents'}->[0]->{'type'} = $text_type;
  }
  return $new_command;
}

sub _protect_text($$)
{
  my $current = shift;
  my $to_protect = shift;

  #print STDERR "_protect_text: $to_protect: $current "
  #                         .debug_print_element($current, 1)."\n";
  if (defined($current->{'text'}) and $current->{'text'} =~ /$to_protect/
      and !(defined($current->{'type'})
            and ($current->{'type'} eq 'raw'
                 or $current->{'type'} eq 'rawline_arg'))) {
    my @result = ();
    my $remaining_text = $current->{'text'};

    my $remaining_source_marks;
    my $current_position = 0;
    if ($current->{'source_marks'}) {
      $remaining_source_marks = [@{$current->{'source_marks'}}];
      delete $current->{'source_marks'};
    }
    while ($remaining_text) {
      if ($remaining_text =~ s/^(.*?)(($to_protect)+)//) {
        # Note that it includes for completeness the case of $1 eq ''
        # although it is unclear that source marks may happen in that case
        # as they are rather associated to the previous element.
        my $e = {'text' => $1, 'parent' => $current->{'parent'}};
        $e->{'type'} = $current->{'type'} if defined($current->{'type'});
        $current_position = Texinfo::Common::relocate_source_marks(
                                        $remaining_source_marks, $e,
                                        $current_position, length($1));
        if ($e->{'text'} ne '' or $e->{'source_marks'}) {
          push @result, $e;
        }
        if ($to_protect eq quotemeta(',')) {
          for (my $i = 0; $i < length($2); $i++) {
            my $e = {'cmdname' => 'comma', 'parent' => $current->{'parent'}};
            my $brace_container = {'type' => 'brace_container',
                                   'parent' => $e};
            $e->{'contents'} = [$brace_container];
            $current_position = Texinfo::Common::relocate_source_marks(
                                          $remaining_source_marks, $e,
                                          $current_position, 1);
            push @result, $e;
          }
        } else {
          my $new_asis = _new_asis_command_with_text($2, $current->{'parent'},
                                                    $current->{'type'});
          my $e = $new_asis->{'contents'}->[0]->{'contents'}->[0];
          $current_position = Texinfo::Common::relocate_source_marks(
                                          $remaining_source_marks, $e,
                                          $current_position, length($2));
          push @result, $new_asis;
        }
      } else {
        my $e = {'text' => $remaining_text, 'parent' => $current->{'parent'}};
        $e->{'type'} = $current->{'type'} if defined($current->{'type'});
        $current_position = Texinfo::Common::relocate_source_marks(
                                      $remaining_source_marks, $e,
                                      $current_position, length($remaining_text));
        push @result, $e;
        last;
      }
    }
    #print STDERR "_protect_text: Result: @result\n";
    return \@result;
  } else {
    #print STDERR "_protect_text: No change\n";
    return undef;
  }
}

sub _protect_colon($$)
{
  my $type = shift;
  my $current = shift;

  return _protect_text($current, quotemeta(':'));
}

sub protect_colon_in_tree($)
{
  my $tree = shift;

  return modify_tree($tree, \&_protect_colon);
}

# Has an XS override. Defined to be able to test Perl and XS. Undocumented
# on purpose.
sub protect_colon_in_document($)
{
  my $document = shift;

  protect_colon_in_tree($document->tree());
  return;
}

sub _protect_node_after_label($$)
{
  my $type = shift;
  my $current = shift;

  return _protect_text($current, '['. quotemeta(".\t,") .']');
}

sub protect_node_after_label_in_tree($)
{
  my $tree = shift;

  return modify_tree($tree, \&_protect_node_after_label);
}

# Has an XS override. Defined to be able to test Perl and XS. Undocumented
# on purpose.
sub protect_node_after_label_in_document($)
{
  my $document = shift;

  protect_node_after_label_in_tree($document->tree());
  return;
}

sub protect_first_parenthesis($)
{
  my $element = shift;
  confess("BUG: protect_first_parenthesis element undef")
    if (!defined($element));
  confess("BUG: protect_first_parenthesis not a hash")
    if (ref($element) ne 'HASH');
  #print STDERR "protect_first_parenthesis: $element->{'contents'}\n";
  return if (!$element->{'contents'} or !scalar(@{$element->{'contents'}}));

  my $current_position = 0;
  my $nr_contents = scalar(@{$element->{'contents'}});
  for (my $i = 0; $i < $nr_contents; $i++) {
    my $content = $element->{'contents'}->[$i];
    return if (!defined($content->{'text'}));
    if ($content->{'text'} eq '') {
      next;
    }
    if ($content->{'text'} =~ /^\(/) {
      my $remaining_source_marks;
      my $current_position = 0;
      if ($content->{'source_marks'}) {
        $remaining_source_marks = [@{$content->{'source_marks'}}];
        delete $content->{'source_marks'};
      }
      my $new_asis = _new_asis_command_with_text('(', $content->{'parent'},
                                                 $content->{'type'});
      my $e = $new_asis->{'contents'}->[0]->{'contents'}->[0];
      $current_position = Texinfo::Common::relocate_source_marks(
                                       $remaining_source_marks, $e,
                                       $current_position, length('('));
      if ($content->{'text'} !~ /^\($/) {
        $content->{'text'} =~ s/^\(//;
        $current_position = Texinfo::Common::relocate_source_marks(
                                      $remaining_source_marks, $content,
                                $current_position, length($content->{'text'}));
      } else {
        splice (@{$element->{'contents'}}, $i, 1);
      }
      splice (@{$element->{'contents'}}, $i, 0, $new_asis);
    }
    return;
  }
}

sub move_index_entries_after_items($)
{
  # enumerate or itemize
  my $current = shift;

  return unless ($current->{'contents'});

  my $previous;
  foreach my $item (@{$current->{'contents'}}) {
    #print STDERR "Before proceeding: $previous $item->{'cmdname'} (@{$previous->{'contents'}})\n" if ($previous and $previous->{'contents'});
    if (defined($previous) and $item->{'cmdname'}
        and $item->{'cmdname'} eq 'item'
        and $previous->{'contents'} and scalar(@{$previous->{'contents'}})) {

      my $previous_ending_container;
      if ($previous->{'contents'}->[-1]->{'type'}
          and ($previous->{'contents'}->[-1]->{'type'} eq 'paragraph'
               or $previous->{'contents'}->[-1]->{'type'} eq 'preformatted')) {
        $previous_ending_container = $previous->{'contents'}->[-1];
      } else {
        $previous_ending_container = $previous;
      }

      my $contents_nr = scalar(@{$previous_ending_container->{'contents'}});

      # find the last index entry, with possibly comments after
      my $last_entry_idx = -1;
      for (my $i = $contents_nr -1; $i >= 0; $i--) {
        my $content = $previous_ending_container->{'contents'}->[$i];
        if ($content->{'type'} and $content->{'type'} eq 'index_entry_command') {
          $last_entry_idx = $i;
        } elsif (not ($content->{'cmdname'}
                      and ($content->{'cmdname'} eq 'c'
                           or $content->{'cmdname'} eq 'comment'
                     # subentry is not within the index entry in the tree
                           or $content->{'cmdname'} eq 'subentry'))) {
          last;
        }
      }

      if ($last_entry_idx >= 0) {
        my $item_container;
        if ($item->{'contents'} and $item->{'contents'}->[0]
            and $item->{'contents'}->[0]->{'type'}
            and $item->{'contents'}->[0]->{'type'} eq 'preformatted') {
          $item_container = $item->{'contents'}->[0];
        } else {
          $item_container = $item;
        }

        for (my $i = $last_entry_idx; $i < $contents_nr; $i++) {
          $previous_ending_container->{'contents'}->[$i]->{'parent'}
               = $item_container;
        }

        my $insertion_idx = 0;
        if ($item_container->{'contents'}
            and $item_container->{'contents'}->[0]
            and $item_container->{'contents'}->[0]->{'type'}
            and $item_container->{'contents'}->[0]->{'type'} eq 'ignorable_spaces_after_command') {
          # insert after leading spaces, and add an end of line if there
          # is none
          $insertion_idx = 1;
          $item_container->{'contents'}->[0]->{'text'} .= "\n"
            if ($item_container->{'contents'}->[0]->{'text'} !~ /\n$/);
        }
        # first part of the splice is the insertion in $item_container
        splice (@{$item_container->{'contents'}},
                $insertion_idx, 0,
                    # this splice removes from the previous container starting
                    # at $last_entry_idx and returns the contents to be inserted
                    splice (@{$previous_ending_container->{'contents'}},
                            $last_entry_idx, $contents_nr - $last_entry_idx));
        delete $previous_ending_container->{'contents'}
          if (!scalar(@{$previous_ending_container->{'contents'}}))
      }
    }
    $previous = $item;
  }
}

sub _move_index_entries_after_items($$)
{
  my $type = shift;
  my $current = shift;

  if ($current->{'cmdname'} and ($current->{'cmdname'} eq 'enumerate'
                                 or $current->{'cmdname'} eq 'itemize')) {
    move_index_entries_after_items($current);
  }
  return undef;
}

# Not documented, should not be generally useful, this is a transformation
# that makes more sense for a whole document.
sub move_index_entries_after_items_in_tree($)
{
  my $tree = shift;

  modify_tree($tree, \&_move_index_entries_after_items);
}

# For @itemize/@enumerate
sub move_index_entries_after_items_in_document($)
{
  my $document = shift;

  move_index_entries_after_items_in_tree($document->tree());
}

sub _relate_index_entries_to_table_items_in($$)
{
  my $table = shift;
  my $indices_information = shift;

  return unless $table->{'contents'};

  foreach my $table_entry (@{$table->{'contents'}}) {
    next unless $table_entry->{'contents'} and $table_entry->{'type'}
      and $table_entry->{'type'} eq 'table_entry';

    my $term = $table_entry->{'contents'}->[0];
    my $definition;
    my $item;

    # Move any index entries from the start of a 'table_definition' to
    # the 'table_term'.
    if (defined($table_entry->{'contents'}->[1])
        and defined($table_entry->{'contents'}->[1]->{'type'})
        and $table_entry->{'contents'}->[1]->{'type'} eq 'table_definition') {
      $definition = $table_entry->{'contents'}->[1];
      my $nr_index_entry_command = 0;
      foreach my $child (@{$definition->{'contents'}}) {
        if ($child->{'type'} and $child->{'type'} eq 'index_entry_command') {
          $child->{'parent'} = $term;
          $nr_index_entry_command++;
        } else {
          last;
        }
      }
      if ($nr_index_entry_command > 0) {
        unshift @{$term->{'contents'}},
          splice (@{$definition->{'contents'}}, 0, $nr_index_entry_command);
      }
    }

    if (defined($term->{'type'}) and $term->{'type'} eq 'table_term') {
      # Relate the first index_entry_command in the 'table_term' to
      # the term itself.

      my $index_entry;
      my $index_element;
      foreach my $content (@{$term->{'contents'}}) {
        if ($content->{'type'}
            and $content->{'type'} eq 'index_entry_command') {
          if (!$index_entry) {
            my $index_info;
            $index_element = $content;
            ($index_entry, $index_info)
              = Texinfo::Common::lookup_index_entry(
                              $content->{'extra'}->{'index_entry'},
                              $indices_information);
          }
        } elsif ($content->{'cmdname'} and $content->{'cmdname'} eq 'item') {
          $item = $content unless $item;
        }
        if ($item and $index_entry) {
          # This is better than overwriting 'entry_element', which
          # holds important information.
          $index_entry->{'entry_associated_element'} = $item;
          # also add a reference from element to index entry in index
          $item->{'extra'} = {} if (!$item->{'extra'});
          $item->{'extra'}->{'associated_index_entry'}
             = [@{$index_element->{'extra'}->{'index_entry'}}];
          last;
        }
      }
    }
  }
}

# Locate all @tables in the tree, and relate index entries to
# the @item that immediately follows or precedes them.
sub _relate_index_entries_to_table_items($$$)
{
  my $type = shift;
  my $current = shift;
  my $indices_information = shift;

  if ($current->{'cmdname'} and $current->{'cmdname'} eq 'table') {
    _relate_index_entries_to_table_items_in($current, $indices_information);
  }
  return undef;
}

sub relate_index_entries_to_table_items_in_document($)
{
  my $document = shift;

  my $tree = $document->tree();
  my $indices_information = $document->indices_information();

  modify_tree($tree, \&_relate_index_entries_to_table_items,
              $indices_information);
}


# Methods used to get information on menu entries and nodes.  Used in
# structuring and transformation codes, here because this module is
# used by all the structuring and transformation modules.
# Not documented in POD because they are considered to be internal functions.

# return $NORMALIZED_ENTRY_NODE, the identifier corresponding to
# the internal node referred to by menu entry $ENTRY
sub normalized_menu_entry_internal_node($)
{
  my $entry = shift;

  foreach my $content (@{$entry->{'contents'}}) {
    if ($content->{'type'} eq 'menu_entry_node') {
      if ($content->{'extra'}) {
        if (! $content->{'extra'}->{'manual_content'}) {
          return $content->{'extra'}->{'normalized'};
        }
      }
      return undef;
    }
  }
  return undef;
}

# Return $NODE where $NODE is the node referred to by menu entry $ENTRY.
sub normalized_entry_associated_internal_node($$)
{
  my $entry = shift;
  my $identifier_target = shift;

  my $normalized_entry_node = normalized_menu_entry_internal_node($entry);

  if (defined($normalized_entry_node)) {
    return $identifier_target->{$normalized_entry_node};
  }
  return undef;
}

# In $NODE, find the first menu entry node in the first menu.  If the
# node in menu refers to a target element in the document, return that
# element
sub first_menu_node($$)
{
  my $node = shift;
  my $identifier_target = shift;
  if ($node->{'extra'}->{'menus'}) {
    foreach my $menu (@{$node->{'extra'}->{'menus'}}) {
      foreach my $menu_content (@{$menu->{'contents'}}) {
        if ($menu_content->{'type'}
            and $menu_content->{'type'} eq 'menu_entry') {
          my $menu_node
            = normalized_entry_associated_internal_node($menu_content,
                                                        $identifier_target);
          # an internal node
          return $menu_node if ($menu_node);
          foreach my $content (@{$menu_content->{'contents'}}) {
            if ($content->{'type'} eq 'menu_entry_node') {
              # a reference to an external manual
              if ($content->{'extra'}
                  and $content->{'extra'}->{'manual_content'}) {
                return $content
              }
              last;
            }
          }
        }
      }
    }
  }
  return undef;
}


1;

__END__

=head1 NAME

Texinfo::ManipulateTree - Texinfo modules common tree manipulation functions

=head1 SYNOPSIS

  use Texinfo::ManipulateTree;

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

C<Texinfo::ManipulateTree> contains methods for copying and modifying the
Texinfo tree used for default conversion to output formats.

For optional tree transformation, see L<Texinfo::Transformations>.

=head1 METHODS

The Texinfo tree and Texinfo tree elements used in argument of some functions
are documented in L<Texinfo::Parser/TEXINFO TREE>.  When customization
information is needed, an object that defines C<get_conf> is
expected, normally a L<Texinfo::Document/Getting customization
options values registered in document> object.

=over

=item move_index_entries_after_items_in_document($document)
X<C<move_index_entries_after_items_in_document>>

In C<@enumerate> and C<@itemize> from the I<$document> tree, move index
entries appearing just before C<@item> after the C<@item>.  Comment lines
between index entries are moved too.

=item protect_colon_in_tree($tree)

=item protect_node_after_label_in_tree($tree)
X<C<protect_colon_in_tree>>
X<C<protect_node_after_label_in_tree>>

Protect colon with C<protect_colon_in_tree> and characters that
are special in node names after a label in menu entries (tab
dot and comma) with C<protect_node_after_label_in_tree>.
The protection is achieved by putting protected characters
in C<@asis{}>.

=item protect_comma_in_tree($tree)
X<C<protect_comma_in_tree>>

Protect comma characters, replacing C<,> with @comma{} in tree.

=item protect_first_parenthesis($element)
X<C<protect_first_parenthesis>>

Modify I<$element> contents by protecting the first parenthesis.
If I<$element> is undef a fatal error with a backtrace will be emitted.

=item relate_index_entries_to_table_items_in_document($document)
X<C<relate_index_entries_to_table_items_in_document>>

In tables, relate index entries preceding and following an
entry with said item.  Reference one of them in the entry's
C<entry_associated_element>.

=back

=head1 SEE ALSO

L<Texinfo::Document>, L<Texinfo::Structuring>, L<Texinfo::Transformations>.

=head1 AUTHOR

Patrice Dumas, E<lt>pertusus@free.frE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
