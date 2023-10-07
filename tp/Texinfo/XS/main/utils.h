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

extern const char *whitespace_chars;
extern const char *digit_chars;
extern enum command_id level_to_structuring_command[][5];
extern int command_structuring_level[];

extern const char *direction_names[];
extern const char *direction_texts[];
extern const size_t directions_length;

extern const char *output_unit_type_names[];

extern const char *commands_location_names[];

enum error_type { error, warning };

typedef struct {
    char *message;
    char *error_line;
    enum error_type type;
    int continuation;
    SOURCE_INFO source_info;
} ERROR_MESSAGE;

typedef struct {
  ERROR_MESSAGE *list;
  size_t number;
  size_t space;
} ERROR_MESSAGE_LIST;

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

struct expanded_format {
    char *format;
    int expandedp;
};

typedef struct GLOBAL_INFO {
    char *input_file_name;
    char *input_directory;
    char *input_encoding_name;
    int sections_level_modifier;
    ELEMENT dircategory_direntry; /* an array of elements */
    /* Ignored characters for index sort key */
    IGNORED_CHARS ignored_chars;
} GLOBAL_INFO;

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

/* CONVERTER and associated types needed for set_global_document_command */
/* see Texinfo::HTML _prepare_output_units_global_targets */
enum global_directions {
  GD_First,
  GD_Top,
  GD_Index,
  GD_Last,
};

enum commands_location {
  CL_before,
  CL_last,
  CL_preamble,
  CL_preamble_or_first,
};

/* down here because it requires error from before */
#include "document.h"

typedef struct CONVERTER {
  OPTIONS *conf;
  OPTIONS *init_conf;
  struct DOCUMENT *document;
  int document_units_descriptor;
  OUTPUT_UNIT *global_target_directions[GD_Last+1];
} CONVERTER;

void fatal (char *);
void bug (char *);

int isascii_alnum (int c);
int isascii_alpha (int c);
int isascii_lower (int c);
int isascii_upper (int c);
size_t count_multibyte (const char *text);
char *to_upper_or_lower_multibyte (const char *text, int lower_or_upper);
int width_multibyte (const char *text);

void delete_global_info (GLOBAL_INFO *global_info_ref);
void delete_global_commands (GLOBAL_COMMANDS *global_commands_ref);

char *normalize_encoding_name (char *text, int *possible_encoding);
ELEMENT *get_label_element (ELEMENT *e);
INDEX *indices_info_index_by_name (INDEX **indices_information, char *name);
char *read_flag_name (char **ptr);
int section_level (ELEMENT *section);
char *collapse_spaces (char *text);
char *parse_line_directive (char *line, int *retval, int *out_line_no);
int is_content_empty (ELEMENT *tree, int do_not_ignore_index_entries);

void clear_strings_list (STRING_LIST *include_dirs_list);
void free_strings_list (STRING_LIST *strings);
void destroy_strings_list (STRING_LIST *strings);
void add_string (char *string, STRING_LIST *strings_list);
void merge_strings (STRING_LIST *strings_list, STRING_LIST *merged_strings);

void wipe_index (INDEX *idx);
void wipe_index_names (INDEX **index_names);

OPTIONS *new_options (void);
void free_options (OPTIONS *options);
COMMAND_OPTION_REF *get_command_option (OPTIONS *options, enum command_id cmd);


void add_include_directory (char *filename, STRING_LIST *include_dirs_list);
char *locate_include_file (char *filename, STRING_LIST *include_dirs_list);

ENCODING_CONVERSION *get_encoding_conversion (char *encoding,
                                    ENCODING_CONVERSION_LIST *encodings_list);
char *encode_with_iconv (iconv_t our_iconv,  char *s, SOURCE_INFO *source_info);
void reset_encoding_list (ENCODING_CONVERSION_LIST *encodings_list);

struct expanded_format *new_expanded_formats (char *format);
void clear_expanded_formats (struct expanded_format *formats);
void add_expanded_format (struct expanded_format *formats, char *format);
int format_expanded_p (struct expanded_format *formats, char *format);

char *enumerate_item_representation (char *specification, int number);

CONVERTER *new_converter (void);

ELEMENT *set_global_document_command (CONVERTER *self, enum command_id cmd,
                                      enum commands_location command_location);
ELEMENT *get_cmd_global_command (GLOBAL_COMMANDS *global_commands_ref,
                                 enum command_id cmd);
#endif
