/* errors.h - declarations for error.c */
#ifndef ERRORS_H
#define ERRORS_H

#include <stdarg.h>

#include "tree_types.h"
#include "utils.h"

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

void wipe_error_message_list (ERROR_MESSAGE_LIST *error_messages);
void message_list_command_error (ERROR_MESSAGE_LIST *error_messages,
                                 ELEMENT *e, char *format, ...);
void message_list_command_warn (ERROR_MESSAGE_LIST *error_messages,
                                ELEMENT *e, char *format, ...);

void message_list_document_error (ERROR_MESSAGE_LIST *error_messages,
                                  OPTIONS *conf,
                                  char *format, ...);
void message_list_document_warn (ERROR_MESSAGE_LIST *error_messages,
                                 OPTIONS *conf,
                                 char *format, ...);

extern ERROR_MESSAGE_LIST error_messages_list;
extern SOURCE_INFO current_source_info;

#endif
