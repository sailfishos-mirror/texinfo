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

use strict;
use warnings;

use lib '.', '.libs', 'blib/arch', 'blib/lib';

use Getopt::Long qw(GetOptions);

# for fileparse
use File::Basename;

use File::Spec;

use Texinfo;

Getopt::Long::Configure("gnu_getopt");

my $debug = 0;
my $result_options = Getopt::Long::GetOptions (
 'debug|d' => \$debug,
);

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

if ($debug) {
  print STDERR Texinfo::tree_print_details($tree)."\n\n\n";
}

sub _text($$$;$)
{
  my ($text, $from, $type, $to) = @_;

  my $result = '';

  $from = 0 if (!defined($from));

  if ($type eq 'bracketed_linemacro_arg') {
    # recreate the text the source marks are relative too
    $text = '{'.$text.'}';
  }

  my $length;
  # FIXME maybe need to check if $to != length($text), and only in that
  # case define length
  if (defined($to)) {
    $length = $to - $from;
  }

  if (defined($length)) {
    $result .= substr($text, $from, $length);
  } else {
    $result .= substr($text, $from);
  }
  return $result;
}

sub _convert($$;$);

sub _handle_source_marks($$$)
{
  my ($element, $type, $current_smark) = @_;
  my $result = '';
  my $last_position;
  my $smark_e_text;
  my $source_marks_nr = Texinfo::element_source_marks_number($element);
  if ($source_marks_nr) {
    if ($debug) {
      print STDERR "_SOURCEMARKS ($source_marks_nr)\n";
    }
    for (my $i = 0; $i < $source_marks_nr; $i++) {
      my $source_mark = Texinfo::element_get_source_mark($element, $i);
      my $source_mark_counter = $source_mark->swig_counter_get();
      my $source_mark_type = $source_mark->swig_type_get();

      if ($current_smark) {
        if ($source_mark_counter == $current_smark->[1]
            and $current_smark->[0] eq $source_mark_type) {
          $last_position = $source_mark->swig_position_get();
          if ($debug) {
            print STDERR "END_SMARK($i): $source_mark_type;".
               "c:$source_mark_counter;p:$last_position\n";
          }
          $current_smark = undef;
        }
      }

      my $source_mark_status = $source_mark->swig_status_get();

      my $source_mark_position = $source_mark->swig_position_get();
      if (defined($source_mark_position) and $source_mark_position > 0) {
        if (!$current_smark) {
          # source_mark_position > 0 only in text elements
          my $text = Texinfo::element_text($element);
          my $text_result = _text($text, $last_position, $type,
                                  $source_mark_position);
          if ($debug) {
            print STDERR "TEXT_SMARK($i) "
              .(defined($last_position) ? $last_position : '-')
                .":$source_mark_position"
                ." '$text_result'\n";
                #."\n";
          }
          $result .= $text_result;
        }
      }
      $last_position = $source_mark_position;

      # value expansion has both a line and an element, the line
      # is the flag name, what we are interested in is the element
      my $source_mark_element = $source_mark->swig_element_get();
      if (defined($source_mark_element)) {
        if ($debug) {
          print STDERR "_E_SMARK($i): "
           #.Texinfo::tree_print_details($source_mark_element)."\n";
           ."\n";
        }
        ($smark_e_text, $current_smark)
          = _convert($source_mark_element, $document, $current_smark);
        $result .= $smark_e_text if (!$current_smark);
      } elsif (!$current_smark) {
        if ($source_mark_type == $Texinfo::SM_type_delcomment) {
          $result .= "\x{7F}";
        } elsif ($source_mark_type
                   == $Texinfo::SM_type_macro_arg_escape_backslash) {
          $result .= '\\';
        }
        my $source_mark_line = $source_mark->swig_line_get();
        if (defined($source_mark_line)) {
          $result .= $source_mark_line;
        } elsif ($source_mark_type == $Texinfo::SM_type_defline_continuation) {
          $result .= "@\n";
        }
      }
      if (!$current_smark) {
        if ($source_mark_status eq $Texinfo::SM_status_start
            # expanded conditional has a start and an end, but the
            # tree within is the expanded tree and should not be skipped
            and $source_mark_type
                != $Texinfo::SM_type_expanded_conditional_command) {
          if ($debug) {
            print STDERR "START_SMARK($i): $source_mark_type;"
              ."c:$source_mark_counter\n";
          }
          $current_smark = [$source_mark_type, $source_mark_counter];
        }
      }
    }
    if ($debug) {
      print STDERR "_OUTSMARKS [p:".
        (defined($last_position) ? $last_position : 0)."] "
           ._current_smark($current_smark)."\n";
      print STDERR "_HSMARKRESULT: '$result'\n";
    }
  }
  return $result, $last_position, $current_smark;
}

sub _current_smark($) {
  my $current_smark = shift;

  return defined($current_smark) ?
             "$current_smark->[0]:$current_smark->[1]" : '-';
}

sub _convert($$;$) {
  my ($tree, $document, $current_smark) = @_;

  if ($debug) {
    print STDERR "_CONVERT: "._current_smark($current_smark)."\n";
  }
  my $descriptor = Texinfo::register_new_reader($tree, $document);
  my $reader = Texinfo::retrieve_reader_descriptor($descriptor);

  my $spaces;
  my $args_stack = [];

  my $result = '';

  while (1) {
    my $next_token = Texinfo::reader_read($reader);
    last if (!defined($next_token));

    my $element = $next_token->swig_element_get();
    my $category = $next_token->swig_category_get();

    my $type = Texinfo::element_type($element);
    $type = '' if (!defined($type));

    if ($debug) {
      print STDERR "R [".join('|', @$args_stack)."] $category ".
        _current_smark($current_smark)
        .' '.Texinfo::element_print_details($element)."\n";
    }

    if ($category == $Texinfo::TXI_READ_TEXT
        or $category == $Texinfo::TXI_READ_IGNORABLE_TEXT) {
      my ($last_position, $smark_result);
      ($smark_result, $last_position, $current_smark)
        = _handle_source_marks($element, $type, $current_smark);
      $result .= $smark_result;
      if (!defined($current_smark)) {
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
      # FIXME item_LINE or item?  Probably item, but check
      if ($category != $Texinfo::TXI_READ_ELEMENT_END) {
        if (!defined($current_smark)) {
          my $alias_of = Texinfo::element_attribute_string($element,
                                                          'alias_of');
          $result .= '@';
          if (defined($alias_of)) {
            $result .= $alias_of;
          } else {
            $result .= $cmdname;
          }
        }

        my $spaces_cmd_before_arg
          = Texinfo::element_attribute_element($element,
                                 'spaces_after_cmd_before_arg');
        if (defined($spaces_cmd_before_arg)) {
          ($spaces, $current_smark)
           = _convert($spaces_cmd_before_arg, $document, $current_smark);
          $result .= $spaces;
        }
      }

      if ($category == $Texinfo::TXI_READ_ELEMENT_START) {
        if (Texinfo::element_command_is_brace($element)
            or $type eq 'definfoenclose_command'
            or $type eq 'macro_call' or $type eq 'rmacro_call') {
          if (!defined($current_smark)) {
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
            or $type eq 'definfoenclose_command',
            or $type eq 'macro_call' or $type eq 'rmacro_call') {
          if (!defined($current_smark)) {
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
      }
      if ($category == $Texinfo::TXI_READ_ELEMENT_START
          or $category == $Texinfo::TXI_READ_EMPTY) {
        if (!defined($current_smark)) {
          if ($type eq 'bracketed_arg') {
            $result .= '{';
          }
        }
        if ($type eq 'brace_arg' or $type eq 'elided_brace_command_arg'
            or $type eq 'line_arg' or $type eq 'block_line_arg') {
          $args_stack->[-1]++;
          if (!defined($current_smark)) {
            if ($args_stack->[-1] > 1) {
              $result .= ',';
            }
          }
        }
      }
    }
    if ($category == $Texinfo::TXI_READ_ELEMENT_START
        or $category == $Texinfo::TXI_READ_EMPTY) {
      my $spaces_before_argument
        = Texinfo::element_attribute_element($element,
                               'spaces_before_argument');
      if (defined($spaces_before_argument)) {
        ($spaces, $current_smark)
           = _convert($spaces_before_argument, $document, $current_smark);
        $result .= $spaces;
      }
    }
    if ($category == $Texinfo::TXI_READ_EMPTY
        or $category == $Texinfo::TXI_READ_ELEMENT_END) {
      my $spaces_after_argument
        = Texinfo::element_attribute_element($element,
                               'spaces_after_argument');
      if (defined($spaces_after_argument)) {
        ($spaces, $current_smark)
           = _convert($spaces_after_argument, $document, $current_smark);
        $result .= $spaces;
      }

      if ($type eq 'line_arg' or $type eq 'block_line_arg') {
        my $comment_e = Texinfo::element_attribute_element($element,
                                           'comment_at_end');
        if ($comment_e) {
          my $comment;
          ($comment, $current_smark)
             = _convert($comment_e, $document, $current_smark);
          $result .= $comment;
        }
      }

      if (!defined($current_smark)) {
        if ($type eq 'bracketed_arg') {
          $result .= '}';
        }
      }
    }

    if ($category == $Texinfo::TXI_READ_ELEMENT_END) {
      if (defined($cmdname)
          and !Texinfo::element_command_is_nobrace($element)) {
        pop @$args_stack;
      }
    }
    if ($category == $Texinfo::TXI_READ_EMPTY
        or $category == $Texinfo::TXI_READ_ELEMENT_END) {
      my ($last_position, $smark_result);
      ($smark_result, $last_position, $current_smark)
         = _handle_source_marks($element, $type, $current_smark);
      $result .= $smark_result;
    }
  }

  if ($debug) {
    print STDERR "_END "._current_smark($current_smark)."\n";
    print STDERR "RESULT: '$result'\n";
  }
  return ($result, $current_smark);
}

my ($result, $current_smark) = _convert($tree, $document);

if (defined($current_smark)) {
  warn "Source mark not closed\n";
}

print "$result";
