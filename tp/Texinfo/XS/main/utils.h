/* utils.h - declarations for utils.c */
#ifndef UTILS_H
#define UTILS_H

/* Copyright 2010-2023 Free Software Foundation, Inc.

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

#include "options_types.h"
#include "global_commands_types.h"
#include "tree_types.h"
#include "command_ids.h"
#include "document_types.h"
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

typedef struct {
    char *encoding_name;
    iconv_t iconv;
} ENCODING_CONVERSION;

typedef struct {
    ENCODING_CONVERSION *list;
    size_t number;
    size_t space;
    int direction;  /* if > 0 converts from the encodings to UTF-8 */
} ENCODING_CONVERSION_LIST;

extern ENCODING_CONVERSION_LIST output_conversions;
extern ENCODING_CONVERSION_LIST input_conversions;

enum global_option_command_type {
   GO_NONE,
   GO_int,
   GO_char,
};

/* definitions for table of defaults for options corresponding to commands */
typedef struct COMMAND_OPTION_DEFAULT {
    enum global_option_command_type type;
    int value;
    char *string;
} COMMAND_OPTION_DEFAULT;

extern COMMAND_OPTION_DEFAULT command_option_default_table[];

/* return type of get_command_option */
typedef struct COMMAND_OPTION_REF {
    enum global_option_command_type type;
    union {
      int *int_ref;
      char **char_ref;
    };
} COMMAND_OPTION_REF;

/* similar to COMMAND_OPTION_REF but for values only */
typedef struct COMMAND_OPTION_VALUE {
    enum global_option_command_type type;
    union {
      int int_value;
      char *char_value;
    };
} COMMAND_OPTION_VALUE;

#define SMALL_BLOCK_COMMANDS_LIST \
    smbc_command_name(example)\
    smbc_command_name(display) \
    smbc_command_name(format) \
    smbc_command_name(lisp) \
    smbc_command_name(quotation) \
    smbc_command_name(indentedblock)

extern const enum command_id small_block_associated_command[][2];

/* CONVERTER and associated types needed for set_global_document_command */
/* see Texinfo::HTML _prepare_output_units_global_targets

   NOTE the special output units names are not actually used, the
   special output units direction names are obtained from the perl input
   and stored in special_unit_info and put later on in
   special_units_direction_name
 */
#define HTML_GLOBAL_DIRECTIONS_LIST \
   hgdt_name(First) \
   hgdt_name(Top) \
   hgdt_name(Index) \
   hgdt_name(Last) \
   hgdt_name(About) \
   hgdt_name(Contents) \
   hgdt_name(Overview) \
   hgdt_name(Footnotes)

enum global_unit_direction {
  #define hgdt_name(name) D_ ## name,
   HTML_GLOBAL_DIRECTIONS_LIST
  #undef hgdt_name
};

enum command_location {
   CL_before,
   CL_last,
   CL_preamble,
   CL_preamble_or_first,
};

/* HTML modified state flags */
#define HMSF_current_root            0x0001
/*
#define HMSF_        0x0002
#define HMSF_      0x0004
#define HMSF_     0x0008
#define HMSF_    0x0010
#define HMSF_          0x0020
#define HMSF_               0x0040
#define HMSF_  0x0080
#define HMSF_        0x0100
 */
#define HMSF_current_node            0x0200
#define HMSF_current_output_unit     0x0400
#define HMSF_current_filename        0x0800
#define HMSF_converter_state         0x1000
#define HMSF_multiple_pass           0x2000
#define HMSF_translations            0x4000
#define HMSF_file_counter            0x8000
#define HMSF_added_target            0x00010000
#define HMSF_referred_command_stack  0x00020000

typedef struct TARGET_FILENAME {
    char *target;
    char *filename;
} TARGET_FILENAME;

typedef struct FILE_SOURCE_INFO {
    char *filename;
    char *type;
    char *name;
    const ELEMENT *element;
    char *path;
} FILE_SOURCE_INFO;

typedef struct FILE_SOURCE_INFO_LIST {
    size_t number;
    size_t space;
    FILE_SOURCE_INFO *list;
} FILE_SOURCE_INFO_LIST;

extern const char *html_argument_formatting_type_names[];

typedef struct ELEMENT_STACK {
    const ELEMENT **stack;
    size_t top;
    size_t space;
} ELEMENT_STACK;

typedef struct ACCENTS_STACK {
    ELEMENT_STACK stack;
    ELEMENT *argument;
} ACCENTS_STACK;


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

void delete_global_info (GLOBAL_INFO *global_info_ref);
void delete_global_commands (GLOBAL_COMMANDS *global_commands_ref);

char *normalize_encoding_name (const char *text, int *possible_encoding);
ELEMENT *item_line_parent (ELEMENT *current);
ELEMENT *get_label_element (const ELEMENT *e);
INDEX *indices_info_index_by_name (INDEX **indices_information, char *name);
INDEX *ultimate_index (INDEX *index);
char *read_flag_name (char **ptr);
int section_level (const ELEMENT *section);
char *collapse_spaces (char *text);
char *parse_line_directive (char *line, int *retval, int *out_line_no);
int is_content_empty (ELEMENT *tree, int do_not_ignore_index_entries);

void clear_strings_list (STRING_LIST *strings);
void free_strings_list (STRING_LIST *strings);
void destroy_strings_list (STRING_LIST *strings);
void add_string (const char *string, STRING_LIST *strings_list);
void merge_strings (STRING_LIST *strings_list, STRING_LIST *merged_strings);
size_t find_string (STRING_LIST *strings_list, const char *string);

void push_stack_element (ELEMENT_STACK *stack, const ELEMENT *e);
const ELEMENT *pop_stack_element (ELEMENT_STACK *stack);
void destroy_accent_stack (ACCENTS_STACK *accent_stack);

void wipe_index (INDEX *idx);
void wipe_index_names (INDEX **index_names);

OPTIONS *new_options (void);
void free_options (OPTIONS *options);
COMMAND_OPTION_REF *get_command_option (OPTIONS *options, enum command_id cmd);


void add_include_directory (char *filename, STRING_LIST *include_dirs_list);
char *locate_include_file (char *filename, STRING_LIST *include_dirs_list);

ENCODING_CONVERSION *get_encoding_conversion (char *encoding,
                                    ENCODING_CONVERSION_LIST *encodings_list);
char *encode_with_iconv (iconv_t our_iconv,  char *s,
                         const SOURCE_INFO *source_info);
void reset_encoding_list (ENCODING_CONVERSION_LIST *encodings_list);
char *decode_string (char *input_string, char *encoding, int *status,
                     const SOURCE_INFO *source_info);
char *encode_string (char *input_string, char *encoding, int *status,
                     const SOURCE_INFO *source_info);

EXPANDED_FORMAT *new_expanded_formats (void);
void clear_expanded_formats (EXPANDED_FORMAT *formats);
void add_expanded_format (EXPANDED_FORMAT *formats, char *format);
int format_expanded_p (EXPANDED_FORMAT *formats, char *format);

char *enumerate_item_representation (char *specification, int number);

ELEMENT *get_global_document_command (GLOBAL_COMMANDS *global_commands,
                                      enum command_id cmd,
                                      enum command_location command_location);
char *informative_command_value (ELEMENT *element);
ELEMENT *set_global_document_command (GLOBAL_COMMANDS *global_commands,
                             OPTIONS *options, enum command_id cmd,
                             enum command_location command_location);
ELEMENT_LIST *get_cmd_global_multi_command (GLOBAL_COMMANDS *global_commands_ref,
                                      enum command_id cmd);
#endif
