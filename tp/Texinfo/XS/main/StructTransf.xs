/* Copyright 2023 Free Software Foundation, Inc.

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

#include <config.h>
    
/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#if defined _WIN32 && !defined __CYGWIN__
# undef free
#endif
#include "XSUB.h"

#undef context

#include "ppport.h"

#include "tree_types.h"
#include "utils.h"
#include "tree.h"
#include "document.h"
#include "transformations.h"
#include "build_perl_info.h"

MODULE = Texinfo::StructTransf		PACKAGE = Texinfo::StructTransf

PROTOTYPES: ENABLE

SV *
fill_gaps_in_sectioning (tree_in)
        SV *tree_in
    PREINIT:
        ELEMENT *added_sections;
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        int copy_document_descriptor;
        HV *hv_tree_in;
        HV *result_tree;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        /* FIXME warning/error if not found? */
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        added_sections = fill_gaps_in_sectioning (document->tree);
        result_tree = build_texinfo_tree (added_sections);
        destroy_element (added_sections);
        RETVAL = newRV_inc ((SV *) result_tree);
    OUTPUT:
        RETVAL

# FIXME what to do with the parent argument?
SV *
copy_tree (tree_in, parent_in)
        SV *tree_in
        SV *parent_in
    PREINIT:
        ELEMENT *result;
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        int copy_document_descriptor;
        HV *hv;
        HV *hv_tree_in;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        /* FIXME warning/error if not found? */
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        result = copy_tree (document->tree, 0);
        /* FIXME have a similar system but for trees only? */
        copy_document_descriptor = register_document (result, 0, 0,
                                                      0, 0, 0, 0, 0, 0);
        hv = newHV ();
        hv_store (hv, "tree_document_descriptor",
                  strlen ("tree_document_descriptor"),
                  newSViv ((IV) copy_document_descriptor), 0);
        RETVAL = newRV_inc ((SV *) hv);
    OUTPUT:
        RETVAL

