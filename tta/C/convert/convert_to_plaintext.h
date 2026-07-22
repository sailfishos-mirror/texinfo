/* convert_to_plaintext.h - definitions for convert_to_plaintext.c */
#ifndef CONVERT_TO_PLAINTEXT_H
#define CONVERT_TO_PLAINTEXT_H

#include "document_types.h"
#include "converter_types.h"

#include "tree_types.h"
#include "converter_types.h"

void plaintext_format_setup (enum converter_format format);

CONVERTER_INITIALIZATION_INFO *plaintext_converter_defaults
                                (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf);

char *plaintext_output (CONVERTER *self, DOCUMENT *document);

char *plaintext_convert (CONVERTER *self, DOCUMENT *document);

char *plaintext_convert_tree (CONVERTER *self, const ELEMENT *tree);

void plaintext_free_converter (CONVERTER *self);
void plaintext_converter_initialize (CONVERTER *self);

#endif
