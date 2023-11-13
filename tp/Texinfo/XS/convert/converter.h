/* converter.h - definitions for converter.c */
#ifndef CONVERTER_H
#define CONVERTER_H 

#include <stddef.h>

#include "tree_types.h"
#include "command_ids.h"
#include "converter_types.h"
/* for TARGET_FILENAME */
#include "utils.h"

CONVERTER *retrieve_converter (int converter_descriptor);
size_t register_converter (CONVERTER *converter);

void set_global_document_commands (CONVERTER *converter,
                                  const enum command_location location,
                                  const enum command_id *cmd_list);

char *node_information_filename (CONVERTER *self, char *normalized,
                                 const ELEMENT *label_element);

TARGET_FILENAME *normalized_sectioning_command_filename (CONVERTER *self,
                                                   const ELEMENT *command);

ELEMENT_LIST *comma_index_subentries_tree (const ELEMENT *current_entry,
                                           char *separator);
void free_comma_index_subentries_tree (ELEMENT_LIST *element);

char *top_node_filename (CONVERTER *self, char *document_name);


void initialize_output_units_files (CONVERTER *self);
size_t set_output_unit_file (CONVERTER *self, OUTPUT_UNIT *output_unit,
                                    char *filename, int set_counter);
void set_file_path (CONVERTER *self, char *filename, char *filepath,
                    char *destination_directory);
void clear_output_unit_files (FILE_NAME_PATH_COUNTER_LIST *output_unit_files);
void free_output_unit_files (FILE_NAME_PATH_COUNTER_LIST *output_unit_files);

void free_generic_converter (CONVERTER *self);
#endif
