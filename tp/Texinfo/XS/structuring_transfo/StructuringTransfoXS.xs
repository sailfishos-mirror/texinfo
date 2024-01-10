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
#include "document_types.h"
#include "tree.h"
#include "utils.h"
#include "manipulate_tree.h"
#include "document.h"
#include "transformations.h"
#include "structuring.h"
#include "output_unit.h"
#include "indices_in_conversion.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

MODULE = Texinfo::StructTransfXS	PACKAGE = Texinfo::StructTransfXS

PROTOTYPES: ENABLE

void
fill_gaps_in_sectioning (SV *tree_in, ...)
    PROTOTYPE: $;$
    PREINIT:
        ELEMENT_LIST *added_sections;
        DOCUMENT *document;
     CODE:
        document = get_sv_tree_document (tree_in, "fill_gaps_in_sectioning");
        if (document)
          {
            ELEMENT *commands_heading_content = 0;
            if (items > 1 && SvOK(ST(1)))
              {
                DOCUMENT *commands_heading_document
                   = get_sv_tree_document (ST(1), 0);
                if (commands_heading_document)
                  commands_heading_content = commands_heading_document->tree;
              }
            added_sections = fill_gaps_in_sectioning (document->tree,
                                                   commands_heading_content);
            /* cannot easily be used as it does not match with perl tree.
               Also the return would not be usable as error status */
            destroy_list (added_sections);
          }

SV *
copy_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document;
     CODE:
        document = get_sv_tree_document (tree_in, "copy_tree");
        if (document)
          {
            ELEMENT *result = copy_tree (document->tree);
            /* FIXME have a similar system but for trees only? */
            int copy_document_descriptor = register_document (result, 0, 0, 0,
                                                      0, 0, 0, 0, 0, 0);
            HV *hv = build_texinfo_tree (result, 0);
            hv_store (hv, "tree_document_descriptor",
                      strlen ("tree_document_descriptor"),
                      newSViv ((IV) copy_document_descriptor), 0);
            RETVAL = newRV_inc ((SV *) hv);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

void
relate_index_entries_to_table_items_in_tree (SV *document_in)
    PREINIT:
        DOCUMENT *document;
     CODE:
        document = get_sv_document_document (document_in,
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
          reference_to_arg_in_tree (document->tree, document);

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
            ELEMENT_LIST *sections_list = sectioning_structure (document);
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

# The perl function returns the list of added nodes.
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
            ELEMENT_LIST *added_nodes
              = insert_nodes_for_sectioning_commands (document);
            destroy_list (added_nodes);
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
            ELEMENT_LIST *nodes_list = nodes_tree (document);
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

# This function triggers setting the information needed for calls
# to index_entry_element_sort_string in C, either in a document
# or in a converter, depending whether index sorting is done with a converter
# or without.
# A returned hash reference is needed as some information is set in the
# hash in perl afterwards, but this information is not used as the hash
# is not used by any function not overriden, so there is no need to
# return information corresponding to the text options for perl.  An empty
# hash reference is therefore returned.
SV *
setup_index_entry_keys_formatting (SV *customization_info_sv)
    PREINIT:
        CONVERTER *self;
        HV *hv;
     CODE:
        self = get_sv_converter (customization_info_sv, 0);
        if (self)
          {
            TEXT_OPTIONS *text_options
              = setup_converter_index_entry_keys_formatting (self);
            self->convert_index_text_options = text_options;
          }
        else
          {
            DOCUMENT *document;
            document = get_sv_document_document (customization_info_sv,
                         "setup_index_entry_keys_formatting");
            if (document && document->options)
              {
                TEXT_OPTIONS *text_options
                 = setup_index_entry_keys_formatting (document->options);
                register_document_convert_index_text_options (document,
                                                           text_options);
              }
          }
        hv = newHV ();
        RETVAL = newRV_noinc ((SV *) hv);
    OUTPUT:
         RETVAL

SV *
index_entry_element_sort_string (SV *customization_info_sv, SV *main_entry_sv, SV *element_sv, SV *options_sv, SV *prefer_reference_element_sv=0)
    PREINIT:
        CONVERTER *self;
        DOCUMENT *document;
        char *sort_string = 0;
        TEXT_OPTIONS *convert_index_text_options = 0;
     CODE:
        self = get_sv_converter (customization_info_sv, 0);
        if (self)
          {
            document = self->document;
            convert_index_text_options = self->convert_index_text_options;
          }
        else
          {
            document = get_sv_document_document (customization_info_sv,
                     "index_entry_element_sort_string");
            if (document)
              convert_index_text_options
                = document->convert_index_text_options;
          }
        if (document)
          {
            const INDEX *entry_idx = 0;
            int entry_number;
            int prefer_reference_element = 0;
            int in_code;
            int allocated_text_options = 0;
            ELEMENT *element = find_element_from_sv (0, document,
                                                    element_sv, 0);
            INDEX_ENTRY *main_entry = find_index_entry_sv (main_entry_sv,
                                          document->index_names, 0,
                                          &entry_idx, &entry_number);
            in_code = entry_idx->in_code;

            /* should not be possible */
            if (!convert_index_text_options)
              {
                allocated_text_options = 1;
                convert_index_text_options
                  = copy_sv_options_for_convert_text (options_sv);
              }

            if (prefer_reference_element_sv && SvOK (prefer_reference_element_sv))
              prefer_reference_element = SvIV (prefer_reference_element_sv);

            sort_string = index_entry_element_sort_string (main_entry,
                          element, convert_index_text_options, in_code,
                          prefer_reference_element);
            if (allocated_text_options)
              destroy_text_options (convert_index_text_options);
          }

       if (!sort_string)
         RETVAL = newSV (0);
       else
         {
           RETVAL = newSVpv_utf8 (sort_string, 0);
           free (sort_string);
         }
    OUTPUT:
         RETVAL

