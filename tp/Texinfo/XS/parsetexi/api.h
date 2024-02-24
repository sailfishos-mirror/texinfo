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
void reset_parser_except_conf (void);

void parser_set_debug (int value);
void parser_store_value (const char *name, const char *value);
void parser_add_include_directory (const char *filename);
void parser_add_expanded_format (const char *format);
void parser_clear_expanded_formats (void);
void parser_set_accept_internalvalue (int value);
void parser_set_restricted (int value);
void parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i);
void parser_set_input_file_name_encoding (const char *value);
void parser_set_locale_encoding (const char *value);
void parser_set_documentlanguage_override (const char *value);

#endif
