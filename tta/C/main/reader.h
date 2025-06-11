/* reader.h - declarations for reader.c */
#ifndef READER_H
#define READER_H
 
#include <stddef.h>
 
#include "tree_types.h"
#include "document_types.h"

READER *retrieve_reader (size_t reader_descriptor);
size_t register_reader (READER *reader);

READER *txi_reader_new (const ELEMENT *tree, DOCUMENT *document);
const READER_TOKEN *txi_reader_read (READER *reader);
const READER_TOKEN *txi_reader_skip_children (READER *reader,
                                              const ELEMENT *element);

CONST_ELEMENT_LIST *txi_reader_collect_commands_list (const ELEMENT *tree,
                                                const COMMAND_STACK *commands);
#endif
