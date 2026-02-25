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

/* ALTIMP perl/Texinfo/Convert/Converter.pm */

#include <stdlib.h>
#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERLIO_NOT_STDIO 0

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "command_ids.h"
#include "option_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "builtin_commands.h"
/* message_list_document_error message_list_document_formatted_message
   wipe_error_message_list */
#include "errors.h"
/*
#include "convert_to_texinfo.h"
 */
/* for command_location_names ... */
#include "utils.h"
/* find_option_string */
#include "customization_options.h"
/* find_identifier_target */
#include "targets.h"
#include "converter.h"
#include "get_perl_info.h"
#include "build_perl_info.h"
#include "get_converter_perl_info.h"
/* call_object_converter_perl_release */
#include "call_conversion_perl.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Convert::Converter	PACKAGE = Texinfo::Convert::Converter

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

# Called from Texinfo::XSLoader.pm.
# File paths are byte strings and can be in any encoding.
# The paths are not of interest here, but we know that init is called
# early, which is what we want.
int
init (SV *, SV *, SV *, SV *)
      CODE:
        setup_converter_generic ();
        RETVAL = 1;
    OUTPUT:
        RETVAL
      

void
_generic_converter_init (SV *converter_in, SV *format_defaults_sv, SV *conf_sv=0)
      PREINIT:
        CONVERTER *self;
        CONVERTER_INITIALIZATION_INFO *format_defaults;
        CONVERTER_INITIALIZATION_INFO *conf;
        HV *converter_hv;
        HV *stash;
        const char *class_name;
      CODE:
        stash = SvSTASH (SvRV (converter_in));
        class_name = HvNAME (stash);

        self = get_or_create_sv_converter (converter_in, class_name);
        converter_hv = (HV *)SvRV (converter_in);
        self->sv = converter_in;
        /* hold a reference to the converter as long as we could access
           it, in case there is nothing else holding a reference, for
           instance when the converter is created by a call to Perl
           method from C */
        SvREFCNT_inc ((SV *) self->sv);

        format_defaults = get_converter_info_from_sv (format_defaults_sv,
                                                      class_name, self);
        /* if format_defaults_sv is undef, it should mean that format_defaults
           has been registered in the C converter */
        if (!format_defaults)
          {
            format_defaults = self->format_defaults;
            self->format_defaults = 0;
          }

        conf = get_converter_info_from_sv (conf_sv, class_name, self);

        set_converter_init_information (self, format_defaults, conf);

        /* Now pass information back to Perl */
        if (format_defaults)
          {
    /* set directly Perl converter keys with non 'valid' customization info */
    /* Nothing to be passed here, as all the information is passed to C and
       returned to Perl in pass_generic_converter_to_converter_sv */
            set_non_customization_sv (converter_hv, format_defaults_sv,
                                &format_defaults->non_valid_customization);
            destroy_converter_initialization_info (format_defaults);
          }

        if (conf)
          {
    /* set directly Perl converter keys with non 'valid' customization info */
    /* Nothing to be passed here, as all the information is passed to C and
       returned to Perl in pass_generic_converter_to_converter_sv */
            set_non_customization_sv (converter_hv, conf_sv,
                              &conf->non_valid_customization);

            destroy_converter_initialization_info (conf);
          }

       /*
           fprintf (stderr, "XS|CONVERTER Init from SV: %zu; \n",
                    self->converter_descriptor);
        */

        pass_generic_converter_to_converter_sv (converter_in, self);

# not called for HTML as the Perl function is called from overriden functions.
void
set_document (SV *converter_in, SV *document_in)
      PREINIT:
        CONVERTER *self;
      CODE:
        pass_document_sv_to_converter_sv (converter_in, document_in);

        /* if a converter is properly initialized, the XS converter should
           always be found when XS is used */
        self = converter_set_document_from_sv (converter_in, document_in);

        pass_converter_text_options (self, converter_in);

int
set_conf (SV *converter_in, option_name, SV *value)
        const char *option_name = (char *)SvPVbyte_nolen($arg);
      PREINIT:
        CONVERTER *self;
        int status = 0;
      CODE:
        self = get_sv_converter (converter_in, "set_conf");
        if (self)
          {
            int get_sv_status;
            OPTION *option
              = find_option_string (self->sorted_options, option_name);

            if (!option)
              message_list_document_error (&self->error_messages,
                                           self->conf, 0,
                                  "unknown customization variable: %s",
                                   option_name);
              /*
              croak_nocontext ("XS: BUG: set_conf: unknown option %s\n",
                               option_name);
               */
            else
              {
                get_sv_status = get_sv_option (option, value, 0,
                                               self->conf, self);
                if (get_sv_status == 0)
                  status = 1;
              }
          }
        RETVAL = status;
    OUTPUT:
        RETVAL

int
force_conf (SV *converter_in, option_name, SV *value)
        const char *option_name = (char *)SvPVbyte_nolen($arg);
      PREINIT:
        CONVERTER *self;
        int status = 0;
      CODE:
        self = get_sv_converter (converter_in, "force_conf");
        if (self)
          {
            int get_sv_status;
            OPTION *option
              = find_option_string (self->sorted_options, option_name);

            if (!option)
              message_list_document_error (&self->error_messages,
                                           self->conf, 0,
                                  "unknown customization variable: %s",
                                   option_name);
               /*
              croak_nocontext ("XS: BUG: force_conf: unknown option %s\n",
                               option_name);
                */
            else
              {
                /* only possible failure would be a type error */
                get_sv_status = get_sv_option (option, value, 1,
                                               self->conf, self);
                if (get_sv_status == 0)
                  status = 1;
              }
          }
        RETVAL = status;
    OUTPUT:
        RETVAL

SV *
get_conf (SV *converter_in, option_name)
        const char *option_name = (char *)SvPVbyte_nolen($arg);
      PREINIT:
        CONVERTER *self;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (self && self->sorted_options)
          {
            const OPTION *option
             = find_option_string (self->sorted_options, option_name);

            if (!option)
              {
                message_list_document_error (&self->error_messages,
                                           self->conf, 0,
                                  "unknown customization variable: %s",
                                   option_name);
              /* in Perl cluck is called, no equivalent here */
               /*
              croak_nocontext ("XS: BUG: get_conf: unknown option %s\n", option_name);
                */

                RETVAL = newSV (0);
              }
            else
              RETVAL = build_sv_option (option, self);
          }
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

void
converter_line_error (SV *converter_in, text, SV *error_location_info, ...)
        const char *text = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$$;$
      PREINIT:
        CONVERTER *self;
        int continuation = 0;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (items > 3 && SvOK(ST(3)))
          continuation = SvIV (ST(3));

        if (self)
          {
            get_line_message (self, MSG_error, continuation,
                              error_location_info, text);
          }

void
converter_line_warn (SV *converter_in, text, SV *error_location_info, ...)
        const char *text = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$$;$
      PREINIT:
        CONVERTER *self;
        int continuation = 0;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (items > 3 && SvOK(ST(3)))
          continuation = SvIV (ST(3));

        if (self)
          {
            get_line_message (self, MSG_warning, continuation,
                              error_location_info, text);
          }

void
converter_document_error (SV *converter_in, text, ...)
        const char *text = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$;$
      PREINIT:
        CONVERTER *self;
        int continuation = 0;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (items > 2 && SvOK(ST(2)))
          continuation = SvIV (ST(2));
        if (self)
          {
            message_list_document_formatted_message (&self->error_messages,
              self->conf, MSG_document_error, continuation, text);
          }

void
converter_document_warn (SV *converter_in, text, ...)
        const char *text = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$;$
      PREINIT:
        CONVERTER *self;
        int continuation = 0;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (items > 2 && SvOK(ST(2)))
          continuation = SvIV (ST(2));
        if (self)
          {
            message_list_document_formatted_message (&self->error_messages,
                     self->conf, MSG_document_warning, continuation, text);
          }

void
set_global_document_commands (SV *converter_in, char *commands_location_string, SV *selected_commands)
      PREINIT:
        CONVERTER *self;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (self)
          {
            int command_location = -1;
            int i;
            AV *selected_commands_av = (AV *) SvRV (selected_commands);
            SSize_t in_commands_nr = AvFILL (selected_commands_av) +1;
            enum command_id *cmd_list = (enum command_id *) malloc
                          ((in_commands_nr+1) * sizeof (enum command_id));
            /* actual command index/number without unknown commands */
            int command_nr = 0;

            for (i = 0; command_location_names[i]; i++)
              {
                if (!strcmp (commands_location_string,
                             command_location_names[i]))
                  {
                    command_location = i;
                    break;
                  }
              }
            if (command_location < 0)
              {
                fprintf (stderr,
                         "ERROR: unknown command location: %s\n",
                         commands_location_string);
                return;
              }

            for (i = 0; i < in_commands_nr; i++)
              {
                SV **command_sv = av_fetch (selected_commands_av, i, 0);
                if (command_sv)
                  {
                    const char *command_name = SvPV_nolen (*command_sv);
                    enum command_id cmd
                       = lookup_builtin_command (command_name);
                    if (cmd <= 0)
                      {
                        fprintf (stderr,
                                 "ERROR: unknown command (%d): %s\n",
                                 i, command_name);
                      }
                    else
                      {
                        cmd_list[command_nr] = cmd;
                        command_nr++;
                      }
                  }
              }
            cmd_list[command_nr] = 0;
            set_global_document_commands (self, command_location, cmd_list);
            free (cmd_list);
          }

SV *
converter_find_identifier_target (SV *converter_in, identifier)
        const char *identifier = (char *)SvPVutf8_nolen($arg);
     PREINIT:
        CONVERTER *self;
        ELEMENT *target_element = 0;
     CODE:
        self = get_sv_converter (converter_in,
                                 "converter_find_identifier_target");
        if (self && self->document)
          {
            target_element = find_identifier_target (
                                  &self->document->identifiers_target,
                                  identifier);
          }
        if (target_element)
          RETVAL = newSVsv ((SV *) target_element->sv);
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
get_converter_indices_sorted_by_index (SV *converter_sv)
     PREINIT:
        CONVERTER *self;
        const INDEX_SORTED_BY_INDEX *index_entries_by_index = 0;
        HV *converter_hv;
        SV **document_sv;
        char *language = 0;
     CODE:
        self = get_sv_converter (converter_sv,
                                 "get_converter_indices_sorted_by_index");
        if (self)
          index_entries_by_index
            = get_converter_indices_sorted_by_index (self, &language);

        converter_hv = (HV *) SvRV (converter_sv);
        document_sv = hv_fetch (converter_hv, "document",
                                strlen ("document"), 0);
        RETVAL = 0;
        if (document_sv && self->document->hv)
          {
            /* The sorted indices are cached in the same place as in Perl code
               gathered at document initialization.
               Either Perl code or XS code is used, so this is for consistency
               not really for interoperability */
            /* set to document "sorted_indices_by_index" key value */
            HV *language_document_sorted_indices_hv = 0;
            /* try first to get sorted index cached in document
               "sorted_indices_by_index".
               Gather the hash to use to cache too in
               language_document_sorted_indices_hv, for use if sorted index is
               not found */
            if (language)
              {
                SV *index_entries_by_index_sv
                  = get_language_document_hv_sorted_indices (
                                      (HV *) self->document->hv,
                                      "sorted_indices_by_index", language,
                                      &language_document_sorted_indices_hv);
                if (index_entries_by_index_sv)
                  RETVAL = newSVsv (index_entries_by_index_sv);
              }
            if (!RETVAL)
              {
                /* build the sorted indices from C */
                SV *indices_information_sv
                  = document_indices_information (*document_sv);

                if (index_entries_by_index && indices_information_sv
                    && SvOK (indices_information_sv))
                  {
                    HV *indices_information_hv
                      = (HV *) SvRV (indices_information_sv);
                    HV *index_entries_by_index_hv
                      = build_sorted_indices_by_index (index_entries_by_index,
                                                       indices_information_hv);
                    RETVAL = newRV_noinc ((SV *) index_entries_by_index_hv);
                   /* the hash for caching was found or created and the sorting
                      language is set, cache the sorted indices */
                    if (language_document_sorted_indices_hv && language)
                      {
                        SV *lang_sv = newSVpv_utf8 (language, 0);
                        hv_store_ent (language_document_sorted_indices_hv, lang_sv,
                                      newRV_inc ((SV *) index_entries_by_index_hv), 0);
                      }
                  }
              }
          }
        if (!RETVAL)
          RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
get_converter_indices_sorted_by_letter (SV *converter_sv)
     PREINIT:
        CONVERTER *self;
        const INDEX_SORTED_BY_LETTER *index_entries_by_letter = 0;
        HV *converter_hv;
        SV **document_sv;
        char *language;
     CODE:
        self = get_sv_converter (converter_sv,
                                 "get_converter_indices_sorted_by_letter");
        if (self)
          index_entries_by_letter
            = get_converter_indices_sorted_by_letter (self, &language);

        converter_hv = (HV *) SvRV (converter_sv);
        document_sv = hv_fetch (converter_hv, "document",
                                strlen ("document"), 0);
        RETVAL = 0;
        if (document_sv && self->document->hv)
          {
            /* The sorted indices are cached in the same place as in Perl code
               gathered at document initialization.
               Either Perl code or XS code is used, so this is for consistency
               not really for interoperability */
            /* set to document "sorted_indices_by_letter" key value */
            HV *language_document_sorted_indices_hv = 0;
            /* try first to get sorted index cached in document
               "sorted_indices_by_letter".
               Gather the hash to use to cache too in
               language_document_sorted_indices_hv, for use if sorted index is
               not found */
            if (language)
              {
                SV *index_entries_by_index_sv
                  = get_language_document_hv_sorted_indices (
                                      (HV *) self->document->hv,
                                      "sorted_indices_by_letter", language,
                                      &language_document_sorted_indices_hv);
                if (index_entries_by_index_sv)
                  RETVAL = newSVsv (index_entries_by_index_sv);
              }
            if (!RETVAL)
              {
                /* build the sorted indices from C */
                SV *indices_information_sv
                  = document_indices_information (*document_sv);

                if (index_entries_by_letter && indices_information_sv
                    && SvOK (indices_information_sv))
                  {
                    HV *indices_information_hv
                      = (HV *) SvRV (indices_information_sv);
                    HV *index_entries_by_letter_hv
                      = build_sorted_indices_by_letter (index_entries_by_letter,
                                                        indices_information_hv);
                    RETVAL = newRV_noinc ((SV *) index_entries_by_letter_hv);
                    /* the hash for caching was found or created, cache the
                       sorted indices */
                    if (language_document_sorted_indices_hv)
                      {
                        hv_store (language_document_sorted_indices_hv,
                              language, strlen(language),
                              newRV_inc ((SV *) index_entries_by_letter_hv), 0);
                      }
                  }
              }
          }
        if (!RETVAL)
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

# pass the stream of an unclosed file path.
# tried with OutputStream instead of FILE, but it did not work, there
# was an error with a missing type.
FILE *
XS_get_unclosed_stream (SV *converter_in, file_path)
        const char *file_path = (char *)SvPVbyte_nolen($arg);
      PREINIT:
        CONVERTER *self;
        OUTPUT_FILES_INFORMATION *output_files_information;
        FILE_STREAM_LIST *unclosed_files;
        FILE *result = 0;
      CODE:
        self = get_sv_converter (converter_in,
                                 "get_unclosed_stream");
        output_files_information = &self->output_files_information;
        unclosed_files = &output_files_information->unclosed_files;
        if (unclosed_files->number > 0)
          {
            size_t i;
            for (i = 0; i < unclosed_files->number; i++)
              {
                FILE_STREAM *file_stream = &unclosed_files->list[i];
                if (!strcmp (file_path, file_stream->file_path))
                  {
                    result = file_stream->stream;
                    break;
                  }
              }
          }
        RETVAL = result;
    OUTPUT:
        RETVAL

SV *
get_converter_errors (SV *converter_in)
      PREINIT:
        CONVERTER *self = 0;
        const ERROR_MESSAGE_LIST *error_messages = 0;
        HV *converter_hv = 0;
        AV *empty_av;
      CODE:
        /* the C converter may have been destroyed already */
        self = get_sv_converter (converter_in, 0);
        if (self && self->error_messages.number)
          error_messages = &self->error_messages;
        RETVAL = pass_errors_to_hv (error_messages,
                                    converter_in,
                                    "error_warning_messages");
        /* replace the messages from the converter by an empty array */
        converter_hv = (HV *) SvRV (converter_in);
        empty_av = newAV ();
        hv_store (converter_hv, "error_warning_messages",
                  strlen ("error_warning_messages"),
                  newRV_noinc ((SV *) empty_av), 0);
        if (error_messages)
          wipe_error_message_list (&self->error_messages);
    OUTPUT:
        RETVAL

void
merge_converter_error_messages_lists (SV *dst_in, SV *src_in)
      PREINIT:
        CONVERTER *self = 0;
        CONVERTER *src = 0;
      CODE:
        self = get_sv_converter (dst_in,
                   "merge_converter_error_messages_lists dst");
        src = get_sv_converter (src_in,
                   "merge_converter_error_messages_lists src");
        merge_error_messages_lists (&self->error_messages,
                                    &src->error_messages);

void
converter_remove_output_units (SV *converter_in)
      PREINIT:
        CONVERTER *self;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (self)
          {
            release_converter_output_units_remove_perl_output_units (self);

            converter_remove_output_units (self);
          }

void
destroy_converter (SV *converter_in)
      PREINIT:
        CONVERTER *self;
      CODE:
        self = get_sv_converter (converter_in, 0);
        if (self)
          {
            call_object_converter_perl_release (self);

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

# for debugging, to get output units lists in Perl
void
XS_get_output_units_lists (SV *converter_in)
      PREINIT:
        CONVERTER *self;
        SV *output_units_sv;
        SV *special_units_sv;
        SV *associated_special_units_sv;
      PPCODE:
        self = get_sv_converter (converter_in,
                                 "get_output_units_lists");

        store_document_tree_output_units (self->document);

        output_units_sv = build_output_units_list (self->document,
                           self->output_units_descriptors[OUDT_units]);
        special_units_sv = build_output_units_list (self->document,
                     self->output_units_descriptors[OUDT_special_units]);
        associated_special_units_sv = build_output_units_list (self->document,
          self->output_units_descriptors[OUDT_associated_special_units]);

        EXTEND(SP, 3);
        PUSHs(sv_2mortal(output_units_sv));
        PUSHs(sv_2mortal(special_units_sv));
        PUSHs(sv_2mortal(associated_special_units_sv));

