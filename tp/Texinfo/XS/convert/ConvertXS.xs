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

#include "command_ids.h"
#include "element_types.h"
#include "converter_types.h"
#include "builtin_commands.h"
#include "errors.h"
#include "convert_plain_texinfo.h"
#include "convert_text.h"
#include "convert_to_text.h"
#include "convert_to_texinfo.h"
#include "indices_in_conversion.h"
#include "command_stack.h"
#include "document.h"
#include "get_perl_info.h"
#include "build_perl_info.h"
#include "build_html_perl_state.h"
#include "converter.h"
#include "convert_html.h"
#include "get_html_perl_info.h"

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
set_conf(SV *converter_in, conf, SV *value)
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
         INDEX_SORTED_BY_LETTER *index_entries_by_letter;
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
get_converter_errors (SV *converter_in)
      PREINIT:
         AV *errors_av;
         CONVERTER *self = 0;
      CODE:
         self = get_sv_converter (converter_in, 0);
         if (self && self->error_messages.number)
           {
             errors_av = get_errors (self->error_messages.list,
                                     self->error_messages.number);
             wipe_error_message_list (&self->error_messages);
           }
         else
           errors_av = newAV ();

         RETVAL = newRV_noinc ((SV *) errors_av);
    OUTPUT:
         RETVAL

void
destroy (SV *converter_in)
      PREINIT:
         CONVERTER *self = 0;
         HV *stash;
         char *name;
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

void
html_format_init ()

int
html_converter_initialize_sv (SV *converter_in, SV *default_formatting_references, SV *default_css_string_formatting_references, SV *default_commands_open, SV *default_commands_conversion, SV *default_css_string_commands_conversion, SV *default_types_open, SV *default_types_conversion, SV *default_css_string_types_conversion, SV *default_output_units_conversion, SV *default_special_unit_body)

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
             html_check_transfer_state_finalization (self);
           }

void
html_register_id (SV *converter_in, id)
         char *id = (char *)SvPVutf8_nolen($arg);
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_register_id");
         if (self)
          /* note that we do not care about having the same id twice */
           add_string (id, &self->seen_ids);


int html_id_is_registered (SV *converter_in, id)
         char *id = (char *)SvPVutf8_nolen($arg);
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
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_debug_print_html_contexts");
         if (self)
           {
             char *result = debug_print_html_contexts (self);
             RETVAL = newSVpv_utf8 (result, 0);
             free (result);
           }
         else
           RETVAL = newSVpv_utf8 ("", 0);
    OUTPUT:
         RETVAL

int
html_in_math (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_math");
         RETVAL = html_in_math (self);
    OUTPUT:
         RETVAL

int
html_in_preformatted_context (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_preformatted_context");
         RETVAL = html_in_preformatted_context (self);
    OUTPUT:
         RETVAL

int
html_inside_preformatted (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_inside_preformatted");
         RETVAL = html_inside_preformatted (self);
    OUTPUT:
         RETVAL

int
html_in_upper_case (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_upper_case");
         RETVAL = html_in_upper_case (self);
    OUTPUT:
         RETVAL

int
html_in_non_breakable_space (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_non_breakable_space");
         RETVAL = html_in_non_breakable_space (self);
    OUTPUT:
         RETVAL

int
html_in_space_protected (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_space_protected");
         RETVAL = html_in_space_protected (self);
    OUTPUT:
         RETVAL

int
html_in_code (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_code");
         RETVAL = html_in_code (self);
    OUTPUT:
         RETVAL

int
html_in_string (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_string");
         RETVAL = html_in_string (self);
    OUTPUT:
         RETVAL

int
html_in_verbatim (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_verbatim");
         RETVAL = html_in_verbatim (self);
    OUTPUT:
         RETVAL

int
html_in_raw (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_raw");
         RETVAL = html_in_raw (self);
    OUTPUT:
         RETVAL

int
html_paragraph_number (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_paragraph_number");
         RETVAL = html_paragraph_number (self);
    OUTPUT:
         RETVAL

int
html_preformatted_number (SV *converter_in)
     PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_preformatted_number");
         RETVAL = html_preformatted_number (self);
    OUTPUT:
         RETVAL

char *
html_top_block_command (SV *converter_in)
     PREINIT:
         CONVERTER *self;
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
         CONVERTER *self;
         STRING_STACK *preformatted_classes_stack;
         AV *preformatted_classes_av;
         size_t i;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_preformatted_classes_stack");
         preformatted_classes_stack = html_preformatted_classes_stack (self);
         preformatted_classes_av = newAV();
         for (i = 0; i < preformatted_classes_stack->top; i++)
           {
             SV *class_sv
               = newSVpv_utf8 (preformatted_classes_stack->stack[i], 0);
             av_push (preformatted_classes_av, class_sv);
           }
         RETVAL = newRV_noinc ((SV *)preformatted_classes_av);
    OUTPUT:
         RETVAL

char *
html_in_align (SV *converter_in)
     PREINIT:
         CONVERTER *self;
         enum command_id cmd;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_in_align");
         cmd = html_in_align (self);
         RETVAL = builtin_command_name (cmd);
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
         char *key = (char *)SvPVutf8_nolen($arg);
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
             char *filename = 0;
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

void
html_register_opened_section_level (SV *converter_in, int level, close_string)
         char *close_string = (char *)SvPVutf8_nolen($arg);
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
         char *element = (char *)SvPVutf8_nolen($arg);
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
                 classes = (STRING_LIST *) malloc (sizeof (STRING_LIST));
                 memset (classes, 0, sizeof (STRING_LIST));
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
             char *filename = 0;
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
html_register_footnote (SV *converter_in, SV *command, footid, docid, int number_in_doc, footnote_location_filename, ...)
         char *footid = (char *)SvPVutf8_nolen($arg);
         char *docid = (char *)SvPVutf8_nolen($arg);
         char *footnote_location_filename = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$$$$$$
      PREINIT:
         CONVERTER *self;
         char *multi_expanded_region = 0;
      CODE:
         self = get_sv_converter (converter_in,
                                  "html_register_footnote");
         if (self)
           {
             /* find footnote in XS.  First use number_in_doc, if not
                effective, do a linear search */
             /* TODO if not found, could determine an offset with
                     number_in_doc and reuse it. */
             /* TODO another possibility would be to setup a sorted array
                when setting up the footnotes targets and use bsearch,
                although it is not clear that it would be more efficient */
             ELEMENT *footnote = 0;
             ELEMENT *current;
             HV *command_hv = (HV *) SvRV (command);
             ELEMENT_LIST *footnotes
                = &self->document->global_commands->footnotes;
             if (number_in_doc - 1 < footnotes->number)
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
         char *category = (char *)SvPVutf8_nolen($arg);
      PROTOTYPE: $$$
      PREINIT:
         CONVERTER *self;
         char *inline_content = 0;
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
         char *category = (char *)SvPVutf8_nolen($arg);
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
         char *inline_content = (char *)SvPVutf8_nolen($arg);
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

void
html_merge_index_entries (SV *converter_in)
      PREINIT:
         CONVERTER *self;
     CODE:
         self = get_sv_converter (converter_in,
                                  "html_merge_index_entries");
         if (self)
           html_merge_index_entries (self);

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

         if (self->conf->OUTPUT_CHARACTERS > 0
             && self->conf->OUTPUT_ENCODING_NAME
             /* not sure if strcasecmp is needed or not */
             && !strcasecmp (self->conf->OUTPUT_ENCODING_NAME, "utf-8"))
           self->use_unicode_text = 1;

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

         pass_converter_errors (&self->error_messages, self->hv);

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

         if (files_source_info)
           {
             html_destroy_files_source_info (files_source_info);
           }

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
              = copy_sv_options (*converter_options_sv, self);
           }

         html_translate_names (self);

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
                 hv_store (converter_hv, "simpletitle_tree",
                           strlen ("simpletitle_tree"),
                           newRV_inc ((SV *) self->simpletitle_tree->hv), 0);
                 hv_store (converter_hv, "simpletitle_command_name",
                           strlen ("simpletitle_command_name"),
                  newSVpv (builtin_command_name (self->simpletitle_cmd), 0), 0);
               }
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
             html_converter_prepare_output_sv (converter_in, self);

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

             build_output_files_information (converter_in,
                                             &self->output_files_information);
           }

         if (result_sv)
           RETVAL = result_sv;
         else
           RETVAL = newSV (0);
    OUTPUT:
        RETVAL
