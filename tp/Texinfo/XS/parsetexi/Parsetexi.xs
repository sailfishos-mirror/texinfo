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

#include <stddef.h>

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
#include "ppport.h"

#undef context

#include "api.h"
#include "conf.h"
/* for messages_and_encodings_setup */
#include "utils.h"
#include "parser_conf.h"
#include "build_perl_info.h"
#include "get_perl_info.h"
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

# Called once from Texinfo::XSLoader.pm at loading time.
# File paths (not used) are byte strings and can be in any encoding.
int
init (int texinfo_uninstalled, SV *converterdatadir, SV *tp_builddir, SV *top_srcdir)
    CODE:
        messages_and_encodings_setup ();
        RETVAL = 1;
    OUTPUT:
        RETVAL

void
reset_parser (int debug_output)

void
register_parser_conf (SV *parser)
    PREINIT:
        HV *hv_in;
        const char *key = "parser_conf_descriptor";
        const PARSER_CONF *parser_conf;
    CODE:
        hv_in = (HV *)SvRV (parser);
        parser_conf = register_conf ();
        /* NOTE unlikely IV overflow if PERL_QUAD_MAX < SIZE_MAX */
        hv_store (hv_in, key, strlen (key),
                  newSViv ((IV) parser_conf->descriptor), 0);

# the file is already a byte string, taken as is from the command line.
# The encoding was detected as COMMAND_LINE_ENCODING.
SV *
parse_texi_file (SV *parser_sv, input_file_path)
        char *input_file_path = (char *)SvPVbyte_nolen ($arg);
    PREINIT:
        size_t document_descriptor = 0;
      CODE:
        if (!SvOK(parser_sv))
          RETVAL = newSV (0);
        else
          {
            int status;
            apply_sv_parser_conf (parser_sv);
            document_descriptor = parse_file (input_file_path, &status);
            if (status)
              /* if the input file could not be opened */
              {
                pass_document_parser_errors_to_registrar (document_descriptor,
                                                          parser_sv);
                remove_document_descriptor (document_descriptor);
                RETVAL = newSV (0);
              }
            else
              {
                RETVAL
                 = get_or_build_document (parser_sv, document_descriptor, 0);
              }
          }
      OUTPUT:
        RETVAL

# Used in tests under tp/t.
SV *
parse_texi_piece (SV *parser_sv, SV *string_sv, ...)
    PREINIT:
        size_t document_descriptor = 0;
        int no_store = 0;
        int line_nr = 1;
      CODE:
        if (!SvOK(string_sv) || !SvOK(parser_sv))
          RETVAL = newSV (0);
        else
          {
            char *string = (char *)SvPVutf8_nolen (string_sv);
            if (items > 2 && SvOK(ST(2)))
              line_nr = SvIV (ST(2));
            if (items > 3 && SvOK(ST(3)))
              no_store = SvIV (ST(3));
            apply_sv_parser_conf (parser_sv);
            document_descriptor = parse_piece (string, line_nr);
            RETVAL = get_or_build_document (parser_sv, document_descriptor,
                                            no_store);
          }
      OUTPUT:
        RETVAL

SV *
parse_texi_line (SV *parser_sv, SV *string_sv, ...)
    PREINIT:
        size_t document_descriptor = 0;
        int no_store = 0;
        int line_nr = 1;
      CODE:
        if (!SvOK(string_sv) || !SvOK(parser_sv))
          RETVAL = newSV (0);
        else
          {
            char *string = (char *)SvPVutf8_nolen (string_sv);
            SV *document_sv;
            if (items > 2 && SvOK(ST(2)))
              line_nr = SvIV (ST(2));
            if (items > 3 && SvOK(ST(3)))
              no_store = SvIV (ST(3));
            apply_sv_parser_conf (parser_sv);
            document_descriptor = parse_string (string, line_nr);
            document_sv = get_or_build_document (parser_sv, document_descriptor,
                                                 no_store);
            RETVAL = document_tree (document_sv, 0);
          }
      OUTPUT:
        RETVAL

# Used in tests under tp/t.
SV *
parse_texi_text (SV *parser_sv, SV *string_sv, ...)
    PREINIT:
        size_t document_descriptor = 0;
        int line_nr = 1;
      CODE:
        if (!SvOK(string_sv) || !SvOK(parser_sv))
          RETVAL = newSV (0);
        else
          {
            char *string = (char *)SvPVutf8_nolen (string_sv);
            if (items > 2 && SvOK(ST(2)))
              line_nr = SvIV (ST(2));
            apply_sv_parser_conf (parser_sv);
            document_descriptor = parse_text (string, line_nr);
            RETVAL = get_or_build_document (parser_sv, document_descriptor, 0);
          }
      OUTPUT:
        RETVAL

void
parser_store_values (SV *values)
      CODE:
        parser_conf_reset_values ();
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
                    parser_conf_add_value (key, value_text);
                  }
              }
          }

void
parser_store_INCLUDE_DIRECTORIES (SV *directories)
      CODE:
        parser_conf_clear_INCLUDE_DIRECTORIES ();
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
         as COMMAND_LINE_ENCODING. */
                    char *directory = SvPVbyte_nolen (*directory_sv);
                    parser_conf_add_include_directory (directory);
                  }
              }
          }

void
parser_store_EXPANDED_FORMATS (SV *expanded_formats)
      CODE:
        parser_conf_clear_expanded_formats ();
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
                    parser_conf_add_expanded_format (format);
                  }
              }
          }

void
parser_conf_set_show_menu (int i)

void
parser_conf_set_CPP_LINE_DIRECTIVES (int i)

void
parser_conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i)

void
parser_conf_set_MAX_MACRO_CALL_NESTING (int i)

int
parser_conf_set_NO_INDEX (int i)

int
parser_conf_set_NO_USER_COMMANDS (int i)

void
parser_conf_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i)

void
parser_conf_set_INPUT_FILE_NAME_ENCODING (value)
        char *value = (char *)SvPVutf8_nolen ($arg);

void
parser_conf_set_LOCALE_ENCODING (value)
        char *value = (char *)SvPVutf8_nolen ($arg);

void
parser_conf_set_COMMAND_LINE_ENCODING (value)
        char *value = (char *)SvPVutf8_nolen ($arg);

void
parser_conf_set_documentlanguage (value)
        char *value = (char *)SvPVutf8_nolen ($arg);

int
parser_conf_set_DEBUG (int i)

void
parser_conf_set_accept_internalvalue (int value)

# two possibilities
#   - errors should be in the last parsed document->parser_error_messages
#   - errors were put in a registrar key in the parser
void
errors (SV *parser_sv)
    PREINIT:
        SV *errors_warnings_sv = 0;
        SV *error_nrs_sv = 0;
        SV **last_document_descriptor_sv;
        HV *parser_hv;
    PPCODE:
        parser_hv = (HV *)SvRV (parser_sv);
        last_document_descriptor_sv = hv_fetch (parser_hv,
          "last_document_descriptor", strlen ("last_document_descriptor"), 0);

        if (last_document_descriptor_sv)
          {
            AV *av;
            size_t document_descriptor = SvIV (*last_document_descriptor_sv);
            DOCUMENT *document = retrieve_document (document_descriptor);
            if (document)
              {
                ERROR_MESSAGE_LIST *error_messages
                  = &document->parser_error_messages;
                av = build_errors (error_messages->list,
                                   error_messages->number);
                error_nrs_sv = newSViv (error_messages->error_nrs);
              }
            else
              {
    /* This could theoretically happen if the document is destroyed before
       getting the parser errors */
                av = newAV ();
                error_nrs_sv = newSViv (0);
              }
            errors_warnings_sv = newRV_noinc ((SV *) av);
          }
        else
          {
            SV **registrar_errors_warnings_sv;
            SV **registrar_error_nrs_sv;
            AV *empty_errors_warnings = newAV ();
            SV **registrar_sv = hv_fetch (parser_hv, "registrar",
                                          strlen ("registrar"), 0);
            HV *registrar_hv = (HV *)SvRV (*registrar_sv);

            registrar_errors_warnings_sv
                    = hv_fetch (registrar_hv, "errors_warnings",
                                           strlen ("errors_warnings"), 0);
            errors_warnings_sv = *registrar_errors_warnings_sv;
            SvREFCNT_inc (errors_warnings_sv);
            registrar_error_nrs_sv = hv_fetch (registrar_hv, "error_nrs",
                                               strlen ("error_nrs"), 0);
            error_nrs_sv = *registrar_error_nrs_sv;
            SvREFCNT_inc (error_nrs_sv);

            /* registrar->clear() */
            hv_store (registrar_hv, "errors_warnings",
                      strlen ("errors_warnings"),
                      newRV_noinc ((SV *) empty_errors_warnings), 0);
            hv_store (registrar_hv, "errors_nrs",
                      strlen ("errors_nrs"), newSViv (0), 0);
          }

        EXTEND(SP, 2);
        PUSHs(sv_2mortal(errors_warnings_sv));
        PUSHs(sv_2mortal(error_nrs_sv));

