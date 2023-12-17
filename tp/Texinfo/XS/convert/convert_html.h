/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "command_ids.h"
#include "element_types.h"
#include "converter_types.h"
/* for FILE_SOURCE_INFO_LIST */
#include "utils.h"

enum count_elements_in_filename_type {
  CEFT_total,
  CEFT_remaining,
  CEFT_current,
};

extern char *html_conversion_context_type_names[];
extern char *html_global_unit_direction_names[];

extern char *html_formatting_reference_names[];

extern TRANSLATED_SUI_ASSOCIATION translated_special_unit_info[];
extern const char *special_unit_info_type_names[SUI_type_heading + 1];
extern const char *htmlxref_split_type_names[htmlxref_split_type_chapter + 1];

extern const char *direction_string_type_names[];
extern const char *direction_string_context_names[];

extern char *count_elements_in_filename_type_names[];

void html_format_init (void);

void html_converter_initialize (CONVERTER *self);

void html_initialize_output_state (CONVERTER *self, char *context);
void html_finalize_output_state (CONVERTER *self);

void html_converter_prepare_output (CONVERTER* self);

int html_open_command_update_context (CONVERTER *self,
                                      enum command_id data_cmd);
void html_convert_command_update_context (CONVERTER *self,
                                          enum command_id data_cmd);
void html_open_type_update_context (CONVERTER *self,
                                    enum element_type type);
void html_convert_type_update_context (CONVERTER *self, enum element_type type);
void html_new_document_context (CONVERTER *self,
        char *context_name, char *document_global_context,
        enum command_id block_command);
void html_pop_document_context (CONVERTER *self);
void html_set_code_context (CONVERTER *self, int code);
void html_pop_code_context (CONVERTER *self);
void html_set_string_context (CONVERTER *self);
void html_unset_string_context (CONVERTER *self);
void html_set_raw_context (CONVERTER *self);
void html_unset_raw_context (CONVERTER *self);

int html_in_math (CONVERTER *self);
int html_in_preformatted_context (CONVERTER *self);
int html_inside_preformatted (CONVERTER *self);
int html_in_upper_case (CONVERTER *self);
int html_in_non_breakable_space (CONVERTER *self);
int html_in_space_protected (CONVERTER *self);
int html_in_code (CONVERTER *self);
int html_in_string (CONVERTER *self);
int html_in_verbatim (CONVERTER *self);
int html_in_raw (CONVERTER *self);
int html_paragraph_number (CONVERTER *self);
int html_preformatted_number (CONVERTER *self);
enum command_id html_top_block_command (CONVERTER *self);
STRING_STACK *html_preformatted_classes_stack (CONVERTER *self);
enum command_id html_in_align (CONVERTER *self);

char *debug_print_html_contexts (CONVERTER *self);

size_t html_count_elements_in_filename (CONVERTER *self,
                 enum count_elements_in_filename_type type,
                 const char *filename);

void html_register_file_information (CONVERTER *self, const char *key,
                                     int value);
int html_get_file_information (CONVERTER *self, const char *key,
                               const char *filename, int *status);

void html_register_opened_section_level (CONVERTER *self, int level,
                                         const char *close_string);
STRING_LIST *html_close_registered_sections_level (CONVERTER *self,
                                                   int level);

char *html_attribute_class (CONVERTER *self, const char *element,
                            const STRING_LIST *classes);
STRING_LIST *html_get_css_elements_classes (CONVERTER *self,
                                            const char *filename);

void html_register_footnote (CONVERTER *self, const ELEMENT *command,
     const char *footid, const char *docid, const int number_in_doc,
     const char *footnote_location_filename, char *multi_expanded_region);
HTML_PENDING_FOOTNOTE_STACK *html_get_pending_footnotes (CONVERTER *self);
void destroy_pending_footnotes (HTML_PENDING_FOOTNOTE_STACK *stack);

void html_register_pending_formatted_inline_content (CONVERTER *self,
                             const char *category, const char *inline_content);
char *html_cancel_pending_formatted_inline_content (CONVERTER *self,
                                                    const char *category);
char *html_get_pending_formatted_inline_content (CONVERTER *self);

void html_associate_pending_formatted_inline_content (CONVERTER *self,
                                            const ELEMENT *element,
                                            const void *hv,
                                            const char *inline_content);
char *html_get_associated_formatted_inline_content (CONVERTER *self,
                                              const ELEMENT *element,
                                              void *hv);

size_t html_check_htmlxref_already_warned (CONVERTER *self,
                                           const char *manual_name,
                                           const SOURCE_INFO *source_info);

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

void html_prepare_simpletitle (CONVERTER *self);
void html_prepare_converted_output_info (CONVERTER *self);
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
void html_free_converter (CONVERTER *self);
void html_reset_converter (CONVERTER *self);
void html_destroy_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info);

#endif
