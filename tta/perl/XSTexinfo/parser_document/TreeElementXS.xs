/* Copyright 2023-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "build_perl_info.h"
#include "get_perl_info.h"
/* get_sv_converter */
#include "get_converter_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */


MODULE = Texinfo::TreeElementXS		PACKAGE = Texinfo::TreeElementXS

PROTOTYPES: ENABLE

# not in Texinfo::TreeElement but in Texinfo::Convert::Converter in order
# to be able to find the document. 
SV *
new_tree_element (SV *converter_in, SV *element_hash)
    PREINIT:
        CONVERTER *self;
     CODE:
        self = get_sv_converter (converter_in, 0);
        if (self && self->document)
          {
            ELEMENT *e = new_element_from_sv (element_hash);
            register_element_handle_in_sv (e, self->document);
            RETVAL = newSVsv ((SV *)e->sv);
          }
        else
          RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
new (SV *element_hash)
    CODE:
        fprintf (stderr, "Unexpected call of TreeElement new through XS\n");
        RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
parent (SV *element_sv)
      PREINIT:
        const ELEMENT *element;
        DOCUMENT *document;
      CODE:
        document = get_sv_element_document (element_sv);
        element = get_sv_element_element (element_sv, document);
        if (element->parent)
          {
            register_element_handle_in_sv (element->parent, document);
            RETVAL = newSVsv ((SV *)element->parent->sv);
          }
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

