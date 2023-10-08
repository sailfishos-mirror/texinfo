/* converter.h - definitions for converter.c */
#ifndef CONVERTER_H
#define CONVERTER_H 

#include <stddef.h>

#include "utils.h"
#include "command_ids.h"

CONVERTER *retrieve_converter (int converter_descriptor);
size_t register_converter (CONVERTER *converter);

void set_global_document_commands (CONVERTER *converter,
                                  const enum command_location location,
                                  const enum command_id *cmd_list);

#endif
