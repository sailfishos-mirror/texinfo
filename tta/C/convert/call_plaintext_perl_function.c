/* Copyright 2010-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>. */

#include <stddef.h>
#include <string.h>
#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
/* ppport.h suggests to remove its include, but we need it to
   replace G_LIST by G_ARRAY if G_LIST is not defined */
#include "ppport.h"

#undef context

#include "command_ids.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
/* non_perl_* */
#include "xs_utils.h"
#include "base_utils.h"
#include "tree.h"
/* for collect_commands_in_tree xasprintf 
 */
#include "utils.h"
/* for newSVpv_utf8 */
#include "build_perl_info.h"
#include "list_macros.h"
/* debugging
#include "debug.h"
#include "api_to_perl.h"
 */
#include "call_plaintext_perl_function.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MATH_ELEMENTS_IMAGES *
call_latex_convert_math_to_images (CONVERTER *self, DOCUMENT *document,
                                   const char *prefix,
                                   const char *destination_directory)
{
  int count;
  SV *document_sv = 0;
  SV *result_sv;
  SV *collected_commands_sv;
  MATH_ELEMENTS_IMAGES *result = 0;

  dTHX;

  dSP;

  /* get the document and increase refcount */
  if (document->hv)
    {
      /* reuse if the document hv already exists */
      document_sv = newRV_inc ((SV *) document->hv);
    }
  else
    {
      document_sv = build_minimal_document (document);
      SvREFCNT_inc (document_sv);
    }
  
  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 4);

  PUSHs(sv_2mortal (SvREFCNT_inc ((SV *) self->sv)));
  PUSHs(sv_2mortal (document_sv));
  PUSHs(sv_2mortal (newSVpv_utf8 (prefix, 0)));
  PUSHs(sv_2mortal (newSVpv_utf8 (destination_directory, 0)));
  PUTBACK;

  count = call_pv (
    "Texinfo::Convert::LaTeX::convert_math_to_images",
    G_LIST);

  SPAGAIN;

  if (count != 2)
    croak ("convert_math_to_images should return 2 items\n");

  collected_commands_sv = POPs;
  result_sv = POPs;

  if (SvOK (result_sv))
    {
      SSize_t i;
      AV *collected_commands_av = (AV *)SvRV (collected_commands_sv);
      HV *result_hv = (HV *)SvRV (result_sv);
      SSize_t collected_elements_nr = AvFILL (collected_commands_av) +1;

      /* we collect math commands to be able to check that the Perl
         element HV from the collected math elements is the same as
         the one collected in Perl and returned by Perl.
         It also allows to set the element in the MATH_ELEMENT_IMAGE.
       */
      static const enum command_id math_commands_list[] = {
        CM_math, CM_displaymath, 0
      };
      CONST_ELEMENT_LIST *math_elements_list
        = collect_commands_in_tree (document->tree, math_commands_list);

      if (math_elements_list->number != (size_t)collected_elements_nr)
        {
          fprintf (stderr, "BUG: math elements collected. C: %zu, Perl: %zd\n",
                            math_elements_list->number, collected_elements_nr);
        }

      result = (MATH_ELEMENTS_IMAGES *)
        non_perl_malloc (sizeof (MATH_ELEMENTS_IMAGES));
      memset (result, 0, sizeof (MATH_ELEMENTS_IMAGES));

      for (i = 0; i < collected_elements_nr; i++)
        {
          SV **command_sv = av_fetch (collected_commands_av, i, 0);
          const ELEMENT *element = math_elements_list->list[i];
          if (command_sv)
            {
              MATH_ELEMENT_IMAGE_LIST *images_elements_list;
              MATH_ELEMENT_IMAGE *element_image;
              HE *result_element_image_he = hv_fetch_ent (result_hv,
                                            *command_sv, 0, 0);
              HV *command_hv = (HV *)SvRV (*command_sv);
              HV *element_hv = (HV *)SvRV ((SV *) element->sv);

              if (command_hv != element_hv)
                {
                  char *msg;
                  xasprintf (&msg, "BUG: %zd: out of sync collected C and Perl"
                                   " elements\n", i);
                  bug (msg);
                  non_perl_free (msg);
                }

              if (element->e.c->cmd == CM_math)
                images_elements_list = &result->math_images;
              else
                images_elements_list = &result->displaymath_images;

              reallocate_(math_element_image) (images_elements_list);
              element_image
                = &images_elements_list->list[images_elements_list->number];
              images_elements_list->number++;

              memset (element_image, 0, sizeof (MATH_ELEMENT_IMAGE));

              element_image->element = element;

              if (result_element_image_he)
                {
                  SV *result_element_image_sv = HeVAL (result_element_image_he);
                  HV *result_element_image_hv
                    = (HV *)SvRV (result_element_image_sv);
                  SV **filename_sv;
                  SV **dpi_sv;
                  SV **depth_sv;
#define FETCH(key) key##_sv = hv_fetch (result_element_image_hv, #key, strlen (#key), 0);
                  FETCH (filename);
                  if (filename_sv)
                    {
                      STRLEN len;
                      char *filename_ret = SvPVutf8 (*filename_sv, len);
                      element_image->filename = non_perl_strndup (filename_ret,
                                                                  len);
                    }

                  FETCH (dpi);
                  if (dpi_sv)
                    element_image->dpi = SvIV (*dpi_sv);
                  FETCH (depth);
                  if (depth_sv)
                    element_image->depth = SvIV (*depth_sv);
#undef FETCH
                }
            }
        }

      destroy_const_element_list (math_elements_list);
    }

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}
