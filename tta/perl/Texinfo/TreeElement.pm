# TreeElement.pm: interface to Texinfo tree element.
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

package Texinfo::TreeElement;

use strict;
use warnings;

# Texinfo::Common depends on this module in code outside of functions,
# so it will be good not to depend on Texinfo::Common here.

# check that autovivification do not happen incorrectly.
#no autovivification qw(fetch delete exists store strict);

sub new($)
{
  my $element = shift;
  bless $element;
  return $element;
}

sub parent($)
{
  my $element = shift;
  return $element->{'parent'};
}

sub type($)
{
  my $element = shift;
  return $element->{'type'};
}

sub cmdname($)
{
  my $element = shift;
  return $element->{'cmdname'};
}

sub text($)
{
  my $element = shift;
  return $element->{'text'};
}

sub children_number($)
{
  my $element = shift;

  if ($element->{'contents'}) {
    return scalar(@{$element->{'contents'}});
  }
  return 0;
}

sub get_child($$)
{
  my $element = shift;
  my $index = shift;
 
  if ($element->{'contents'}) {
    return $element->{'contents'}->[$index];
  }
  return undef;
}

sub get_attribute($$)
{
  my $element = shift;
  my $attribute = shift;

  if ($element->{'extra'} and exists($element->{'extra'}->{$attribute})) {
    return $element->{'extra'}->{$attribute};
  } elsif ($element->{'info'} and exists($element->{'info'}->{$attribute})) {
    return $element->{'info'}->{$attribute};
  }
  return undef;
}

sub source_marks_number($)
{
  my $element = shift;
 
  if ($element->{'source_marks'}) {
    return scalar(@{$element->{'source_marks'}});
  }
  return 0;
}

1;
__END__
=head1 NAME

Texinfo::TreeElement - Texinfo tree element interface

=head1 SYNOPSIS

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

C<Texinfo::TreeElement> offers an interface to a Texinfo tree element obtained
from parsing Texinfo code.

=head1 METHODS



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
