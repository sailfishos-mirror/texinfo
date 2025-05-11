/* structure_lists.h - declarations for structure_lists.c */
#ifndef STRUCTURE_LISTS_H
#define STRUCTURE_LISTS_H

#include <stddef.h>

#include "tree_types.h"

void add_to_node_structure_list (NODE_STRUCTURE_LIST *list, ELEMENT *e);
void add_to_section_structure_list (SECTION_STRUCTURE_LIST *list, ELEMENT *e);
void add_to_heading_structure_list (HEADING_STRUCTURE_LIST *list, ELEMENT *e);

void insert_into_node_structure_list (NODE_STRUCTURE_LIST *list,
                                      ELEMENT *e, size_t where);

#endif
