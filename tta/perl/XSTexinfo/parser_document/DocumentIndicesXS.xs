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

/* ALTIMP perl/Texinfo/Document/IndicesNonXS.pm */

#include <stddef.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "document_types.h"
/* non_perl_* */
#include "xs_utils.h"
#include "document.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */


MODULE = Texinfo::Document::Indices		PACKAGE = Texinfo::Document::Indices

PROTOTYPES: ENABLE

SV *
print_document_indices_information (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                       "print_document_indices_information");
        if (document)
          {
            char *indices_information_str
              = print_document_indices_information (document);
            if (indices_information_str)
              {
                RETVAL = newSVpv_utf8 (indices_information_str, 0);
                free (indices_information_str);
              }
            else
              RETVAL = newSV (0);
          }
        else
          RETVAL = newSV (0);

    OUTPUT:
        RETVAL

SV *
print_document_indices_sort_strings (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                       "print_document_indices_sort_strings");
        if (document)
          {
            char *indices_sort_strings_str;

            indices_sort_strings_str
              = print_document_indices_sort_strings (document);
            if (indices_sort_strings_str)
              {
                RETVAL = newSVpv_utf8 (indices_sort_strings_str, 0);
                non_perl_free (indices_sort_strings_str);
              }
            else
              RETVAL = newSV (0);
          }
        else
          RETVAL = newSV (0);

    OUTPUT:
        RETVAL



