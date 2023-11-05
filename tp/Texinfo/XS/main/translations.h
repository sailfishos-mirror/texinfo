/* translations.h - declarations for translations.c */
#ifndef TRANSLATIONS_H
#define TRANSLATIONS_H

#include <stddef.h>

#include "options_types.h"
#include "tree_types.h"
#include "converter_types.h"

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

char *translate_string (OPTIONS *options, const char * string,
                  const char *translation_context, const char *in_lang);
int replace_convert_substrings (char *translated_string,
                           NAMED_STRING_ELEMENT_LIST *replaced_substrings);
char *replace_substrings (char *string,
                    NAMED_STRING_ELEMENT_LIST *replaced_substrings);

int gdt (const char * string, OPTIONS *options,
         NAMED_STRING_ELEMENT_LIST *replaced_substrings,
         const char *translation_context,
         const char *in_lang);

ELEMENT *gdt_tree (const char * string, DOCUMENT *document, OPTIONS *options,
                   NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                   const char *translation_context,
                   const char *in_lang);

char *gdt_string (const char *string, OPTIONS *options,
                  NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                  const char *translation_context, const char *in_lang);

ELEMENT *pgdt_tree (const char *translation_context, const char *string,
                    DOCUMENT *document, OPTIONS *options,
                    NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                    const char *in_lang);

NAMED_STRING_ELEMENT_LIST * new_named_string_element_list (void);
void add_string_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                              char *name, char *string);
void add_element_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                               char *name, ELEMENT *element);
void destroy_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel);

void configure (char *localesdir, char *strings_textdomain_in);

#endif
