/* swig_interface.h - declarations for swig_interface.c */
#ifndef SWIG_INTERFACE_H
#define SWIG_INTERFACE_H

#include "source_mark_types.h"
#include "tree_types.h"
#include "document_types.h"
#include "swig_error_messages_types.h"

struct TEXT_OPTIONS;

const char *element_command_data_type (ELEMENT *element);

const char *element_type (ELEMENT *element);
const char *element_text (ELEMENT *element);
const char *element_cmdname (ELEMENT *element);
int element_children_number (ELEMENT *element);
ELEMENT *element_get_child (ELEMENT *element, int index);
ELEMENT *element_parent (ELEMENT *element);
SOURCE_INFO *element_source_info (ELEMENT *element);
int element_source_marks_number (ELEMENT *element);
SOURCE_MARK *element_get_source_mark (ELEMENT *element, int index);

ELEMENT *element_list_element_by_index (ELEMENT_LIST *element_list, int index);
int element_list_elements_number (ELEMENT_LIST *element_list);

const ELEMENT *const_element_list_element_by_index (
                                              CONST_ELEMENT_LIST *element_list,
                                              int index);
int const_element_list_elements_number (CONST_ELEMENT_LIST *element_list);

int element_attribute_integer (const ELEMENT *element, const char *attribute,
                               int *ret);
const char *element_attribute_string (const ELEMENT *element,
                                      const char *attribute);
ELEMENT *element_attribute_element (const ELEMENT *element,
                                    const char *attribute);

char *string_list_string_by_index (STRING_LIST *string_list, int index);
int string_list_strings_number (STRING_LIST *string_list);

const STRING_LIST *element_misc_args (ELEMENT *element);

INDEX_ENTRY *element_index_entry (DOCUMENT *document, ELEMENT *element);
INDEX *index_entry_index_info (DOCUMENT *document, INDEX_ENTRY *index_entry);

ELEMENT *store_new_element (DOCUMENT *document, const char *type_name,
                            const char *command_name, int is_text_element);

void element_reset_text (ELEMENT *element);
void element_append_text (ELEMENT *element, const char *text);

int set_element_attribute_integer (ELEMENT *element,
                                   const char *attribute, int value);
int set_element_attribute_string (ELEMENT *element, const char *attribute,
                                  const char *value);
int set_element_attribute_element (ELEMENT *element, const char *attribute,
                                   ELEMENT *value);

SECTION_RELATIONS *section_relation_list_section_relation_by_index (
                SECTION_RELATIONS_LIST *section_relation_list, int index);
int section_relation_list_section_relations_number (
                           SECTION_RELATIONS_LIST *section_relation_list);

NODE_RELATIONS *get_node_relations (ELEMENT *element, DOCUMENT *document);
SECTION_RELATIONS *get_section_relations (ELEMENT *element, DOCUMENT *document);
HEADING_RELATIONS *get_heading_relations (ELEMENT *element, DOCUMENT *document);

const ELEMENT *node_relation_node_direction (NODE_RELATIONS *node,
                                             const char *direction);
const SECTION_RELATIONS *section_relation_section_direction (
                                     SECTION_RELATIONS *section,
                                     const char *direction);
const SECTION_RELATIONS *section_relation_toplevel_direction (
                                     SECTION_RELATIONS *section,
                                     const char *direction);

ELEMENT *document_global_unique_command (DOCUMENT *document,
                                         const char *cmdname);
const ELEMENT_LIST *document_global_command_list (DOCUMENT *document,
                                                  const char *cmdname);

INDEX_ENTRY *sorted_index_entries_by_index (
                     const INDEX_SORTED_BY_INDEX *index_sorted, int index);
int sorted_index_entries_number (const INDEX_SORTED_BY_INDEX *index_sorted);

const INDEX_SORTED_BY_INDEX *get_index_sorted_by_index (DOCUMENT *document,
                           const char *index_name,
                           int use_unicode_collation,
                           const char *collation_language,
                           const char *collation_locale);

FLOAT_INFORMATION *float_list_float_by_index (
                         FLOAT_INFORMATION_LIST *float_list, int index);
int float_list_floats_number (FLOAT_INFORMATION_LIST *float_list);

FLOAT_INFORMATION_LIST *get_float_type_floats_information (
                        DOCUMENT *document, const char *float_type);

GLOBAL_INFO *document_global_information (DOCUMENT *document);

FORMATTED_ERROR_MESSAGE_LIST *get_parser_error_messages (DOCUMENT *document,
                                  const char *message_encoding,
                                  int no_warn, int use_filename,
                                  int *count);

FORMATTED_ERROR_MESSAGE_LIST *get_document_error_messages (DOCUMENT *document,
                                  const char *message_encoding,
                                  int no_warn, int use_filename,
                                  int *count);

int messages_list_messages_number (FORMATTED_ERROR_MESSAGE_LIST *messages_list);
FORMATTED_ERROR_MESSAGE *messages_list_message_by_index (
                      FORMATTED_ERROR_MESSAGE_LIST *messages_list, int index);

void destroy_error_messages_list (FORMATTED_ERROR_MESSAGE_LIST *error_messages);

#endif
