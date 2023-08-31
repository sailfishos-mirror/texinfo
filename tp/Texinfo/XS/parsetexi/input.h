/* input.h - declarations for input.c */
#ifndef INPUT_H
#define INPUT_H

#include <stddef.h>

#include "tree_types.h"

char *new_line (ELEMENT *current);
char *next_text (ELEMENT *current);

void save_line_directive (int line_nr, char *filename);

void input_push_text (char *text, int line_number, char *macro_name,
                      char *value_flag);
int input_push_file (char *filename);
void input_pushback (char *line);
void set_input_source_mark (SOURCE_MARK *source_mark);
void input_reset_input_stack (void);
void parser_reset_encoding_list (void);
int expanding_macro (char *macro);
int top_file_index (void);

char *parser_locate_include_file (char *filename);
char *encode_file_name (char *filename);
char *convert_to_utf8 (char *s);
int set_input_encoding (char *encoding);
void parser_add_include_directory (char *filename);
void parser_clear_include_directories (void);

extern char **small_strings;
extern size_t small_strings_num;

char *save_string (char *string);
void free_small_strings (void);
void forget_small_strings (void);

extern int input_number;
extern int macro_expansion_nr;
extern int value_expansion_nr;

void set_input_file_name_encoding (char *value);
void set_locale_encoding (char *value);
void set_doc_encoding_for_input_file_name (int value);

#endif
