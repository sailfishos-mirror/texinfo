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

#include "options_types.h"
#include "tree_types.h"
#include "tree.h"
#include "utils.h"
#include "manipulate_tree.h"
/* for copy_tree */
#include "document.h"
#include "transformations.h"
#include "structuring.h"
#include "output_unit.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

MODULE = Texinfo::StructTransf		PACKAGE = Texinfo::StructTransf

PROTOTYPES: ENABLE

SV *
rebuild_document (SV *document_in, ...)
      PROTOTYPE: $;$
      PREINIT:
        int no_store = 0;
        int document_descriptor;
        SV **document_descriptor_sv;
        char *descriptor_key = "document_descriptor";
        HV *hv_in;
      CODE:
        if (items > 1)
          if (SvOK(ST(1)))
            no_store = SvIV (ST(1));

        hv_in = (HV *)SvRV (document_in);
        document_descriptor_sv = hv_fetch (hv_in, descriptor_key,
                                           strlen (descriptor_key), 0);
        if (document_descriptor_sv)
          {
            SV **info_sv;
            SV *rebuilt_doc_sv;
            HV *rebuilt_doc_hv;

            document_descriptor = SvIV (*document_descriptor_sv);
            rebuilt_doc_sv = build_document (document_descriptor, no_store);
            RETVAL = rebuilt_doc_sv;
            rebuilt_doc_hv = (HV *)SvRV (rebuilt_doc_sv);
            info_sv = hv_fetch (hv_in, "info", strlen ("info"), 0);
            /* copy input document info keys values not already in new document
               info.  Should only happen for info keys set in perl only. */
            if (info_sv)
              {
                I32 hv_number;
                I32 i;
                HV *info_hv = (HV *)SvRV (*info_sv);
                SV **rebuilt_info_sv = hv_fetch (rebuilt_doc_hv, "info",
                                                strlen ("info"), 0);
                HV *rebuilt_info_hv = 0;
                if (!rebuilt_info_sv)
                  {
                    HV *rebuilt_info_hv = newHV ();
                    SV *rebuilt_info_ref = newRV_noinc ((SV *) rebuilt_info_hv);
                    hv_store (rebuilt_doc_hv, "info", strlen ("info"),
                              rebuilt_info_ref, 0);
                  }
                else
                  {
                    rebuilt_info_hv = (HV *)SvRV (*rebuilt_info_sv);
                  }
                hv_number = hv_iterinit (info_hv);
                for (i = 0; i < hv_number; i++)
                  {
                    char *key;
                    I32 retlen;
                    SV *value = hv_iternextsv(info_hv,
                                              &key, &retlen);
                    SV **existing_key_sv = hv_fetch (rebuilt_info_hv, key,
                                                     strlen (key), 0);
                    if (!existing_key_sv)
                      hv_store (rebuilt_info_hv, key, strlen (key), value, 0);
                  }
              }
          }
        else
          {
            fprintf (stderr, "ERROR: document rebuild: no %s\n", descriptor_key);
            RETVAL = newSV(0);
          }
    OUTPUT:
        RETVAL

SV *
rebuild_tree (SV *tree_in, ...)
      PROTOTYPE: $;$
      PREINIT:
        int no_store = 0;
        DOCUMENT *document = 0;
      CODE:
        if (items > 1)
          if (SvOK(ST(1)))
            no_store = SvIV (ST(1));

        document = get_sv_tree_document (tree_in, "rebuild_tree");
        if (document)
          {
            ELEMENT *tree;

            build_document (document->descriptor, no_store);
            tree = document->tree;
            RETVAL = newRV_inc ((SV *) tree->hv);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

void
remove_document_descriptor (int document_descriptor)

void
remove_document (document_in)
        SV *document_in
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* it is ok not to found a document if there is no
           document descriptor */
        document = get_sv_document_document (document_in, 0);
        if (document)
          remove_document_descriptor (document->descriptor);

void
clear_document_errors (int document_descriptor)

void
set_document_options (SV *sv_options_in, SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "set_document_options");
        if (document)
          {
            OPTIONS *options = copy_sv_options (sv_options_in);
            register_document_options (document, options);
          }

void
fill_gaps_in_sectioning (SV *tree_in)
    PREINIT:
        ELEMENT *added_sections;
        DOCUMENT *document;
     CODE:
        document = get_sv_tree_document (tree_in, "fill_gaps_in_sectioning");
        if (document)
          {
            added_sections = fill_gaps_in_sectioning (document->tree);
            /* cannot easily be used as it does not match with perl tree.
               Also the return would not be usable as error status */
            destroy_element (added_sections);
          }

# FIXME what to do with the parent argument?
SV *
copy_tree (SV *tree_in, SV *parent_in=0)
    PREINIT:
        DOCUMENT *document;
     CODE:
        document = get_sv_tree_document (tree_in, "copy_tree");
        if (document)
          {
            ELEMENT *result = copy_tree (document->tree, 0);
            /* FIXME have a similar system but for trees only? */
            int copy_document_descriptor = register_document (result, 0, 0, 0,
                                                      0, 0, 0, 0, 0, 0);
            HV *hv = build_texinfo_tree (result);
            hv_store (hv, "tree_document_descriptor",
                      strlen ("tree_document_descriptor"),
                      newSViv ((IV) copy_document_descriptor), 0);
            RETVAL = newRV_inc ((SV *) hv);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

# $indices_information argument is ignored, it is found with the document
void
relate_index_entries_to_table_items_in_tree (SV *tree_in, ...)
    PROTOTYPE: $$
    PREINIT:
        DOCUMENT *document;
     CODE:
        document = get_sv_tree_document (tree_in,
                   "relate_index_entries_to_table_items_in_tree");
        if (document)
          {
            if (!document->index_names)
              {
                fprintf (stderr, "ERROR: %d: no index_names\n",
                                          document->descriptor);
              }
            else
              relate_index_entries_to_table_items_in_tree (document->tree,
                                                      document->index_names);
          }

void
move_index_entries_after_items_in_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document;
     CODE:
        document = get_sv_tree_document (tree_in,
                                        "move_index_entries_after_items_in_tree");
        if (document)
          move_index_entries_after_items_in_tree (document->tree);

# The perl function returns a tree, as the
# argument could be modified.  Here, tree_in is always a container
# that is not modified, so there is no need to return a tree.
void
reference_to_arg_in_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
          /* FIXME warn?  Document not found happens with direct calls of
                          _new_node, for example */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          reference_to_arg_in_tree (document->tree);

void
associate_internal_references (SV *document_in, ...)
    PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          associate_internal_references (document);


# The perl function returns a list of sections, but it is only used
# to register in the document.  It is better to reserve the return
# value for a return status, if it becomes needed.
void
sectioning_structure (SV *tree_in, ...)
    PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            ELEMENT *sections_list = sectioning_structure (document);
            register_document_sections_list (document, sections_list);
          }

void
warn_non_empty_parts (SV *document_in, ...)
   PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          warn_non_empty_parts (document);

void
set_menus_node_directions (SV *document_in, ...)
  PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          set_menus_node_directions (document);

void
complete_node_tree_with_menus (SV *document_in, ...)
  PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          complete_node_tree_with_menus (document);

void
check_nodes_are_referenced (SV *document_in, ...)
  PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          check_nodes_are_referenced (document);

void
number_floats (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          number_floats (document);

void
complete_tree_nodes_menus (SV *tree_in, SV *use_sections_in=0)
    PREINIT:
        DOCUMENT *document = 0;
        int use_sections = 0;
     CODE:
        document = get_sv_tree_document (tree_in, "complete_tree_nodes_menus");
        if (use_sections_in && SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        if (document)
          complete_tree_nodes_menus (document->tree, use_sections);

void
complete_tree_nodes_missing_menu (SV *tree_in, SV *use_sections_in=0)
    PREINIT:
        DOCUMENT *document = 0;
        int use_sections = 0;
     CODE:
        document = get_sv_tree_document (tree_in,
                             "complete_tree_nodes_missing_menu");
        if (use_sections_in && SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        if (document)
          complete_tree_nodes_missing_menu (document->tree, use_sections);

# regenerate_master_menu uses the options of the document, so we ignore
# customization_information, which should contain the same information
void
regenerate_master_menu (SV *document_in, SV *customization_information, SV *use_sections_in=0)
    PREINIT:
        DOCUMENT *document = 0;
        int use_sections = 0;
    CODE:
        document = get_sv_document_document (document_in,
                                             "regenerate_master_menu");
        if (use_sections_in && SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        if (document)
          regenerate_master_menu (document, use_sections);

# The perl function returns the list of added nodes.  It is better
# to reserve the return value for a return status, if it becomes needed.
# FIXME the added nodes return value is used in pod2texi
void
insert_nodes_for_sectioning_commands (SV *document_in, ...)
   PROTOTYPE: $;$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in,
                               "insert_nodes_for_sectioning_commands");
        if (document)
          {
            ELEMENT *added_nodes
              = insert_nodes_for_sectioning_commands (document);
            destroy_element (added_nodes);
          }

# The perl function returns a list of nodes, but it is only used
# to register in the document.  It is better to reserve the return
# value for a return status, if it becomes needed.
void
nodes_tree (SV *document_in, ...)
   PROTOTYPE: $$$
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in, "nodes_tree");
        if (document)
          {
            ELEMENT *nodes_list = nodes_tree (document);
            register_document_nodes_list (document, nodes_list);
          }

# For the next functions, the perl function returns a tree, as the
# argument could be modified.  Here, tree_in is always a container
# that is not modified, so there is no need to return a tree.
void
protect_colon_in_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        /* there is no need to replace the root of the tree */
        if (document)
          protect_colon_in_tree (document->tree);

void
protect_comma_in_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        /* there is no need to replace the root of the tree */
        if (document)
          protect_comma_in_tree (document->tree);

void
protect_node_after_label_in_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        /* there is no need to replace the root of the tree */
        if (document)
          protect_node_after_label_in_tree (document->tree);

void
protect_hashchar_at_line_beginning (SV *tree_in, ...)
   PROTOTYPE: $;$$
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        /* there is no need to replace the root of the tree */
        if (document)
          protect_hashchar_at_line_beginning (document);

void
protect_first_parenthesis_in_targets (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          protect_first_parenthesis_in_targets (document->tree);

SV *
split_by_node (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            int output_units_descriptor = split_by_node (document->tree);
            RETVAL = build_output_units_list (output_units_descriptor);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

SV *
split_by_section (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            int output_units_descriptor = split_by_section (document->tree);
            RETVAL = build_output_units_list (output_units_descriptor);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

int
unsplit (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          RETVAL = unsplit (document->tree);
        else
          RETVAL = -1;
    OUTPUT:
        RETVAL

# return the input if XS information are missing or not found
SV *
rebuild_output_units (SV *output_units_in)
    PREINIT:
        int output_units_descriptor = 0;
     CODE:
        /* FIXME warning/error if not found? */
        output_units_descriptor
           = get_sv_output_units_descriptor (output_units_in, 0);
        if (output_units_descriptor)
          RETVAL = build_output_units_list (output_units_descriptor);
        else
         /* FIXME adding SvREFCNT_inc was done by trial and error
            as without one gets "Useless assignment to a temporary" */
          RETVAL = SvREFCNT_inc(output_units_in);
          /*
          RETVAL = newSV(0);
           */
    OUTPUT:
        RETVAL

void
split_pages (SV *output_units_in, char *split)
    PREINIT:
        OUTPUT_UNIT_LIST *output_units = 0;
     CODE:
        /* FIXME warning/error if not found? */
        output_units = get_sv_output_units (output_units_in, 0);
        if (output_units)
          split_pages (output_units, split);


