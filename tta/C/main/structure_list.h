/* structure_lists.h - declarations for structure_lists.c */
#ifndef STRUCTURE_LISTS_H
#define STRUCTURE_LISTS_H

#include <stddef.h>

#include "text.h"
#include "tree_types.h"
#include "document_types.h"

void reallocate_node_structure_for (size_t n, NODE_STRUCTURE_LIST *list);

NODE_STRUCTURE *add_to_node_structure_list (NODE_STRUCTURE_LIST *list,
                                            ELEMENT *e);
SECTION_STRUCTURE *add_to_section_structure_list (SECTION_STRUCTURE_LIST *list,
                                                  ELEMENT *e);
HEADING_STRUCTURE *add_to_heading_structure_list (HEADING_STRUCTURE_LIST *list,
                                                  ELEMENT *e);

NODE_STRUCTURE *insert_into_node_structure_list (NODE_STRUCTURE_LIST *list,
                                                 ELEMENT *e, size_t where);
SECTION_STRUCTURE *insert_into_section_structure_list (
                                 SECTION_STRUCTURE_LIST *list,
                                 ELEMENT *e, size_t where);

void free_node_structure_list (NODE_STRUCTURE_LIST *list);
void free_section_structure_list (SECTION_STRUCTURE_LIST *list);
void free_heading_structure_list (HEADING_STRUCTURE_LIST *list);

char *print_sections_list (const DOCUMENT *document);
char *print_nodes_list (const DOCUMENT *document);
char *print_headings_list (const DOCUMENT *document);

#endif
