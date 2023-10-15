/* unicode.h - definitions for unicode.c */
#ifndef UNICODE_H
#define UNICODE_H

#include <stddef.h>

#include "tree_types.h"

typedef struct ENCODING_CODEPOINTS {
    char *encoding;
    size_t number;
    char *codepoints[96]; /* A0 to FF 16*6 */
} ENCODING_CODEPOINTS;

typedef struct COMMAND_UNICODE {
    char *codepoint;
    char *text; /* UTF-8 encoded */
    int is_extra;
} COMMAND_UNICODE;

extern char *unicode_diacritics[];
extern COMMAND_UNICODE unicode_character_brace_no_arg_commands[];

char *normalize_NFC (const char *text);
char *normalize_NFKD (const char *text);
char *unicode_accent (const char *text, ELEMENT *e);

char *encoded_accents (char *text, ELEMENT *stack, char *encoding,
  char *(*format_accent)(char *text, ELEMENT *element, int set_case),
  int set_case);
char *unicode_brace_no_arg_command (enum command_id cmd, char *encoding);

#endif
