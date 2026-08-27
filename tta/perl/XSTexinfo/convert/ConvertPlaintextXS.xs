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

/* ALTIMP perl/Texinfo/Convert/Plaintext.pm */

#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "text.h"
#include "converter_types.h"
/* for bug */
#include "base_utils.h"
/* for non_perl_* */
#include "xs_utils.h"
/* for xasprintf */
#include "utils.h"
#include "converter.h"
#include "convert_to_plaintext.h"
#include "build_perl_info.h"
#include "get_perl_info.h"
#include "get_converter_perl_info.h"

MODULE = Texinfo::Convert::Plaintext	PACKAGE = Texinfo::Convert::Plaintext

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

# C data initialization independent of customization and of Perl
# default variables.
# Let C code initialize the library if called from C (mandatory_xs_sv set).
int
init (SV *, SV *, SV *, SV *, SV *mandatory_xs_sv)
      CODE:
        if (!SvOK (mandatory_xs_sv) || !SvIV (mandatory_xs_sv))
          plaintext_format_setup (COF_plaintext);
        RETVAL = 1;
    OUTPUT:
        RETVAL

SV *        
converter (SV *class, SV *conf_sv=0)
      PREINIT:
        CONVERTER *self;
        CONVERTER_INITIALIZATION_INFO *user_conf;
        HV *converter_hv;
        const char *key = "converter_descriptor";
        HV *hv_stash;
        SV *converter_sv;
        const char *converter_perl_class_name;
        const char *class_name;
      CODE:
        user_conf = get_converter_info_from_sv (conf_sv, 0, 0);
        self = converter_converter (COF_plaintext, user_conf);
        if (user_conf)
          destroy_converter_initialization_info (user_conf);

        class_name = SvPV_nolen (class);
        converter_perl_class_name
          = converter_format_perl_class_name (self->format);
        if (strcmp (class_name, converter_perl_class_name))
          {
            fprintf (stderr,
                     "BUG: plaintext class %s and format class %s differ\n",
                     class_name, converter_perl_class_name);
          }

        converter_hv = newHV ();
        hv_store (converter_hv, key, strlen (key),
                  newSViv ((IV)self->converter_descriptor), 0);
        /* TODO retain a reference to HV too, by calling newRV_inc instead? */
        converter_sv = newRV_noinc ((SV *) converter_hv);
        hv_stash = gv_stashpv (converter_perl_class_name, GV_ADD);
        sv_bless (converter_sv, hv_stash);
        self->sv = converter_sv;

        /* hold a reference to the converter as long as we could access
           it, in case there is nothing else holding a reference, for
           instance when the converter is created by a call to Perl
           method from C */
        SvREFCNT_inc ((SV *) self->sv);

        RETVAL = converter_sv;
    OUTPUT:
        RETVAL

# handle only the case of calling from a class, calling from a converter
# should not happen, as the calling function is overriden
SV *
converter_defaults (SV *converter_in, SV *conf_sv=0)
      PREINIT:
        CONVERTER_INITIALIZATION_INFO *conf;
        CONVERTER_INITIALIZATION_INFO *format_defaults;
        const char *class_name = 0;
        enum converter_format converter_format;
      CODE:
        if (SvOK (converter_in))
          {
            if (SvROK (converter_in))
              {
                HV *converter_hv = (HV *) SvRV (converter_in);
                HV *stash = SvSTASH ((SV *) converter_hv);
                char *message;
                class_name = HvNAME (stash);
                
                xasprintf (&message, "unexpected converter %p: %s",
                           converter_hv, class_name);
                bug (message);
                free (message);
              }
            else
              class_name = SvPV_nolen (converter_in);
          }

        converter_format
          = find_perl_converter_class_converter_format (class_name);

        conf = get_converter_info_from_sv (conf_sv, 0, 0);

        format_defaults = converter_defaults (converter_format, conf);

        if (conf)
          destroy_converter_initialization_info (conf);
       /* no converter, return format_defaults built to Perl for the class */
       /* NOTE we only return options, not other information that could be in
          CONVERTER_INITIALIZATION_INFO, as when called on a class, it
          is what is expected */
        RETVAL = build_sv_options_from_options_list (&format_defaults->conf);
        destroy_converter_initialization_info (format_defaults);
    OUTPUT:
        RETVAL

SV *
output (SV *converter_in, SV *document_in)
      PREINIT:
        CONVERTER *self;
        DOCUMENT *document;
        TEXT result;
      CODE:
        document = get_converter_and_document_from_sv (converter_in,
                                                     document_in, &self);
        result = plaintext_output (self, document);

        build_output_files_information (converter_in,
                                        &self->output_files_information);

        /* consider that the files information is now a responsibility of
           Perl */

        clear_output_files_information (&self->output_files_information);

        if (result.text)
          {
            RETVAL = newSVpv_utf8 (result.text, result.end);
            non_perl_free (result.text);
          }
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
convert (SV *converter_in, SV *document_in)
      PREINIT:
        DOCUMENT *document;
        CONVERTER *self;
        TEXT result;
      CODE:
        document = get_converter_and_document_from_sv (converter_in,
                                                     document_in, &self);

        result = plaintext_convert (self, document);

        if (result.text)
          {
            RETVAL = newSVpv_utf8 (result.text, result.end);
            non_perl_free (result.text);
          }
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL


