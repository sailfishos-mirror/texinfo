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

#include "document.h"
#include "build_perl_info.h"
#include "translations.h"

MODULE = Texinfo::Translations	PACKAGE = Texinfo::Translations

PROTOTYPES: ENABLE

# since the module is loaded together with the NonXS, names need to
# be different.
# configure (localesdir, strings_textdomain="texinfo_document")

void
configure_XS (localesdir, strings_textdomain="texinfo_document")
       char *localesdir = (char *)SvPVbyte_nolen($arg);
       char *strings_textdomain;
      CODE:
       configure (localesdir, strings_textdomain);


# optional:
# replaced_substrings, translation_context, lang
SV *
gettree (string, ...)
        char *string
      PREINIT:
        char *translation_context = 0;
        char *in_lang = 0;
        HV *hv_replaced_substrings = 0;
        NAMED_STRING_ELEMENT_LIST *replaced_substrings = 0;
        ELEMENT *gdt_result;
        HV *result_tree;
        int gdt_document_descriptor;
      CODE:
        if ( items > 3 )
           if (SvOK(ST(3)))
             in_lang = (char *)SvPVbyte_nolen(ST(3));
        if ( items > 2 )
           if (SvOK(ST(2)))
             translation_context = (char *)SvPVbyte_nolen(ST(2));
        if ( items > 1 )
           {
             /* TODO put in a library */
             if (SvOK(ST(1)))
               {
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
                       HV *hv_tree_in;
                       SV **document_descriptor_sv;
                       int document_descriptor = 0;
                       DOCUMENT *document = 0;
                       SV *value = hv_iternextsv(hv_replaced_substrings,
                                                 &key, &retlen);
                       hv_tree_in = (HV *)SvRV (value);
                       document_descriptor_sv = hv_fetch (hv_tree_in,
                                          "tree_document_descriptor",
                                     strlen ("tree_document_descriptor"), 0);

                       /* TODO should warn/error if not found or return 
                          a list of missing string identifiers?  Or check
                          in caller?  In any case, it cannot be good to
                          ignore a replaced substring */
                       if (document_descriptor_sv)
                         {
                           document_descriptor = SvIV (*document_descriptor_sv);
                           document = retrieve_document (document_descriptor);
                         }
                       if (document && document->tree)
                         add_element_to_named_string_element_list (
                           replaced_substrings, key, document->tree);
                     }
               }
           }
         gdt_result = gdt (string, replaced_substrings,
                           translation_context, in_lang);
         /* FIXME have a similar system but for trees only? */
         gdt_document_descriptor = register_document (gdt_result, 0, 0,
                                                      0, 0, 0, 0, 0, 0);
         result_tree = build_texinfo_tree (gdt_result);
         hv_store (result_tree, "tree_document_descriptor",
                  strlen ("tree_document_descriptor"),
                  newSViv ((IV) gdt_document_descriptor), 0);
         RETVAL = newRV_inc ((SV *) result_tree);
    OUTPUT:
         RETVAL


