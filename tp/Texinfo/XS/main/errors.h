/* errors.h - declarations for error.c */
#ifndef ERRORS_H
#define ERRORS_H

#include <stdarg.h>

#include "tree_types.h"
#include "options_types.h"
#include "document_types.h"

void wipe_error_message_list (ERROR_MESSAGE_LIST *error_messages);
void clear_error_message_list (ERROR_MESSAGE_LIST *error_messages);
void message_list_line_formatted_message (ERROR_MESSAGE_LIST *error_messages,
                           enum error_type type, int continuation,
                           const SOURCE_INFO *cmd_source_info,
                           char *message, int warn);
void vmessage_list_line_error (ERROR_MESSAGE_LIST *error_messages,
                          enum error_type type, int continuation,
                          int warn,
                          const SOURCE_INFO *cmd_source_info,
                          const char *format, va_list v);
void message_list_line_error_ext (ERROR_MESSAGE_LIST *error_messages,
                             OPTIONS *conf,
                             enum error_type type, int continuation,
                     SOURCE_INFO *cmd_source_info, const char *format, ...);
void message_list_command_error (ERROR_MESSAGE_LIST *error_messages,
                            OPTIONS *conf,
                            const ELEMENT *e, const char *format, ...);
void message_list_command_warn (ERROR_MESSAGE_LIST *error_messages,
                           OPTIONS *conf,
                           const ELEMENT *e, const char *format, ...);

void message_list_document_formatted_message (ERROR_MESSAGE_LIST *error_messages,
                                         OPTIONS *conf,
                                         enum error_type type, int continuation,
                                         char *message);
void message_list_document_error (ERROR_MESSAGE_LIST *error_messages,
                                  OPTIONS *conf,
                                  const char *format, ...);
void message_list_document_warn (ERROR_MESSAGE_LIST *error_messages,
                                 OPTIONS *conf,
                                 const char *format, ...);
void vmessage_list_command_warn (ERROR_MESSAGE_LIST *error_messages,
                            OPTIONS *conf,
                            const ELEMENT *e, const char *format, va_list v);

#endif
