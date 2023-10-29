/* convert_to_text.h - definitions for convert_to_text.c */
#ifndef CONVERT_TO_TEXT_H
#define CONVERT_TO_TEXT_H

#include "options_types.h"
#include "tree_types.h"
#include "converter_types.h"

typedef struct TEXT_OPTIONS {
    int set_case; /* sc and lc */
    char *encoding; /* enabled_encoding */
    int code_state; /* code */
    int raw_state;
    int sort_string;
    int ASCII_GLYPH;
    int TEST;
    int NUMBER_SECTIONS;
    EXPANDED_FORMAT *expanded_formats;
    STRING_LIST include_directories;
    OPTIONS *other_converter_options; /* corresponds to converter passed
                                         to convert_to_text text options */
    OPTIONS *self_converter_options; /* text converter options available
                                        as the OPTIONS structure */
    int document_descriptor;
} TEXT_OPTIONS;

char *convert_to_text (ELEMENT *root, TEXT_OPTIONS *text_options);
TEXT_OPTIONS *new_text_options (void);
void destroy_text_options (TEXT_OPTIONS *text_options);
TEXT_OPTIONS *copy_options_for_convert_text (CONVERTER *self,
                                      int enable_encoding_if_not_ascii);

#endif
