/* Copyright 2023-2024 Free Software Foundation, Inc.

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

#define PERLIO_NOT_STDIO 0

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#if defined _WIN32 && !defined __CYGWIN__
/* See comment in XSParagraph.xs for why we #undef free. */
# undef free
#endif
#include "XSUB.h"

#undef context

#include "command_ids.h"
#include "element_types.h"
#include "converter_types.h"
#include "builtin_commands.h"
#include "errors.h"
#include "convert_to_text.h"
#include "convert_to_texinfo.h"
#include "manipulate_indices.h"
#include "command_stack.h"
#include "document.h"
#include "get_perl_info.h"
#include "build_perl_info.h"
#include "build_html_perl_state.h"
#include "converter.h"
#include "convert_html.h"
#include "get_html_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::Convert::ConvertXS	PACKAGE = Texinfo::Convert::ConvertXS

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

# Called from Texinfo::XSLoader.pm.  The arguments are not actually used.
# file path, can be in any encoding
#        int texinfo_uninstalled
#        char *builddir = (char *)SvPVbyte_nolen($arg);
int
init (...)
      CODE:
        set_element_type_name_info ();
        RETVAL = 1;
    OUTPUT:
        RETVAL

void
converter_initialize (SV *converter_in)

void
converter_set_document (SV *converter_in, SV *document_in)


void
set_conf (SV *converter_in, conf, SV *value)
         const char *conf = (char *)SvPVbyte_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         /* Calling code checks 'converter_descriptor' is set */
         self = get_sv_converter (converter_in, 0);
         if (self)
           set_conf (self, conf, value);

void
force_conf (SV *converter_in, conf, SV *value)
         const char *conf = (char *)SvPVbyte_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         /* Calling code checks 'converter_descriptor' is set */
         self = get_sv_converter (converter_in, 0);
         if (self)
           force_conf (self, conf, value);

SV *
get_conf (SV *converter_in, conf)
         const char *conf = (char *)SvPVbyte_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, 0);
         if (self)
           RETVAL = get_conf (self, conf);
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
converter_set_global_document_commands (SV *converter_in, char *commands_location_string, SV *selected_commands)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, 0);
         if (self)
           {
             int command_location = -1;
             int i;
             AV *selected_commands_av = (AV *) SvRV (selected_commands);
             SSize_t in_commands_nr = av_top_index (selected_commands_av) +1;
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
                 SV** command_sv = av_fetch (selected_commands_av, i, 0);
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
get_converter_indices_sorted_by_index (SV *converter_sv)
     PREINIT:
        CONVERTER *self;
        const INDEX_SORTED_BY_INDEX *index_entries_by_index = 0;
        HV *converter_hv;
        SV **document_sv;
     CODE:
        self = get_sv_converter (converter_sv,
                                 "get_converter_indices_sorted_by_index");
        if (self)
          index_entries_by_index
            = get_converter_indices_sorted_by_index (self);

        converter_hv = (HV *) SvRV (converter_sv);
        document_sv = hv_fetch (converter_hv, "document",
                                strlen ("document"), 0);
        RETVAL = 0;
        if (document_sv)
          {
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
                RETVAL
                 = newRV_inc ((SV *) index_entries_by_index_hv);
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
     CODE:
        self = get_sv_converter (converter_sv,
                                 "get_converter_indices_sorted_by_letter");
        if (self)
          index_entries_by_letter
            = get_converter_indices_sorted_by_letter (self);

        converter_hv = (HV *) SvRV (converter_sv);
        document_sv = hv_fetch (converter_hv, "document",
                                strlen ("document"), 0);
        RETVAL = 0;
        if (document_sv)
          {
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
                RETVAL
                 = newRV_inc ((SV *) index_entries_by_letter_hv);
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
get_unclosed_stream (SV *converter_in, file_path)
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
             int i;
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
         AV *errors_av;
         CONVERTER *self = 0;
      CODE:
         self = get_sv_converter (converter_in, 0);
         if (self && self->error_messages.number)
           {
             errors_av = build_errors (self->error_messages.list,
                                       self->error_messages.number);
             wipe_error_message_list (&self->error_messages);
           }
         else
           errors_av = newAV ();

         RETVAL = newRV_noinc ((SV *) errors_av);
    OUTPUT:
         RETVAL

void
reset_converter (SV *converter_in)
      PREINIT:
         CONVERTER *self = 0;
         HV *stash;
         const char *name;
      CODE:
         stash = SvSTASH (SvRV (converter_in));
         name = HvNAME (stash);
         if (!strcmp (name, "Texinfo::Convert::HTML"))
           {
             self = get_sv_converter (converter_in, "reset html converter");
             html_reset_converter (self);
           }

void
destroy (SV *converter_in)
      PREINIT:
         CONVERTER *self = 0;
         HV *stash;
         const char *name;
      CODE:
         stash = SvSTASH (SvRV (converter_in));
         name = HvNAME (stash);
         if (!strcmp (name, "Texinfo::Convert::HTML"))
           {
             self = get_sv_converter (converter_in, "destroy html");
             html_free_converter (self);
           }
          /*
         else if (!strcmp (name, "Texinfo::Convert::Text"))
           {
             self = get_sv_converter (converter_in, "destroy text");
             text_destroy (self);
           }
           */
         if (self)
           unregister_converter_descriptor (self->converter_descriptor);

SV *
plain_texinfo_convert_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* caller checks that there is a descriptor */
        document = get_sv_tree_document (tree_in, "plain_texinfo_convert_tree");
        if (document)
          {
            char *result = convert_to_texinfo (document->tree);
            RETVAL = newSVpv_utf8 (result, 0);
            non_perl_free (result);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

SV *
text_convert_tree (SV *options_in, SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* The caller checks that there is a descriptor */
        document = get_sv_tree_document (tree_in, "text_convert_tree");
        if (document)
          {
            char *result;
            TEXT_OPTIONS *text_options;

            if (SvOK (options_in))
              text_options = copy_sv_options_for_convert_text (options_in);
            else
              text_options = new_text_options ();

            text_options->document_descriptor = document->descriptor;

            result = convert_to_text (document->tree, text_options);

            destroy_text_options (text_options);
            RETVAL = newSVpv_utf8 (result, 0);
            non_perl_free (result);
          }
        else
          {
            RETVAL = newSV(0);
          }
    OUTPUT:
        RETVAL

# HTML

void
html_format_init ()

void
html_converter_initialize_sv (SV *converter_in, SV *default_formatting_references, SV *default_css_string_formatting_references, SV *default_commands_open, SV *default_commands_conversion, SV *default_css_string_commands_conversion, SV *default_types_open, SV *default_types_conversion, SV *default_css_string_types_conversion, SV *default_output_units_conversion, SV *default_no_arg_commands_formatting, SV *default_special_unit_body)

void
html_initialize_output_state (SV *converter_in, char *context)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_initialize_output_state");
         if (self)
           {
             html_conversion_initialization_sv (converter_in, self);
             html_initialize_output_state (self, context);
           }

void
html_conversion_finalization (SV *converter_in)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_conversion_finalization");
         if (self)
           {
             html_conversion_finalization (self);

             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
             html_check_transfer_state_finalization (self);
           }

void
html_register_id (SV *converter_in, id)
         const char *id = (char *)SvPVutf8_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_register_id");
         if (self)
          /* note that we do not care about having the same id twice */
           add_string (id, &self->seen_ids);


int html_id_is_registered (SV *converter_in, id)
         const char *id = (char *)SvPVutf8_nolen($arg);
      PREINIT:
         CONVERTER *self;
         int found = 0;
      CODE:
         self = get_sv_converter (converter_in, "html_id_is_registered");
         if (self)
           found = find_string (&self->seen_ids, id);
         RETVAL = found;
    OUTPUT:
         RETVAL

void
html_new_document_context (SV *converter_in, char *context_name, ...)
      PROTOTYPE: $$;$$
      PREINIT:
         CONVERTER *self;
         const char *document_global_context = 0;
         const char *block_command_name = 0;
         enum command_id block_command = 0;
      CODE:
         self = get_sv_converter (converter_in, "html_new_document_context");
         if (items > 2 && SvOK(ST(2)))
           document_global_context = SvPVutf8_nolen (ST(2));
         if (items > 3 && SvOK(ST(3)))
           block_command_name = SvPVutf8_nolen (ST(3));
         if (block_command_name)
           block_command = lookup_builtin_command (block_command_name);

         if (self)
           {
             html_new_document_context (self, context_name,
                                        document_global_context, block_command);
           }

void
html_pop_document_context (SV *converter_in)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_new_document_context");
         if (self)
           {
             html_pop_document_context (self);
           }

int
html_open_command_update_context (SV *converter_in, char *command_name)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_open_command_update_context");
         RETVAL = 0;
         if (self)
           {
             enum command_id cmd = lookup_builtin_command (command_name);
             RETVAL = html_open_command_update_context (self, cmd);
           }
    OUTPUT:
         RETVAL

void
html_convert_command_update_context (SV *converter_in, char *command_name)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_convert_command_update_context");
         if (self)
           {
             enum command_id cmd = lookup_builtin_command (command_name);
             html_convert_command_update_context (self, cmd);
           }

void
html_open_type_update_context (SV *converter_in, char *type_name)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_open_type_update_context");
         if (self)
           {
             enum element_type type = find_element_type (type_name);
             html_open_type_update_context (self, type);
           }

void
html_convert_type_update_context (SV *converter_in, char *type_name)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_convert_type_update_context");
         if (self)
           {
             enum element_type type = find_element_type (type_name);
             html_convert_type_update_context (self, type);
           }

void
html_set_code_context (SV *converter_in, int code)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_set_code_context");
         if (self)
           html_set_code_context (self, code);

void
html_pop_code_context (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_pop_code_context");
         if (self)
           html_pop_code_context (self);

void
html_set_string_context (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_set_string_context");
         if (self)
           html_set_string_context (self);

void
html_unset_string_context (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_unset_string_context");
         if (self)
           html_unset_string_context (self);

void
html_set_raw_context (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_set_raw_context");
         if (self)
           html_set_raw_context (self);

void
html_unset_raw_context (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_unset_raw_context");
         if (self)
           html_unset_raw_context (self);

SV *
html_debug_print_html_contexts (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_debug_print_html_contexts");
         if (self)
           {
             char *result = debug_print_html_contexts (self);
             RETVAL = newSVpv_utf8 (result, 0);
             non_perl_free (result);
           }
         else
           RETVAL = newSVpv_utf8 ("", 0);
    OUTPUT:
         RETVAL

int
html_in_math (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_math");
         RETVAL = html_in_math (self);
    OUTPUT:
         RETVAL

int
html_in_preformatted_context (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_preformatted_context");
         RETVAL = html_in_preformatted_context (self);
    OUTPUT:
         RETVAL

int
html_inside_preformatted (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_inside_preformatted");
         RETVAL = html_inside_preformatted (self);
    OUTPUT:
         RETVAL

int
html_in_upper_case (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_upper_case");
         RETVAL = html_in_upper_case (self);
    OUTPUT:
         RETVAL

int
html_in_non_breakable_space (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_non_breakable_space");
         RETVAL = html_in_non_breakable_space (self);
    OUTPUT:
         RETVAL

int
html_in_space_protected (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_space_protected");
         RETVAL = html_in_space_protected (self);
    OUTPUT:
         RETVAL

int
html_in_code (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_code");
         RETVAL = html_in_code (self);
    OUTPUT:
         RETVAL

int
html_in_string (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_string");
         RETVAL = html_in_string (self);
    OUTPUT:
         RETVAL

int
html_in_verbatim (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_verbatim");
         RETVAL = html_in_verbatim (self);
    OUTPUT:
         RETVAL

int
html_in_raw (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_raw");
         RETVAL = html_in_raw (self);
    OUTPUT:
         RETVAL

int
html_paragraph_number (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_paragraph_number");
         RETVAL = html_paragraph_number (self);
    OUTPUT:
         RETVAL

int
html_preformatted_number (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_preformatted_number");
         RETVAL = html_preformatted_number (self);
    OUTPUT:
         RETVAL

const char *
html_top_block_command (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
         enum command_id cmd;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_top_block_command");
         cmd = html_top_block_command (self);
         RETVAL = builtin_command_name (cmd);
    OUTPUT:
         RETVAL

SV *
html_preformatted_classes_stack (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
         const COMMAND_OR_TYPE_STACK *preformatted_classes_stack;
         AV *preformatted_classes_av;
         size_t i;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_preformatted_classes_stack");
         preformatted_classes_stack = html_preformatted_classes_stack (self);
         preformatted_classes_av = newAV();
         for (i = 0; i < preformatted_classes_stack->top; i++)
           {
             const COMMAND_OR_TYPE *cmd_or_type
               = &preformatted_classes_stack->stack[i];
             const char *pre_class = 0;
             if (cmd_or_type->variety == CTV_type_command)
               pre_class = builtin_command_data[cmd_or_type->cmd].cmdname;
             else if (cmd_or_type->variety == CTV_type_type)
               pre_class = self->pre_class_types[cmd_or_type->type];
             SV *class_sv
               = newSVpv_utf8 (pre_class, 0);
             av_push (preformatted_classes_av, class_sv);
           }
         RETVAL = newRV_noinc ((SV *)preformatted_classes_av);
    OUTPUT:
         RETVAL

const char *
html_in_align (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
         enum command_id cmd;
     CODE:
         self = get_sv_converter (converter_in, "html_in_align");
         cmd = html_in_align (self);
         RETVAL = builtin_command_name (cmd);
    OUTPUT:
         RETVAL

SV *
html_current_filename (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in, "html_current_filename");
         RETVAL = newSVpv_utf8 (self->current_filename.filename, 0);
    OUTPUT:
         RETVAL

SV *
html_current_output_unit (SV *converter_in)
     PREINIT:
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in, "html_current_output_unit");
         if (!self->current_output_unit)
           RETVAL = newSV (0);
         else
           RETVAL = newRV_inc ((SV *) self->current_output_unit->hv);
    OUTPUT:
         RETVAL

SV *
html_count_elements_in_filename (SV *converter_in, const char *spec, filename)
         const char *filename = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         IV count = -1;
         const CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_count_elements_in_filename");
         if (self)
           {
             int i;
             for (i = 0; count_elements_in_filename_type_names[i]; i++)
               if (!strcmp (spec, count_elements_in_filename_type_names[i]))
                 break;
             if (!count_elements_in_filename_type_names[i])
               {
                 fprintf (stderr, "ERROR: unknown count type: %s\n", spec);
               }
             else
               {
                 count = (IV) html_count_elements_in_filename (self, i,
                                                               filename);
               }
           }
         if (count >= 0)
           RETVAL = newSViv (count);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

void
html_register_file_information (SV *converter_in, key, int value)
         char *key = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_register_file_information");
         if (self)
           {
             html_register_file_information (self, key, value);
           }

void
html_get_file_information (SV *converter_in, key, ...)
         const char *key = (char *)SvPVutf8_nolen($arg);
    PROTOTYPE: $$;$
     PREINIT:
         CONVERTER *self;
         SV *filename_sv = 0;
         int found = 0;
         int result = 0;
         SV *found_sv;
         SV *result_sv;
     PPCODE:
         self = get_sv_converter (converter_in,
                                  "html_get_file_information");
         if (items > 2 && SvOK(ST(2)))
           filename_sv = ST(2);
         if (self)
           {
             const char *filename = 0;
             int status;
             if (filename_sv)
               filename = SvPVutf8_nolen (filename_sv);
             result = html_get_file_information (self, key, filename, &status);
             if (status >= 0)
               found = 1;
           }
         found_sv = newSViv ((IV)found);
         if (found)
           result_sv = newSViv ((IV)result);
         else
           result_sv = newSV(0);

         EXTEND(SP, 2);
         PUSHs(sv_2mortal(found_sv));
         PUSHs(sv_2mortal(result_sv));

# Note that the target information returned is partial, no tree in particular,
# but it is not an issue as this override should not be called, as the
# Perl function only appears in overriden functions.
SV *
html_get_target (SV *converter_in, SV *element_sv)
     PREINIT:
         CONVERTER *self;
         HV *html_target_hv = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_get_target");
         if (self)
           {
             int output_units_descriptor
               = get_output_units_descriptor_converter_sv (converter_in);
             const ELEMENT *element;
             element = html_find_element_from_sv (self, element_sv,
                                                  output_units_descriptor);
             if (element)
               {
                 const HTML_TARGET *target_info = html_get_target (self, element);
                 if (target_info)
                   html_target_hv = build_html_target (target_info);
               }
           }
         if (html_target_hv)
           {
             RETVAL = newRV_noinc ((SV *) html_target_hv);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_command_id (SV *converter_in, SV *element_sv)
     PREINIT:
         CONVERTER *self;
         const char *id = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                              "html_command_id", &self);
         if (element)
           id = html_command_id (self, element);

         if (id)
           RETVAL = newSVpv_utf8 (id, 0);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_command_contents_target (SV *converter_in, SV *element_sv, cmdname)
         const char *cmdname = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
         const char *id = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                              "html_command_contents_target",
                                              &self);
         if (element)
           {
             enum command_id cmd = lookup_builtin_command (cmdname);
             id = html_command_contents_target (self, element, cmd);
           }

         if (id)
           RETVAL = newSVpv_utf8 (id, 0);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_footnote_location_target (SV *converter_in, SV *element_sv)
     PREINIT:
         CONVERTER *self;
         const char *id = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                              "html_footnote_location_target",
                                              &self);
         if (element)
           id = html_footnote_location_target (self, element);

         if (id)
           RETVAL = newSVpv_utf8 (id, 0);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_command_filename (SV *converter_in, SV *element_sv)
     PREINIT:
         CONVERTER *self;
         const char *filename = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                              "html_command_filename",
                                              &self);
         if (element)
           {
             const FILE_NUMBER_NAME *file_number_name
               = html_command_filename (self, element);
             if (file_number_name)
               {
                 filename = file_number_name->filename;
               }
           }

         if (filename)
           RETVAL = newSVpv_utf8 (filename, 0);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_command_root_element_command (SV *converter_in, SV *element_sv)
     PREINIT:
         CONVERTER *self;
         const ELEMENT *root_element_command = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                     "html_command_root_element_command",
                                              &self);
         if (element)
           {
             root_element_command
               = html_command_root_element_command (self, element);
           }

         if (root_element_command)
           RETVAL = newRV_inc ((SV *) root_element_command->hv);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_command_node (SV *converter_in, SV *element_sv)
     PREINIT:
         CONVERTER *self;
         const ELEMENT *node_element = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                              "html_command_node", &self);
         if (element)
           node_element = html_command_node (self, element);

         if (node_element)
           RETVAL = newRV_inc ((SV *) node_element->hv);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_internal_command_href (SV *converter_in, SV *element_sv, SV *source_filename_sv=0, SV *specified_target_sv=0)
     PREINIT:
         CONVERTER *self;
         char *href = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                         "html_internal_command_href", &self);

         if (element)
           {
             const char *source_filename = 0;
             const char *specified_target = 0;
             if (source_filename_sv && SvOK (source_filename_sv))
               source_filename = SvPVutf8_nolen (source_filename_sv);
             if (specified_target_sv && SvOK (specified_target_sv))
               specified_target = SvPVutf8_nolen (specified_target_sv);
             href = html_internal_command_href (self, element, source_filename,
                                                specified_target);
           }

         if (href)
           {
             RETVAL = newSVpv_utf8 (href, 0);
             non_perl_free (href);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_command_contents_href (SV *converter_in, SV *element_sv, cmdname, SV *source_filename_sv=0)
         char *cmdname = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
         char *href = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                         "html_command_contents_href", &self);

         if (element)
           {
             enum command_id cmd = lookup_builtin_command (cmdname);
             const char *source_filename = 0;
             if (source_filename_sv && SvOK (source_filename_sv))
               source_filename = SvPVutf8_nolen(source_filename_sv);
             href = html_command_contents_href (self, element, cmd,
                                                source_filename);
           }

         if (href)
           {
             RETVAL = newSVpv_utf8 (href, 0);
             non_perl_free (href);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_footnote_location_href (SV *converter_in, SV *element_sv, SV *source_filename_sv=0, SV *specified_target_sv=0, SV *target_filename_sv=0)
     PREINIT:
         CONVERTER *self;
         char *href = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                         "html_footnote_location_href", &self);
         if (element)
           {
             const char *source_filename = 0;
             const char *specified_target = 0;
             const char *target_filename_in = 0;
             if (source_filename_sv && SvOK(source_filename_sv))
               source_filename = SvPVutf8_nolen (source_filename_sv);
             if (specified_target_sv && SvOK(specified_target_sv))
               specified_target = SvPVutf8_nolen (specified_target_sv);
             if (target_filename_sv && SvOK(target_filename_sv))
               target_filename_in = SvPVutf8_nolen (target_filename_sv);

             href = html_footnote_location_href (self, element, source_filename,
                                          specified_target, target_filename_in);
           }

         if (href)
           {
             RETVAL = newSVpv_utf8 (href, 0);
             non_perl_free (href);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_internal_command_tree (SV *converter_in, SV *element_sv, SV* no_number_sv)
     PREINIT:
         CONVERTER *self;
         ELEMENT *command_tree = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                         "html_internal_command_tree", &self);
         if (element)
           {
             int no_number = 0;
             TREE_ADDED_ELEMENTS *tree;

             if (SvOK (no_number_sv))
               no_number = SvIV (no_number_sv);

             tree = html_internal_command_tree (self, element, no_number);
             build_tree_to_build (&self->tree_to_build);

             if (tree)
               command_tree = tree->tree;
           }

         if (command_tree)
           RETVAL = newRV_inc ((SV *) command_tree->hv);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_internal_command_text (SV *converter_in, SV *element_sv, const char *type)
     PREINIT:
         CONVERTER *self;
         char *text = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                                         "html_internal_command_text", &self);
         if (element)
           {
             int j;
             enum html_text_type text_type = 0;
             for (j = 0; j < HTT_section +1; j++)
               {
                 if (!strcmp (html_command_text_type_name[j], type))
                   {
                     text_type = j;
                     break;
                   }
               }
             text
               = html_internal_command_text (self, element, text_type);
             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
           }

         if (text)
           {
             RETVAL = newSVpv_utf8 (text, 0);
             non_perl_free (text);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

void
html_set_shared_conversion_state (SV *converter_in, cmdname, state_name, ...)
         const char *cmdname = (char *)SvPVutf8_nolen($arg);
         const char *state_name = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
         SV **args_sv = 0;
         int args_nr = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_set_shared_conversion_state");
         args_nr = items - 3;
         if (args_nr > 0)
           {
             int i;
             args_sv = (SV **) perl_only_malloc (args_nr * sizeof (SV *));
             for (i = 0; i < args_nr; i++)
               {
                 args_sv[i] = ST(i+3);
               }
           }
         html_set_shared_conversion_state (self, converter_in,
                                cmdname, state_name, args_nr, args_sv);
         perl_only_free (args_sv);

SV *
html_get_shared_conversion_state (SV *converter_in, cmdname, state_name, ...)
         const char *cmdname = (char *)SvPVutf8_nolen($arg);
         const char *state_name = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
         SV **args_sv = 0;
         int args_nr = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_get_shared_conversion_state");
         args_nr = items - 3;
         if (args_nr > 0)
           {
             int i;
             args_sv = (SV **) perl_only_malloc (args_nr * sizeof (SV *));
             for (i = 0; i < args_nr; i++)
               {
                 args_sv[i] = ST(i+3);
               }
           }
         RETVAL = html_get_shared_conversion_state (self, converter_in,
                                     cmdname, state_name, args_nr, args_sv);
         perl_only_free (args_sv);
    OUTPUT:
         RETVAL

void
html_register_opened_section_level (SV *converter_in, int level, close_string)
         const char *close_string = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_register_opened_section_level");
         if (self)
           {
             html_register_opened_section_level (self, level, close_string);
           }

SV *
html_close_registered_sections_level (SV *converter_in, int level)
     PREINIT:
         CONVERTER *self;
         AV *closed_elements_av;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_close_registered_sections_level");
         closed_elements_av = newAV ();
         if (self)
           {
             STRING_LIST *closed_elements
               = html_close_registered_sections_level (self, level);

             if (closed_elements->number > 0)
               {
                 int i;
                 for (i = 0; i < closed_elements->number; i++)
                   {
                     SV *close_string_sv
                          = newSVpv_utf8 (closed_elements->list[i], 0);
                     av_push (closed_elements_av, close_string_sv);
                   }
               }
             destroy_strings_list (closed_elements);
           }
         RETVAL = newRV_noinc ((SV *) closed_elements_av);
    OUTPUT:
         RETVAL

SV *
html_attribute_class (SV *converter_in, element, ...)
         const char *element = (char *)SvPVutf8_nolen($arg);
    PROTOTYPE: $$;$
    PREINIT:
         CONVERTER *self;
         SV *classes_sv = 0;
         STRING_LIST *classes = 0;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_attribute_class");
         if (items > 2 && SvOK(ST(2)))
           classes_sv = ST(2);

         if (self)
           {
             char *result;
             if (classes_sv)
               {
                 classes = new_string_list ();
                 add_svav_to_string_list (classes_sv, classes, svt_char);
               }
             result = html_attribute_class (self, element, classes);
             if (classes)
               destroy_strings_list (classes);
             RETVAL = newSVpv_utf8 (result, 0);
             free (result);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_get_css_elements_classes (SV *converter_in, ...)
    PROTOTYPE: $;$
    PREINIT:
         CONVERTER *self;
         SV *filename_sv = 0;
         AV *css_selector_av;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_attribute_class");
         if (items > 1 && SvOK(ST(1)))
           filename_sv = ST(1);

         css_selector_av = newAV ();

         if (self)
           {
             STRING_LIST *result;
             const char *filename = 0;
             if (filename_sv)
               filename = SvPVutf8_nolen (filename_sv);
             result = html_get_css_elements_classes (self, filename);
             if (result)
               {
                 if (result->number)
                   {
                     int i;
                     for (i = 0; i < result->number; i++)
                       {
                         SV *selector_sv
                            = newSVpv_utf8 (result->list[i], 0);
                         av_push (css_selector_av, selector_sv);
                       }
                   }
                 destroy_strings_list (result);
               }
           }
         RETVAL = newRV_noinc ((SV *) css_selector_av);
    OUTPUT:
         RETVAL

void
html_css_add_info (SV *converter_in, char *spec, css_info)
         const char *css_info = (char *)SvPVutf8_nolen($arg);
    PREINIT:
         CONVERTER *self;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_css_add_info");
         if (self)
           {
             enum css_info_type type = html_get_css_info_spec (spec);
             html_css_add_info (self, type, css_info);
           }

void
html_css_set_selector_style (SV *converter_in, css_info, SV *css_style_sv)
         const char *css_info = (char *)SvPVutf8_nolen($arg);
    PREINIT:
         CONVERTER *self;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_css_set_selector_style");
         if (self)
           {
             char *css_style = 0;
             if (SvOK (css_style_sv))
               css_style = (char *)SvPVutf8_nolen (css_style_sv);

             html_css_set_selector_style (self, css_info, css_style);
           }

SV *
html_css_get_info (SV *converter_in, char *spec)
    PREINIT:
         CONVERTER *self;
         AV *result_av = 0;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_css_add_info");
         if (self)
           {
             const STRING_LIST *result;
             enum css_info_type type = html_get_css_info_spec (spec);
             result = html_css_get_info (self, type);
             if (result)
               result_av = build_string_list (result, svt_char);
            }
         if (!result_av)
           result_av = newAV ();
         RETVAL = newRV_noinc ((SV *) result_av);
    OUTPUT:
         RETVAL

SV *
html_css_get_selector_style (SV *converter_in, css_info)
         const char *css_info = (char *)SvPVutf8_nolen($arg);
    PREINIT:
         CONVERTER *self;
         const char *css_style = 0;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_css_get_selector_style");
         if (self)
           {
             css_style = html_css_get_selector_style (self, css_info);
           }
         if (css_style)
           RETVAL = newSVpv_utf8 (css_style, 0);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

void
html_register_footnote (SV *converter_in, SV *command, footid, docid, int number_in_doc, footnote_location_filename, ...)
         const char *footid = (char *)SvPVutf8_nolen($arg);
         const char *docid = (char *)SvPVutf8_nolen($arg);
         const char *footnote_location_filename = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$$$$$$
      PREINIT:
         CONVERTER *self;
         const char *multi_expanded_region = 0;
      CODE:
         self = get_sv_converter (converter_in,
                                  "html_register_footnote");
         if (self)
           {
             /* TODO use functions used for other elements? */
             /* find footnote in XS.  First use index in global commands,
                then number_in_doc, and if not effective, do a linear search */
             ELEMENT *footnote = 0;
             ELEMENT *current;
             HV *command_hv = (HV *) SvRV (command);
             ELEMENT_LIST *footnotes
                = &self->document->global_commands->footnotes;
             SV **extra_sv
                 = hv_fetch (command_hv, "extra", strlen ("extra"), 0);
             int global_command_number = 0;

             if (extra_sv)
               {
                 HV *extra_hv = (HV *) SvRV (*extra_sv);
                 SV **global_command_number_sv
                    = hv_fetch (extra_hv, "global_command_number",
                                strlen ("global_command_number"), 0);
                 if (global_command_number_sv)
                   global_command_number = SvIV (*global_command_number_sv);
               }
             if (global_command_number > 0
                 && global_command_number - 1 < footnotes->number)
               {
                 ELEMENT *current = footnotes->list[global_command_number - 1];
                 if (command_hv == current->hv)
                   footnote = current;
                 else
                   fprintf (stderr,
                         "REMARK: global footnote %d %s not directly found\n",
                            global_command_number, footid);
               }
             /* the next two ways should never be needed */
             if (!footnote && number_in_doc - 1 < footnotes->number)
               {
                 ELEMENT *current = footnotes->list[number_in_doc - 1];
                 if (command_hv == current->hv)
                   footnote = current;
                   /*
                 else
                   fprintf (stderr,
                            "REMARK: footnote %d %s not directly found\n",
                            number_in_doc, footid);
                    */
               }
             if (!footnote)
               {
                 size_t i;
                 for (i = 0; i < footnotes->number; i++)
                   {
                     current = footnotes->list[i];
                     if (current->hv == command_hv)
                       {
                         footnote = current;
                         break;
                       }
                   }
               }
             if (footnote)
               {
              /*
                 fprintf (stderr, "FFF %s\n", convert_to_texinfo (footnote));
               */
                  if (items > 7 && SvOK(ST(7)))
                    multi_expanded_region = SvPVutf8_nolen (ST(7));
                  html_register_footnote (self, footnote, footid, docid,
                              number_in_doc, footnote_location_filename,
                                                  multi_expanded_region);
               }
             else
               {
                 fprintf (stderr, "ERROR: footnote not found\n");
               }
           }

SV *
html_get_pending_footnotes (SV *converter_in)
      PREINIT:
         CONVERTER *self;
         AV *pending_footnotes_av;
      CODE:
         self = get_sv_converter (converter_in,
                                  "html_register_footnote");
         pending_footnotes_av = newAV ();
         if (self)
           {
             HTML_PENDING_FOOTNOTE_STACK *stack
              = html_get_pending_footnotes (self);

             build_pending_footnotes (pending_footnotes_av, stack);

             destroy_pending_footnotes (stack);
           }
         RETVAL = newRV_noinc ((SV *) pending_footnotes_av);
    OUTPUT:
         RETVAL

void
html_register_pending_formatted_inline_content (SV *converter_in, category, ...)
         const char *category = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$$
      PREINIT:
         CONVERTER *self;
         const char *inline_content = 0;
     CODE:
         self = get_sv_converter (converter_in,
                       "html_register_pending_formatted_inline_content");
         if (self)
           {
             if (items > 2 && SvOK(ST(2)))
               inline_content = SvPVutf8_nolen (ST(2));

             html_register_pending_formatted_inline_content (self,
                                                 category, inline_content);
           }

SV *
html_cancel_pending_formatted_inline_content (SV *converter_in, category)
         const char *category = (char *)SvPVutf8_nolen($arg);
      PREINIT:
         CONVERTER *self;
         char *inline_content = 0;
     CODE:
         self = get_sv_converter (converter_in,
                          "html_cancel_pending_formatted_inline_content");
         if (self)
           {
             inline_content
              = html_cancel_pending_formatted_inline_content (self, category);
           }
         if (inline_content)
           {
             RETVAL = newSVpv_utf8 (inline_content, 0);
             free (inline_content);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_get_pending_formatted_inline_content (SV *converter_in)
      PREINIT:
         CONVERTER *self;
         char *inline_content = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                "html_get_pending_formatted_inline_content");
         if (self)
           {
             inline_content = html_get_pending_formatted_inline_content (self);
           }
         if (inline_content)
           {
             RETVAL = newSVpv_utf8 (inline_content, 0);
             free (inline_content);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

void
html_associate_pending_formatted_inline_content (SV *converter_in, SV *element_sv, inline_content)
         const char *inline_content = (char *)SvPVutf8_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in,
                       "html_associate_pending_formatted_inline_content");
         if (self)
           {
             html_associate_pending_formatted_inline_content (self,
                                  0, SvRV (element_sv), inline_content);
           }

SV *
html_get_associated_formatted_inline_content (SV *converter_in, SV *element_sv)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in,
                       "html_get_associated_formatted_inline_content");
         if (self)
           {
             char *inline_content
              = html_get_associated_formatted_inline_content (self,
                                                   0, SvRV (element_sv));
             RETVAL = newSVpv_utf8 (inline_content, 0);
             free (inline_content);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

# we do not increase here and decrease in pop the element_hv refcount, under
# the assumption that there is already a reference held by the C tree on
# the element.
void
html_push_referred_command_stack_command (SV *converter_in, SV *element_sv)
      PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_push_referred_command_stack_command");
         if (self)
           {
             const HV *element_hv = (HV *) SvRV (element_sv);
             push_element_reference_stack_element (
              &self->referred_command_stack, 0, (const void *)element_hv);
           }

void
html_pop_referred_command_stack (SV *converter_in)
      PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_pop_referred_command_stack");
         if (self)
           {
             pop_element_reference_stack (&self->referred_command_stack);
           }

int
html_command_is_in_referred_command_stack (SV *converter_in, SV *element_sv)
      PREINIT:
         CONVERTER *self;
         int found = 0;
     CODE:
         self = get_sv_converter (converter_in,
                               "html_command_is_in_referred_command_stack");
         if (self)
           {
             const HV *element_hv = (HV *) SvRV (element_sv);
             found = command_is_in_referred_command_stack (
                      &self->referred_command_stack, 0,
                      (const void *)element_hv);
           }
         RETVAL = found;
    OUTPUT:
         RETVAL

int
html_check_htmlxref_already_warned (SV *converter_in, manual_name, SV *source_info_sv)
         const char *manual_name = (char *)SvPVutf8_nolen($arg);
      PREINIT:
         CONVERTER *self;
         SOURCE_INFO *source_info = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_check_htmlxref_already_warned");
         if (SvOK (source_info_sv))
           source_info = get_source_info (source_info_sv);

         RETVAL = html_check_htmlxref_already_warned (self, manual_name,
                                                      source_info);
         if (source_info)
           {
             free (source_info->macro);
             free (source_info->file_name);
             free (source_info);
           }
    OUTPUT:
         RETVAL

void
reset_output_init_conf (SV *sv_in)

#  my ($output_units, $special_units, $associated_special_units)
#    = $self->_prepare_conversion_units($document, $document_name);
void
html_prepare_conversion_units (SV *converter_in, ...)
      PROTOTYPE: $$$
      PREINIT:
         HV *converter_hv;
         const char *document_name = 0;
         CONVERTER *self;
         SV *output_units_sv;
         SV *special_units_sv;
         SV *associated_special_units_sv;
         HV *output_units_hv;
      PPCODE:
         if (items > 2 && SvOK(ST(2)))
           document_name = SvPVutf8_nolen (ST(2));

         self = get_sv_converter (converter_in,
                                  "html_prepare_conversion_units");

         if (self->conf->OUTPUT_CHARACTERS.integer > 0
             && self->conf->OUTPUT_ENCODING_NAME.string
             /* not sure if strcasecmp is needed or not */
             && !strcasecmp (self->conf->OUTPUT_ENCODING_NAME.string, "utf-8"))
           self->use_unicode_text = 1;

         html_prepare_conversion_units (self);
         converter_hv = (HV *) SvRV (converter_in);

         /* internal links code is in Perl */
         if (self->conf->INTERNAL_LINKS.string)
           self->external_references_number++;
         /* Conversion to LaTeX is in Perl */
         if (self->conf->CONVERT_TO_LATEX_IN_MATH.integer > 0)
           self->external_references_number++;

         if (self->external_references_number > 0)
           {
         /* need to setup the Perl tree before rebuilding the output units as
            they refer to Perl root command elements */
             SV **document_sv
               = hv_fetch (converter_hv, "document", strlen ("document"), 0);
             if (document_sv)
               {
                 HV *document_hv = (HV *) SvRV (*document_sv);
                 store_texinfo_tree (self->document, document_hv);
               }

             output_units_sv = build_output_units_list
               (self->output_units_descriptors[OUDT_units]);
             special_units_sv = build_output_units_list
               (self->output_units_descriptors[OUDT_special_units]);
             associated_special_units_sv = build_output_units_list
               (self->output_units_descriptors[OUDT_associated_special_units]);
           }
         else
           {
             output_units_sv = setup_output_units_handler
               (self->output_units_descriptors[OUDT_units]);
             special_units_sv = setup_output_units_handler
               (self->output_units_descriptors[OUDT_special_units]);
             associated_special_units_sv = setup_output_units_handler
               (self->output_units_descriptors[OUDT_associated_special_units]);
           }

         output_units_hv = (HV *) SvRV (output_units_sv);
         hv_store (converter_hv, "document_units", strlen ("document_units"),
                   newRV_inc ((SV *) output_units_hv), 0);

         /* calls perl customization functions, so need to be done after
            build_output_units_list calls to be able to retrieve Perl
            output units references */
         html_prepare_conversion_units_targets (self, document_name);

         EXTEND(SP, 3);
         PUSHs(sv_2mortal(output_units_sv));
         PUSHs(sv_2mortal(special_units_sv));
         PUSHs(sv_2mortal(associated_special_units_sv));

SV *
html_prepare_units_directions_files (SV *converter_in, SV *output_units_in, SV *special_units_in, SV *associated_special_units_in, output_file, destination_directory, output_filename, document_name)
         const char *output_file = (char *)SvPVutf8_nolen($arg);
         const char *destination_directory = (char *)SvPVutf8_nolen($arg);
         const char *output_filename = (char *)SvPVutf8_nolen($arg);
         const char *document_name = (char *)SvPVutf8_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_prepare_units_directions_files");
         html_prepare_units_directions_files (self,
                    output_file, destination_directory, output_filename,
                                 document_name);

         if (self->external_references_number > 0)
           {
             rebuild_output_units_list (output_units_in,
                           self->output_units_descriptors[OUDT_units]);
             rebuild_output_units_list (special_units_in,
                      self->output_units_descriptors[OUDT_special_units]);
             rebuild_output_units_list (associated_special_units_in,
                self->output_units_descriptors[OUDT_associated_special_units]);

             pass_html_global_units_directions (converter_in,
                                            self->global_units_directions,
                                            self->special_units_direction_name);
             pass_html_elements_in_file_count (converter_in,
                                               &self->output_unit_files);

             /* file names API */
             pass_output_unit_files (converter_in, &self->output_unit_files);
           }

         RETVAL = newSV (0);
    OUTPUT:
         RETVAL

void
html_prepare_output_units_global_targets (SV *converter_in, SV *output_units_in, SV *special_units_in, SV *associated_special_units_in)
  PREINIT:
         CONVERTER *self = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_prepare_output_units_global_targets");
         html_prepare_output_units_global_targets (self);

         if (self->external_references_number > 0)
           {
             rebuild_output_units_list (output_units_in,
                                self->output_units_descriptors[OUDT_units]);
             rebuild_output_units_list (special_units_in,
                        self->output_units_descriptors[OUDT_special_units]);
             rebuild_output_units_list (associated_special_units_in,
               self->output_units_descriptors[OUDT_associated_special_units]);

             pass_html_global_units_directions (converter_in,
                                            self->global_units_directions,
                                            self->special_units_direction_name);
           }


void
html_translate_names (SV *converter_in)
  PREINIT:
         CONVERTER *self = 0;
     CODE:
         self = get_sv_converter (converter_in, "html_translate_names");

         html_translate_names (self);
         /*
         build_html_translated_names ((HV *)SvRV (converter_in), self);
          */
         if (self->modified_state)
           {
             build_html_formatting_state (self, self->modified_state);
             self->modified_state = 0;
           }


void
html_prepare_simpletitle (SV *converter_in)
  PREINIT:
         CONVERTER *self = 0;
     CODE:
         self = get_sv_converter (converter_in, "html_prepare_simpletitle");
         if (self)
           {
             html_prepare_simpletitle (self);
             if (self->simpletitle_tree)
               {
                 HV *converter_hv = (HV *) SvRV (converter_in);
                 build_simpletitle (self, converter_hv);
               }
           }

void
html_prepare_converted_output_info (SV *converter_in)
  PREINIT:
         CONVERTER *self = 0;
    CODE:
         self = get_sv_converter (converter_in,
                                  "html_prepare_converted_output_info");
         if (self)
           {
             HV *converter_hv = (HV *) SvRV (converter_in);

             html_prepare_converted_output_info (self);

             if (self->external_references_number > 0)
               {
                 if (self->added_title_tree)
                   build_texinfo_tree (self->title_tree, 1);

                 if (self->simpletitle_tree)
                   build_simpletitle (self, converter_hv);

                 hv_store (converter_hv, "title_tree", strlen ("title_tree"),
                           newRV_inc ((SV *) self->title_tree->hv), 0);
                 hv_store (converter_hv, "title_string",
                           strlen ("title_string"),
                           newSVpv_utf8 (self->title_string, 0), 0);

                 if (self->copying_comment)
                   hv_store (converter_hv, "copying_comment",
                             strlen ("copying_comment"),
                             newSVpv_utf8 (self->copying_comment, 0), 0);
                 if (self->documentdescription_string)
                   hv_store (converter_hv, "documentdescription_string",
                             strlen ("documentdescription_string"),
                      newSVpv_utf8 (self->documentdescription_string, 0), 0);
               }
           }

void
html_prepare_title_titlepage (SV *converter_in, SV *output_units_in, output_file, output_filename)
         const char *output_file = (char *)SvPVutf8_nolen($arg);
         const char *output_filename = (char *)SvPVutf8_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
     CODE:
         self = get_sv_converter (converter_in, "html_prepare_title_titlepage");
         if (self)
           {
             html_converter_prepare_output_sv (converter_in, self);

             html_prepare_title_titlepage (self, output_file, output_filename);
             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
 /* should always happen as a string is always returned, possibly empty */
             if (self->title_titlepage && self->external_references_number > 0)
               {
                 HV *converter_hv = (HV *) SvRV (converter_in);
                 SV *title_titlepage_sv
                     = newSVpv_utf8 (self->title_titlepage, 0);
                 hv_store (converter_hv, "title_titlepage",
                           strlen ("title_titlepage"), title_titlepage_sv, 0);
               }
           }

SV *
html_convert_convert (SV *converter_in, SV *document_in, SV *output_units_in, SV *special_units_in)
  PREINIT:
         CONVERTER *self = 0;
         DOCUMENT *document = 0;
         char *result;
     CODE:
         self = get_sv_converter (converter_in, "html_convert_convert");
         /* there could be strange results if the document and the converter document
            do not match.  There is no reason why it would happen, though */
         document = get_sv_document_document (document_in,
                                              "html_convert_convert");
         result = html_convert_convert (self, document->tree);
         if (self->modified_state)
           {
             build_html_formatting_state (self, self->modified_state);
             self->modified_state = 0;
           }
         RETVAL = newSVpv_utf8 (result, 0);
         free (result);
    OUTPUT:
        RETVAL

# currently not used, convert_tree is not called on trees registered in XS
SV *
html_convert_tree (SV *converter_in, SV *tree_in, explanation)
        const char *explanation = (char *)SvPVbyte_nolen($arg);
  PROTOTYPE: $$;$
  PREINIT:
        CONVERTER *self = 0;
        DOCUMENT *document = 0;
        SV *result_sv = 0;
     CODE:
        self = get_sv_converter (converter_in, 0);
        if (self)
          {
            document = get_sv_tree_document (tree_in, 0);
            if (document)
              {
                char *result = html_convert_tree(self, document->tree,
                                                 explanation);
                result_sv = newSVpv_utf8 (result, 0);
                free (result);
              }
          }
        if (result_sv)
          RETVAL = result_sv;
        else
          RETVAL = newSV (0);
    OUTPUT:
        RETVAL

SV *
html_convert_output (SV *converter_in, SV *document_in, SV *output_units_in, SV *special_units_in, output_file, destination_directory, output_filename, document_name)
         const char *output_file = (char *)SvPVutf8_nolen($arg);
         const char *destination_directory = (char *)SvPVutf8_nolen($arg);
         const char *output_filename = (char *)SvPVutf8_nolen($arg);
         const char *document_name = (char *)SvPVutf8_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
         DOCUMENT *document = 0;
         SV *result_sv = 0;
   CODE:
         /* add warn string? */
         self = get_sv_converter (converter_in, "html_convert_output");
         document = get_sv_document_document (document_in,
                                              "html_convert_output");
         if (self && document)
           {
             char *result = html_convert_output (self, document->tree,
                        output_file, destination_directory, output_filename,
                        document_name);

             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }

             if (result)
               {
                 result_sv = newSVpv_utf8 (result, 0);
                 free (result);
               }

             build_output_files_information (converter_in,
                                             &self->output_files_information);
           }

         if (result_sv)
           RETVAL = result_sv;
         else
           RETVAL = newSV (0);
    OUTPUT:
        RETVAL

# Note that this override is never called as the Perl function is only
# called in an overriden function
SV *
html_prepare_node_redirection_page (SV *converter_in, SV *element_sv, redirection_filename)
         const char *redirection_filename = (char *)SvPVutf8_nolen($arg);
     PREINIT:
         CONVERTER *self;
         char *redirection_page = 0;
         const ELEMENT *element;
     CODE:
         element = element_converter_from_sv (converter_in, element_sv,
                              "html_prepare_node_redirection_page", &self);
         if (element)
           redirection_page
                 = html_prepare_node_redirection_page (self, element,
                                                       redirection_filename);

         if (redirection_page)
           {
             RETVAL = newSVpv_utf8 (redirection_page, 0);
             free (redirection_page);
           }
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL

SV *
html_node_redirections (SV *converter_in, output_file, destination_directory, ...)
         const char *output_file = (char *)SvPVutf8_nolen($arg);
         const char *destination_directory = (char *)SvPVutf8_nolen($arg);
  PROTOTYPE: $$$$
     PREINIT:
         CONVERTER *self;
         int status = -1;
     CODE:
         self = get_sv_converter (converter_in, "html_node_redirections");
         if (self)
           {
             status = html_node_redirections (self, output_file,
                                              destination_directory);
           }
         if (status >= 0)
           RETVAL = newSViv (status);
         else
           RETVAL = newSV (0);
    OUTPUT:
         RETVAL
