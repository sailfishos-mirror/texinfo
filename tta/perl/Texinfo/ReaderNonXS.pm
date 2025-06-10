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

use Carp qw(cluck confess);

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

#my %ignored_types;
#foreach my $type (
#            'postamble_after_end',
#            'preamble_before_beginning',
#            'preamble_before_setfilename') {
#  $ignored_types{$type} = 1;
#}

# The stack holds pair of children and index in this array.
# The index is the index of the previous element, starting at -1 when
# pushing on the stack.  When popping the stack, the parent element is
# at the current index.

sub new($)
{
  my $tree = shift;

  if (!defined($tree)) {
    confess("Texinfo::Reader new undefined tree");
  }

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

  my $context = $reader->{'stack'}->[-1];
  my ($index, $array) = @{$context};

  my $token = {'element' => $array->[$index],
               'category' => Texinfo::Reader->TXI_ELEMENT_END};

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

  my $element = $array->[$context->[0]];

  my $token = {'element' => $element};

  if (ref($element) eq 'HASH') {
    print STDERR "ERROR:read:HASH "
       .Texinfo::Common::debug_print_element($element)."\n";
    cluck();
  }

  if (defined($element->text())) {
    my $type = $element->type();
    if ($type and $ignorable_text_types{$type}) {
      $token->{'category'} = Texinfo::Reader->TXI_ELEMENT_IGNORABLE_TEXT;
    } else {
      $token->{'category'} = Texinfo::Reader->TXI_ELEMENT_TEXT;
    }
  } else {
    my $array = [];

    foreach my $info ('spaces_after_cmd_before_arg',
                      'spaces_before_argument') {
      my $info_element = $element->get_attribute($info);
      if ($info_element) {
        push @$array, $info_element;
      }
    }
    my $contents = $element->get_children();
    if ($contents) {
      push @$array, @$contents;
    }
    # TODO handle comment_at_end.  This should be part of a reflexion on
    # comment_at_end in the tree to avoid all the code that handle
    # comment_at_end right now
    foreach my $info ('spaces_after_argument',) {# 'comment_at_end') {
      my $info_element = $element->get_attribute($info);
      if ($info_element) {
        push @$array, $info_element;
      }
    }
    if (scalar(@$array)) {
      push @{$reader->{'stack'}}, [-1, $array];
      $token->{'category'} = Texinfo::Reader->TXI_ELEMENT_START;
    } else {
      $token->{'category'} = Texinfo::Reader->TXI_ELEMENT_EMPTY;
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
    my $end_element = $token->{'element'};
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
    my $category = $next->{'category'};
    if ($category == Texinfo::Reader->TXI_ELEMENT_START
        or $category == Texinfo::Reader->TXI_ELEMENT_EMPTY) {
      my $element = $next->{'element'};
      my $cmdname = $element->cmdname();
      if (defined($cmdname) and defined($commands_hash->{$cmdname})) {
        push @{$collected_commands_list}, $element;
      }
    }
  }
  return $collected_commands_list;
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
