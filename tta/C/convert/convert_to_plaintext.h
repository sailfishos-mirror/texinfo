/* convert_to_plaintext.h - definitions for convert_to_plaintext.c */
#ifndef CONVERT_TO_PLAINTEXT_H
#define CONVERT_TO_PLAINTEXT_H

#include "document_types.h"
#include "converter_types.h"

#include "tree_types.h"
#include "converter_types.h"

CONVERTER_INITIALIZATION_INFO *plaintext_converter_defaults
                                (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf);

char *plaintext_output (CONVERTER *converter, DOCUMENT *document);

char *plaintext_convert (CONVERTER *converter, DOCUMENT *document);

char *plaintext_convert_tree (CONVERTER *converter,
                                 const ELEMENT *tree);

void plaintext_free_converter (CONVERTER *converter);
void plaintext_converter_initialize (CONVERTER *self);

char *convert_to_plaintext (CONVERTER *self, const ELEMENT *e);

#endif
