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
#include "document.h"
#include "translations.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

MODULE = Texinfo::DocumentXS		PACKAGE = Texinfo::DocumentXS

PROTOTYPES: ENABLE

void
translations_configure (localesdir, strings_textdomain="texinfo_document")
       char *localesdir = (char *)SvPVbyte_nolen($arg);
       char *strings_textdomain;
      CODE:
       translations_configure (localesdir, strings_textdomain);

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
remove_document (SV *document_in)
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

