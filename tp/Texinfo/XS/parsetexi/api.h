/* api.h - declarations for api.c */
#ifndef API_H
#define API_H

#include <config.h>
#include "tree_types.h"

int parse_file (char *filename, char *input_file_name, char *input_directory);
int parse_piece (char *, int line_nr);
int parse_string (char *, int line_nr);
int parse_text (char *, int line_nr);
void reset_parser (int debug_output);
void reset_parser_except_conf (void);

void parser_set_debug (int value);
void parser_store_value (char *name, char *value);
void parser_add_include_directory (char *filename);
void parser_add_expanded_format (char *format);
void parser_clear_expanded_formats (void);
void parser_set_accept_internalvalue (int value);
void parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i);
void parser_set_input_file_name_encoding (char *value);
void parser_set_locale_encoding (char *value);
void parser_set_documentlanguage_override (char *value);

#endif
