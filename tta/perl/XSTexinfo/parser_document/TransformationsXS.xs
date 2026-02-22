/* Copyright 2023-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* ALTIMP perl/Texinfo/TransformationsNonXS.pm */

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "document_types.h"
/* destroy_list */
#include "tree.h"
#include "transformations.h"
#include "get_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Transformations	PACKAGE = Texinfo::Transformations

PROTOTYPES: ENABLE

void
fill_gaps_in_sectioning_in_document (SV *document_in, ...)
    PROTOTYPE: $;$
    PREINIT:
        ELEMENT_LIST *added_sections;
        DOCUMENT *document;
     CODE:
        document = get_sv_document_document (document_in,
                              "fill_gaps_in_sectioning_in_document");
        if (document)
          {
            const ELEMENT *commands_heading_content = 0;
            if (items > 1 && SvOK(ST(1)))
              {
                DOCUMENT *commands_heading_document
                   = get_sv_tree_document (ST(1), 0);
                if (commands_heading_document)
                  commands_heading_content = commands_heading_document->tree;
              }
            added_sections = fill_gaps_in_sectioning_in_document (document,
                                                   commands_heading_content);
            /* cannot easily be used as it does not match with perl tree.
               Also the return would not be usable as error status */
            destroy_list (added_sections);
          }

void
reference_to_arg_in_document (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document
          = get_sv_document_document (document_in,
                                      "reference_to_arg_in_document");
        if (document)
          reference_to_arg_in_document (document);

void
complete_tree_nodes_menus_in_document (SV *document_in, SV *use_sections_in=0)
    PREINIT:
        DOCUMENT *document = 0;
        int use_sections = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                 "complete_tree_nodes_menus_in_document");
        if (use_sections_in && SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        if (document)
          complete_tree_nodes_menus_in_document (document, use_sections);

void
complete_tree_nodes_missing_menu (SV *document_in, SV *use_sections_in=0)
    PREINIT:
        DOCUMENT *document = 0;
        int use_sections = 0;
     CODE:
        document = get_sv_document_document (document_in,
                             "complete_tree_nodes_missing_menu");
        if (use_sections_in && SvOK (use_sections_in))
          {
            use_sections = SvIV (use_sections_in);
          }
        if (document)
          complete_tree_nodes_missing_menu (document, use_sections);

void
regenerate_master_menu (SV *document_in, SV *use_sections_in=0)
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
void
insert_nodes_for_sectioning_commands (SV *document_in)
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

void
protect_hashchar_at_line_beginning_in_document (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                           "protect_hashchar_at_line_beginning_in_document");
        if (document)
          protect_hashchar_at_line_beginning_in_document (document);

void
protect_first_parenthesis_in_targets_in_document (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                       "protect_first_parenthesis_in_targets_in_document");
        if (document)
          protect_first_parenthesis_in_targets_in_document (document);

