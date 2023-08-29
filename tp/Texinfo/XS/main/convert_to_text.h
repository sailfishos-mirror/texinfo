/* convert_to_text.h - definitions for convert_to_text.c */
#ifndef CONVERT_TO_TEXT_H
#define CONVERT_TO_TEXT_H

#include "tree_types.h"

typedef struct TEXT_OPTIONS {
  int set_case; /* sc and lc */
  char *encoding; /* enabled_encoding */
  int code_state; /* code */
  int raw_state;
  int sort_string;
  int ascii_glyph; /* ASCII_GLYPH */
  int test; /* TEST */
  int number_sections; /* NUMBER_SECTIONS */
  struct expanded_format *expanded_formats; /* expanded_formats_hash */
  /* converter? */
} TEXT_OPTIONS;

char *convert_to_text (ELEMENT *root, TEXT_OPTIONS *options);
void destroy_options (TEXT_OPTIONS *options);

#endif
