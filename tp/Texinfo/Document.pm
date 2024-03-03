# Copyright 2023-2024 Free Software Foundation, Inc.
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

use Texinfo::DocumentXS;

use Texinfo::XSLoader;

use Texinfo::Common;

use Texinfo::Report;

our $VERSION = '7.1dev';

my $XS_parser = ((not defined($ENV{TEXINFO_XS})
                  or $ENV{TEXINFO_XS} ne 'omit')
                 and (not defined($ENV{TEXINFO_XS_PARSER})
                      or $ENV{TEXINFO_XS_PARSER} eq '1'));

# XS parser and not explicitely unset
my $XS_structuring = ($XS_parser
                      and (not defined($ENV{TEXINFO_XS_STRUCTURE})
                           or $ENV{TEXINFO_XS_STRUCTURE} ne '0'));

# needed by parser
our %XS_overrides = (
  "Texinfo::Document::remove_document"
    => "Texinfo::DocumentXS::remove_document",
  "Texinfo::Document::clear_document_errors"
    => "Texinfo::DocumentXS::clear_document_errors",
  "Texinfo::Document::_XS_set_document_global_info",
    => "Texinfo::DocumentXS::set_document_global_info",
);

# needed by structure code
our %XS_structure_overrides = (
  "Texinfo::Document::rebuild_document"
    => "Texinfo::DocumentXS::rebuild_document",
  "Texinfo::Document::rebuild_tree"
    => "Texinfo::DocumentXS::rebuild_tree",
  "Texinfo::Document::indices_sort_strings"
    => "Texinfo::DocumentXS::indices_sort_strings",
);

our $module_loaded = 0;
sub import {
  if (!$module_loaded) {
    if ($XS_parser) {
      for my $sub (keys %XS_overrides) {
        Texinfo::XSLoader::override ($sub, $XS_overrides{$sub});
      }
      if ($XS_structuring) {
        for my $sub (keys %XS_structure_overrides) {
          Texinfo::XSLoader::override ($sub, $XS_structure_overrides{$sub});
        }
      }
    }
    $module_loaded = 1;
  }
  # The usual import method
  goto &Exporter::import;
}

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
  my $parser_registrar = shift;

  my $document = {
    'tree' => $tree,
    'indices' => $indices_information,
    'listoffloats_list' => $floats_information,
    'internal_references' => $internal_references_information,
    'commands_info' => $global_commands_information,
    'global_info' => $global_information,
    'identifiers_target' => $identifier_target,
    'labels_list' => $labels_list,
    # Parser errors registrar
    'parser_registrar' => $parser_registrar,
    # New error registrar for the document
    'registrar' => Texinfo::Report::new(),
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

sub _XS_set_document_global_info($$$)
{
}

sub set_document_global_info($$$)
{
  my $document = shift;
  my $key = shift;
  my $value = shift;
  if ($XS_parser) {
    _XS_set_document_global_info($document, $key, $value);
  }
  $document->{'global_info'}->{$key} = $value;
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
  return $self->{'global_info'};
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

sub registrar($)
{
  my $self = shift;
  return $self->{'registrar'};
}

sub merged_indices($)
{
  my $self = shift;

  if ($self->{'indices'}) {
    if (!$self->{'merged_indices'}) {
      $self->{'merged_indices'}
        = Texinfo::Indices::merge_indices($self->{'indices'});
    }
  }
  return $self->{'merged_indices'};
}

# call setup_index_entries_sort_strings and cache the result.
# In general, it is not needed to call that function directly,
# as it is called by Texinfo::Indices::sort_indices_by_*.  It may
# be called in advance, however, if errors need to be collected early.
sub indices_sort_strings($$;$)
{
  my $document = shift;
  my $customization_information = shift;
  my $prefer_reference_element = shift;

  if (!$document->{'index_entries_sort_strings'}) {
    my $indices_sort_strings
      = Texinfo::Indices::setup_index_entries_sort_strings
             ($document->{'registrar'}, $customization_information,
              $document->merged_indices(), $document->indices_information(),
              $prefer_reference_element);
    $document->{'index_entries_sort_strings'} = $indices_sort_strings;
  }

  return $document->{'index_entries_sort_strings'};
}

# call Texinfo::Indices::sort_indices_by_letter and cache the result
sub sorted_indices_by_letter($$$$)
{
  my $document = shift;
  my $customization_information = shift;
  my $use_unicode_collation = shift;
  my $locale_lang = shift;

  my $lang_key;
  if (!$use_unicode_collation) {
    $lang_key = '';
  } elsif (!defined($locale_lang)) {
    # special name corresponding to Unicode Collation with 'Non-Ignorable'
    # set for variable collation elements
    $lang_key = '-';
  } else {
    $lang_key = $locale_lang;
  }

  $document->{'sorted_indices_by_letter'} = {}
    if (!$document->{'sorted_indices_by_letter'});

  if (!$document->{'sorted_indices_by_letter'}->{$lang_key}) {
    $document->merged_indices();
    $document->{'sorted_indices_by_letter'}->{$lang_key}
      = Texinfo::Indices::sort_indices_by_letter
          ($document, $document->{'registrar'}, $customization_information,
           $use_unicode_collation, $locale_lang);
  }
  return $document->{'sorted_indices_by_letter'}->{$lang_key};
}

# call Texinfo::Indices::sort_indices_by_index and cache the result
sub sorted_indices_by_index($$$$)
{
  my $document = shift;
  my $customization_information = shift;
  my $use_unicode_collation = shift;
  my $locale_lang = shift;

  my $lang_key;
  if (!$use_unicode_collation) {
    $lang_key = '';
  } elsif (!defined($locale_lang)) {
    # special name corresponding to Unicode Collation with 'Non-Ignorable'
    # set for variable collation elements
    $lang_key = '-';
  } else {
    $lang_key = $locale_lang;
  }

  $document->{'sorted_indices_by_index'} = {}
    if (!$document->{'sorted_indices_by_index'});

  if (!$document->{'sorted_indices_by_index'}->{$lang_key}) {
    $document->merged_indices();
    $document->{'sorted_indices_by_index'}->{$lang_key}
      = Texinfo::Indices::sort_indices_by_index
          ($document, $document->{'registrar'}, $customization_information,
           $use_unicode_collation, $locale_lang);
  }
  return $document->{'sorted_indices_by_index'}->{$lang_key};
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

sub _add_element_to_identifiers_target($$;$)
{
  my $self = shift;
  my $element = shift;
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
sub set_labels_identifiers_target($$$)
{
  my $self = shift;
  my $registrar = shift;
  my $customization_information = shift;

  my @elements_with_error;

  $self->{'identifiers_target'} = {};
  if (defined $self->{'labels_list'}) {
    foreach my $element (@{$self->{'labels_list'}}) {
      my $retval = _add_element_to_identifiers_target($self, $element,
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
      _existing_label_error($self, $element, $self->{'registrar'},
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

  my $retval = _add_element_to_identifiers_target($self, $element,
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
sub remove_document($)
{
  my $document = shift;
}

# this method does nothing, but the XS override rebuilds the Perl
# document based on XS data.
sub rebuild_document($;$)
{
  my $document = shift;
  my $no_store = shift;
}

# this method does nothing, but the XS override rebuilds the Perl
# tree based on XS data.
sub rebuild_tree($;$)
{
  my $tree = shift;
  my $no_store = shift;

  return $tree;
}

# this method does nothing, but the XS override clears the document errors
sub clear_document_errors($)
{
}

# In general, this method should be called after calling rebuild_document
# on the document, such that the XS code builds the 'errors' list before
# this method is called.  Also note that if XS code was not used, all
# the errors should already be registered in the document registrar.
# NOTE similar code is used in the perl code associated to the XS parser to
# get the errors from parser_errors.
sub errors($)
{
  my $document = shift;

  my $registrar = $document->{'registrar'};
  return if !defined($registrar);

  foreach my $error (@{$document->{'errors'}}) {
    $registrar->add_formatted_message($error);
  }
  @{$document->{'errors'}} = ();
  Texinfo::Document::clear_document_errors(
                                      $document->document_descriptor());

  return $registrar->errors();
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

=head1 METHODS

=head2 Getting document information

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

=item included_files

An array of included file paths as they appear in the document.  Binary
strings.  From both C<@include> and C<@verbatiminclude>.

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

Information on C<@float> grouped by type of floats, each type corresponding
to potential C<@listoffloats> is available through C<floats_information>.

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

The function returns an array reference of cross-reference commands referring
to the same document with @-commands that refer to node, anchors or floats.

=item $nodes_list = nodes_list($document)

Returns an array reference containing the document nodes.  In general set to
the nodes list returned by L<Texinfo::Structuring nodes_tree|Texinfo::Structuring/$nodes_list = nodes_tree($document, $customization_information)>,
by a call to L<register_document_nodes_list|/register_document_nodes_list ($document, $nodes_list)>.

=item $sections_list = sections_list($document)

Returns an array reference containing the document sections.  In general set to the
sections list returned by L<Texinfo::Structuring sectioning_structure|Texinfo::Structuring/$sections_list = sectioning_structure($document, $customization_information)>,
by a call to L<register_document_sections_list|/register_document_sections_list ($document, $sections_list)>.

=back

Information about defined indices, indices merging and index entries is
available through C<indices_information>.

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

=head2 Merging and sorting indices

Merged and sorted document indices are also available.  Parsed indices
are not merged nor sorted, L<Texinfo::Indices> functions are
called to merge or sort the indices the first time the following
methods are called.  The results are afterwards associated to the
document and simply returned.

=over

=item $merged_indices = $document->merged_indices()
X<C<merged_indices>>

Merge indices if needed and return merged indices.  The I<$merged_indices>
returned is a hash reference whose keys are the index names and values arrays
of index entry structures described in L</index_entries>.

L<< C<Texinfo::Indices::merge_indices>|Texinfo::Indices/$merged_indices = merge_indices($indices_information) >>
is used to merge the indices.

=item $sorted_indices = $document->sorted_indices_by_index($customization_information, $use_unicode_collation, $locale_lang)

=item $sorted_indices = $document->sorted_indices_by_letter($customization_information, $use_unicode_collation, $locale_lang)
X<C<sorted_indices_by_index>> X<C<sorted_indices_by_letter>>

C<sorted_indices_by_letter> returns the indices sorted by index and letter,
while C<sorted_indices_by_index> returns the indices with all entries
of an index together.

By default, indices are sorted according to the I<Unicode Collation Algorithm>
defined in the L<Unicode Technical Standard
#10|http://www.unicode.org/reports/tr10/>, without language-specific collation
tailoring.  If I<$use_unicode_collation> is set to 0, the sorting will not use
the I<Unicode Collation Algorithm> and simply sort according to the codepoints.
If I<$locale_lang> is set, the language is used for linguistic tailoring of the
sorting, if possible.

When sorting by letter, an array reference of letter hash references is
associated with each index name.  Each letter hash reference has two
keys, a I<letter> key with the letter, and an I<entries> key with an array
reference of sorted index entries beginning with the letter.  The letter
is a character string suitable for sorting letters, but is not necessarily
the best to use for output.

When simply sorting, the array of the sorted index entries is associated
with the index name.

L<< C<Texinfo::Indices::sort_indices_by_index>|Texinfo::Indices/$index_entries_sorted = sort_indices_by_index($document, $registrar, $customization_information, $use_unicode_collation, $locale_lang) >>
and L<< C<Texinfo::Indices::sort_indices_by_letter>|Texinfo::Indices/$index_entries_sorted = sort_indices_by_letter($document, $registrar, $customization_information, $use_unicode_collation, $locale_lang) >>
are used to sort the indices, if needed.

=back

=head2 Getting errors and error registering object

A document has a L<Texinfo::Report> objet associated, that is used to
register errors and warning messages in.  To get the errors registered
in the document, the C<errors> method should be called.
It is also possible to get the document associated C<Texinfo::Report> objet
by calling the C<registrar> accessor method.

=over

=item $registrar = registrar($document)

Returns the C<Texinfo::Report> object associated with the I<$document>.

In general, this is not needed as most functions use the document associated
C<Texinfo::Report> object automatically.  However, for some functions a
C<Texinfo::Report> object is passed in argument, being able to
get the document registrar object is interesting in those cases.

=item ($error warnings list, $error count) = errors($document)

This function returns as I<$error_count> the count of errors since setting
up the I<$document> (or calling the function). The returned
I<$error_warnings_list> is an array of hash references
one for each error, warning or error line continuation.  The format of
these hash references is described
in L<C<Texinfo::Report::errors>|Texinfo::Report/($error_warnings_list, $error_count) = errors($registrar)>.

Note that, in general, C<error> should
be called after L<C<rebuild_document>|/$rebuilt_document = rebuild_document($document, $no_store)>,
such that errors registered in C are passed to Perl.

=back


=head2 Registering document and information in document

The setup of a document is described next, it should only be used in
parsers codes.

=over

=item $document = Texinfo::Document::register($tree, $global_information, $indices_information, $floats_information, $internal_references_information, $global_commands_information, $identifier_target, $labels_list, $parser_registrar)

Setup a document. There is no reason to call this method out of parsers, as
it is already done by the Texinfo parsers.  The arguments are gathered
during parsing and correspond to information returned by the other methods.

=back

Further information can be registered in the document.

=over

=item register_document_nodes_list ($document, $nodes_list)
X<C<register_document_nodes_list>>

Register the I<$nodes_list> array reference as I<$document> nodes
list.  This method should be called after the processing of document
structure.

=item register_document_sections_list ($document, $sections_list)
X<C<register_document_sections_list>>

Register the I<$sections_list> array reference as I<$document> sections
list.  This method should be called after the processing of document
structure.

=item set_document_global_info($document, $key, $value)
X<C<set_document_global_info>>

Add I<$value> I<$key> information to I<$document>.  This method should not be
generally useful, as document global information is already set by the
Texinfo parser.  The information set should be available through
the next calls to L<global_information|/$info = global_information($document)>.
The method should in general be called before the calls to
C<global_information>.

=back

=head2 Methods for Perl and C code interactions

The parsing of Texinfo code, structuring and transformations of the tree
called through Texinfo Perl modules may be done by pure Perl modules or
by C code called through XS interfaces.  In general, it makes no difference
whether pure Perl or C code is used. In some cases, however, specific functions
need to be called to pass information from C to Perl or perform actions related
to C data.

The methods can always be called on pure Perl modules even if they do nothing.
Therefore it is, in general, better to call them assuming that modules
setting up C data were called, even when it is not the case.

First, C<document_descriptor> can be called to get the document identifier
document used by C code to retrieve the document data in C.  In general
this identifier is directly and transparently taken from the document, but may
need to be set on other objects in rare cases.

=over

=item $document_descriptor = $document->document_descriptor()
X<C<document_descriptor>>

Returns the document descriptor if the document is available as C data,
0 or C<undef> if not.

=back

When the document and tree are accessed in Perl but are modified by
C code, for instance called through L<Texinfo::Common>,
L<Texinfo::Structuring> or L<Texinfo::Transformations> methods, the
Perl structures need to be rebuilt from the C data with C<rebuild_document>
or C<rebuild_tree>:

=over

=item $rebuilt_document = rebuild_document($document, $no_store)

=item $rebuilt_document = rebuild_tree($tree, $no_store)
X<C<rebuild_document>> X<C<rebuild_tree>>

Return a I<$rebuilt_document>, rebuilt from C data if needed.  If there
is not C data, the document is returned as is.  The document rebuilt is
based on the Texinfo parsed I<$document> if C<rebuild_document> is
called, or on the Texinfo parsed document associated to the Texinfo
tree I<$tree> if C<rebuild_tree> is called.

If the optional I<$no_store> argument is set, remove the C data.

This method also sets the errors list in the Perl I<$rebuilt_document> based on
errors and warnings associated to I<$document> stored in C, and should
therefore be called before calling
L<C<errors>|/($error warnings list, $error count) = errors($document)>.

B<the document errors should be in C<< $document->{'errors'} >>, but this is not
documented anywhere, and maybe do not need to be documented as
L<C<errors>|/($error warnings list, $error count) = errors($document)> can be used to get the errors.>

=back

Some methods allow to release the memory or remove error messages held
by C data associated to a Texinfo parsed document:

=over

=item clear_document_errors($document)
X<C<clear_document_errors>>

Remove the document errors and warnings held in C data.

Note that L<C<errors>|/($error warnings list, $error count) = errors($document)>
already calls C<clear_document_errors>, so calling this function directly
is usually not needed.

The method can be called on pure Perl modules and does nothing in that case
as the errors and warnings are already in the L<Texinfo::Report> object
associated to a document.

=item remove_document($document)
X<C<remove_document>>

Remove the C data corresponding to I<$document>.

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
