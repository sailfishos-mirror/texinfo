# Reader.pm: interface to Texinfo tree.
#
# Copyright 2025 Free Software Foundation, Inc.
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
# The interface to the Texinfo tree provided in this file is similar to
# Pod::Simple::PullParser or XML::LibXML::Reader

package Texinfo::Reader;

use strict;
use warnings;

use Carp qw(confess);

#use Texinfo::Common;
use Texinfo::TreeElement;

# check that autovivification do not happen incorrectly.
#no autovivification qw(fetch delete exists store strict);

my %ignorable_text_types;
foreach my $text_type (
            'ignorable_spaces_after_command',
            'ignorable_spaces_before_command',
            'spaces_after_close_brace',
            'spaces_at_end',
            #'text_after_end',
            #'text_before_beginning',
            'spaces_after_argument',
            'spaces_after_cmd_before_arg',
            'spaces_before_argument',
  ) {
  $ignorable_text_types{$text_type} = 1;
}

my %ignored_types;
foreach my $type (
            'postamble_after_end',
            'preamble_before_beginning',
            'preamble_before_setfilename') {
  $ignored_types{$type} = 1;
}

use constant {
  # for elements with contents, a start token is emitted when encountering
  # the element, and an end token after going through the element children.
  TXI_ELEMENT_START => 1,
  TXI_ELEMENT_END => 2,
  # text
  TXI_ELEMENT_TEXT => 3,
  # ignorable text
  TXI_ELEMENT_IGNORABLE_TEXT => 4,
  # no text but no content either.  Invalid constructs, such as brace
  # commands without braces may end up in this category.
  TXI_ELEMENT_EMPTY => 5,
};

our %token_category_name = (
  Texinfo::Reader::TXI_ELEMENT_START => 'START',
  Texinfo::Reader::TXI_ELEMENT_END => 'END',
  Texinfo::Reader::TXI_ELEMENT_TEXT => 'TEXT',
  Texinfo::Reader::TXI_ELEMENT_IGNORABLE_TEXT => 'IGNORABLE_TEXT',
  Texinfo::Reader::TXI_ELEMENT_EMPTY => 'EMPTY',
);

# The stack holds pairs of array of children and index in this array.
# The index is the index of the previous element, starting at -1 when
# pushing on the stack.  When popping the stack, the parent element is
# at the current index.

sub new($)
{
  my $tree = shift;

  my $reader = {};

  bless $reader;

  $reader->{'stack'} = [[-1, [$tree]]];

  return $reader;
}

sub _end_element($)
{
  my $reader = shift;
  pop @{$reader->{'stack'}};
  if (!scalar(@{$reader->{'stack'}})) {
    return undef;
  }

  my $token = Texinfo::ReaderToken::new();

  my $context = $reader->{'stack'}->[-1];
  my ($index, $array) = @{$context};
  @$token = ($array->[$index], TXI_ELEMENT_END);

  return $token;
}

sub read($)
{
  my $reader = shift;

  my $context = $reader->{'stack'}->[-1];
  my ($index, $array) = @{$context};
  #print STDERR "EREAD @{$reader->{'stack'}}| $index ".scalar(@$array)
  #  ." $array\n";

  $context->[0]++;

  if ($context->[0] +1 > scalar(@$array)) {
    return _end_element($reader);
  }

  my $token = Texinfo::ReaderToken::new();

  my $element = $array->[$context->[0]];
  if (exists($element->{'text'})) {
    if ($element->{'type'} and $ignorable_text_types{$element->{'type'}}) {
      @$token = ($element, TXI_ELEMENT_IGNORABLE_TEXT);
    } else {
      @$token = ($element, TXI_ELEMENT_TEXT);
    }
  } else {
    my $array = [];
    if ($element->{'info'}) {
      foreach my $info ('spaces_after_cmd_before_arg',
                        'spaces_before_argument') {
        my $info_element = $element->{'info'}->{$info};
        if ($info_element) {
          push @$array, $info_element;
        }
      }
    }
    if ($element->{'contents'}) {
      push @$array, @{$element->{'contents'}};
    }
    if ($element->{'info'}) {
      foreach my $info ('spaces_after_argument', 'comment_at_end') {
        my $info_element = $element->{'info'}->{$info};
        if ($info_element) {
          push @$array, $info_element;
        }
      }
    }
    if (scalar(@$array)) {
      push @{$reader->{'stack'}}, [-1, $array];
      @$token = ($element, TXI_ELEMENT_START);
    } else {
      @$token = ($element, TXI_ELEMENT_EMPTY);
    }
  }

  return $token;
}

# The $ELEMENT argument is solely used to check that the end element
# matches.
sub skip_children($;$)
{
  my $reader = shift;
  my $element = shift;

  my $token = _end_element($reader);

  if ($element) {
    my $end_element = $token->element();
    if ($end_element ne $element) {
      confess("skip_children $end_element ne $element; "
        .Texinfo::Common::debug_print_element($end_element)."; "
        .Texinfo::Common::debug_print_element($element));
    }
  }

  return $token;
}

sub reader_collect_commands_list($$)
{
  my $root = shift;
  my $commands_list = shift;

  my $collected_commands_list = [];
  my $commands_hash = {};
  foreach my $command_name (@$commands_list) {
    $commands_hash->{$command_name} = 1;
  }
  my $reader = Texinfo::Reader::new($root);
  my $next;

  while ($next = $reader->read()) {
    my $category = $next->category();
    if ($category == Texinfo::Reader::TXI_ELEMENT_START
        or $category == Texinfo::Reader::TXI_ELEMENT_EMPTY) {
      my $element = $next->element();
      my $cmdname = $element->cmdname();
      if (defined($cmdname) and defined($commands_hash->{$cmdname})) {
        push @{$collected_commands_list}, $element;
      }
    }
  }
  return $collected_commands_list;
}

# 'internal', supposed to be called using object oriented syntax only on
# tokens returned by the reader.
package Texinfo::ReaderToken;

# Not supposed to be called by user-defined code
sub new()
{
  my $token = [];
  bless $token;
  return $token;
}

sub element($)
{
  my $token = shift;
  return $token->[0];
}

sub category($)
{
  my $token = shift;
  return $token->[1];
}

1;
__END__
=head1 NAME

Texinfo::Reader - Texinfo tree reader

=head1 SYNOPSIS

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

C<Texinfo::Reader> offers an interface to a Texinfo tree obtained from
parsing Texinfo code.

=head1 METHODS

C<read>

=head1 SEE ALSO

=head1 AUTHOR

Patrice Dumas.

=head1 COPYRIGHT AND LICENSE

Copyright 2025- Free Software Foundation, Inc.  See the source file for
all copyright years.

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at
your option) any later version.

=cut
