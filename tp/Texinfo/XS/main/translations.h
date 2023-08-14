/* translations.h - declarations for translations.c */
#ifndef TRANSLATIONS_H
#define TRANSLATIONS_H

#include "tree_types.h"

/* element or string may not always be present */
typedef struct NAMED_STRING_ELEMENT {
  char *name;
  ELEMENT *element;
  char *string;
} NAMED_STRING_ELEMENT;

typedef struct NAMED_STRING_ELEMENT_LIST {
  size_t number;
  size_t space;
  NAMED_STRING_ELEMENT *list;
} NAMED_STRING_ELEMENT_LIST;

ELEMENT *gdt (char * string, NAMED_STRING_ELEMENT_LIST *replaced_substrings,
              const char *translation_context,
              char *in_lang);

NAMED_STRING_ELEMENT_LIST * new_named_string_element_list (void);
void add_string_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                              char *name, char *string);
void add_element_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                               char *name, ELEMENT *element);
void destroy_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel);

void configure (char *localesdir, char *strings_textdomain_in);

#endif
