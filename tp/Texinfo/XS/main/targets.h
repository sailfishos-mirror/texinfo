/* targets.h - declarations for targets.c */
#ifndef TARGETS_H
#define TARGETS_H

#include <stddef.h>

#include "tree_types.h"

ELEMENT *find_identifier_target (LABEL_LIST *identifiers_target,
                                 char *normalized);
int register_label_element (int document_descriptor, ELEMENT *element);

LABEL_LIST *set_labels_identifiers_target (LABEL *list_of_labels,
                                           size_t labels_number);

#endif
