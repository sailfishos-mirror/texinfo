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

/* ALTIMP perl/Texinfo/StructuringNonXS.pm */

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "document_types.h"
#include "structure_list.h"
#include "structuring.h"
/* print_document_listoffloats */
#include "document.h"
#include "get_perl_info.h"
/* newSVpv_utf8 */
#include "build_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Structuring	PACKAGE = Texinfo::Structuring

PROTOTYPES: ENABLE

void
associate_internal_references (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in,
                                     "associate_internal_references");
        if (document)
          associate_internal_references (document);


void
sectioning_structure (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "sectioning_structure");
        if (document)
          {
            sectioning_structure (document);
          }

void
warn_non_empty_parts (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in,
                                             "warn_non_empty_parts");
        if (document)
          warn_non_empty_parts (document);

void
complete_node_tree_with_menus (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in,
                                      "complete_node_tree_with_menus");
        if (document)
          complete_node_tree_with_menus (document);

void
check_node_tree_menu_structure (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in,
                                      "check_node_tree_menu_structure");
        if (document)
          check_node_tree_menu_structure (document);

void
check_nodes_are_referenced (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in,
                                         "check_nodes_are_referenced");
        if (document)
          check_nodes_are_referenced (document);

void
number_floats (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in, "number_floats");
        if (document)
          number_floats (document);

void
construct_nodes_tree (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        document = get_sv_document_document (document_in, "nodes_tree");
        if (document)
          {
            construct_nodes_tree (document);
          }

SV *
print_sections_list (SV *document_in)
   PREINIT:
        const DOCUMENT *document = 0;
        SV *result_sv = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "print_sections_list");
        if (document)
          {
            char *result = print_sections_list (document);
            result_sv = newSVpv_utf8 (result, 0);
            free (result);
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
print_nodes_list (SV *document_in)
   PREINIT:
        const DOCUMENT *document = 0;
        SV *result_sv = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "print_nodes_list");
        if (document)
          {
            char *result = print_nodes_list (document);
            result_sv = newSVpv_utf8 (result, 0);
            free (result);
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
print_headings_list (SV *document_in)
   PREINIT:
        const DOCUMENT *document = 0;
        SV *result_sv = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "print_headings_list");
        if (document)
          {
            char *result = print_headings_list (document);
            result_sv = newSVpv_utf8 (result, 0);
            free (result);
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
print_sectioning_root (SV *document_in)
   PREINIT:
        const DOCUMENT *document = 0;
        SV *result_sv = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "print_sectioning_root");
        if (document)
          {
            char *result = print_sectioning_root (document);
            result_sv = newSVpv_utf8 (result, 0);
            free (result);
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
print_document_listoffloats (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "print_document_listoffloats");
        if (document)
          {
            char *listoffloats_str = print_document_listoffloats (document);
            if (listoffloats_str)
              {
                RETVAL = newSVpv_utf8 (listoffloats_str, 0);
                free (listoffloats_str);
              }
            else
              RETVAL = newSV (0);
          }
        else
          RETVAL = newSV (0);

    OUTPUT:
        RETVAL



