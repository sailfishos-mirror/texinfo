/* parser_api.h - declarations for parser_api.c */
#ifndef PARSER_API_H
#define PARSER_API_H

#include "tree_types.h"
#include "document_types.h"
#include "option_types.h"

DOCUMENT *parse_file (const char *input_file_path, int *status);
DOCUMENT *parse_piece (const char *string, int line_nr);
DOCUMENT *parse_string (const char *string, int line_nr);
DOCUMENT *parse_text (const char *string, int line_nr);
void reset_parser (int debug_output);

void parser_conf_reset_values (void);
void parser_conf_add_value (const char *name, const char *value);

void parser (const char *file_path, const VALUE_LIST *values,
             OPTIONS_LIST *options_list);
#endif
