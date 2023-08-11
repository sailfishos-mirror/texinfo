/* debug_parser.h - declarations for debug_parser.c */
#ifndef DEBUG_PARSER_H
#define DEBUG_PARSER_H

#include "tree_types.h"

char *print_element_debug_parser (ELEMENT *e, int print_parent);
char *debug_parser_command_name (enum command_id cmd);
void debug_parser_print_element (ELEMENT *e, int print_parent);

#endif
