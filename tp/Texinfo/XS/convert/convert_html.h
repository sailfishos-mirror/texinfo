/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "converter_types.h"
#include "html_converter_types.h"


extern const char *html_conversion_context_type_names[];
extern const char *html_global_unit_direction_names[];

extern const char *html_formatting_reference_names[];

extern const char *html_argument_formatting_type_names[];

extern const TRANSLATED_SUI_ASSOCIATION translated_special_unit_info[];
extern const char *special_unit_info_type_names[SUI_type_heading + 1];
extern const char *htmlxref_split_type_names[htmlxref_split_type_chapter + 1];

extern const char *direction_string_type_names[];
extern const char *direction_string_context_names[];

extern const char *html_stage_handler_stage_type_names[];
extern COMMAND_ID_LIST no_arg_formatted_cmd;

void html_format_setup (void);

void html_converter_init_special_unit (CONVERTER *self);
void html_converter_customize (CONVERTER *self);

void html_initialize_output_state (CONVERTER *self, const char *context);
void init_conversion_after_setup_handler (CONVERTER *self);
void html_conversion_finalization (CONVERTER *self);

int html_setup_output (CONVERTER *self, char **paths);
void html_setup_convert (CONVERTER *self);

void initialize_cmd_list (COMMAND_ID_LIST *cmd_list, size_t size,
                          size_t number);

char *substitute_html_non_breaking_space (CONVERTER *self, const char *text);

HTMLXREF_MANUAL *new_htmlxref_manual_list (size_t size);
void initialize_js_categories_list (JSLICENSE_CATEGORY_LIST *js_files_info,
                                   size_t size);
void initialize_jslicense_files
                       (JSLICENSE_FILE_INFO_LIST *jslicences_files_info,
                                 const char *category, size_t size);
HTML_DIRECTION_STRING_TRANSLATED *new_directions_strings_translated_type
  (int nr_string_directions);
char ***new_directions_strings_type (int nr_string_directions,
                                     int nr_dir_str_contexts);
FORMATTING_REFERENCE *new_special_unit_formatting_references
                                      (int special_units_varieties_nr);
char **new_special_unit_info_type (int special_units_varieties_nr);

SPECIAL_UNIT_INFO *html_add_special_unit_info (
                            SPECIAL_UNIT_INFO_LIST *special_unit_info_list,
                            int type, size_t variety_nr, const char *value);

int html_id_is_registered (CONVERTER *self, const char *string);
void html_register_id (CONVERTER *self, const char *string);

int html_special_unit_variety_direction_index (const CONVERTER *self,
                                        const char *special_unit_variety);

HTML_TARGET *html_get_target (const CONVERTER *self, const ELEMENT *element);
const char *html_command_id (const CONVERTER *self, const ELEMENT *command);
const char *html_command_contents_target (CONVERTER *self,
                                    const ELEMENT *command,
                                    enum command_id contents_or_shortcontents);
const char *html_footnote_location_target (const CONVERTER *self,
                                           const ELEMENT *command);
const FILE_NUMBER_NAME *html_command_filename (CONVERTER *self,
                                         const ELEMENT *command);
const ELEMENT *html_command_root_element_command (CONVERTER *self,
                                            const ELEMENT *command);
const ELEMENT *html_command_node (CONVERTER *self, const ELEMENT *command);
char *html_internal_command_href (CONVERTER *self, const ELEMENT *command,
                            const char *source_filename,
                            const char *specified_target);
char *html_command_contents_href (CONVERTER *self, const ELEMENT *command,
                            enum command_id contents_or_shortcontents,
                            const char *source_filename);
char *html_footnote_location_href (CONVERTER *self, const ELEMENT *command,
                             const char *source_filename,
                             const char *specified_target,
                             const char *target_filename_in);
TREE_ADDED_ELEMENTS *html_internal_command_tree (CONVERTER *self,
                            const ELEMENT *command, int no_number);
char *html_internal_command_text (CONVERTER *self, const ELEMENT *command,
                                  const enum html_text_type type);
char *html_command_description (CONVERTER *self, const ELEMENT *command,
                                const enum html_text_type type);

FOOTNOTE_ID_NUMBER *find_footnote_id_number (const CONVERTER *self,
                                           const char *footnote_id);

char *html_attribute_class (CONVERTER *self, const char *element,
                            const STRING_LIST *classes);

void html_prepare_conversion_units (CONVERTER *self);

void html_prepare_conversion_units_targets (CONVERTER *self,
                                     const char *document_name);

FILE_SOURCE_INFO_LIST * html_prepare_units_directions_files (CONVERTER *self,
          const char *output_file, const char *destination_directory,
          const char *output_filename, const char *document_name);

void html_prepare_output_units_global_targets (CONVERTER *self);
void html_setup_global_units_direction_names (CONVERTER *self);
const OUTPUT_UNIT *html_find_direction_name_global_unit (const CONVERTER *self,
                                                   const char *direction_name);

void html_translate_names (CONVERTER *self);

void html_prepare_simpletitle (CONVERTER *self);
int html_prepare_converted_output_info (CONVERTER *self,
                                        const char *output_file,
                                        const char *output_filename);
void html_prepare_title_titlepage (CONVERTER *self, const char *output_file,
                                   const char *output_filename);

char *debug_print_html_contexts (const CONVERTER *self);

char *html_convert_convert (CONVERTER *self, const ELEMENT *root);
char *html_convert_tree (CONVERTER *self, const ELEMENT *tree,
                         const char *explanation);

char *html_convert_output (CONVERTER *self, const ELEMENT *root,
                           const char *output_file,
                           const char *destination_directory,
                           const char *output_filename,
                           const char *document_name);

void html_do_js_files (CONVERTER *self);

char *html_prepare_node_redirection_page (CONVERTER *self,
                                          const ELEMENT *element,
                                          const char *filename);
int html_node_redirections (CONVERTER *self,
            const char *output_file, const char *destination_directory);

int html_finish_output (CONVERTER *self, const char *output_file,
                        const char *destination_directory);

void html_check_transfer_state_finalization (CONVERTER *self);
void html_destroy_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info);

#endif
