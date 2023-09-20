/* indices.h - declarations for indices.h */
#ifndef INDICES_H
#define INDICES_H

#include "tree_types.h"

extern INDEX **index_names;

void init_index_commands (void);

void add_index (char *name, int in_code);
INDEX *index_of_command (enum command_id cmd);
void enter_index_entry (enum command_id index_type_cmd,
                        ELEMENT *current);
void resolve_indices_merged_in (void);
INDEX *ultimate_index (INDEX *index);
void forget_indices (void);
void set_non_ignored_space_in_index_before_command (ELEMENT *content);
void complete_indices (int document_descriptor);
#endif
