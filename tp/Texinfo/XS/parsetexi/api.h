/* api.h - declarations for api.c */
#ifndef API_H
#define API_H

#include "tree_types.h"

int parse_file (const char *input_file_path, int *status);
int parse_piece (const char *, int line_nr);
int parse_string (const char *, int line_nr);
int parse_text (const char *, int line_nr);
void reset_parser (int debug_output);

void parser_conf_reset_values (void);
void parser_conf_add_value (const char *name, const char *value);

#endif
