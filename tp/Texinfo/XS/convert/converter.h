/* converter.h - definitions for converter.c */
#ifndef CONVERTER_H
#define CONVERTER_H 

#include "utils.h"
#include "command_ids.h"

void set_global_document_commands (CONVERTER *converter,
                                  const enum commands_location location,
                                  const enum command_id *cmd_list);

#endif
