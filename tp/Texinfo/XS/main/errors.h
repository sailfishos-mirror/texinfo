/* errors.h - declarations for error.c */
#ifndef ERRORS_H
#define ERRORS_H

#include <stddef.h>
#include <stdarg.h>

#include "tree_types.h"

int xasprintf (char **ptr, const char *template, ...);
int xvasprintf (char **ptr, const char *template, va_list ap);

void fatal (char *);
void bug (char *);

enum error_type { error, warning };

typedef struct {
    char *message;
    enum error_type type;
    int continuation;
    SOURCE_INFO source_info;
} ERROR_MESSAGE;

typedef struct {
  ERROR_MESSAGE *list;
  size_t number;
  size_t space;
} ERROR_MESSAGE_LIST;

void line_error (char *format, ...);
void line_warn (char *format, ...);
void command_error (ELEMENT *e, char *format, ...);
void command_warn (ELEMENT *e, char *format, ...);
void wipe_errors (void);
void forget_errors (void);
void line_error_ext (enum error_type type, int continuation,
                     SOURCE_INFO *cmd_source_info, char *format, ...);
void bug_message (char *format, ...);
char *prepare_error_line_message (ERROR_MESSAGE *error_message);

extern ERROR_MESSAGE *error_list;
extern size_t error_number;

extern SOURCE_INFO current_source_info;

#endif
