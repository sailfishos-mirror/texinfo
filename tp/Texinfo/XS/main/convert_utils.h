/* convert_utils.h - definitions for convert_utils.c */
#ifndef CONVERT_UTILS_H
#define CONVERT_UTILS_H

#include "tree_types.h"

typedef struct ACCENTS_STACK {
  ELEMENT *stack;
  ELEMENT *argument;
} ACCENTS_STACK;

ACCENTS_STACK *find_innermost_accent_contents (ELEMENT *element);
void destroy_accent_stack (ACCENTS_STACK *accent_stack);

#endif
