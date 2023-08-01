# Copyright 2023 Free Software Foundation, Inc.
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

# This package provides a view of a Texinfo document.  The most important
# use of this package, however is hidden, as it is used to associate to
# information held by the XS modules in a transparent way.

package Texinfo::Document;

use strict;
use warnings;

our $VERSION = '7.0dev';

sub register
{
  my $tree = shift;
  my $global_information = shift;
  my $indices_information = shift;
  my $floats_information = shift;
  my $internal_references_information = shift;
  my $global_commands_information = shift;
  my $labels = shift;
  my $targets = shift;
  my $nodes = shift;

  my $document = {
    'tree' => $tree,
    'indices' => $indices_information,
    'floats' => $floats_information,
    'internal_references' => $internal_references_information,
    'commands_information' => $global_commands_information,
    'info' => $global_information,
    'labels' => $labels,
    'targets' => $targets,
    'nodes' => $nodes,
  };

  bless $document;
  return $document;
}

sub tree($)
{
  my $self = shift;
  return $self->{'tree'};
}

# return indices information
sub indices_information($)
{
  my $self = shift;
  return $self->{'indices'};
}

sub floats_information($)
{
  my $self = shift;
  return $self->{'floats'};
}

sub internal_references_information($)
{
  my $self = shift;
  return $self->{'internal_references'};
}

sub global_commands_information($)
{
  my $self = shift;
  return $self->{'commands_info'};
}

sub global_information($)
{
  my $self = shift;
  return $self->{'info'};
}

sub labels_information($)
{
  my $self = shift;
  return $self->{'labels'}, $self->{'targets'}, $self->{'nodes'};
}

1;
__END__
=head1 NAME

Texinfo::Document - Texinfo document tree and information

=head1 SYNOPSIS

  use Texinfo::Parser;
  my $parser = Texinfo::Parser::parser();
  my $document = $parser->parse_texi_file("somefile.texi");

  my $indices_information = $document->indices_information();
  my $float_types_arrays = $document->floats_information();
  my $internal_references_array
    = $parser->internal_references_information();
  # $labels_information is an hash reference on normalized
  # node/float/anchor names.
  my ($labels_information, $targets_list, $nodes_list)
          = $document->labels_information();
  # A hash reference, keys are @-command names, value is an
  # array reference holding all the corresponding @-commands.
  my $global_commands_information
                 = $document->global_commands_information();
  # a hash reference on document information (encodings,
  # input file name, dircategory and direntry list, for example).
  my $global_information = $document->global_information();

=head1 NOTES

The Texinfo Perl module main purpose is to be used in C<texi2any> to convert
Texinfo to other formats.  There is no promise of API stability.

=head1 DESCRIPTION

This module is used to represent parsed Texinfo documents, with the Texinfo
tree and associated information.  In general a document is obtained from
a Texinfo parser call, there is no need to setup the document.

If the document comes from the XS parser, other XS module can retrieve data
structures associated to the document.  How this information is retrieved
and set is transparent and not documented here, as it is only set and retrieved
in XS modules, not in perl code.

=head1 METHODS

The main purpose of Texinfo::Document methods is to retrieve information
on a Texinfo document.

The Texinfo tree obtained by parsing a Texinfo document is available through
C<tree>:

=over

=item $tree = tree($document)
X<C<tree>>

The I<$tree> is a hash reference.  It is described in
L<Texinfo::Parser/TEXINFO TREE>.

=back

Some global information is available through C<global_information>:

=over

=item $info = global_information($document)
X<C<global_information>>

The I<$info> returned is a hash reference.  The possible keys are

=over

=item dircategory_direntry

An array of successive C<@dircategory> and C<@direntry> as they appear
in the document.

=item input_encoding_name

=item input_perl_encoding

C<input_encoding_name> string is the encoding name used for the
Texinfo code.
C<input_perl_encoding> string is a corresponding Perl encoding name.

=item input_file_name

=item input_directory

The name of the main Texinfo input file and the associated directory.
Binary strings.  In C<texi2any>, they should come from the command line
(and can be decoded with the encoding in the customization variable
C<COMMAND_LINE_ENCODING>).

=back

=back

Some command lists are available, such that it is possible to go through
the corresponding tree elements without walking the tree.  They are
available through C<global_commands_information>:

=over

=item $commands = global_commands_information($document)
X<C<global_commands_information>>

I<$commands> is an hash reference.  The keys are @-command names.  The
associated values are array references containing all the corresponding
tree elements.

=back

All the @-commands that have an associated label (so can be the
target of cross references) -- C<@node>, C<@anchor> and C<@float> with
label -- have a normalized name associated, constructed as described in the
I<HTML Xref> node in the Texinfo documentation.  Those normalized labels and
the association with @-commands is available through C<labels_information>:

=over

=item $labels_information, $targets_list, $nodes_list = labels_information($document)
X<C<labels_information>>

I<$labels_information> is a hash reference whose keys are normalized
labels, and the associated value is the corresponding @-command.
I<$targets_list> is a list of labels @-command.  Using
I<$labels_information> is preferred.  I<$nodes_list> is a list of all
the nodes appearing in the document.

=back

Information on C<@float> is also available, grouped by type of
floats, each type corresponding to potential C<@listoffloats>.
This information is available through the method C<floats_information>.

=over

=item $float_types = floats_information($document)
X<C<floats_information>>

I<$float_types> is a hash reference whose keys are normalized float
types (the first float argument, or the C<@listoffloats> argument).
The normalization is the same as for the first step of node names
normalization. The value is the list of float tree elements appearing
in the texinfo document.

=back

Internal references, that is, @-commands that refer to node, anchors
or floats within the document are also available:

=over

=item $internal_references_array = internal_references_information($document)
X<C<internal_references_information>>

The function returns a list of cross-reference commands referring to
the same document.

=back

Information about defined indices, merged indices and index entries is
also available through the C<indices_information> method.

=over

=item $indices_information = $document->indices_information()
X<C<indices_information>>

I<$indices_information> is a hash reference.  The keys are

=over

=item in_code

1 if the index entries should be formatted as code, 0 in the opposite case.

=item name

The index name.

=item prefix

An array reference of prefix associated to the index.

=item merged_in

In case the index is merged to another index, this key holds the name of
the index the index is merged into.  It takes into account indirectly
merged indices.

=item contained_indices

An hash reference holding names of indices that are merged into the index,
including itself.  It also contains indirectly merged indices.  This key
is removed if the index is itself later merged to another index.

=item index_entries

An array reference containing index entry structures for index entries
associated with the index.  The index entry could be associated to
@-commands like C<@cindex>, or C<@item> in C<@vtable>, or definition
commands entries like C<@deffn>.

The keys of the index entry structures are

=over

=item index_name

The index name associated to the command.  Not modified if the corresponding
index is merged in another index (with C<@synindex>, for example).

=item entry_element

The element in the parsed tree associated with the @-command holding the
index entry.

=item entry_number

The number of the index entry.

=back

=back

The following shows the references corresponding to the default indexes
I<cp> and I<fn>, the I<fn> index having its entries formatted as code and
the indices corresponding to the following texinfo

  @defindex some
  @defcodeindex code

  $index_names = {'cp' => {'name' => 'cp', 'in_code' => 0, },
                  'fn' => {'name' => 'fn', 'in_code' => 1, },
                  'some' => {'in_code' => 0},
                  'code' => {'in_code' => 1}};

If C<name> is not set, it is set to the index name.

=back

The setup of a document is described next, it should only be used in
parsers codes.

=over

=item $document = Texinfo::Document::register($tree, $global_information, $indices_information, $floats_information, $internal_references_information, $global_commands_information, $labels, $targets, $nodes)

Setup a document. There is no reason to call this method out of parsers, as
it is already done by the Texinfo parsers.  The arguments correspond to
information returned by the other methods.

=back

=head1 SEE ALSO

L<Texinfo::Parser>.

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