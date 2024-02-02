/* convert_utils.h - definitions for convert_utils.c */
#ifndef CONVERT_UTILS_H
#define CONVERT_UTILS_H

#include <stdio.h>

#include "options_types.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "translations.h"

extern char *convert_utils_month_name[12];

typedef struct PARSED_DEF {
    ELEMENT *name;
    ELEMENT *class;
    ELEMENT *category;
    ELEMENT *type;
    ELEMENT *args;
} PARSED_DEF;

ELEMENT *expand_today (OPTIONS *options);

ACCENTS_STACK *find_innermost_accent_contents (const ELEMENT *element);

char *add_heading_number (OPTIONS *options, const ELEMENT *current, char *text,
                          int numbered);

ELEMENT *expand_verbatiminclude (ERROR_MESSAGE_LIST *error_messages,
                        OPTIONS *options, GLOBAL_INFO *global_information,
                        const ELEMENT *current);

PARSED_DEF *definition_arguments_content (const ELEMENT *element);
void destroy_parsed_def (PARSED_DEF *parsed_def);
ELEMENT *definition_category_tree (OPTIONS *options, const ELEMENT *current);

ELEMENT *cdt_tree (const char * string, CONVERTER *self,
                   NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                   const char *translation_context);

ELEMENT *translated_command_tree (CONVERTER *self, enum command_id cmd);
void destroy_translated_commands (TRANSLATED_COMMAND *translated_commands);

char *encoded_input_file_name (OPTIONS *options,
                         GLOBAL_INFO *global_information,
                         char *file_name, char *input_file_encoding,
                         char **file_name_encoding,
                         const SOURCE_INFO *source_info);
char *encoded_output_file_name (OPTIONS *options,
                                GLOBAL_INFO *global_information,
                                char *file_name, char **file_name_encoding,
                                SOURCE_INFO *source_info);

FILE *output_files_open_out (OUTPUT_FILES_INFORMATION *self,
                             const char *file_path,
                             char **error_message, int binary);
void output_files_register_closed (OUTPUT_FILES_INFORMATION *self,
                                   const char *file_path);
void free_output_files_information (OUTPUT_FILES_INFORMATION *self);
void clear_output_files_information (OUTPUT_FILES_INFORMATION *self);

ELEMENT *find_root_command_next_heading_command (const ELEMENT *root,
                                  EXPANDED_FORMAT *formats,
                                  int do_not_ignore_contents,
                                  int do_not_ignore_index_entries);

#endif
