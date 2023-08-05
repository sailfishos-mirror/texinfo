/* document.h - declarations for document.c */
#ifndef DOCUMENT_H
#define DOCUMENT_H

#include "tree_types.h"

typedef struct DOCUMENT {
  ELEMENT *tree;
  INDEX **index_names;
  LABEL_LIST *labels_list;
} DOCUMENT;

DOCUMENT *retrieve_document (int document_descriptor);
size_t register_document (ELEMENT *root, INDEX **index_names,
                          LABEL_LIST *labels_list);
LABEL_LIST *set_labels_identifiers_target (LABEL *list_of_labels,
                                           size_t labels_number);

#endif
