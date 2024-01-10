/* document.h - declarations for document.c */
#ifndef DOCUMENT_H
#define DOCUMENT_H

#include <stddef.h>

#include "options_types.h"
#include "global_commands_types.h"
#include "tree_types.h"
#include "document_types.h"

typedef struct TREE_AND_STRINGS {
    ELEMENT *tree;
    STRING_LIST *small_strings;
} TREE_AND_STRINGS;

struct TEXT_OPTIONS;


DOCUMENT *retrieve_document (int document_descriptor);
size_t register_document (ELEMENT *root, INDEX **index_names,
                          FLOAT_RECORD_LIST *floats_list,
                          ELEMENT_LIST *internal_references,
                          LABEL_LIST *labels_list,
                          LABEL_LIST *identifiers_target,
                          GLOBAL_INFO *global_info,
                          GLOBAL_COMMANDS *global_commands,
                          STRING_LIST *small_strings,
                          ERROR_MESSAGE_LIST *error_messages);
void register_document_nodes_list (DOCUMENT *document,
                                   ELEMENT_LIST *nodes_list);
void register_document_sections_list (DOCUMENT *document,
                                      ELEMENT_LIST *sections_list);
void register_document_options (DOCUMENT *document, OPTIONS *options);
void register_document_convert_index_text_options (DOCUMENT *document,
                                         struct TEXT_OPTIONS *text_options);

void remove_document_descriptor (int document_descriptor);
TREE_AND_STRINGS *unregister_document_descriptor_tree (int document_descriptor);
void clear_document_errors (int document_descriptor);

#endif
