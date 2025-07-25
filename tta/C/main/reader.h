/* reader.h - declarations for reader.c */
#ifndef READER_H
#define READER_H
 
#include <stddef.h>
 
#include "tree_types.h"
#include "document_types.h"
#include "reader_api.h"

typedef struct READER_CONTEXT {
    ssize_t index;
    ELEMENT_LIST *sequence;
} READER_CONTEXT;

typedef struct READER {
    size_t top;
    size_t space;
    READER_CONTEXT *stack;
    READER_TOKEN token;

    /* not intrisically needed, but if the elements are registered in
       the document, may allow for faster access */
    struct DOCUMENT *document;
} READER;

CONST_ELEMENT_LIST *txi_reader_collect_commands_list (ELEMENT *tree,
                                                const COMMAND_STACK *commands);
#endif
