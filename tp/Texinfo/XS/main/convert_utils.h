/* convert_utils.h - definitions for convert_utils.c */
#ifndef CONVERT_UTILS_H
#define CONVERT_UTILS_H

#include "options_types.h"
#include "tree_types.h"
#include "convert_to_text.h"
#include "utils.h"

extern char *convert_utils_month_name[12];

typedef struct ACCENTS_STACK {
    ELEMENT *stack;
    ELEMENT *argument;
} ACCENTS_STACK;

typedef struct PARSED_DEF {
    ELEMENT *name;
    ELEMENT *class;
    ELEMENT *category;
    ELEMENT *type;
    ELEMENT *args;
} PARSED_DEF;

ACCENTS_STACK *find_innermost_accent_contents (ELEMENT *element);
void destroy_accent_stack (ACCENTS_STACK *accent_stack);

char *add_heading_number (OPTIONS *options, ELEMENT *current, char *text,
                          int numbered);

ELEMENT *expand_verbatiminclude (ERROR_MESSAGE_LIST *error_messages,
                        OPTIONS *options, GLOBAL_INFO *global_information,
                        ELEMENT *current);

PARSED_DEF *definition_arguments_content (ELEMENT *element);
void destroy_parsed_def (PARSED_DEF *parsed_def);
ELEMENT *definition_category_tree (OPTIONS *options, ELEMENT *current);

ELEMENT *translated_command_tree (CONVERTER *self, enum command_id cmd);
#endif
