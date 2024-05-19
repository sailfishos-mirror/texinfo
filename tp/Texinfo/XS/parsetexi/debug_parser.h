/* debug_parser.h - declarations for debug_parser.c */
#ifndef DEBUG_PARSER_H
#define DEBUG_PARSER_H

#include "tree_types.h"

void debug (char *s, ...);
void debug_nonl (char *s, ...);
void debug_print_element (const ELEMENT *e, int print_parent);
void debug_print_protected_string (char *input_string);

char *print_element_debug_parser (ELEMENT *e, int print_parent);
const char *debug_parser_command_name (enum command_id cmd);
void debug_parser_print_element (ELEMENT *e, int print_parent);

#endif
