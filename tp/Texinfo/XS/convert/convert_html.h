/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

/* Copyright 2010-2024 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "converter_types.h"
#include "html_converter_types.h"

typedef struct ROOT_AND_UNIT {
    const OUTPUT_UNIT *output_unit;
    const ELEMENT *root;
} ROOT_AND_UNIT;

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

void html_conversion_finalization (CONVERTER *self);

int html_id_is_registered (CONVERTER *self, const char *string);
void html_register_id (CONVERTER *self, const char *string);

OUTPUT_UNIT *html_get_top_unit (DOCUMENT *document,
                                const OUTPUT_UNIT_LIST *output_units);

ROOT_AND_UNIT *html_get_tree_root_element (CONVERTER *self,
                                           const ELEMENT *command,
                                           int find_container);

char *html_after_escaped_characters (char *text);
char *html_substitute_non_breaking_space (CONVERTER *self, const char *text);

HTML_TARGET *html_get_target (const CONVERTER *self, const ELEMENT *element);

void html_set_file_source_info (FILE_SOURCE_INFO *file_source_info,
                                const char *file_info_type,
                                const char *file_info_name,
                                const ELEMENT *file_info_element,
                                const char *filepath);
FILE_SOURCE_INFO *html_add_to_files_source_info (
                              FILE_SOURCE_INFO_LIST *files_source_info,
                              const char *filename,
                              const char *file_info_type,
                              const char *file_info_name,
                              const ELEMENT *file_info_element,
                              const char *filepath);
FILE_SOURCE_INFO *html_find_file_source_info (
                            FILE_SOURCE_INFO_LIST *files_source_info,
                            const char *filename);

void html_setup_output_simple_page (CONVERTER *self,
                                    const char *output_filename);

const char *html_special_unit_info (const CONVERTER *self,
                                    enum special_unit_info_type type,
                                    const char *special_unit_variety);

char *html_normalized_to_id (const char *id);
TARGET_FILENAME *html_normalized_label_id_file (CONVERTER *self,
                                                const char *normalized,
                                                const ELEMENT* label_element);

int html_run_stage_handlers (CONVERTER *self,
                             enum html_stage_handler_stage_type stage);

void html_default_format_protect_text (const char *text, TEXT *result);

HTMLXREF_MANUAL *new_htmlxref_manual_list (size_t size);
void initialize_js_categories_list (JSLICENSE_CATEGORY_LIST *js_files_info,
                                   size_t size);
void initialize_jslicense_files
                       (JSLICENSE_FILE_INFO_LIST *jslicences_files_info,
                                 const char *category, size_t size);
FORMATTING_REFERENCE *new_special_unit_formatting_references
                                      (int special_units_varieties_nr);
char **new_special_unit_info_type (int special_units_varieties_nr);

SPECIAL_UNIT_INFO *html_add_special_unit_info (
                            SPECIAL_UNIT_INFO_LIST *special_unit_info_list,
                            int type, size_t variety_nr, const char *value);

int html_special_unit_variety_direction_index (const CONVERTER *self,
                                        const char *special_unit_variety);

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


void
html_command_conversion_external (CONVERTER *self, const enum command_id cmd,
                                  const ELEMENT *element,
                                  const HTML_ARGS_FORMATTED *args_formatted,
                                  const char *content, TEXT *result);

#define COMMAND_CONVERSION_FUNCTION(name) \
void html_convert_##name (CONVERTER *self, const enum command_id cmd, \
                          const ELEMENT *element, \
                          const HTML_ARGS_FORMATTED *args_formatted, \
                          const char *content, TEXT *result);
#define CSS_STRING_COMMAND_CONVERSION_FUNCTION(name) \
void html_css_string_convert_##name (CONVERTER *self, const enum command_id cmd, \
                          const ELEMENT *element, \
                          const HTML_ARGS_FORMATTED *args_formatted, \
                          const char *content, TEXT *result);

COMMAND_CONVERSION_FUNCTION(no_arg_command)
CSS_STRING_COMMAND_CONVERSION_FUNCTION(no_arg_command)
COMMAND_CONVERSION_FUNCTION(today_command)
COMMAND_CONVERSION_FUNCTION(style_command)
COMMAND_CONVERSION_FUNCTION(w_command)
COMMAND_CONVERSION_FUNCTION(value_command)
COMMAND_CONVERSION_FUNCTION(email_command)
COMMAND_CONVERSION_FUNCTION(explained_command)
COMMAND_CONVERSION_FUNCTION(anchor_command)
COMMAND_CONVERSION_FUNCTION(footnote_command)
COMMAND_CONVERSION_FUNCTION(uref_command)
COMMAND_CONVERSION_FUNCTION(image_command)
COMMAND_CONVERSION_FUNCTION(math_command)
COMMAND_CONVERSION_FUNCTION(accent_command)
CSS_STRING_COMMAND_CONVERSION_FUNCTION(accent_command)
COMMAND_CONVERSION_FUNCTION(indicateurl_command)
COMMAND_CONVERSION_FUNCTION(titlefont_command)
COMMAND_CONVERSION_FUNCTION(U_command)
COMMAND_CONVERSION_FUNCTION(heading_command)
COMMAND_CONVERSION_FUNCTION(inline_command)
COMMAND_CONVERSION_FUNCTION(xref_command)

COMMAND_CONVERSION_FUNCTION(raw_command)
COMMAND_CONVERSION_FUNCTION(preformatted_command)
COMMAND_CONVERSION_FUNCTION(indented_command)
COMMAND_CONVERSION_FUNCTION(verbatim_command)
COMMAND_CONVERSION_FUNCTION(displaymath_command)
COMMAND_CONVERSION_FUNCTION(simple_block_command)
COMMAND_CONVERSION_FUNCTION(menu_command)
COMMAND_CONVERSION_FUNCTION(float_command)
COMMAND_CONVERSION_FUNCTION(quotation_command)
COMMAND_CONVERSION_FUNCTION(cartouche_command)
COMMAND_CONVERSION_FUNCTION(itemize_command)
COMMAND_CONVERSION_FUNCTION(enumerate_command)
COMMAND_CONVERSION_FUNCTION(multitable_command)
COMMAND_CONVERSION_FUNCTION(xtable_command)

COMMAND_CONVERSION_FUNCTION(verbatiminclude_command)
COMMAND_CONVERSION_FUNCTION(sp_command)
COMMAND_CONVERSION_FUNCTION(exdent_command)
COMMAND_CONVERSION_FUNCTION(center_command)
COMMAND_CONVERSION_FUNCTION(author_command)
COMMAND_CONVERSION_FUNCTION(title_command)
COMMAND_CONVERSION_FUNCTION(subtitle_command)
COMMAND_CONVERSION_FUNCTION(item_command)
COMMAND_CONVERSION_FUNCTION(tab_command)
COMMAND_CONVERSION_FUNCTION(insertcopying_command)
COMMAND_CONVERSION_FUNCTION(listoffloats_command)
COMMAND_CONVERSION_FUNCTION(printindex_command)
COMMAND_CONVERSION_FUNCTION(informative_command)
COMMAND_CONVERSION_FUNCTION(contents_command)
COMMAND_CONVERSION_FUNCTION(def_command)

#undef COMMAND_CONVERSION_FUNCTION

void html_command_open_external (CONVERTER *self, const enum command_id cmd, 
                                 const ELEMENT *element, TEXT *result);

#define COMMAND_OPEN_FUNCTION(name) \
void html_open_##name (CONVERTER *self, const enum command_id cmd, \
                  const ELEMENT *element, TEXT *result);

COMMAND_OPEN_FUNCTION(quotation_command)
COMMAND_OPEN_FUNCTION(node_part_command)

#undef COMMAND_OPEN_FUNCTION

void html_type_conversion_external (CONVERTER *self,
                                    const enum element_type type,
                                    const ELEMENT *element, const char *content,
                                    TEXT *result);

#define ELEMENT_TYPE_CONVERSION_FUNCTION(name) \
void html_convert_##name (CONVERTER *self, const enum element_type type, \
                        const ELEMENT *element, const char *content, \
                        TEXT *result);

#define CSS_STRING_ELEMENT_TYPE_CONVERSION_FUNCTION(name) \
void html_css_string_convert_##name (CONVERTER *self, const enum element_type type, \
                        const ELEMENT *element, const char *content, \
                        TEXT *result);

ELEMENT_TYPE_CONVERSION_FUNCTION(text)
CSS_STRING_ELEMENT_TYPE_CONVERSION_FUNCTION(text)
ELEMENT_TYPE_CONVERSION_FUNCTION(paragraph_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(preformatted_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(balanced_braces_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(index_entry_command_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(definfoenclose_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(untranslated_def_line_arg_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(row_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(multitable_head_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(multitable_body_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(menu_entry_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(menu_comment_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(before_item_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(table_term_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(def_line_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(def_item_type)
ELEMENT_TYPE_CONVERSION_FUNCTION(table_definition_type)

#undef CSS_STRING_ELEMENT_TYPE_CONVERSION_FUNCTION
#undef ELEMENT_TYPE_CONVERSION_FUNCTION

void html_type_open_external (CONVERTER *self, enum element_type type,
                              const ELEMENT *element, TEXT *result);

#define ELEMENT_TYPE_OPEN_FUNCTION(name) \
void html_open_##name (CONVERTER *self, const enum element_type type, \
                       const ELEMENT *element, TEXT *result);

ELEMENT_TYPE_OPEN_FUNCTION(inline_container_type)

#undef ELEMENT_TYPE_OPEN_FUNCTION

void html_output_unit_conversion_external (CONVERTER *self,
                               const enum output_unit_type unit_type,
                         const OUTPUT_UNIT *output_unit, const char *content,
                         TEXT *result);

#define UNIT_CONVERSION_FUNCTION(name) \
void html_convert_##name (CONVERTER *self, \
                          const enum output_unit_type unit_type, \
                          const OUTPUT_UNIT *output_unit, const char *content, \
                          TEXT *result);

UNIT_CONVERSION_FUNCTION(unit_type);
UNIT_CONVERSION_FUNCTION(special_unit_type);

#undef UNIT_CONVERSION_FUNCTION

void html_special_unit_body_formatting_external (CONVERTER *self,
                                    const size_t special_unit_number,
                                    const char *special_unit_variety,
                                    const OUTPUT_UNIT *output_unit,
                                    TEXT *result);

#define SPECIAL_BODY_FORMATTING_FUNCTION(name) \
void html_default_format_special_body_##name (CONVERTER *self, \
                                      const size_t special_unit_number, \
                                      const char *special_unit_variety, \
                                      const OUTPUT_UNIT *output_unit, \
                                      TEXT *result);

SPECIAL_BODY_FORMATTING_FUNCTION(contents)
SPECIAL_BODY_FORMATTING_FUNCTION(shortcontents)
SPECIAL_BODY_FORMATTING_FUNCTION(footnotes)
SPECIAL_BODY_FORMATTING_FUNCTION(about)

#undef SPECIAL_BODY_FORMATTING_FUNCTION


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

void html_complete_no_arg_commands_formatting (CONVERTER *self,
                                               enum command_id cmd,
                                               int translate);


#endif
