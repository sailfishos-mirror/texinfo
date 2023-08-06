/* api.h - declarations for api.c */
#ifndef API_H
#define API_H

#include <config.h>

extern ELEMENT *Root;

int parse_file (char *filename);
void parse_piece (char *, int line_nr);
void parse_string (char *, int line_nr);
void parse_text (char *, int line_nr);
void reset_parser (int debug_output);
void reset_parser_except_conf (void);
int store_document (void);
void set_debug (int);
void wipe_values (void);
void reset_context_stack (void);

void set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i);
void conf_set_input_file_name_encoding (char *value);
void conf_set_locale_encoding (char *value);
void conf_set_documentlanguage_override (char *value);

#ifdef ENABLE_NLS

#define LOCALEDIR DATADIR "/locale"

#endif

#endif
