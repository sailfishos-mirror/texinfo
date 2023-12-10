/* errors.h - declarations for error.c */
#ifndef ERRORS_H
#define ERRORS_H

#include <stdarg.h>

#include "tree_types.h"
#include "options_types.h"
#include "document_types.h"

void line_error (const char *format, ...);
void line_warn (const char *format, ...);
void command_error (const ELEMENT *e, const char *format, ...);
void command_warn (const ELEMENT *e, const char *format, ...);
void wipe_errors (void);
void forget_errors (void);
void line_error_ext (enum error_type type, int continuation,
                     SOURCE_INFO *cmd_source_info, const char *format, ...);
void bug_message (char *format, ...);
char *prepare_error_line_message (ERROR_MESSAGE *error_message);

void wipe_error_message_list (ERROR_MESSAGE_LIST *error_messages);
void clear_error_message_list (ERROR_MESSAGE_LIST *error_messages);
void message_list_line_error_ext (ERROR_MESSAGE_LIST *error_messages,
                                enum error_type type, int continuation,
                     SOURCE_INFO *cmd_source_info, const char *format, ...);
void message_list_command_error (ERROR_MESSAGE_LIST *error_messages,
                                 const ELEMENT *e, const char *format, ...);
void message_list_command_warn (ERROR_MESSAGE_LIST *error_messages,
                                const ELEMENT *e, const char *format, ...);

void message_list_document_error (ERROR_MESSAGE_LIST *error_messages,
                                  OPTIONS *conf,
                                  const char *format, ...);
void message_list_document_warn (ERROR_MESSAGE_LIST *error_messages,
                                 OPTIONS *conf,
                                 const char *format, ...);
void vmessage_list_command_warn (ERROR_MESSAGE_LIST *error_messages,
                            const ELEMENT *e, const char *format, va_list v);

extern ERROR_MESSAGE_LIST error_messages_list;
extern SOURCE_INFO current_source_info;

#endif
