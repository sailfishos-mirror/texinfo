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

#define PERLIO_NOT_STDIO 0

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
#include "build_perl_info.h"
#include "build_html_perl_state.h"
#include "convert_plain_texinfo.h"
#include "convert_text.h"
#include "convert_to_text.h"
#include "builtin_commands.h"
#include "indices_in_conversion.h"
#include "command_stack.h"
#include "convert_html.h"
#include "get_html_perl_info.h"
#include "document.h"

MODULE = Texinfo::Convert::ConvertXS	PACKAGE = Texinfo::Convert::ConvertXS

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

void set_conf(SV *converter_in, conf, SV *value)
         char *conf = (char *)SvPVbyte_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         /* warn? */
         self = get_sv_converter (converter_in, 0);
         if (self)
           set_conf (self, conf, value);

void
get_index_entries_sorted_by_letter (SV *converter_in, SV *index_entries_sorted_by_letter)
      PREINIT:
         CONVERTER *self;
         INDEX_SORTED_BY_LETTER **index_entries_by_letter;
      CODE:
         self = get_sv_converter (converter_in,
                                  "get_index_entries_sorted_by_letter");
         index_entries_by_letter
            = get_sv_index_entries_sorted_by_letter
                                          (self->document->index_names,
                                           index_entries_sorted_by_letter);
         self->index_entries_by_letter = index_entries_by_letter;

# pass the stream of an unclosed file path.
# tried with OutputStream instead of FILE, but it did not work, there
# was an error with a missing type.
FILE *
get_unclosed_stream (SV *converter_in, file_path)
        char *file_path = (char *)SvPVbyte_nolen($arg);
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
plain_texinfo_convert_tree (SV *tree_in)
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            char *result = plain_texinfo_convert (document);
            RETVAL = newSVpv_utf8 (result, 0);
            free (result);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

# unused argument is used in the overriden function if XS is not used
SV *
text_convert_tree (SV *text_options_in, SV *tree_in, unused=0)
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
            RETVAL = newSVpv_utf8 (result, 0);
            free (result);
          }
        else
          {
            destroy_text_options (text_options);
            RETVAL = newSV(0);
          }
    OUTPUT:
        RETVAL

# HTML

int
html_converter_initialize_sv (SV *converter_in, SV *default_formatting_references, SV *default_css_string_formatting_references, SV *default_commands_open, SV *default_commands_conversion, SV *default_css_string_commands_conversion, SV *default_types_open, SV *default_types_conversion, SV *default_css_string_types_conversion, SV *default_output_units_conversion)

void
html_initialize_output_state (SV *converter_in, char *context)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_initialize_output_state");
         if (self)
           html_initialize_output_state (self, context);

void
html_finalize_output_state (SV *converter_in)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_finalize_output_state");
         if (self)
           {
             html_finalize_output_state (self);

             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
           }

void
html_new_document_context (SV *converter_in, char *context_name, ...)
      PROTOTYPE: $$;$$
      PREINIT:
         CONVERTER *self;
         char *document_global_context = 0;
         char *block_command_name = 0;
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
             HV *document_context_hv;
             HTML_DOCUMENT_CONTEXT *document_context;
             HV *converter_hv = (HV *) SvRV (converter_in);
             SV **document_context_sv = hv_fetch (converter_hv,
                   "document_context", strlen("document_context"), 0);
             AV *document_context_av = (AV *) SvRV (*document_context_sv);
             /* should not be needed as we are calling from perl
             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
              */
             html_new_document_context (self, context_name,
                                        document_global_context, block_command);
             /* reset to ignore the HMSF_formatting_context flag just set */
             self->modified_state = 0;
             document_context = html_top_document_context (self);
             document_context_hv = build_html_document_context
                                                      (document_context);
             av_push (document_context_av,
                      newRV_noinc ((SV *) document_context_hv));
             self->document_context_change--;
             hv_store (converter_hv, "document_global_context",
                       strlen ("document_global_context"),
                       newSViv (self->document_global_context), 0);
           }


void
html_pop_document_context (SV *converter_in)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_new_document_context");
         if (self)
           {
             HV *converter_hv = (HV *) SvRV (converter_in);
             SV **document_context_sv = hv_fetch (converter_hv,
                   "document_context", strlen("document_context"), 0);
             AV *document_context_av = (AV *) SvRV (*document_context_sv);
             /* should not be needed as we are calling from perl
             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
              */
             html_pop_document_context (self);
             av_pop (document_context_av);
             hv_store (converter_hv, "document_global_context",
                       strlen ("document_global_context"),
                       newSViv (self->document_global_context), 0);
             /* reset to ignore the HMSF_formatting_context flag just set */
             self->modified_state = 0;
             self->document_context_change++;
           }


#  my ($output_units, $special_units, $associated_special_units)
#    = $self->_prepare_conversion_units($root, $document_name);
void
html_prepare_conversion_units (SV *converter_in, ...)
      PROTOTYPE: $$$
      PREINIT:
         HV *converter_hv;
         char *document_name = 0;
         CONVERTER *self;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         int associated_special_units_descriptor = 0;
         SV *output_units_sv;
         SV *special_units_sv;
         SV *associated_special_units_sv;
         HV *output_units_hv;
      PPCODE:
         if (items > 2 && SvOK(ST(2)))
           document_name = SvPVutf8_nolen (ST(2));

         self = set_output_converter_sv (converter_in,
                                         "html_prepare_conversion_units");
         html_prepare_conversion_units (self,
              &output_units_descriptor, &special_units_descriptor,
              &associated_special_units_descriptor);

         output_units_sv = build_output_units_list (output_units_descriptor);
         special_units_sv = build_output_units_list (special_units_descriptor);
         associated_special_units_sv
           = build_output_units_list (associated_special_units_descriptor);

         converter_hv = (HV *) SvRV (converter_in);
         output_units_hv = (HV *) SvRV (output_units_sv);
         hv_store (converter_hv, "document_units", strlen ("document_units"),
                   newRV_inc ((SV *) output_units_hv), 0);

         /* calls perl customization functions, so need to be done after
            build_output_units_list calls to be able to retrieve perl units */
         html_prepare_conversion_units_targets (self, document_name,
              output_units_descriptor, special_units_descriptor,
              associated_special_units_descriptor);

         pass_html_element_targets (converter_in, &self->html_targets);
         pass_html_special_targets (converter_in, self->html_special_targets);
         pass_html_seen_ids (converter_in, &self->seen_ids);

         pass_converter_errors (self->error_messages, self->hv);

         EXTEND(SP, 3);
         PUSHs(sv_2mortal(output_units_sv));
         PUSHs(sv_2mortal(special_units_sv));
         PUSHs(sv_2mortal(associated_special_units_sv));

SV *
html_prepare_units_directions_files (SV *converter_in, SV *output_units_in, SV *special_units_in, SV *associated_special_units_in, output_file, destination_directory, output_filename, document_name)
         char *output_file = (char *)SvPVutf8_nolen($arg);
         char *destination_directory = (char *)SvPVutf8_nolen($arg);
         char *output_filename = (char *)SvPVutf8_nolen($arg);
         char *document_name = (char *)SvPVutf8_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         int associated_special_units_descriptor = 0;
         FILE_SOURCE_INFO_LIST *files_source_info = 0;
         SV *files_source_info_sv;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_prepare_units_directions_files");
         if (SvOK (output_units_in))
           output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in,
                         "html_prepare_units_directions_files output units");
         if (SvOK (special_units_in))
           special_units_descriptor
             = get_sv_output_units_descriptor (special_units_in,
                        "html_prepare_units_directions_files special units");
         if (SvOK (associated_special_units_in))
           associated_special_units_descriptor
             = get_sv_output_units_descriptor (associated_special_units_in,
             "html_prepare_units_directions_files associated special units");

         files_source_info = html_prepare_units_directions_files (self,
                    output_units_descriptor, special_units_descriptor,
                    associated_special_units_descriptor, output_file,
                    destination_directory, output_filename, document_name);

         rebuild_output_units_list (output_units_in, output_units_descriptor);
         rebuild_output_units_list (special_units_in, special_units_descriptor);
         rebuild_output_units_list (associated_special_units_in,
                                    associated_special_units_descriptor);

         files_source_info_sv
           = build_html_files_source_info (files_source_info);
         pass_html_global_units_directions (converter_in,
                                            self->global_units_directions,
                                            self->special_units_direction_name);
         pass_html_elements_in_file_count (converter_in,
                                           &self->output_unit_files);

         /* file names API */
         pass_output_unit_files (converter_in, &self->output_unit_files);

         RETVAL = files_source_info_sv;
    OUTPUT:
         RETVAL

void
html_prepare_output_units_global_targets (SV *converter_in, SV *output_units_in, SV *special_units_in, SV *associated_special_units_in)
  PREINIT:
         CONVERTER *self = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         int associated_special_units_descriptor = 0;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_prepare_output_units_global_targets");
         if (SvOK (output_units_in))
           output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in,
                         "html_prepare_output_units_global_targets output units");
         if (SvOK (special_units_in))
           special_units_descriptor
             = get_sv_output_units_descriptor (special_units_in,
                        "html_prepare_output_units_global_targets special units");
         if (SvOK (associated_special_units_in))
           associated_special_units_descriptor
             = get_sv_output_units_descriptor (associated_special_units_in,
             "html_prepare_output_units_global_targets associated special units");

         html_prepare_output_units_global_targets (self,
                output_units_descriptor, special_units_descriptor,
                associated_special_units_descriptor);

         rebuild_output_units_list (output_units_in, output_units_descriptor);
         rebuild_output_units_list (special_units_in, special_units_descriptor);
         rebuild_output_units_list (associated_special_units_in,
                                    associated_special_units_descriptor);

         pass_html_global_units_directions (converter_in,
                                            self->global_units_directions,
                                            self->special_units_direction_name);


void
html_translate_names (SV *converter_in)
  PREINIT:
         CONVERTER *self = 0;
         HV *hv_in;
         SV **converter_options_sv;
     CODE:
         self = get_sv_converter (converter_in, "html_translate_names");
         /* that kind of code could be in get_perl_info too */
         hv_in = (HV *)SvRV (converter_in);
         converter_options_sv = hv_fetch (hv_in, "conf",
                                   strlen ("conf"), 0);

         if (converter_options_sv)
           {
             if (self->conf)
               free_options (self->conf);
             free (self->conf);

             self->conf
              = copy_sv_options (*converter_options_sv);
           }

         html_translate_names (self);

         if (self->modified_state)
           {
             build_html_formatting_state (self, self->modified_state);
             self->modified_state = 0;
           }


void
html_prepare_title_titlepage (SV *converter_in, SV *output_units_in, output_file, output_filename)
         char *output_file = (char *)SvPVutf8_nolen($arg);
         char *output_filename = (char *)SvPVutf8_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
         int output_units_descriptor = 0;
     CODE:
         self = get_sv_converter (converter_in, "html_prepare_title_titlepage");
         if (SvOK (output_units_in))
           output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in,
                         "html_prepare_title_titlepage output units");

         if (self)
           {
             html_prepare_title_titlepage (self, output_units_descriptor,
                                           output_file, output_filename);
             if (self->modified_state)
               {
                 build_html_formatting_state (self, self->modified_state);
                 self->modified_state = 0;
               }
 /* should always happen as a string is always returned, possibly empty */
             if (self->title_titlepage)
               {
                 HV *converter_hv = (HV *) SvRV (converter_in);
                 SV *title_titlepage_sv
                     = newSVpv_utf8 (self->title_titlepage, 0);
                 hv_store (converter_hv, "title_titlepage",
                           strlen ("title_titlepage"), title_titlepage_sv, 0);
               }
           }

SV *
html_convert_convert (SV *converter_in, SV *tree_in, SV *output_units_in, SV *special_units_in)
  PREINIT:
         CONVERTER *self = 0;
         DOCUMENT *document = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         char *result;
     CODE:
         self = get_sv_converter (converter_in, "html_convert_convert");
         /* there could be strange results if the document and the converter document
            do not match.  There is no reason why it would happen, though */
         document = get_sv_tree_document (tree_in, "html_convert_convert");
         if (SvOK (output_units_in))
           output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in,
                         "html_convert_convert output units");
         if (SvOK (special_units_in))
           special_units_descriptor
             = get_sv_output_units_descriptor (special_units_in,
                        "html_convert_convert special units");
         result = html_convert_convert (self, document->tree,
                                        output_units_descriptor,
                                        special_units_descriptor);
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
        char *explanation = (char *)SvPVbyte_nolen($arg);
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
html_convert_output (SV *converter_in, SV *tree_in, SV *output_units_in, SV *special_units_in, output_file, destination_directory, output_filename, document_name)
         char *output_file = (char *)SvPVutf8_nolen($arg);
         char *destination_directory = (char *)SvPVutf8_nolen($arg);
         char *output_filename = (char *)SvPVutf8_nolen($arg);
         char *document_name = (char *)SvPVutf8_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
         DOCUMENT *document = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         SV *result_sv = 0;
   CODE:
         /* add warn string? */
         self = get_sv_converter (converter_in, "html_convert_output");
         document = get_sv_tree_document (tree_in, "html_convert_output");
         if (SvOK (output_units_in))
           output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in,
                         "html_convert_output output units");
         if (SvOK (special_units_in))
           special_units_descriptor
             = get_sv_output_units_descriptor (special_units_in,
                        "html_convert_output special units");

         if (self && document)
           {
             char *result = html_convert_output (self, document->tree,
                        output_units_descriptor, special_units_descriptor,
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

             build_output_files_information (self);
           }

         if (result_sv)
           RETVAL = result_sv;
         else
           RETVAL = newSV (0);
    OUTPUT:
        RETVAL
