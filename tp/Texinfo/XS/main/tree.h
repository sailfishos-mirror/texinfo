/* tree.h - declarations for tree.c */
#ifndef TREE_H
#define TREE_H

#include "tree_types.h"

void reset_obstacks (void);

ASSOCIATED_INFO *new_associated_info (void);
ELEMENT *new_element (enum element_type type);
ELEMENT_LIST *new_list (void);
void add_to_element_list (ELEMENT_LIST *list, ELEMENT *e);
void add_to_element_contents (ELEMENT *parent, ELEMENT *e);
void add_to_contents_as_array (ELEMENT *parent, ELEMENT *e);
void add_to_element_args (ELEMENT *parent, ELEMENT *e);
void insert_into_element_list (ELEMENT_LIST *list, ELEMENT *e, int where);
void insert_into_contents (ELEMENT *parent, ELEMENT *e, int where);
void insert_into_args (ELEMENT *parent, ELEMENT *e, int where);
ELEMENT *remove_element_from_list (ELEMENT_LIST *list, ELEMENT *e);
void add_element_if_not_in_list (ELEMENT_LIST *list, ELEMENT *e);
void insert_list_slice_into_list (ELEMENT_LIST *to, int where,
                                  const ELEMENT_LIST *from, int start, int end);
void insert_slice_into_contents (ELEMENT *to, int idx, const ELEMENT *from,
                                 int start, int end);
void insert_list_slice_into_contents (ELEMENT *to, int idx, ELEMENT_LIST *from,
                                      int start, int end);
void insert_list_slice_into_args (ELEMENT *to, int where, ELEMENT_LIST *from,
                                      int start, int end);
void element_set_empty_contents (ELEMENT *parent, int n);
ELEMENT *remove_from_element_list (ELEMENT_LIST *list, int where);
ELEMENT *remove_from_contents (ELEMENT *parent, int where);
ELEMENT *remove_from_args (ELEMENT *parent, int where);
void remove_slice_from_contents (ELEMENT *parent, int start, int end);
ELEMENT *last_args_child (ELEMENT *current);
ELEMENT *last_contents_child (const ELEMENT *current);
ELEMENT *pop_element_from_args (ELEMENT *parent);
ELEMENT *pop_element_from_contents (ELEMENT *parent);
ELEMENT *contents_child_by_index (ELEMENT *e, int index);
ELEMENT *args_child_by_index (ELEMENT *e, int index);
void destroy_list (ELEMENT_LIST *list);
void destroy_element (ELEMENT *e);
void destroy_element_and_children (ELEMENT *e);
int replace_element_in_contents (ELEMENT *parent, ELEMENT *removed,
                                 ELEMENT *added);
int replace_element_in_list (ELEMENT_LIST *list, ELEMENT *removed,
                             ELEMENT *added);
void destroy_node_spec (NODE_SPEC_EXTRA *nse);
void destroy_associated_info (ASSOCIATED_INFO *a);


#define element_contents_number(e) ((e)->contents.number)
#define element_args_number(e) ((e)->args.number)
#define element_text(e) (text_base (&(e)->text))

#endif
