/* converter.h - definitions for converter.c */
#ifndef CONVERTER_H
#define CONVERTER_H 

#include "utils.h"
#include "command_ids.h"

void set_global_document_commands (CONVERTER *converter,
                                  enum commands_location location,
                                  enum command_id *cmd_list);

#endif
