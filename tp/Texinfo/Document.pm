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

# This package provides a view of a parsed Texinfo document.  The
# instantiated objects are also used to carry information for the
# XS modules, mainly to be able to find the document information
# in memory.

package Texinfo::Document;

use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Texinfo::Common;

use Texinfo::StructTransf;

our $module_loaded = 0;
sub import {
  if (!$module_loaded) {
    if (!defined $ENV{TEXINFO_XS_PARSER}
        or $ENV{TEXINFO_XS_PARSER} eq '1') {
      Texinfo::XSLoader::override(
        "Texinfo::Document::remove_document",
        # TODO add a Document XS .xs file and move to that file?
        "Texinfo::StructTransf::remove_document"
      );
    }
    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}

our $VERSION = '7.1';

sub register
{
  my $tree = shift;
  my $global_information = shift;
  my $indices_information = shift;
  my $floats_information = shift;
  my $internal_references_information = shift;
  my $global_commands_information = shift;
  my $identifier_target = shift;
  my $labels_list = shift;

  my $document = {
    'tree' => $tree,
    'indices' => $indices_information,
    'listoffloats_list' => $floats_information,
    'internal_references' => $internal_references_information,
    'commands_info' => $global_commands_information,
    'info' => $global_information,
    'identifiers_target' => $identifier_target,
    'labels_list' => $labels_list,
  };

  bless $document;
  return $document;
}

sub register_document_nodes_list($$)
{
  my $document = shift;
  my $nodes_list = shift;
  $document->{'nodes_list'} = $nodes_list;
}

sub register_document_sections_list($$)
{
  my $document = shift;
  my $sections_list = shift;
  $document->{'sections_list'} = $sections_list;
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
  return $self->{'listoffloats_list'};
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
  return $self->{'identifiers_target'};
}

sub nodes_list($)
{
  my $self = shift;
  return $self->{'nodes_list'};
}

sub sections_list($)
{
  my $self = shift;
  return $self->{'sections_list'};
}

# only set if the Texinfo::Document object has been set up by XS code.
sub document_descriptor($)
{
  my $self = shift;
  return $self->{'document_descriptor'};
}

sub _existing_label_error($$;$$)
{
  my $self = shift;
  my $element = shift;
  my $registrar = shift;
  my $customization_information = shift;

  if ($element->{'extra'}
      and defined($element->{'extra'}->{'normalized'})) {
    my $normalized = $element->{'extra'}->{'normalized'};
    if (defined($customization_information) and defined($registrar)) {
      my $existing_target = $self->{'identifiers_target'}->{$normalized};
      my $label_element = Texinfo::Common::get_label_element($element);
      $registrar->line_error($customization_information,
                             sprintf(__("\@%s `%s' previously defined"),
                                     $element->{'cmdname'},
                    Texinfo::Convert::Texinfo::convert_to_texinfo(
                         {'contents' => $label_element->{'contents'}})),
                              $element->{'source_info'});
      $registrar->line_error($customization_information,
                    sprintf(__("here is the previous definition as \@%s"),
                            $existing_target->{'cmdname'}),
                             $existing_target->{'source_info'}, 1);
    }
  }
}

sub _add_element_to_identifiers_target($$;$$)
{
  my $self = shift;
  my $element = shift;
  my $registrar = shift;
  my $customization_information = shift;

  if ($element->{'extra'}
      and defined($element->{'extra'}->{'normalized'})) {
    my $normalized = $element->{'extra'}->{'normalized'};
    if (!defined $self->{'identifiers_target'}->{$normalized}) {
      $self->{'identifiers_target'}->{$normalized} = $element;
      $element->{'extra'}->{'is_target'} = 1;
      return 1;
    }
  }
  return 0;
}

# Called from Texinfo::ParserNonXS.
# This should be considered an internal function of the parser.
# It is here to reuse code.
# Sets $self->{'identifiers_target'} based on $self->{'labels_list'}.
sub set_labels_identifiers_target ($$$)
{
  my $self = shift;
  my $registrar = shift;
  my $customization_information = shift;

  my @elements_with_error;

  $self->{'identifiers_target'} = {};
  if (defined $self->{'labels_list'}) {
    foreach my $element (@{$self->{'labels_list'}}) {
      my $retval = _add_element_to_identifiers_target($self,
                                         $element, $registrar,
                                         $customization_information);
      if (!$retval and $element->{'extra'}
          and defined($element->{'extra'}->{'normalized'})) {
        push @elements_with_error, $element;
      }
    }
  }
  # use identifiers order to have the same error messages order as in XS parser
  if (scalar(@elements_with_error) > 0) {
    my @sorted
     = sort {$a->{'extra'}->{'normalized'} cmp $b->{'extra'}->{'normalized'}}
        @elements_with_error;
    foreach my $element (@sorted) {
      _existing_label_error($self, $element, $registrar,
                            $customization_information);
    }
  }
}

# TODO document when stabilized
sub register_label_element($$;$$)
{
  my $self = shift;
  my $element = shift;
  my $registrar = shift;
  my $customization_information = shift;

  my $retval = _add_element_to_identifiers_target($self, $element, $registrar,
                                         $customization_information);
  if (!$retval) {
    _existing_label_error($self, $element, $registrar,
                                         $customization_information);
  }
  # FIXME do not push at the end but have the caller give an information
  # on the element it should be after or before in the list?
  push @{$self->{'labels_list'}}, $element;
  return $retval;
}

# do nothing, only the XS override does something.
sub remove_document ($)
{
  my $document = shift;
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
  # $identifier_target is an hash reference on normalized
  # node/float/anchor names.
  my $identifier_target = $document->labels_information();
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
structures associated to the document object, by using information carried
by the object.  This is not relevant for perl code and is not documented
here.

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

=item $identifier_target = labels_information($document)
X<C<labels_information>>

I<$identifier_target> is a hash reference whose keys are normalized
labels, and the associated value is the corresponding @-command.

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

Internal references, nodes and section lists may also be available.

=over

=item $internal_references_array = internal_references_information($document)
X<C<internal_references_information>>

The function returns an aray reference of cross-reference commands referring to
the same document with @-commands that refer to node, anchors
or floats.

=item $nodes_list = nodes_list($document)

Returns an array reference containing the document nodes.  In general set to the
nodes list returned by L<Texinfo::Structuring nodes_tree|Texinfo::Structuring/$nodes_list = nodes_tree($document, $registrar, $customization_information)>,
by a call to L<register_document_nodes_list|/register_document_nodes_list ($document, $nodes_list)>.

=item $sections_list = sections_list($document)

Returns an array reference containing the document sections.  In general set to the
sections list returned by L<Texinfo::Structuring sectioning_structure|Texinfo::Structuring/$sections_list = sectioning_structure($tree, $registrar, $customization_information)>,
by a call to L<register_document_sections_list|/register_document_sections_list ($document, $sections_list)>.

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

=item $document = Texinfo::Document::register($tree, $global_information, $indices_information, $floats_information, $internal_references_information, $global_commands_information, $identifier_target, $labels_list)

Setup a document. There is no reason to call this method out of parsers, as
it is already done by the Texinfo parsers.  The arguments correspond to
information returned by the other methods.

=back

Further information can be registered in the document.  Those
methods should be called during the processing of document structure.

=over

=item register_document_nodes_list ($document, $nodes_list)
X<C<register_document_nodes_list>>

Register the I<$nodes_list> array reference as I<$document> nodes
list.

=item register_document_sections_list ($document, $sections_list)
X<C<register_document_sections_list>>

Register the I<$sections_list> array reference as I<$document> sections
list.

=back

=head1 SEE ALSO

L<Texinfo::Parser>. L<Texinfo::Structuring>.

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
