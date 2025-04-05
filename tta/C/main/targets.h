/* targets.h - declarations for targets.c */
#ifndef TARGETS_H
#define TARGETS_H

#include <stddef.h>

#include "tree_types.h"
#include "document_types.h"

int register_label_element (size_t document_descriptor, ELEMENT *element,
                            ERROR_MESSAGE_LIST *error_messages);
int compare_labels (const void *a, const void *b);

size_t identifiers_target_number (const struct C_HASHMAP *identifiers_target);
ELEMENT *find_identifier_target (const struct C_HASHMAP *identifiers_target,
                          const char *normalized);
#endif
