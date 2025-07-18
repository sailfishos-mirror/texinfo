#! /usr/bin/env perl

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

# example code that re-fold macros, values and other found in the source
# marks as Texinfo code.

use lib '.', '.libs', 'blib/arch', 'blib/lib';

# for fileparse
use File::Basename;

use File::Spec;

use Texinfo;

Texinfo::setup(1);

my $input_file;
if (scalar(@ARGV)) {
  $input_file = $ARGV[0];
} else {
  warn "Need arg\n";
  exit 1;
}

my ($input_filename, $input_directory, $suffix) = fileparse($input_file);

my $curdir = File::Spec->curdir();

if (defined($input_directory) and $input_directory ne ''
    and $input_directory ne $curdir) {
  Texinfo::parser_conf_clear_INCLUDE_DIRECTORIES();
  Texinfo::parser_conf_add_include_directory($curdir);
  Texinfo::parser_conf_add_include_directory($input_directory);
}

my ($document, $status) = Texinfo::parse_file($input_file);

Texinfo::output_parser_error_messages($document);

if ($status) {
  warn "ERROR processing $input_file\n";
  exit 1;
}

my $tree = Texinfo::document_tree($document);

#print STDERR "Tree parsed\n";

#print STDERR Texinfo::tree_print_details($tree)."\n\n\n";

my $current_smark_counter;
my $current_smark_type;

sub _text($$$;$)
{
  my ($text, $from, $type, $to) = @_;

  my $result = '';

  $from = 0 if (!defined($from));

  if ($from == 0 and $type eq 'bracketed_linemacro_arg') {
    $result .= '{';
  }

  my $length;
  # FIXME maybe need to check if $to != length($text), and only in that
  # case define length
  if (defined($to) and $to != $from) {
    $length = $to - $from;
  }

  if (defined($length)) {
    $result .= substr($text, $from, $length);
  } else {
    $result .= substr($text, $from);
    if ($type eq 'bracketed_linemacro_arg') {
      $result .= '}';
    }
  }
  return $result;
}

sub _convert($$);

sub _handle_source_marks($$$)
{
  my ($element, $current_smark_counter, $current_smark_type) = @_;
  my $result = '';
  my $last_position;
  my $source_marks_nr = Texinfo::element_source_marks_number($element);
  if ($source_marks_nr) {
    for (my $i = 0; $i < $source_marks_nr; $i++) {
      my $source_mark = Texinfo::element_get_source_mark($element, $i);
      my $source_mark_counter = $source_mark->swig_counter_get();
      my $source_mark_type = $source_mark->swig_type_get();

      if ($current_smark_counter) {
        if ($source_mark_counter == $current_smark_counter
            and $current_smark_type eq $source_mark_type) {
          $last_position = $source_mark->swig_position_get();
          #print STDERR "ESM: $source_mark_type;c:$source_mark_counter;p:$last_position\n";
          $current_smark_counter = undef;
          $current_smark_type = undef;
        }
        # FIXME what about source marks in source mark elements?
        next;
      }

      my $source_mark_status = $source_mark->swig_status_get();

      if ($source_mark_status eq $Texinfo::SM_status_start
          # expanded conditional has a start and an end, but the
          # tree within is the expanded tree and should not be skipped
          and $source_mark_type
              != $Texinfo::SM_type_expanded_conditional_command) {
        #print STDERR "SSM: $source_mark_type;c:$source_mark_counter\n";
        $current_smark_counter = $source_mark_counter;
        $current_smark_type = $source_mark_type;
      }
      my $source_mark_position = $source_mark->swig_position_get();
      if (defined($source_mark_position) and $source_mark_position > 0) {
        # source_mark_position > 0 only in text elements
        my $text = Texinfo::element_text($element);
        $result .= _text($text, $last_position, $type,
                         $source_mark_position);
      }
      $last_position = $source_mark_position;

      # value expansion has both a line and an element, the line
      # is the flag name, what we are interested in is the element
      my $source_mark_element = $source_mark->swig_element_get();
      if (defined($source_mark_element)) {
        #print STDERR "!! ".Texinfo::tree_print_details($source_mark_element)."\n";
        # FIXME could be space elements and source marks?
        $result
          .= Texinfo::convert_to_texinfo($source_mark_element);
      } else {
        my $source_mark_line = $source_mark->swig_line_get();
        if (defined($source_mark_line)) {
          $result .= $source_mark_line;
        } elsif ($source_mark_type == $Texinfo::SM_type_defline_continuation) {
          $result .= "@\n";
        }
      }
    }
  }
  return $result, $last_position, $current_smark_counter, $current_smark_type;
}

sub _convert($$) {
  my ($tree, $document) = @_;

  my $descriptor = Texinfo::register_new_reader($tree, $document);
  my $reader = Texinfo::retrieve_reader_descriptor($descriptor);

  my $args_stack = [];

  my $result = '';

  while (1) {
    my $next_token = Texinfo::reader_read($reader);
    last if (!defined($next_token));

    my $element = $next_token->swig_element_get();
    my $category = $next_token->swig_category_get();

    my $type = Texinfo::element_type($element);
    $type = '' if (!defined($type));

    #print STDERR "R [".join('|', @$args_stack)."] $category ".
    #  (defined($current_smark_type) ?
    #         "$current_smark_type:$current_smark_counter" : '-')
    #  .' '.Texinfo::element_print_details($element)."\n";

    if ($category == $Texinfo::TXI_READ_TEXT
        or $category == $Texinfo::TXI_READ_IGNORABLE_TEXT) {
      my ($last_position, $smark_result);
      ($smark_result, $last_position, $current_smark_counter,
       $current_smark_type) = _handle_source_marks($element,
                                $current_smark_counter, $current_smark_type);
      $result .= $smark_result;
      if (!$current_smark_counter) {
        if ($type eq 'spaces') {
          my ($inserted, $status)
                  = Texinfo::element_attribute_integer($element,
                                                       'inserted');
          next if ($inserted);
        }
        my $text = Texinfo::element_text($element);
        $result .= _text($text, $last_position, $type);
      }
      next;
    }
    my $cmdname = Texinfo::element_cmdname($element);

    if (defined($cmdname)) {
      if ($category != $Texinfo::TXI_READ_ELEMENT_END) {
        if (!$current_smark_counter) {
        # FIXME item_LINE or item?  Probably item, but check
        # TODO alias
          $result .= '@'.$cmdname;
        }

        my $spaces_after_cmd_before_arg
          = Texinfo::element_attribute_element($element,
                                 'spaces_after_cmd_before_arg');
        if (defined($spaces_after_cmd_before_arg)) {
          $result .= _convert($spaces_after_cmd_before_arg, $document);
        }
      }

      if ($category == $Texinfo::TXI_READ_ELEMENT_START) {
        my $arg_line
          = Texinfo::element_attribute_string($element, 'arg_line');

        if (defined($arg_line)) {
          if (!$current_smark_counter) {
            $result .= $arg_line;
          }
          Texinfo::reader_skip_children($reader, $element);
          next;
        }

        if (Texinfo::element_command_is_brace($element)
            or $type eq 'definfoenclose_command') {
          if (!$current_smark_counter) {
            if (Texinfo::element_type(
                  Texinfo::element_get_child($element, 0))
                       ne 'following_arg') {
              $result .= '{';
            }
            if ($cmdname eq 'verb') {
              $result
             .= Texinfo::element_attribute_string($element, 'delimiter');
            }
          }
          push @$args_stack, 0;
        } elsif (!Texinfo::element_command_is_nobrace($element)) {
          push @$args_stack, 0;
        }
      } elsif ($category == $Texinfo::TXI_READ_ELEMENT_END) {
        if (Texinfo::element_command_is_brace($element)
            or $type eq 'definfoenclose_command') {
          if (!$current_smark_counter) {
            if ($cmdname eq 'verb') {
              $result
             .= Texinfo::element_attribute_string($element, 'delimiter');
            }
            if (Texinfo::element_type(
                  Texinfo::element_get_child($element, 0))
                       ne 'following_arg') {
              $result .= '}';
            }
          }
        }
      }
    } else {
      if ($category == $Texinfo::TXI_READ_ELEMENT_START) {
        my ($inserted, $status)
                  = Texinfo::element_attribute_integer($element,
                                                       'inserted');
        if ($inserted) {
          Texinfo::reader_skip_children($reader, $element);
          next;
        }
        if (!$current_smark_counter) {
          if ($type eq 'bracketed_arg') {
            if (!$current_smark_counter) {
              $result .= '{';
            }
          }
        }
      }
      if ($category == $Texinfo::TXI_READ_ELEMENT_START
          or $category == $Texinfo::TXI_READ_EMPTY) {
        if ($type eq 'brace_arg' or $type eq 'line_arg'
            or $type eq 'block_line_arg') {
          $args_stack->[-1]++;
          if (!$current_smark_counter) {
            if ($args_stack->[-1] > 1) {
              $result .= ',';
            }
          }
        }
      }
    }
    if ($category == $Texinfo::TXI_READ_ELEMENT_START
        or $category == $Texinfo::TXI_READ_EMPTY) {
      if (!$current_smark_counter) {
        my $spaces_before_argument
          = Texinfo::element_attribute_element($element,
                                 'spaces_before_argument');
        if (defined($spaces_before_argument)) {
          $result .= _convert($spaces_before_argument, $document);
        }
      }
    }
    if ($category == $Texinfo::TXI_READ_EMPTY
        or $category == $Texinfo::TXI_READ_ELEMENT_END) {
      if (!$current_smark_counter) {
        my $spaces_after_argument
          = Texinfo::element_attribute_element($element,
                                 'spaces_after_argument');
        if (defined($spaces_after_argument)) {
          $result .= _convert($spaces_after_argument, $document);
        }

        if ($type eq 'line_arg' or $type eq 'block_line_arg') {
          my $comment = Texinfo::element_attribute_element($element,
                                             'comment_at_end');
          if ($comment) {
            $result .= Texinfo::convert_to_texinfo($comment);
          }
        }
      }
    }

    if ($category == $Texinfo::TXI_READ_ELEMENT_END) {
      if (!$current_smark_counter) {
        if ($type eq 'bracketed_arg') {
          $result .= '}';
        }
      }
      if (defined($cmdname)
          and !Texinfo::element_command_is_nobrace($element)) {
        pop @$args_stack;
      }
    }
    if ($category == $Texinfo::TXI_READ_EMPTY
        or $category == $Texinfo::TXI_READ_ELEMENT_END) {
      my ($last_position, $smark_result);
      ($smark_result, $last_position, $current_smark_counter,
       $current_smark_type) = _handle_source_marks($element,
                                $current_smark_counter, $current_smark_type);
      $result .= $smark_result;
    }
  }

  return $result;
}

my $result = _convert($tree, $document);

print "$result";
