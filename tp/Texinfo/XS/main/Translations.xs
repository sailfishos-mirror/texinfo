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
#include "document.h"
#include "build_perl_info.h"
#include "get_perl_info.h"
#include "translations.h"

MODULE = Texinfo::Translations	PACKAGE = Texinfo::Translations

PROTOTYPES: ENABLE

# since this module and the NonXS moduels share the same package
# namespace and are loaded together, names need to be different.
# configure (localesdir, strings_textdomain="texinfo_document")

void
configure_XS (localesdir, strings_textdomain="texinfo_document")
       char *localesdir = (char *)SvPVbyte_nolen($arg);
       char *strings_textdomain;
      CODE:
       configure (localesdir, strings_textdomain);


# optional:
# options, replaced_substrings, translation_context, lang
SV *
gettree (string, ...)
        char *string
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
        if ( items > 4 )
           if (SvOK(ST(4)))
             in_lang = (char *)SvPVbyte_nolen(ST(4));
        if ( items > 3 )
           if (SvOK(ST(3)))
             translation_context = (char *)SvPVbyte_nolen(ST(3));
        if ( items > 2 )
           {
             /* TODO put in get_perl_info.h */
             if (SvOK(ST(2)))
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
           }
         if ( items > 1 )
           if (SvOK(ST(1)))
             {
               options = copy_sv_options (ST(1));
             }

         gdt_document_descriptor
                     = gdt (string, options, replaced_substrings,
                           translation_context, in_lang);
         gdt_document = retrieve_document (gdt_document_descriptor);
         result_tree = build_texinfo_tree (gdt_document->tree);
         hv_store (result_tree, "tree_document_descriptor",
                  strlen ("tree_document_descriptor"),
                  newSViv ((IV) gdt_document_descriptor), 0);
         RETVAL = newRV_inc ((SV *) result_tree);
    OUTPUT:
         RETVAL


