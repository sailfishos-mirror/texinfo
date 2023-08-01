/* unicode.h - definitions for unicode.c */
#ifndef UNICODE_H
#define UNICODE_H

#include "tree_types.h"

extern char* unicode_diacritics[];

char *normalize_NFC (const char *text);
char *unicode_accent (char *text, ELEMENT *e);

#endif

