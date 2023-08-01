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

#include "plain_texinfo.h"
#include "document.h"

MODULE = Texinfo::Convert::ConvertXS	PACKAGE = Texinfo::Convert::ConvertXS

# ?
PROTOTYPES: ENABLE

SV *
plain_texinfo_convert (converter, document_in)
        HV *converter
        HV *document_in
    PREINIT:
        char *result;
        SV** document_descriptor_sv;
        DOCUMENT *document = 0;
        int document_descriptor;
    CODE:
        document_descriptor_sv = hv_fetch (document_in, "document_descriptor",
                                           strlen ("document_descriptor"), 0);
        /* FIXME warning/error if not found? */
        if (document_descriptor_sv)
          {
            document_descriptor = SvIV (*document_descriptor_sv);
            document = retrieve_document (document_descriptor);
          }
        result = plain_texinfo_convert (document);
        RETVAL = newSVpv (result, strlen(result));
        SvUTF8_on (RETVAL);
    OUTPUT:
        RETVAL

