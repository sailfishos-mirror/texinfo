/* convert_indices.h - definitions for convert_indices.c */
#ifndef CONVERT_INDICES_H
#define CONVERT_INDICES_H

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"

typedef struct INDEX_ENTRY_TEXT_OR_COMMAND {
    char *text;
    ELEMENT *command;
} INDEX_ENTRY_TEXT_OR_COMMAND;

ELEMENT *converter_index_content_element (const ELEMENT *element,
                                          CONVERTER *converter,
                                          int prefer_reference_element);
ELEMENT *wrap_converter_index_content_element (const ELEMENT *element,
                               int prefer_reference_element,
                               DOCUMENT *document, int debug_level,
                               CONVERTER *converter);

INDEX_ENTRY_TEXT_OR_COMMAND *index_entry_first_letter_text_or_command (
                                          const INDEX_ENTRY *index_entry,
                                          CONVERTER *converter);

#endif
