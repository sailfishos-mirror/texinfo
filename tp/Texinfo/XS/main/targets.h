/* targets.h - declarations for targets.c */
#ifndef TARGETS_H
#define TARGETS_H

#include "tree_types.h"
#include "document.h"

ELEMENT *find_identifier_target (LABEL_LIST *identifiers_target,
                                 char *normalized);
/*
void register_label_in_list (LABEL_LIST *labels_list, ELEMENT *element,
                             char *normalized);
*/
int register_label_element (DOCUMENT* document, ELEMENT *element);

LABEL_LIST *set_labels_identifiers_target (LABEL *list_of_labels,
                                           size_t labels_number);

#endif
