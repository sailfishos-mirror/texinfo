/* unicode.h - definitions for unicode.c */
#ifndef UNICODE_H
#define UNICODE_H

#include "tree_types.h"

typedef struct ENCODING_CODEPOINTS {
   char *encoding;
   size_t number;
   char *codepoints[96]; /* A0 to FF 16*6 */
} ENCODING_CODEPOINTS;

extern char *unicode_diacritics[];

char *normalize_NFC (const char *text);
char *unicode_accent (const char *text, ELEMENT *e);

char *encoded_accents (char *text, ELEMENT *stack, char *encoding,
  char *(*format_accent)(char *text, ELEMENT *element, int set_case),
  int set_case);
#endif

