/* utils.h - declarations for utils.c */
#ifndef UTILS_H
#define UTILS_H

/* Copyright 2010-2024 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

#include <stddef.h>
#include <iconv.h>

#include "global_commands_types.h"
#include "command_ids.h"
#include "tree_types.h"
#include "option_types.h"
#include "options_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "builtin_commands.h"

extern const char *whitespace_chars;
extern const char *digit_chars;
extern enum command_id level_to_structuring_command[][5];
extern int command_structuring_level[];

extern const char *direction_names[];
extern const char *direction_texts[];
extern const size_t directions_length;

extern const char *output_unit_type_names[];

extern const char *command_location_names[];

extern const char *html_button_direction_names[];
extern char *html_command_text_type_name[];

extern const EXPANDED_FORMAT default_expanded_formats[];

typedef struct ENCODING_CONVERSION {
    char *encoding_name;
    iconv_t iconv;
} ENCODING_CONVERSION;

typedef struct ENCODING_CONVERSION_LIST {
    ENCODING_CONVERSION *list;
    size_t number;
    size_t space;
    int direction;  /* if > 0 converts from the encodings to UTF-8 */
} ENCODING_CONVERSION_LIST;

extern ENCODING_CONVERSION_LIST output_conversions;
extern ENCODING_CONVERSION_LIST input_conversions;

typedef struct DEF_ALIAS {
    enum command_id alias;
    enum command_id command;
    char *category;
    char *translation_context;
} DEF_ALIAS;

extern DEF_ALIAS def_aliases[];

/* definitions for table of defaults for options corresponding to commands */
typedef struct COMMAND_OPTION_DEFAULT {
    enum global_option_type type;
    int value;
    char *string;
} COMMAND_OPTION_DEFAULT;

extern COMMAND_OPTION_DEFAULT command_option_default_table[];

#define SMALL_BLOCK_COMMANDS_LIST \
    smbc_command_name(example)\
    smbc_command_name(display) \
    smbc_command_name(format) \
    smbc_command_name(lisp) \
    smbc_command_name(quotation) \
    smbc_command_name(indentedblock)

extern const enum command_id small_block_associated_command[][2];

/* enum needed for set_global_document_command */
enum command_location {
   CL_before,
   CL_last,
   CL_preamble,
   CL_preamble_or_first,
};

/* HTML modified state flags */
#define HMSF_current_root            0x0001
/*
#define HMSF_  0x0002
#define HMSF_      0x0004
#define HMSF_     0x0008
#define HMSF_    0x0010
#define HMSF_          0x0020
#define HMSF_               0x0040
#define HMSF_  0x0080
#define HMSF_        0x0100
 */
#define HMSF_current_node            0x0200
/*
#define HMSF_     0x0400
#define HMSF_        0x0800
#define HMSF_           0x1000
*/
#define HMSF_multiple_pass           0x2000
#define HMSF_translations            0x4000
/*
#define HMSF_            0x8000
#define HMSF_            0x00010000
#define HMSF_  0x00020000
 */

typedef struct TARGET_FILENAME {
    char *target;
    char *filename;
} TARGET_FILENAME;

extern const char *html_argument_formatting_type_names[];

typedef struct ACCENTS_STACK {
    ELEMENT_STACK stack;
    ELEMENT *argument;
} ACCENTS_STACK;

typedef struct TARGET_CONTENTS_FILENAME {
    char *target;
    char *filename;
    char *target_contents;
    char *target_shortcontents;
} TARGET_CONTENTS_FILENAME;

typedef struct FILE_NAME_PATH {
    char *filename;
    char *filepath;
} FILE_NAME_PATH;

typedef struct TARGET_DIRECTORY_FILENAME {
    char *filename;
    char *directory;
    char *target;
} TARGET_DIRECTORY_FILENAME;

void non_perl_free (void *ptr);
char *non_perl_strdup (const char *s);
char *non_perl_strndup (const char *s, size_t n);
int non_perl_xvasprintf (char **ptr, const char *template, va_list ap);
int non_perl_xasprintf (char **ptr, const char *template, ...);

int xasprintf (char **ptr, const char *template, ...);

void fatal (char *);
void bug (char *);

int isascii_alnum (int c);
int isascii_alpha (int c);
int isascii_digit (int c);
int isascii_lower (int c);
int isascii_upper (int c);
size_t count_multibyte (const char *text);
char *to_upper_or_lower_multibyte (const char *text, int lower_or_upper);
int width_multibyte (const char *text);
int word_bytes_len_multibyte (const char *text);

void wipe_values (VALUE_LIST *values);

void delete_global_info (GLOBAL_INFO *global_info_ref);
void delete_global_commands (GLOBAL_COMMANDS *global_commands_ref);

char *normalize_encoding_name (const char *text, int *possible_encoding);
ELEMENT *item_line_parent (ELEMENT *current);
ELEMENT *get_label_element (const ELEMENT *e);
INDEX *indices_info_index_by_name (const INDEX_LIST *indices_information,
                                   const char *name);
INDEX *ultimate_index (INDEX *index);
size_t index_number_index_by_name (const SORTED_INDEX_NAMES *sorted_indices,
                                   const char *name);
size_t read_flag_len (const char *text);
int section_level (const ELEMENT *section);
enum command_id section_level_adjusted_command_name (const ELEMENT *element);
char *collapse_spaces (const char *text);
char *parse_line_directive (const char *line, int *retval, int *out_line_no);
int is_content_empty (const ELEMENT *tree, int do_not_ignore_index_entries);

STRING_LIST *new_string_list (void);
void clear_strings_list (STRING_LIST *strings);
void free_strings_list (STRING_LIST *strings);
void destroy_strings_list (STRING_LIST *strings);
char *add_string (const char *string, STRING_LIST *strings_list);
void merge_strings (STRING_LIST *strings_list,
                    const STRING_LIST *merged_strings);
void copy_strings (STRING_LIST *dest_list, const STRING_LIST *source_list);
size_t find_string (const STRING_LIST *strings_list, const char *string);

void destroy_accent_stack (ACCENTS_STACK *accent_stack);

void wipe_index (INDEX *idx);
void free_indices_info (INDEX_LIST *indices_info);

/* in options_init_free.c */
void initialize_options (OPTIONS *options);
void clear_options (OPTIONS *options);
void free_options (OPTIONS *options);

OPTIONS *new_options (void);
void set_output_encoding (OPTIONS *customization_information,
                          DOCUMENT *document);
OPTION *get_command_option (OPTIONS *options, enum command_id cmd);

void add_include_directory (const char *filename,
                            STRING_LIST *include_dirs_list);
char *locate_include_file (const char *filename,
                           const STRING_LIST *include_dirs_list);

ENCODING_CONVERSION *get_encoding_conversion (const char *encoding,
                                    ENCODING_CONVERSION_LIST *encodings_list);
char *encode_with_iconv (iconv_t our_iconv,  char *s,
                         const SOURCE_INFO *source_info);
void reset_encoding_list (ENCODING_CONVERSION_LIST *encodings_list);
char *decode_string (char *input_string, const char *encoding, int *status,
                     const SOURCE_INFO *source_info);
char *encode_string (char *input_string, const char *encoding, int *status,
                     const SOURCE_INFO *source_info);

EXPANDED_FORMAT *new_expanded_formats (void);
void clear_expanded_formats (EXPANDED_FORMAT *formats);
void add_expanded_format (EXPANDED_FORMAT *formats, const char *format);
int format_expanded_p (const EXPANDED_FORMAT *formats, const char *format);
int expanded_formats_number (void);
void set_expanded_formats_from_options (EXPANDED_FORMAT *formats,
                                        const OPTIONS *options);

char *enumerate_item_representation (char *specification, int number);

const ELEMENT *get_global_document_command (
                                      const GLOBAL_COMMANDS *global_commands,
                                      enum command_id cmd,
                                      enum command_location command_location);
char *informative_command_value (const ELEMENT *element);
void set_informative_command_value (OPTIONS *options, const ELEMENT *element);
const ELEMENT *set_global_document_command (GLOBAL_COMMANDS *global_commands,
                             OPTIONS *options, enum command_id cmd,
                             enum command_location command_location);
const ELEMENT_LIST *get_cmd_global_multi_command (
                                    const GLOBAL_COMMANDS *global_commands_ref,
                                    enum command_id cmd);
const ELEMENT *get_cmd_global_uniq_command (
                                    const GLOBAL_COMMANDS *global_commands_ref,
                                    enum command_id cmd);

void html_free_button_specification_list (BUTTON_SPECIFICATION_LIST *buttons);
void html_clear_direction_icons (DIRECTION_ICON_LIST *direction_icons);
void html_free_direction_icons (DIRECTION_ICON_LIST *direction_icons);

void initialize_option (OPTION *option, enum global_option_type type);
void clear_option (OPTION *option);
void free_option (OPTION *option);

TARGET_FILENAME *new_target_filename (void);
TARGET_CONTENTS_FILENAME *new_target_contents_filename (void);
FILE_NAME_PATH *new_file_name_path (void);
TARGET_DIRECTORY_FILENAME *new_target_directory_filename (void);
FORMATTED_BUTTON_INFO *new_formatted_button_info (void);

#endif
