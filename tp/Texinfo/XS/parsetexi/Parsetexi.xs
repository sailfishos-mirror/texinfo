/* Copyright 2014-2024 Free Software Foundation, Inc.

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
/* See comment in XSParagraph.xs for why we #undef free. */
# undef free
#endif
#include "XSUB.h"

#undef context

#include "api.h"
#include "conf.h"
#include "build_perl_info.h"
#include "input.h"
/* for clear_document_errors */
#include "document.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Parser	PACKAGE = Texinfo::Parser

PROTOTYPES: ENABLE

# Except for file paths, strings should be UTF-8 encoded.
# In the declarations below, a comment shows that input string
# is a file path, other input strings should be UTF-8 encoded.
#
# There is no need for the parser to know the file paths
# encodings, they are never decoded/encoded but used as is
# and passed as byte strings.

# Called from Texinfo::XSLoader.pm.  The arguments are not actually used.
# file path, can be in any encoding
int
init (texinfo_uninstalled, builddir)
     int texinfo_uninstalled
     char *builddir = (char *)SvPVbyte_nolen($arg);

void
reset_parser (int debug_output)

# file path, can be in any encoding
int
parse_file(filename, input_file_name, input_directory)
        char *filename = (char *)SvPVbyte_nolen($arg);
        char *input_file_name = (char *)SvPVbyte_nolen($arg);
        char *input_directory = (char *)SvPVbyte_nolen($arg);

int
parse_piece(string, line_nr)
        char *string = (char *)SvPVbyte_nolen($arg);
        int line_nr

int
parse_string(string, line_nr)
        char *string = (char *)SvPVbyte_nolen($arg);
        int line_nr

int
parse_text(string, line_nr)
        char *string = (char *)SvPVbyte_nolen($arg);
        int line_nr

# note that giving optional arguments, like: int no_store=0
# would have been nice, but in that case an undef value cannot be passed
# and leads to a perl warning
SV *
build_document (int document_descriptor, ...)
      PROTOTYPE: $;$
      PREINIT:
        int no_store = 0;
      CODE:
        if (items > 1)
          if (SvOK(ST(1)))
            no_store = SvIV (ST(1));
        RETVAL = build_document (document_descriptor, no_store);
      OUTPUT:
        RETVAL

SV *
get_document (int document_descriptor)

void
clear_document_errors (int document_descriptor)

void
clear_document_parser_errors (int document_descriptor)

void
parser_store_value (name, value)
        char *name = (char *)SvPVbyte_nolen($arg);
        char *value = (char *)SvPVbyte_nolen($arg);

# file path, can be in any encoding
void
parser_add_include_directory (filename)
        char *filename = (char *)SvPVbyte_nolen($arg);

void
parser_clear_expanded_formats ()

void
parser_add_expanded_format (format)
     char *format = (char *)SvPVbyte_nolen($arg);

void
conf_set_show_menu (int i)

void
conf_set_CPP_LINE_DIRECTIVES (int i)

void
conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i)

void
conf_set_MAX_MACRO_CALL_NESTING (int i)

void
parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i)

void
parser_set_input_file_name_encoding (value)
     char *value = (char *)SvPVbyte_nolen($arg);

void
parser_set_locale_encoding (value)
     char *value = (char *)SvPVbyte_nolen($arg);

void
parser_set_documentlanguage_override (value)
     char *value = (char *)SvPVbyte_nolen($arg);

void
parser_set_debug (int i)

void
parser_set_accept_internalvalue (int value)

void
parser_set_restricted (int value)

