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

#include "get_perl_info.h"
#include "build_perl_info.h"
#include "convert_plain_texinfo.h"
#include "convert_text.h"
#include "convert_to_text.h"
#include "indices_in_conversion.h"
#include "convert_html.h"
#include "document.h"

MODULE = Texinfo::Convert::ConvertXS	PACKAGE = Texinfo::Convert::ConvertXS

# there is always a check on prototypes in XSLoader.  So it is simpler if
# they are enabled, and they can/may need to be overriden in a declaration
PROTOTYPES: ENABLE

SV *
plain_texinfo_convert_tree (tree_in)
        SV *tree_in
    PREINIT:
        DOCUMENT *document = 0;
    CODE:
        /* FIXME warning/error if not found? */
        document = get_sv_tree_document (tree_in, 0);
        if (document)
          {
            char *result = plain_texinfo_convert (document);
            RETVAL = newSVpv (result, strlen(result));
            free (result);
            SvUTF8_on (RETVAL);
          }
        else
          RETVAL = newSV(0);
    OUTPUT:
        RETVAL

# unused argument is used in the overriden function if XS is not used
SV *
text_convert_tree (text_options_in, tree_in, unused=0)
        SV *text_options_in
        SV *tree_in
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
            RETVAL = newSVpv (result, strlen(result));
            free (result);
            SvUTF8_on (RETVAL);
          }
        else
          {
            destroy_text_options (text_options);
            RETVAL = newSV(0);
          }
    OUTPUT:
        RETVAL

int
html_converter_initialize_sv (SV *converter_in, SV *default_formatting_references, SV *default_css_string_formatting_references, SV *default_commands_open, SV *default_commands_conversion, SV *default_types_open, SV *default_types_conversion)

void
html_initialize_output_state (SV *converter_in)
      PREINIT:
         CONVERTER *self;
      CODE:
         self = get_sv_converter (converter_in, "html_initialize_output_state");
         if (self)
           html_initialize_output_state (self);

# unfinished, see sort_indices_by_letter comment
void
sort_sortable_index_entries_by_letter (SV *converter_in, SV *sortable_entries_in)
      PREINIT:
         CONVERTER *self;
         INDEX_SORTABLE_ENTRIES **sortable_entries = 0;
         INDEX_SORTED_BY_LETTER **indices_sorted_by_letter = 0;
      CODE:
         /* add warn string? */
         self = get_sv_converter (converter_in, 0);
         sortable_entries = get_sv_sortable_entries (sortable_entries_in);
         indices_sorted_by_letter = sort_indices_by_letter (self,
                                                      sortable_entries);
         self->index_entries_by_letter = indices_sorted_by_letter;

void
get_index_entries_sorted_by_letter (SV *converter_in, SV *index_entries_sorted_by_letter)
      PREINIT:
         CONVERTER *self;
      CODE:
         /* add warn string? */
         self = get_sv_converter (converter_in, 0);
         get_sv_index_entries_sorted_by_letter (self,
                                           index_entries_sorted_by_letter);

#    ($output_units, $special_units, $associated_special_units)
#      = _XS_prepare_conversion_units($encoded_options, $document_name);
void
html_prepare_conversion_units (SV *converter_in, ...)
      PROTOTYPE: $;$
      PREINIT:
         char *document_name = 0;
         CONVERTER *self;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         int associated_special_units_descriptor = 0;
         SV *output_units_sv;
         SV *special_units_sv;
         SV *associated_special_units_sv;
         SV *targets_sv;
         SV *special_targets_sv;
         SV *seen_ids_sv;
      PPCODE:
         if (items > 1)
           if (SvOK(ST(1)))
             document_name = SvPVbyte_nolen (ST(1));

         /* add warn string? */
         self = set_output_converter_sv (converter_in, 0);
         html_prepare_conversion_units (self,
              &output_units_descriptor, &special_units_descriptor,
              &associated_special_units_descriptor);

         output_units_sv = build_output_units_list (output_units_descriptor);
         special_units_sv = build_output_units_list (special_units_descriptor);
         associated_special_units_sv
           = build_output_units_list (associated_special_units_descriptor);

         /* calls perl customization functions, so need to be done after
            build_output_units_list calls to be able to retrieve perl units */
         html_prepare_conversion_units_targets (self, document_name,
              output_units_descriptor, special_units_descriptor,
              associated_special_units_descriptor);

         targets_sv = build_html_element_targets (self->html_targets);
         special_targets_sv
           = build_html_special_targets (self->html_special_targets);
         seen_ids_sv = build_html_seen_ids (self->seen_ids);

         pass_converter_errors (self->error_messages, self->hv);

         EXTEND(SP, 6);
         PUSHs(sv_2mortal(output_units_sv));
         PUSHs(sv_2mortal(special_units_sv));
         PUSHs(sv_2mortal(associated_special_units_sv));
         PUSHs(sv_2mortal(targets_sv));
         PUSHs(sv_2mortal(special_targets_sv));
         PUSHs(sv_2mortal(seen_ids_sv));

void
html_prepare_units_directions_files (SV *converter_in, SV *output_units_in, SV *special_units_in, SV *associated_special_units_in, output_file, destination_directory, output_filename, document_name)
         char *output_file = (char *)SvPVbyte_nolen($arg);
         char *destination_directory = (char *)SvPVbyte_nolen($arg);
         char *output_filename = (char *)SvPVbyte_nolen($arg);
         char *document_name = (char *)SvPVbyte_nolen($arg);
  PREINIT:
         CONVERTER *self = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         int associated_special_units_descriptor = 0;
         FILE_SOURCE_INFO_LIST *files_source_info = 0;
         SV *files_source_info_sv;
         SV *global_units_directions_sv;
         SV *elements_in_file_count_sv;

         SV *filenames_sv;
         SV *file_counters_sv;
         SV *out_filepaths_sv;
   PPCODE:
         /* add warn string? */
         self = get_sv_converter (converter_in, 0);
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
         global_units_directions_sv
           = build_html_global_units_directions (self->global_units_directions,
                                          self->special_units_direction_name);
         elements_in_file_count_sv
           = build_html_elements_in_file_count (self->output_unit_files);

         /* file names API */
         filenames_sv = build_filenames (self->output_unit_files);
         file_counters_sv = build_file_counters (self->output_unit_files);
         out_filepaths_sv = build_out_filepaths (self->output_unit_files);

         EXTEND(SP, 6);
         PUSHs(sv_2mortal(files_source_info_sv));
         PUSHs(sv_2mortal(global_units_directions_sv));
         PUSHs(sv_2mortal(elements_in_file_count_sv));

         PUSHs(sv_2mortal(filenames_sv));
         PUSHs(sv_2mortal(file_counters_sv));
         PUSHs(sv_2mortal(out_filepaths_sv));

SV *
html_prepare_output_units_global_targets (SV *converter_in, SV *output_units_in, SV *special_units_in, SV *associated_special_units_in)
  PREINIT:
         CONVERTER *self = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         int associated_special_units_descriptor = 0;
     CODE:
         /* add warn string? */
         self = get_sv_converter (converter_in, 0);
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

         RETVAL
           = build_html_global_units_directions (self->global_units_directions,
                                          self->special_units_direction_name);
    OUTPUT:
        RETVAL


void
html_translate_names (SV *converter_in)
  PREINIT:
         CONVERTER *self = 0;
         HV *hv_in;
         SV **converter_options_sv;
     CODE:
         self = get_sv_converter (converter_in, 0);
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

SV *
html_convert_init (SV *converter_in)
  PREINIT:
         CONVERTER *self = 0;
     CODE:
         /* TODO error?  Return undef if not found? */
         self = get_sv_converter (converter_in, 0);
         html_convert_init (self);
         if (self->title_titlepage)
           RETVAL = newSVpv_utf8 (self->title_titlepage, 0);
         else
 /* should never happen as a string is always returned, possibly empty */
           RETVAL = newSV(0);
    OUTPUT:
        RETVAL

SV *
html_convert_convert (SV *converter_in, SV *tree_in, SV *output_units_in, SV *special_units_in)
  PREINIT:
         CONVERTER *self = 0;
         DOCUMENT *document = 0;
         int output_units_descriptor = 0;
         int special_units_descriptor = 0;
         char *result;
     CODE:
         self = get_sv_converter (converter_in, 0);
         /* there could be strange results if the document and the converter document
            do not match.  There is no reason why it would happen, though */
         document = get_sv_tree_document (tree_in, 0);
         if (SvOK (output_units_in))
           output_units_descriptor
             = get_sv_output_units_descriptor (output_units_in,
                         "html_prepare_output_units_global_targets output units");
         if (SvOK (special_units_in))
           special_units_descriptor
             = get_sv_output_units_descriptor (special_units_in,
                        "html_prepare_output_units_global_targets special units");
         result = html_convert_convert (self, document->tree,
                                        output_units_descriptor,
                                        special_units_descriptor);
         RETVAL = newSVpv_utf8 (result, 0);
         free (result);
    OUTPUT:
        RETVAL

