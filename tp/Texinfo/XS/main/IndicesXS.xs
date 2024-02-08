/* Copyright 2023-2024 Free Software Foundation, Inc.

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
#include "document_types.h"
/*
#include "tree.h"
#include "utils.h"
 */
#include "document.h"
#include "manipulate_indices.h"
#include "get_perl_info.h"
/* for newSVpv_utf8 */
#include "build_perl_info.h"

MODULE = Texinfo::IndicesXS	PACKAGE = Texinfo::IndicesXS

PROTOTYPES: ENABLE

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
            /* this can happen if indices are sorted more than once */
            if (self->convert_index_text_options)
              destroy_text_options (self->convert_index_text_options);
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

# should only return undef if no document is found
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

#void
#sort_indices_by_letter (SV *registrar, SV *customization_information, SV *index_entries, SV *indices_information, ...)
#     PROTOTYPE: $$$$;$
#     PREINIT:
#         SV *sorted_index_entries_sv;
#      PPCODE:
#         sorted_index_entries_sv = build_sorted_indices_by_letter (
#
#         EXTEND(SP, 2);
#         PUSHs(sv_2mortal(sorted_index_entries_sv));
#         PUSHs(sv_2mortal(result_sv));

