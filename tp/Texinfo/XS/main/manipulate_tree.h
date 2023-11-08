/* manipulate_tree.h - declarations for manipulate_tree.c */
#ifndef MANIPULATE_TREE_H
#define MANIPULATE_TREE_H

/* Copyright 2010-2023 Free Software Foundation, Inc.

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
    
#include <stddef.h>

#include "tree_types.h"

ELEMENT *copy_tree (ELEMENT *current);
ELEMENT *copy_contents (ELEMENT *element, enum element_type type);



void add_source_mark (SOURCE_MARK *source_mark, ELEMENT *e);
size_t relocate_source_marks (SOURCE_MARK_LIST *source_mark_list, ELEMENT *new_e,
                              size_t previous_position, size_t current_position);



NODE_SPEC_EXTRA *parse_node_manual (ELEMENT *node, int modify_node);



char *normalized_menu_entry_internal_node (ELEMENT *entry);
ELEMENT *normalized_entry_associated_internal_node (ELEMENT *entry,
                                                    LABEL_LIST *identifiers_target);
ELEMENT *first_menu_node (ELEMENT *node, LABEL_LIST *identifiers_target);
#endif
