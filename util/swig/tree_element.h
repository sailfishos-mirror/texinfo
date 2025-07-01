/* tree_element.h - declarations for tree_element.c */
#ifndef TREE_ELEMENT_H
#define TREE_ELEMENT_H

#include "tree_types.h"

const char *element_type (ELEMENT *element);
const char *element_text (ELEMENT *element);
const char *element_cmdname (ELEMENT *element);
int element_children_number (ELEMENT *element);
ELEMENT *element_get_child (ELEMENT *element, int index);
ELEMENT *element_parent (ELEMENT *element);
SOURCE_INFO *element_source_info (ELEMENT *element);

ELEMENT *element_list_element_by_index (ELEMENT_LIST *element_list, int index);
int element_list_number (ELEMENT_LIST *element_list);

const ELEMENT *const_element_list_element_by_index (
                                              CONST_ELEMENT_LIST *element_list,
                                              int index);
int const_element_list_number (CONST_ELEMENT_LIST *element_list);

int element_attribute_integer (const ELEMENT *element, const char *attribute,
                               int *ret);
const char *element_attribute_string (const ELEMENT *element,
                                      const char *attribute);
ELEMENT *element_attribute_element (const ELEMENT *element,
                                    const char *attribute);

char *string_list_string_by_index (STRING_LIST *string_list, int index);
int string_list_number (STRING_LIST *string_list);

const STRING_LIST *element_misc_args (ELEMENT *element);

INDEX_ENTRY *element_index_entry (DOCUMENT *document, ELEMENT *element);
INDEX *index_entry_index_info (DOCUMENT *document, INDEX_ENTRY *index_entry);

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

#endif
