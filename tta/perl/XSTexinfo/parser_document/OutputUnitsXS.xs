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

/* ALTIMP perl/Texinfo/OutputUnitsNonXS.pm */

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "document_types.h"
#include "output_unit.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::OutputUnits	PACKAGE = Texinfo::OutputUnits

PROTOTYPES: ENABLE

# unused, avoid using
SV *
unused_split_by_node (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in, "split_by_node");
        if (document)
          {
            size_t output_units_descriptor = split_by_node (document);
            RETVAL = build_output_units_list (document,
                                              output_units_descriptor);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

# unused, avoid using
SV *
unused_split_by_section (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in, "split_by_section");
        if (document)
          {
            size_t output_units_descriptor = split_by_section (document);
            RETVAL = build_output_units_list (document,
                                              output_units_descriptor);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

int
unsplit (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in, "unsplit");
        if (document)
          RETVAL = unsplit (document);
        else
          RETVAL = -1;
    OUTPUT:
        RETVAL

# unused, avoid using
void
unused_split_pages (SV *output_units_in, char *split)
    PREINIT:
        size_t output_units_descriptor = 0;
        const DOCUMENT *document = 0;
     CODE:
        output_units_descriptor
          = get_sv_output_units_descriptor (output_units_in, "split_pages",
                                            &document);

        if (output_units_descriptor && document)
          {
            OUTPUT_UNIT_LIST *output_units = retrieve_output_units (document,
                                                    output_units_descriptor);
            split_pages (output_units, &document->nodes_list, split);
          }

# for tests only
SV *
do_units_directions_pages (SV *document_in, SV *units_split_type_in, SV *split_pages_in=0, SV *debug_in=0)
    PREINIT:
        DOCUMENT *document = 0;
        SV *output_units_list = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "do_units_directions_pages");
        if (document)
          {
            enum units_split_type units_split = UST_none;
            char *split_pages = 0;
            int debug = 0;

            if (split_pages_in && SvOK (split_pages_in))
              split_pages = (char *)SvPVbyte_nolen(split_pages_in);

            if (debug_in && SvOK (debug_in))
              debug = SvIV (debug_in);

            if (SvOK (units_split_type_in))
              units_split = (int) SvIV (units_split_type_in);

            do_units_directions_pages (document, units_split,
                                       split_pages, debug);

            if (document->output_units_descriptors[OUDT_units])
              {
                output_units_list = setup_output_units_handler (document,
                           document->output_units_descriptors[OUDT_units]);
              }
          }
        if (output_units_list)
          RETVAL = output_units_list;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
print_output_units_tree_details (SV *output_units_in, SV *tree_in, SV *fname_encoding_in=0, SV *use_filename_in=0)
    PREINIT:
        const DOCUMENT *document = 0;
        SV *result_sv = 0;
     CODE:
        document = get_sv_tree_document (tree_in,
                                         "print_output_units_tree_details");
        if (document)
          {
            const char *fname_encoding = 0;
            int use_filename = 0;
            OUTPUT_UNIT_LIST *output_units = 0;
            size_t output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in, 0, 0);

            if (fname_encoding_in && SvOK (fname_encoding_in))
              fname_encoding = (char *)SvPVbyte_nolen(fname_encoding_in);

            if (use_filename_in && SvOK (use_filename_in))
              use_filename = SvIV (use_filename_in);

            if (output_units_descriptor)
              {
                output_units
                 = retrieve_output_units (document, output_units_descriptor);
              }
            if (output_units)
              {
                char *result = print_output_units_tree_details (output_units,
                                document->tree, fname_encoding, use_filename);
                result_sv = newSVpv_utf8 (result, 0);
                free (result);
              }
          }

        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

