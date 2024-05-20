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
     char *builddir = (char *)SvPVbyte_nolen ($arg);

void
reset_parser (int debug_output)

# file path, can be in any encoding
int
parse_file (filename, input_file_name, input_directory)
        char *filename = (char *)SvPVbyte_nolen ($arg);
        char *input_file_name = (char *)SvPVbyte_nolen ($arg);
        char *input_directory = (char *)SvPVbyte_nolen ($arg);

int
parse_piece (string, line_nr)
        char *string = (char *)SvPVutf8_nolen ($arg);
        int line_nr

int
parse_string (string, line_nr)
        char *string = (char *)SvPVutf8_nolen ($arg);
        int line_nr

int
parse_text (string, line_nr)
        char *string = (char *)SvPVutf8_nolen ($arg);
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
pass_document_parser_errors_to_registrar (int document_descriptor, SV *parser_sv)

void
parser_store_values (SV *values)
      CODE:
        parser_reset_values_conf ();
        if (SvOK (values))
          {
            I32 i;
            HV *values_hv = (HV *)SvRV (values);
            I32 hv_number = hv_iterinit (values_hv);

            for (i = 0; i < hv_number; i++)
              {
                HE *next = hv_iternext (values_hv);
                SV *flag_sv = hv_iterkeysv (next);
                char *key = SvPVutf8_nolen (flag_sv);
                SV *value_sv = hv_iterval (values_hv, next);
                if (value_sv && SvOK (value_sv))
                  {
                    char *value_text = SvPVutf8_nolen (value_sv);
                    parser_store_value (key, value_text);
                  }
              }
          }

void
parser_store_INCLUDE_DIRECTORIES (SV *directories)
      CODE:
        conf_clear_INCLUDE_DIRECTORIES ();
        if (SvOK (directories))
          {
            SSize_t i;
            AV *directories_av = (AV *)SvRV (directories);
            SSize_t directories_nr = av_top_index (directories_av) +1;

            for (i = 0; i < directories_nr; i++)
              {
                SV **directory_sv = av_fetch (directories_av, i, 0);
                if (directory_sv && SvOK (*directory_sv))
                  {
     /*  the directories from the command line or the input file name
         are already byte strings (or ascii).  The encoding was detected
         as COMMAND_LINE_ENCODING, but it is not used in the XS parser. */
                    char *directory = SvPVbyte_nolen (*directory_sv);
                    conf_add_include_directory (directory);
                  }
              }
          }

void
parser_store_EXPANDED_FORMATS (SV *expanded_formats)
      CODE:
        conf_clear_expanded_formats ();
        if (SvOK (expanded_formats))
          {
            SSize_t i;
            AV *expanded_formats_av = (AV *)SvRV (expanded_formats);
            SSize_t expanded_formats_nr = av_top_index (expanded_formats_av) +1;

            for (i = 0; i < expanded_formats_nr; i++)
              {
                SV **format_sv = av_fetch (expanded_formats_av, i, 0);
                if (format_sv && SvOK (*format_sv))
                  {
                    char *format = SvPVutf8_nolen (*format_sv);
                    conf_add_expanded_format (format);
                  }
              }
          }

void
conf_set_show_menu (int i)

void
conf_set_CPP_LINE_DIRECTIVES (int i)

void
conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i)

void
conf_set_MAX_MACRO_CALL_NESTING (int i)

int
conf_set_NO_INDEX (int i)

int
conf_set_NO_USER_COMMANDS (int i)

void
parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i)

void
parser_set_input_file_name_encoding (value)
     char *value = (char *)SvPVutf8_nolen ($arg);

void
parser_set_locale_encoding (value)
     char *value = (char *)SvPVutf8_nolen ($arg);

void
conf_set_documentlanguage (value)
     char *value = (char *)SvPVutf8_nolen ($arg);

int
conf_set_DEBUG (int i)

void
parser_set_accept_internalvalue (int value)


