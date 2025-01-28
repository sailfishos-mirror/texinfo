/* Copyright 2023-2025 Free Software Foundation, Inc.

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

#include <stddef.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "options_data.h"
#include "tree_types.h"
#include "document_types.h"
/* non_perl_* */
#include "xs_utils.h"
/* for messages_and_encodings_setup */
#include "utils.h"
#include "customization_options.h"
/* for clear_error_message_list */
#include "errors.h"
#include "document.h"
#include "translations.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */


MODULE = Texinfo::DocumentXS		PACKAGE = Texinfo::DocumentXS

PROTOTYPES: ENABLE

# Called from Texinfo::XSLoader.pm.
# File paths are byte strings and can be in any encoding.
int
init (SV *texinfo_uninstalled_sv, SV *converterdatadir_sv, SV *tp_builddir_sv, SV *top_srcdir_sv)
      PREINIT:
        const char *tp_builddir = 0;
        const char *top_srcdir = 0;
        const char *converterdatadir = 0;
        int texinfo_uninstalled = 0;
      CODE:
        if (SvOK (texinfo_uninstalled_sv))
          texinfo_uninstalled = SvIV (texinfo_uninstalled_sv);
        if (texinfo_uninstalled)
          {
            if (SvOK (tp_builddir_sv))
              tp_builddir = SvPVbyte_nolen (tp_builddir_sv);
            if (SvOK (top_srcdir_sv))
              top_srcdir = SvPVbyte_nolen (top_srcdir_sv);
          }
        else
          converterdatadir = SvPVbyte_nolen (converterdatadir_sv);

        /* needed by the parser */
        messages_and_encodings_setup ();

        setup_texinfo_main (texinfo_uninstalled, converterdatadir,
                            tp_builddir, top_srcdir);
        RETVAL = 1;
    OUTPUT:
        RETVAL

# More related to translations than to the Texinfo Document, but we do not
# to add another XS file for only one function.
# There is no calling code that sets use_external_translate_string.
void
configure_output_strings_translations (localesdir, strings_textdomain="texinfo_document", int use_external_translate_string=0)
       char *localesdir = (char *)SvPVbyte_nolen($arg);
       char *strings_textdomain;
      CODE:
       configure_output_strings_translations (localesdir,
                                              strings_textdomain,
                                              use_external_translate_string);

# This XS interface is rarely used, as, in general, a document is available
# and document_tree can be used instead.
# No code call this interface with no_store set.
SV *
rebuild_tree (SV *tree_in, ...)
      PROTOTYPE: $;$
      PREINIT:
        int no_store = 0;
        DOCUMENT *document = 0;
      CODE:
        if (items > 1 && SvOK(ST(1)))
          no_store = SvIV (ST(1));

        document = get_sv_tree_document (tree_in, "rebuild_tree");
        if (document)
          {
       /* if no_store is set, get the reference on the tree HV before calling
          build_document, as the tree is gonna be destroyed.  This requires
          that the document the tree comes from to have already been built to
          Perl */

            ELEMENT *tree = document->tree;
            if (no_store)
              RETVAL = newRV_inc ((SV *) tree->hv);

            build_document (document->descriptor, no_store);
            if (!no_store)
              RETVAL = newRV_inc ((SV *) tree->hv);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

void
remove_document_descriptor (size_t document_descriptor)

void
remove_document (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        /* it is ok not to found a document if there is no
           document descriptor */
        document = get_sv_document_document (document_in, 0);
        if (document)
          remove_document_descriptor (document->descriptor);

void
document_errors (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
        SV *errors_warnings_sv = 0;
        SV *error_nrs_sv = 0;
        ERROR_MESSAGE_LIST *error_messages = 0;
     PPCODE:
        /* if XS is used, a document should be found.  It could
           also have been possible to abort if a document is not
           found.
         */
        document = get_sv_document_document (document_in,
                                             "document_errors");
        if (document)
          error_messages = &document->error_messages;

        pass_errors_to_registrar (error_messages, document_in,
                                  &errors_warnings_sv,
                                  &error_nrs_sv);
        clear_error_message_list (error_messages);

        /* NOTE this is incorrect, as the callers do not expect
           undef errors_warnings_sv.  This should not happen, however,
           as registrar objects are always associated to documents 
           and the corresponding array reference should always be found
         */
        if (!errors_warnings_sv)
          errors_warnings_sv = newSV (0);
        else
          SvREFCNT_inc (errors_warnings_sv);
        if (!error_nrs_sv)
          error_nrs_sv = newSV (0);
        else
          SvREFCNT_inc (error_nrs_sv);

        EXTEND(SP, 2);
        PUSHs(sv_2mortal(errors_warnings_sv));
        PUSHs(sv_2mortal(error_nrs_sv));

void
document_parser_errors (SV *document_in)
    PREINIT:
        DOCUMENT *document = 0;
        SV *errors_warnings_sv = 0;
        SV *error_nrs_sv = 0;
        AV *av;
     PPCODE:
        /* if XS is used, a document should be found.  It could
           also have been possible to abort if a document is not
           found.
         */
        document = get_sv_document_document (document_in,
                                             "document_parser_errors");
        if (document)
          {
            ERROR_MESSAGE_LIST *error_messages
                  = &document->parser_error_messages;
            av = build_errors (error_messages->list,
                               error_messages->number);
            error_nrs_sv = newSViv (error_messages->error_nrs);
            clear_error_message_list (error_messages);
          }
        else
          {
            /* Should never happen */
            av = newAV ();
            error_nrs_sv = newSViv (0);
          }
        errors_warnings_sv = newRV_noinc ((SV *) av);

        EXTEND(SP, 2);
        PUSHs(sv_2mortal(errors_warnings_sv));
        PUSHs(sv_2mortal(error_nrs_sv));

void
register_document_options (SV *document_in, SV *sv_options_in)
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "set_document_options");
        if (document)
          {
            OPTION **sorted_options;
            OPTIONS *options = init_copy_sv_options (sv_options_in, 0, 0,
                                                     &sorted_options);
            register_document_options (document, options, sorted_options);
          }

SV *
document_get_conf (SV *document_in, option_name)
      const char *option_name = (char *)SvPVbyte_nolen($arg);
 PREINIT:
      DOCUMENT *document = 0;
    CODE:
      document = get_sv_document_document (document_in,
                                           "document_get_conf");
      if (document && document->sorted_options)
        {
          const OPTION *option
            = find_option_string (document->sorted_options, option_name);
          if (option)
            RETVAL = build_sv_option (option, 0);
          else
            RETVAL = newSV (0);
        }
      else
        RETVAL = newSV (0);
  OUTPUT:
      RETVAL

void
set_document_global_info (SV *document_in, char *key, SV *value_sv)
      PREINIT:
        DOCUMENT *document = 0;
      CODE:
        document = get_sv_document_document (document_in,
                                             "set_document_global_info");
        if (document)
          {
            document->modified_information |= F_DOCM_global_info;

            if (!strcmp (key, "input_file_name"))
              {
                char *value = (char *)SvPVbyte_nolen(value_sv);
                if (document->global_info.input_file_name)
                  {
                    fprintf (stderr,
                        "BUG: %zu: reset input_file_name '%s' -> '%s'\n",
                        document->descriptor,
                        document->global_info.input_file_name, value);
                    non_perl_free (document->global_info.input_file_name);
                  }
                document->global_info.input_file_name
                  = non_perl_strdup (value);
              }
            else
              {
                add_other_global_info_string (
                          &document->global_info.other_info,
                          key, (char *)SvPVutf8_nolen(value_sv));
              }
          }

SV *
document_tree (SV *document_in, int handler_only=0)

SV *
document_global_information (SV *document_in)

SV *
document_indices_information (SV *document_in)

SV *
document_global_commands_information (SV *document_in)

SV *
document_labels_information (SV *document_in)

SV *
document_nodes_list (SV *document_in)

SV *
document_sections_list (SV *document_in)

SV *
document_floats_information (SV *document_in)

SV *
document_internal_references_information (SV *document_in)

SV *
document_labels_list (SV *document_in)

# customization_information
void
setup_indices_sort_strings (SV *document_in, ...)
    PROTOTYPE: $$
    PREINIT:
        DOCUMENT *document = 0;
     CODE:
        document = get_sv_document_document (document_in,
                                             "setup_indices_sort_strings");
        if (document)
          document_indices_sort_strings (document, &document->error_messages,
                                         document->options);

# customization_information
SV *
indices_sort_strings (SV *document_in, ...)
    PROTOTYPE: $$
    PREINIT:
        DOCUMENT *document = 0;
        const INDICES_SORT_STRINGS *indices_sort_strings = 0;
        SV *result_sv = 0;
        const char *key = "index_entries_sort_strings";
     CODE:
        document = get_sv_document_document (document_in,
                                             "indices_sort_strings");
        if (document)
          indices_sort_strings
           = document_indices_sort_strings (document, &document->error_messages,
                                             document->options);

        if (indices_sort_strings)
          {
            HV *document_hv = (HV *) SvRV (document_in);
            /* build Perl data only if needed and cache the built Perl
               data in the same hash as done in overriden Perl code */
            if (document->modified_information & F_DOCM_indices_sort_strings)
              {
                SV *indices_information_sv
                 = document_indices_information (document_in);
                if (indices_information_sv)
                  {
                    HV *indices_information_hv
                        = (HV *) SvRV (indices_information_sv);
                    HV *indices_sort_strings_hv
                     = build_indices_sort_strings (indices_sort_strings,
                                                   indices_information_hv);

                    result_sv = newRV_inc ((SV *) indices_sort_strings_hv);
                    hv_store (document_hv, key, strlen (key), result_sv, 0);
                    document->modified_information
                                &= ~F_DOCM_indices_sort_strings;
                  }
                /* warn if not found? */
              }
            else
              { /* retrieve previously stored result */
                SV **sv_stored = hv_fetch (document_hv, key, strlen (key), 0);
                if (sv_stored && SvOK (*sv_stored))
                  result_sv = *sv_stored;
                /* error out if not found?  Or rebuild? */
              }
          }
        if (result_sv)
          {
            SvREFCNT_inc (result_sv);
            RETVAL = result_sv;
          }
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

