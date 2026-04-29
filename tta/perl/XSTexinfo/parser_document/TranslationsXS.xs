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

/* ALTIMP perl/Texinfo/TranslationsNonXS.pm */

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "xs_utils.h"
#include "translations.h"
/* for newSVpv_utf8 */
#include "build_perl_info.h"
/* for get_lang_info_hv */
#include "get_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Translations	PACKAGE = Texinfo::Translations

PROTOTYPES: ENABLE

void
setup_output_strings (localesdir, strings_textdomain="texinfo_document")
       char *localesdir = (char *)SvPVbyte_nolen($arg);
       char *strings_textdomain;
      CODE:
       setup_output_strings_translations (localesdir,
                                          strings_textdomain);

SV *
cache_translate_string (string, SV *lang_translations, SV *translation_context_sv=0)
      const char *string = (char *)SvPVutf8_nolen($arg);
    PREINIT:
        const char *result = 0;
        AV *av;
     CODE:
        if (SvOK (lang_translations))
          {
            const char *translated_context_string = 0;
            const LANG_TRANSLATION *lang_translation = 0;

            AV *lang_translations_av = (AV *) SvRV (lang_translations);
            SV **lang_info_sv = av_fetch (lang_translations_av, 0, 0);

            if (lang_info_sv && SvOK (*lang_info_sv))
              {
                HV *lang_info_hv = (HV *) SvRV (*lang_info_sv);
                DOCUMENT_LANG_INFO *info = get_lang_info_hv (lang_info_hv);

                lang_translation
                      = set_lang_info_translation (
                                &converters_translation_cache, info,
                                TXI_CONVERT_STRINGS_NR);
              }

            if (lang_translation)
              {
                const TRANSLATION_TREE *translation_cache_result;

                if (translation_context_sv
                    && SvOK (translation_context_sv))
                  translated_context_string
                    = SvPVutf8_nolen (translation_context_sv);
                translation_cache_result
                   = cache_translate_string (string, lang_translation,
                                             translated_context_string);
                result = translation_cache_result->translation;
              }
          }
        av = newAV ();
        if (result)
          av_push (av, newSVpv_utf8 (result, 0));
        else
          av_push (av, newSV (0));
        RETVAL = newRV_noinc ((SV *) av);
    OUTPUT:
         RETVAL

