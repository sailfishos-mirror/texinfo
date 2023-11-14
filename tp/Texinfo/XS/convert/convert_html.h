/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "converter_types.h"
/* for FILE_SOURCE_INFO_LIST */
#include "utils.h"

extern char *html_conversion_context_type_names[];
extern char *html_global_unit_direction_names[];

extern char *html_formatting_reference_names[];

extern TRANSLATED_SUI_ASSOCIATION translated_special_unit_info[];
extern const char *special_unit_info_type_names[SUI_type_heading + 1];

void html_format_init (void);

void html_converter_initialize (CONVERTER *self);

void html_initialize_output_state (CONVERTER *self, char *context);
void html_finalize_output_state (CONVERTER *self);

void html_new_document_context (CONVERTER *self,
        char *context_name, char *document_global_context,
        enum command_id block_command);
void html_pop_document_context (CONVERTER *self);

void html_merge_index_entries (CONVERTER *self);

void html_prepare_conversion_units (CONVERTER *self,
                                    int *output_units_descriptor_ref,
                                    int *special_units_descriptor_ref,
                                    int *associated_special_units_descriptor_ref);

void html_prepare_conversion_units_targets (CONVERTER *self,
                                     const char *document_name,
                                     int output_units_descriptor,
                                     int special_units_descriptor,
                                     int associated_special_units_descriptor);

FILE_SOURCE_INFO_LIST * html_prepare_units_directions_files (CONVERTER *self,
          int output_units_descriptor,
          int special_units_descriptor, int associated_special_units_descriptor,
          char *output_file, char *destination_directory, char *output_filename,
          char *document_name);

void html_prepare_output_units_global_targets (CONVERTER *self,
                                        int output_units_descriptor,
                                        int special_units_descriptor,
                                        int associated_special_units_descriptor);

void html_translate_names (CONVERTER *self);

void html_prepare_title_titlepage (CONVERTER *self, int output_units_descriptor,
                                   char *output_file, char *output_filename);

char *html_convert_convert (CONVERTER *self, const ELEMENT *root,
                            int output_units_descriptor,
                            int special_units_descriptor);
char *html_convert_tree (CONVERTER *self, const ELEMENT *tree,
                         char *explanation);

char *html_convert_output (CONVERTER *self, const ELEMENT *root,
                           int output_units_descriptor,
                           int special_units_descriptor,
                           char *output_file, char *destination_directory,
                           char *output_filename, char *document_name);

void html_check_transfer_state_finalization (CONVERTER *self);
void html_destroy (CONVERTER *self);
void html_destroy_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info);
#endif
