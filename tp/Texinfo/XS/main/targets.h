/* targets.h - declarations for targets.c */
#ifndef TARGETS_H
#define TARGETS_H

#include <stddef.h>

#include "tree_types.h"
#include "document_types.h"

ELEMENT *find_identifier_target (const LABEL_LIST *identifiers_target,
                                 const char *normalized);
int register_label_element (int document_descriptor, ELEMENT *element,
                            ERROR_MESSAGE_LIST *error_messages);

void set_labels_identifiers_target (const LABEL_LIST *labels,
                                    LABEL_LIST *result);

#endif
