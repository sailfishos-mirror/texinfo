/* api.h - declarations for api.c */
#ifndef API_H
#define API_H

#include "tree_types.h"

int parse_file (const char *filename, const char *input_file_name,
                                      const char *input_directory);
int parse_piece (const char *, int line_nr);
int parse_string (const char *, int line_nr);
int parse_text (const char *, int line_nr);
void reset_parser (int debug_output);

void parser_reset_values_conf (void);
void parser_store_value (const char *name, const char *value);

#endif
