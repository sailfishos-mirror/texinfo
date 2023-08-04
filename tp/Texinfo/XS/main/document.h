/* document.h - declarations for document.c */
#ifndef DOCUMENT_H
#define DOCUMENT_H

#include "tree_types.h"

typedef struct DOCUMENT {
  ELEMENT *tree;
  INDEX **index_names;
} DOCUMENT;

DOCUMENT *retrieve_document (int document_descriptor);
size_t register_document (ELEMENT *root, INDEX **index_names);

#endif
