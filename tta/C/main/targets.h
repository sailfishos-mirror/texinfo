/* targets.h - declarations for targets.c */
#ifndef TARGETS_H
#define TARGETS_H

#include <stddef.h>

#include "tree_types.h"
#include "document_types.h"

#ifdef USE_TARGET_IDENTIFIER_LIST
#define identifiers_target_number identifiers_target_number_l
#define find_identifier_target find_identifier_target_l
#else
#define identifiers_target_number identifiers_target_number_h
#define find_identifier_target find_identifier_target_h
#endif

size_t identifiers_target_number_l (const LABEL_LIST *identifiers_target);
ELEMENT *find_identifier_target_l (const LABEL_LIST *identifiers_target,
                                   const char *normalized);
int register_label_element (size_t document_descriptor, ELEMENT *element,
                            ERROR_MESSAGE_LIST *error_messages);
int compare_labels (const void *a, const void *b);

size_t identifiers_target_number_h (const struct C_HASHMAP *identifiers_target);
ELEMENT *find_identifier_target_h (const struct C_HASHMAP *identifiers_target,
                          const char *normalized);
#endif
