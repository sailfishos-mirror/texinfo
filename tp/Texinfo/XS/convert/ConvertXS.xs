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
#include "document.h"

MODULE = Texinfo::Convert::ConvertXS	PACKAGE = Texinfo::Convert::ConvertXS

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

SV *
plain_texinfo_convert (converter, document_in)
        SV *converter
        SV *document_in
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          {
            char *result = plain_texinfo_convert (document);
            RETVAL = newSVpv (result, strlen(result));
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newRV_inc (newSV(0));
    OUTPUT:
        RETVAL


SV *
plain_texinfo_convert_tree (converter, tree_in)
        SV *converter
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
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newRV_inc (newSV(0));
    OUTPUT:
        RETVAL

SV *
text_convert (converter, document_in)
        SV *converter
        SV *document_in
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_document_document (document_in, 0);
        if (document)
          {
            char *result = text_convert (document);
            RETVAL = newSVpv (result, strlen(result));
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newRV_inc (newSV(0));
    OUTPUT:
        RETVAL

# Note that specific Convert::Text options hash passed is in converter,
# so it should be possible to setup C options and pass to text_convert
SV *
text_convert_tree (converter, tree_in)
        SV *converter
        SV *tree_in
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            char *result = text_convert (document);
            RETVAL = newSVpv (result, strlen(result));
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newRV_inc (newSV(0));
    OUTPUT:
        RETVAL

