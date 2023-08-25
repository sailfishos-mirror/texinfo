/* structuring.h - declarations for structuring.c */
#ifndef STRUCTURING_H
#define STRUCTURING_H

#include "tree_types.h"
#include "document.h"


void associate_internal_references (LABEL_LIST *identifiers_target,
                                    ELEMENT_LIST *refs);
ELEMENT *sectioning_structure (ELEMENT *root);
ELEMENT *nodes_tree (DOCUMENT *document, ELEMENT **top_node_out);
ELEMENT *get_node_node_childs_from_sectioning (ELEMENT *node);
char *normalized_menu_entry_internal_node (ELEMENT *entry);
void warn_non_empty_parts (DOCUMENT *document);
ELEMENT *new_node_menu_entry (ELEMENT *node, int use_sections);
ELEMENT *new_complete_node_menu (ELEMENT *node, int use_sections);
void new_block_command (ELEMENT *element, enum command_id cmd);
ELEMENT *new_master_menu (LABEL_LIST *identifiers_target, ELEMENT *menus,
                          int use_sections);


#endif
