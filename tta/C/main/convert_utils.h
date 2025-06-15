/* convert_utils.h - definitions for convert_utils.c */
#ifndef CONVERT_UTILS_H
#define CONVERT_UTILS_H

#include <stdio.h>

#include "command_ids.h"
#include "options_data.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
/* for NAMED_STRING_ELEMENT_LIST */
#include "translations.h"
/* for ACCENTS_STACK */
/*
#include "utils.h"
 */

/* avoid a dependence on utils.h */
struct ACCENTS_STACK;
/* avoid a dependence on translations.h */
struct NAMED_STRING_ELEMENT_LIST;

extern char *convert_utils_month_name[12];

typedef struct PARSED_DEF {
    ELEMENT *name;
    ELEMENT *class;
    ELEMENT *category;
    ELEMENT *type;
    ELEMENT *args;
} PARSED_DEF;

LANG_TRANSLATION *switch_lang_translations (
                          LANG_TRANSLATION ***lang_translations,
                          const char *in_lang,
                          LANG_TRANSLATION *current_lang_translations,
                          size_t cache_size);

void setup_convert_utils (void);

ELEMENT *expand_today (int test, LANG_TRANSLATION *lang_translation,
              int debug, CONVERTER *converter,
   ELEMENT * (*cdt_tree_fn) (const char *string, CONVERTER *self,
                             NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                             const char *translation_context)
             );

struct ACCENTS_STACK *find_innermost_accent_contents (const ELEMENT *element);

char *add_heading_number (const ELEMENT *current, char *text,
                          int numbered, LANG_TRANSLATION *lang_translation);

ELEMENT *expand_verbatiminclude (const char *input_file_name_encoding,
                        int doc_encoding_for_input_file_name,
                        const char *locale_encoding,
                        const STRING_LIST *include_directories,
                        int debug, ERROR_MESSAGE_LIST *error_messages,
                        const GLOBAL_INFO *global_information,
                        const ELEMENT *current);
ELEMENT *converter_expand_verbatiminclude (ERROR_MESSAGE_LIST *error_messages,
                         const OPTIONS *options,
                         const GLOBAL_INFO *global_information,
                         const ELEMENT *current);

PARSED_DEF *definition_arguments_content (const ELEMENT *element);
void destroy_parsed_def (PARSED_DEF *parsed_def);
ELEMENT *definition_category_tree (const ELEMENT *current,
                          LANG_TRANSLATION *lang_translation,
                          int debug, CONVERTER *converter,
   ELEMENT * (*cdt_tree_fn) (const char *string, CONVERTER *self,
                             NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                             const char *translation_context)
                          );

const ELEMENT *itemize_item_prepended_element (const ELEMENT *block_line_arg);

COMMENT_OR_END_LINE *comment_or_end_line (const ELEMENT *element);
ARGUMENT_COMMENT_END_LINE *argument_comment_end_line (const ELEMENT *element);

ELEMENT *cdt_tree (const char * string, CONVERTER *self,
                   struct NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                   const char *translation_context);

ELEMENT *translated_command_tree (TRANSLATED_COMMAND_LIST *translated_commands,
                         enum command_id cmd,
                         LANG_TRANSLATION *lang_translation,
                         int debug, CONVERTER *converter,
   ELEMENT * (*cdt_tree_fn) (const char *string, CONVERTER *self,
                             NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                             const char *translation_context)
                        );

char *encoded_input_file_name (const char *input_file_name_encoding,
                         int doc_encoding_for_input_file_name,
                         const char *locale_encoding,
                         const GLOBAL_INFO *global_information,
                         char *file_name, const char *input_file_encoding,
                         char **file_name_encoding,
                         const SOURCE_INFO *source_info);
char *converter_encoded_input_file_name (const OPTIONS *options,
                          const GLOBAL_INFO *global_information,
                          char *file_name, const char *input_file_encoding,
                          char **file_name_encoding,
                          const SOURCE_INFO *source_info);
char *encoded_output_file_name (const char *output_file_name_encoding,
                          int doc_encoding_for_output_file_name,
                          const char *locale_encoding,
                          const GLOBAL_INFO *global_information,
                          char *file_name, char **file_name_encoding,
                          const SOURCE_INFO *source_info);
char *converter_encoded_output_file_name (const OPTIONS *options,
                          const GLOBAL_INFO *global_information,
                          char *file_name, char **file_name_encoding,
                          const SOURCE_INFO *source_info);

FILE *output_files_open_out (OUTPUT_FILES_INFORMATION *self,
                             const char *file_path,
                     char **error_message, int *overwritten_file, int binary);
void output_files_register_closed (OUTPUT_FILES_INFORMATION *self,
                                   const char *file_path);
void free_output_files_information (OUTPUT_FILES_INFORMATION *self);
void clear_output_files_information (OUTPUT_FILES_INFORMATION *self);
void register_unclosed_file (OUTPUT_FILES_INFORMATION *self,
                             const char *file_path, FILE *stream, void *io);

#endif
