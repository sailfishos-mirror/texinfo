/* document.h - declarations for document.c */
#ifndef DOCUMENT_H
#define DOCUMENT_H

#include "tree_types.h"

typedef struct DOCUMENT {
  ELEMENT *tree;
} DOCUMENT;

DOCUMENT *get_document (int document_descriptor);

#endif
