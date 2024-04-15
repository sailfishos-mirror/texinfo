/* converter.h - definitions for converter.c */
#ifndef CONVERTER_H
#define CONVERTER_H 

#include <stddef.h>

#include "tree_types.h"
#include "command_ids.h"
#include "converter_types.h"
/* for TARGET_FILENAME */
#include "utils.h"

/* piece of code that can be inlined in text parsing codes */
#define OTXI_PROTECT_XML_CASES(var) \
        case '<':           \
          text_append_n (result, "&lt;", 4); var++; \
          break;            \
        case '>':           \
          text_append_n (result, "&gt;", 4); var++; \
          break;            \
        case '&':           \
          text_append_n (result, "&amp;", 5); var++; \
          break;            \
        case '"':           \
          text_append_n (result, "&quot;", 6); var++; \
          break;

#define OTXI_NUMERIC_ENTITY_TEXT_CASES(var) \
        case '-': \
          if (*(var+1) && !memcmp (var, "---", 3)) \
            { \
              text_append_n (result, "&#" "8212" ";", 7); \
              var += 3; \
            } \
          else if (!memcmp (var, "--", 2)) \
            { \
              text_append_n (result, "&#" "8211" ";", 7); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, "-", 1); \
              var++; \
            } \
          break; \
        case '`': \
          if (!memcmp (var, "``", 2)) \
            { \
              text_append_n (result, "&#" "8220" ";", 7); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, "&#" "8216" ";", 7); \
              var++; \
            } \
          break; \
        case '\'': \
          if (!memcmp (var, "''", 2)) \
            { \
              text_append_n (result, "&#" "8221" ";", 7); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, "&#" "8217" ";", 7); \
              var++; \
            } \
          break;

typedef struct FLOAT_CAPTION_PREPENDED_ELEMENT {
    const ELEMENT *caption;
    ELEMENT *prepended;
} FLOAT_CAPTION_PREPENDED_ELEMENT;

extern enum command_id no_brace_command_accent_upper_case[][2];

CONVERTER *retrieve_converter (int converter_descriptor);
size_t new_converter(void);
void unregister_converter_descriptor (int converter_descriptor);

void set_global_document_commands (CONVERTER *converter,
                                  const enum command_location location,
                                  const enum command_id *cmd_list);

char *node_information_filename (CONVERTER *self, const char *normalized,
                                 const ELEMENT *label_element);

TREE_ADDED_ELEMENTS *new_tree_added_elements
                      (enum tree_added_elements_status status);
ELEMENT *new_element_added (TREE_ADDED_ELEMENTS *added_elements,
                            enum element_type type);
void clear_tree_added_elements (CONVERTER *self,
                                TREE_ADDED_ELEMENTS *tree_elements);
void free_tree_added_elements (CONVERTER *self,
                               TREE_ADDED_ELEMENTS *tree_elements);
void destroy_tree_added_elements (CONVERTER *self,
                                  TREE_ADDED_ELEMENTS *tree_elements);

TREE_ADDED_ELEMENTS *table_item_content_tree (CONVERTER *self,
                                              const ELEMENT *element);

TARGET_FILENAME *normalized_sectioning_command_filename (CONVERTER *self,
                                                   const ELEMENT *command);

char *convert_accents (CONVERTER *self, const ELEMENT *accent,
 char *(*convert_tree)(CONVERTER *self, const ELEMENT *tree, const char *explanation),
 char *(*format_accent)(CONVERTER *self, const char *text, const ELEMENT *element,
                        int set_case),
  int output_encoded_characters,
  int set_case);

ELEMENT_LIST *comma_index_subentries_tree (const ELEMENT *current_entry,
                                           char *separator);
void free_comma_index_subentries_tree (ELEMENT_LIST *element);

INDEX_SORTED_BY_INDEX *get_converter_indices_sorted_by_index (CONVERTER *self,
                                                             char **language);
INDEX_SORTED_BY_LETTER *get_converter_indices_sorted_by_letter
                                           (CONVERTER *self, char **language);

char *top_node_filename (const CONVERTER *self, const char *document_name);

ELEMENT *float_type_number (CONVERTER *self, const ELEMENT *float_e);
FLOAT_CAPTION_PREPENDED_ELEMENT *float_name_caption (CONVERTER *self,
                                                 const ELEMENT *float_e);

void initialize_output_units_files (CONVERTER *self);
size_t register_normalize_case_filename (CONVERTER *self, const char *filename);
size_t set_output_unit_file (CONVERTER *self, OUTPUT_UNIT *output_unit,
                                    const char *filename, int set_counter);
void set_file_path (CONVERTER *self, const char *filename, const char *filepath,
                    const char *destination_directory);
void clear_output_unit_files (FILE_NAME_PATH_COUNTER_LIST *output_unit_files);
void free_output_unit_files (FILE_NAME_PATH_COUNTER_LIST *output_unit_files);

void free_generic_converter (CONVERTER *self);


void xml_format_text_with_numeric_entities (const char *text, TEXT *result);
char *xml_numeric_entity_accent (enum command_id cmd, const char *text);
char *xml_comment (CONVERTER *converter, const char *text);
#endif
