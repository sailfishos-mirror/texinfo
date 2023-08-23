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
#include "structuring.h"
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
        HV *hv_tree_in;
        HV *result_tree;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        /* FIXME warning/error if document not found? */
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
            fprintf (stderr, "ERROR: fill_gaps_in_sectioning: "
                             "no tree_document_descriptor\n");
            return;
          }
        added_sections = fill_gaps_in_sectioning (document->tree);
        result_tree = build_texinfo_tree (added_sections);
        destroy_element (added_sections);
        RETVAL = newRV_inc ((SV *) result_tree);
    OUTPUT:
        RETVAL

# FIXME what to do with the parent argument?
# FIXME returns a fake element instead?
int
copy_tree (tree_in, parent_in)
        SV *tree_in
        SV *parent_in
    PREINIT:
        ELEMENT *result;
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        int copy_document_descriptor;
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
        if (document)
          {
            result = copy_tree (document->tree, 0);
            /* FIXME have a similar system but for trees only? */
            copy_document_descriptor = register_document (result, 0, 0,
                                                      0, 0, 0, 0, 0, 0);
            /* to return a fake element
            HV *hv = newHV ();
            hv_store (hv, "tree_document_descriptor",
                      strlen ("tree_document_descriptor"),
                      newSViv ((IV) copy_document_descriptor), 0);
            RETVAL = newRV_inc ((SV *) hv);
            */
            RETVAL = copy_document_descriptor;
          }
        else
          /*
          RETVAL = newRV_inc (newSV(0));
           */
          RETVAL = 0;
    OUTPUT:
        RETVAL

void
relate_index_entries_to_table_items_in_tree (tree_in)
        SV *tree_in
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_tree_in;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
            fprintf (stderr, "ERROR: relate_index_entries_to_table_items_in_tree:"
                             "no tree_document_descriptor\n");
            return;
          }
        if (! document)
          {
            fprintf (stderr, "ERROR: no document %d\n", document_descriptor);
            return;
          }
        if (!document->index_names)
          {
            fprintf (stderr, "ERROR: %d: no index_names\n", document_descriptor);
          }
        relate_index_entries_to_table_items_in_tree (document->tree,
                                                     document->index_names);


void
move_index_entries_after_items_in_tree (tree_in)
        SV *tree_in
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_tree_in;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
            fprintf (stderr, "ERROR: move_index_entries_after_items_in_tree:"
                             "no tree_document_descriptor\n");
            return;
          }
        if (! document)
          {
            fprintf (stderr, "ERROR: no document %d\n", document_descriptor);
            return;
          }
        move_index_entries_after_items_in_tree (document->tree);

# the root of a registered tree will not be modified, so it is not particularly
# interesting to return it.
void
reference_to_arg_in_tree (tree_in)
        SV *tree_in
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_tree_in;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
          /* FIXME warn?  This happens with direct calls of _new_node,
                          for example
            fprintf (stderr, "ERROR: reference_to_arg_in_tree:"
                             "no tree_document_descriptor\n");
           */
            return;
          }
        if (! document)
          {
            fprintf (stderr, "ERROR: no document %d\n", document_descriptor);
            return;
          }
        reference_to_arg_in_tree (document->tree);

void
associate_internal_references (document_in)
        SV *document_in
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_document_in;
    CODE:
        hv_document_in = (HV *)SvRV (document_in);
        document_descriptor_sv = hv_fetch (hv_document_in, "document_descriptor",
                                           strlen ("document_descriptor"), 0);
        /* FIXME warning/error if not found? */
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        associate_internal_references (document->identifiers_target,
                                       document->internal_references);


# FIXME return a list of sections?  How to match elements with perl tree
# element?
void
sectioning_structure (tree_in)
        SV *tree_in
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_tree_in;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
          /* FIXME warn?
            fprintf (stderr, "ERROR: reference_to_arg_in_tree:"
                             "no tree_document_descriptor\n");
           */
            return;
          }
        if (! document)
          {
            fprintf (stderr, "ERROR: no document %d\n", document_descriptor);
            return;
          }
        sectioning_structure (document->tree);

void
warn_non_empty_parts (document_in)
        SV *document_in
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_document_in;
    CODE:
        hv_document_in = (HV *)SvRV (document_in);
        document_descriptor_sv = hv_fetch (hv_document_in, "document_descriptor",
                                           strlen ("document_descriptor"), 0);
        /* FIXME warning/error if not found? */
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        warn_non_empty_parts (document);

void
complete_tree_nodes_menus (tree_in, use_sections_in)
        SV *tree_in
        SV *use_sections_in;
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_tree_in;
        int use_sections = 0;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
            fprintf (stderr, "ERROR: complete_tree_nodes_menus:"
                             "no tree_document_descriptor\n");
            return;
          }
        if (! document)
          {
            fprintf (stderr, "ERROR: no document %d\n", document_descriptor);
            return;
          }
        if (SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        complete_tree_nodes_menus (document->tree, use_sections);

void
complete_tree_nodes_missing_menu (tree_in, use_sections_in)
        SV *tree_in
        SV *use_sections_in;
    PREINIT:
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
        HV *hv_tree_in;
        int use_sections = 0;
     CODE:
        hv_tree_in = (HV *)SvRV (tree_in);
        document_descriptor_sv = hv_fetch (hv_tree_in,
                                           "tree_document_descriptor",
                                           strlen ("tree_document_descriptor"), 0);
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        else
          {
            fprintf (stderr, "ERROR: complete_tree_nodes_missing_menu:"
                             "no tree_document_descriptor\n");
            return;
          }
        if (! document)
          {
            fprintf (stderr, "ERROR: no document %d\n", document_descriptor);
            return;
          }
        if (SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        complete_tree_nodes_missing_menu (document->tree, use_sections);

