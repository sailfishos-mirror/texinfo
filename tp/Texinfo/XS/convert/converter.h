/* converter.h - definitions for converter.c */
#ifndef CONVERTER_H
#define CONVERTER_H 

#include <stddef.h>

#include "tree_types.h"
#include "utils.h"
#include "command_ids.h"

CONVERTER *retrieve_converter (int converter_descriptor);
size_t register_converter (CONVERTER *converter);

void set_global_document_commands (CONVERTER *converter,
                                  const enum command_location location,
                                  const enum command_id *cmd_list);

char *node_information_filename (CONVERTER *self, char *normalized,
                                 ELEMENT *label_element);

TARGET_FILENAME *normalized_sectioning_command_filename (CONVERTER *self,
                                                         ELEMENT *command);

ELEMENT *comma_index_subentries_tree (ELEMENT *current_entry,
                                      char *separator);
void free_comma_index_subentries_tree (ELEMENT *element);

#endif
