# Copyright 2023-2026 Free Software Foundation, Inc.
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
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# This package provides a view of a parsed Texinfo document.
#
# ALTIMP perl/XSTexinfo/parser_document/DocumentXS.xs
# ALTIMP C/main/document.c

package Texinfo::Document;

use strict;
use warnings;

# To check if there is no erroneous autovivification
#no autovivification qw(fetch delete exists store strict);

use Carp qw(cluck confess);

sub set_document_global_info($$$) {
  my ($document, $key, $value) = @_;

  $document->{'global_info'}->{$key} = $value;
}

# $HANDLER_ONLY is only relevant in XS.
sub tree($;$) {
  my ($self, $handler_only) = @_;

  return $self->{'tree'};
}

# return indices information
sub indices_information($) {
  my $self = shift;

  return $self->{'indices'};
}

sub floats_information($) {
  my $self = shift;

  return $self->{'listoffloats_list'};
}

sub internal_references_information($) {
  my $self = shift;

  return $self->{'internal_references'};
}

sub global_commands_information($) {
  my $self = shift;

  return $self->{'commands_info'};
}

sub global_information($) {
  my $self = shift;

  return $self->{'global_info'};
}

sub labels_information($) {
  my $self = shift;

  return $self->{'identifiers_target'};
}

sub labels_list($) {
  my $self = shift;

  return $self->{'labels_list'};
}

sub nodes_list($) {
  my $self = shift;

  return $self->{'nodes_list'};
}

sub sections_list($) {
  my $self = shift;

  return $self->{'sections_list'};
}

sub sectioning_root($) {
  my $self = shift;

  return $self->{'sectioning_root'};
}

sub headings_list($) {
  my $self = shift;

  return $self->{'headings_list'};
}

# Useful for options used in structuring/tree transformations.
sub register_document_options($$) {
  my ($self, $options) = @_;

  $self->{'options'} = $options;
}

sub get_conf($$) {
  my ($self, $var) = @_;

  if (exists($self->{'options'})) {
    return $self->{'options'}->{$var};
  }

  # This may happen if a tree/document is manipulated without having
  # any configuration set.  This is or was the case for pod2texi.
  # This is allowed.
  return undef;
}



sub destroy_document($;$) {
  my ($document, $remove_references) = @_;

  remove_document_references($document, $remove_references);
}

# this method does nothing, but the XS override rebuilds the Perl
# tree based on XS data.
sub build_tree($;$) {
  my ($tree, $no_store) = @_;

  return $tree;
}



# Errors and warnings handling

sub parser_errors($) {
  my $document = shift;

  my $errors_output = [@{$document->{'parser_error_messages'}}];

  $document->{'parser_error_messages'} = [];

  return $errors_output;
}

# The XS override pass C error messages to the document
# error_messages and remove error messages in C.
sub errors($) {
  my $document = shift;

  my $errors_output = [splice(@{$document->{'error_messages'}})];

  return $errors_output;
}

1;

