# DocumentXS.pm: load parsed Texinfo tree document XS functions.
#
# Copyright 2010-2026 Free Software Foundation, Inc.
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
#
# Perl functions associated to the Document XS interface.
#
# ALTIMP DocumentNonXS.pm

package Texinfo::Document;

use strict;
use warnings;

our $VERSION = '7.3dev';

# Not directly overriden as we want to destroy Perl data too and thus
# call remove_document_references.
# TODO destroy_texinfo_document can be called from XS, so maybe an
# override is possible?
sub destroy_document($;$) {
  my ($document, $remove_references) = @_;

  remove_document_references($document, $remove_references);

  destroy_texinfo_document($document, $remove_references);
}

1;
