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

#include "get_perl_info.h"
#include "convert_plain_texinfo.h"
#include "convert_text.h"
#include "convert_to_text.h"
#include "document.h"

MODULE = Texinfo::Convert::ConvertXS	PACKAGE = Texinfo::Convert::ConvertXS

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

SV *
plain_texinfo_convert_tree (tree_in)
        SV *tree_in
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            char *result = plain_texinfo_convert (document);
            RETVAL = newSVpv (result, strlen(result));
            free (result);
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

SV *
text_convert (text_options_in, document_in)
        SV *text_options_in
        SV *document_in
    PREINIT:
        DOCUMENT *document = 0;
        TEXT_OPTIONS *text_options = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        text_options = copy_sv_options_for_convert_text (text_options_in);
        if (document)
          {
            char *result = text_convert (document, text_options);
            RETVAL = newSVpv (result, strlen(result));
            free (result);
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

# unused argument is used in the overriden function if XS is not used
SV *
text_convert_tree (text_options_in, tree_in, unused=0)
        SV *text_options_in
        SV *tree_in
    PREINIT:
        DOCUMENT *document = 0;
        TEXT_OPTIONS *text_options = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        text_options = copy_sv_options_for_convert_text (text_options_in);
        if (document)
          {
            /* text_options is destroyed in text_convert */
            char *result = text_convert (document, text_options);
            RETVAL = newSVpv (result, strlen(result));
            free (result);
            SvUTF8_on (RETVAL);
          }
        else
          {
            destroy_text_options (text_options);
            RETVAL = newSV(0);
          }
    OUTPUT:
        RETVAL

