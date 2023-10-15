/* document.h - declarations for document.c */
#ifndef DOCUMENT_H
#define DOCUMENT_H

#include <stddef.h>

#include "options_types.h"
#include "global_commands_types.h"
#include "tree_types.h"
/* for GLOBAL_INFO */
#include "utils.h"
/* for ERROR_MESSAGE_LIST */
#include "errors.h"

typedef struct DOCUMENT {
    int descriptor;
    ELEMENT *tree;
    INDEX **index_names;
    FLOAT_RECORD_LIST *floats;
    FLOAT_RECORD_LIST *listoffloats;
    ELEMENT_LIST *internal_references;
    LABEL_LIST *labels_list;
    LABEL_LIST *identifiers_target;
    GLOBAL_INFO *global_info;
    GLOBAL_COMMANDS *global_commands;
    STRING_LIST *small_strings;
    ELEMENT *nodes_list; /* nodes in contents of this element */
    ELEMENT *sections_list; /* sections in contents of this element */
    ERROR_MESSAGE_LIST *error_messages;
    OPTIONS *options; /* for options used in structuring */
} DOCUMENT;

typedef struct TREE_AND_STRINGS {
    ELEMENT *tree;
    STRING_LIST *small_strings;
} TREE_AND_STRINGS;


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
void register_document_nodes_list (DOCUMENT *document, ELEMENT *nodes_list);
void register_document_sections_list (DOCUMENT *document,
                                      ELEMENT *sections_list);
void register_document_options (DOCUMENT *document, OPTIONS *options);
void remove_document_descriptor (int document_descriptor);
TREE_AND_STRINGS *unregister_document_descriptor_tree (int document_descriptor);
void clear_document_errors (int document_descriptor);

#endif
