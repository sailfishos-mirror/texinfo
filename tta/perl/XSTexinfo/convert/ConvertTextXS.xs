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

/* ALTIMP perl/Texinfo/Convert/TextNonXS.pm */

#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERLIO_NOT_STDIO 0

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
/* clear_error_message_list */
#include "errors.h"
/*
#include "convert_to_texinfo.h"
 */
/* destroy_converter */
#include "converter.h"
#include "get_perl_info.h"
/* pass_errors_to_hv */
#include "build_perl_info.h"
#include "get_converter_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Convert::Text	PACKAGE = Texinfo::Convert::Text

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

# This is almost the same as destroy_converter for Converter::Convert, but
# there is no converter_perl_release method in the Text converter.
# Using get_sv to check if the method exists could be possible, but there
# is no clear way to determine the possible names to check taking into account
# inheritance.  Alternatively, sv_isa could be used or
#                HV *stash = SvSTASH (SvRV (converter_in));
#                class_name = HvNAME (stash);
# to check if the converter is a Text converter.
# As long as the code is short, duplicating is ok.
void
destroy_converter (SV *converter_in)
      PREINIT:
        CONVERTER *self;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (self)
          {
            /* transfer messages set by converter reset after conversion */
            if (self->error_messages.number)
              {
                pass_errors_to_hv (&self->error_messages,
                                   converter_in,
                                   "error_warning_messages");
                clear_error_message_list (&self->error_messages);
              }
            destroy_converter (self);
          }

# return undef if the element counterpart was not found in C data
SV *
XS_convert_tree (SV *options_in, SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
        const ELEMENT *element = 0;
    CODE:
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          element = document->tree;

        if (element)
          RETVAL = convert_element_options_sv_to_text (document, element,
                                                       options_in);
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

