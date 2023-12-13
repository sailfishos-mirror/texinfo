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
            SV *rebuilt_doc_sv;

            document_descriptor = SvIV (*document_descriptor_sv);
            rebuilt_doc_sv = build_document (document_descriptor, no_store);
            RETVAL = rebuilt_doc_sv;
          }
        else
          {
            fprintf (stderr, "ERROR: document rebuild: no %s\n", descriptor_key);
            RETVAL = newSV(0);
          }
    OUTPUT:
        RETVAL

void
set_document_global_info (SV *document_in, char *key, SV *value_sv)
      PREINIT:
        DOCUMENT *document = 0;
      CODE:
        document = get_sv_document_document (document_in, 0);
        if (document)
          {
            if (!strcmp (key, "input_file_name"))
              {
                char *value = (char *)SvPVbyte_nolen(value_sv);
                if (document->global_info->input_file_name)
                  {
                    fprintf (stderr,
                        "BUG: %d: reset input_file_name '%s' -> '%s'\n",
                        document->descriptor,
                        document->global_info->input_file_name, value);
                    free (document->global_info->input_file_name);
                  }
                document->global_info->input_file_name = strdup (value);
              }
            else if (!strcmp (key, "input_perl_encoding"))
              {
                /* should not be needed, but in case global information
                   is reused, it will be ok */
                free (document->global_info->input_perl_encoding);
                document->global_info->input_perl_encoding
                   = strdup ((char *)SvPVbyte_nolen(value_sv));
              }
          }

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
            OPTIONS *options = copy_sv_options (sv_options_in, 0);
            register_document_options (document, options);
          }


# Next correspond to XS interfaces that have no associated
# .xs file.


# Next one is unused, kept as documentation only, as the code is
# ok, but the approach is flawed as the trees in replaced_substrings
# do not exist in XS/C data.

# TODO not sure that the options_in argument is good to be
# copy_sv_options argument, may need to retrieve a converter
# first or Parser configuration.  Does not matter much as
# the approach does not work because replaced_substrings
# perl element tree cannot be retrieved in C stored documents.
# optional:
# replaced_substrings, translation_context, lang
SV *
gdt (SV *options_in, string, ...)
        char *string = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$;$$$
      PREINIT:
        char *translation_context = 0;
        char *in_lang = 0;
        HV *hv_replaced_substrings = 0;
        NAMED_STRING_ELEMENT_LIST *replaced_substrings = 0;
        OPTIONS *options = 0;
        HV *result_tree;
        int gdt_document_descriptor;
        DOCUMENT *gdt_document;
      CODE:
         if (SvOK(options_in))
           {
             options = copy_sv_options (options_in, 0);
           }
        if (items > 4 && SvOK(ST(4)))
           in_lang = (char *)SvPVutf8_nolen(ST(4));
        if (items > 3 && SvOK(ST(3)))
           translation_context = (char *)SvPVutf8_nolen(ST(3));
        if (items > 2 && SvOK(ST(2)))
           {
             /* TODO put in get_perl_info.h */
             I32 hv_number;
             I32 i;
             hv_replaced_substrings = (HV *)SvRV (ST(1));
             hv_number = hv_iterinit (hv_replaced_substrings);
             if (hv_number > 0)
               replaced_substrings = new_named_string_element_list ();
               for (i = 0; i < hv_number; i++)
                 {
                   char *key;
                   I32 retlen;
                   SV *value = hv_iternextsv(hv_replaced_substrings,
                                             &key, &retlen);
                   DOCUMENT *document = get_sv_tree_document (value, 0);
                   /* TODO should warn/error if not found or return 
                      a list of missing string identifiers?  Or check
                      in caller?  In any case, it cannot be good to
                      ignore a replaced substring */
                   if (document && document->tree)
                     add_element_to_named_string_element_list (
                       replaced_substrings, key, document->tree);
               }
           }

         gdt_document_descriptor
                     = gdt (string, options, replaced_substrings,
                           translation_context, in_lang);
         gdt_document = retrieve_document (gdt_document_descriptor);
         result_tree = build_texinfo_tree (gdt_document->tree, 0);
         hv_store (result_tree, "tree_document_descriptor",
                  strlen ("tree_document_descriptor"),
                  newSViv ((IV) gdt_document_descriptor), 0);
         RETVAL = newRV_inc ((SV *) result_tree);
    OUTPUT:
         RETVAL


