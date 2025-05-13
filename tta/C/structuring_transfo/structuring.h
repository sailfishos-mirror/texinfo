/* structuring.h - declarations for structuring.c */
#ifndef STRUCTURING_H
#define STRUCTURING_H

#include "command_ids.h"
#include "options_data.h"
#include "tree_types.h"
#include "document_types.h"

void associate_internal_references (DOCUMENT *document);
void sectioning_structure (DOCUMENT *document);
void construct_nodes_tree (DOCUMENT *document);
CONST_ELEMENT_LIST *get_node_node_childs_from_sectioning (const ELEMENT *node,
                                      const NODE_STRUCTURE_LIST *nodes_list,
                                  const SECTION_STRUCTURE_LIST *sections_list);
void warn_non_empty_parts (DOCUMENT *document);
void set_menus_node_directions (DOCUMENT *document);
void complete_node_tree_with_menus (DOCUMENT *document);
void check_nodes_are_referenced (DOCUMENT *document);
void number_floats (DOCUMENT *document);

ELEMENT *new_node_menu_entry (const ELEMENT *node,
                   const NODE_STRUCTURE_LIST *nodes_list, int use_sections);
ELEMENT *new_complete_node_menu (const ELEMENT *node,
                        const NODE_STRUCTURE_LIST *nodes_list,
                        const SECTION_STRUCTURE_LIST *sections_list,
                        DOCUMENT *document,
                        LANG_TRANSLATION *lang_translations,
                        int debug_level, int use_sections);
void new_block_command (ELEMENT *element);
ELEMENT *new_detailmenu (ERROR_MESSAGE_LIST *error_messages,
                const OPTIONS *options,
                LANG_TRANSLATION *lang_translation,
                const C_HASHMAP *identifiers_target,
                const NODE_STRUCTURE_LIST *nodes_list,
                const SECTION_STRUCTURE_LIST *sections_list,
                const CONST_ELEMENT_LIST *menus, int use_sections);
ELEMENT *new_complete_menu_master_menu (ERROR_MESSAGE_LIST *error_messages,
                               const OPTIONS *options,
                               LANG_TRANSLATION *lang_translations,
                               const C_HASHMAP *identifiers_target,
                               const NODE_STRUCTURE_LIST *nodes_list,
                               const SECTION_STRUCTURE_LIST *sections_list,
                               const ELEMENT *node);

#endif
