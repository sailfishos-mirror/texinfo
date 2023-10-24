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

extern char *html_conversion_context_type_names[];
extern char *html_global_unit_direction_names[];

extern char *html_formatting_reference_names[];
extern char *html_css_string_formatting_reference_names[];

enum error_type { MSG_error, MSG_warning,
                  MSG_document_error, MSG_document_warning };

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

extern ENCODING_CONVERSION_LIST output_conversions;
extern ENCODING_CONVERSION_LIST input_conversions;

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

#define SUI_TYPES_LIST \
  sui_type(class) \
  sui_type(direction) \
  sui_type(order) \
  sui_type(file_string) \
  sui_type(target) \
  sui_type(heading)

enum special_unit_info_type {
  #define sui_type(name) SUI_type_ ## name,
   SUI_TYPES_LIST
  #undef sui_type
};

/* translated from corresponding SUI_type* */
enum special_unit_info_tree {
   SUIT_type_heading,
};

enum command_location {
   CL_before,
   CL_last,
   CL_preamble,
   CL_preamble_or_first,
};

enum special_target_type {
   ST_footnote_location,
};

#define TDS_TRANSLATED_TYPES_LIST \
  tds_type(button) \
  tds_type(description) \
  tds_type(text)

#define TDS_NON_TRANSLATED_TYPES_LIST \
  tds_type(accesskey) \
  tds_type(example) \
  tds_type(rel)

enum direction_string {
  #define tds_type(name) TDS_type_ ## name,
   TDS_TRANSLATED_TYPES_LIST
   TDS_NON_TRANSLATED_TYPES_LIST
  #undef tds_type
};

#define HCC_CONTEXT_TYPES_LIST \
  cctx_type(normal) \
  cctx_type(preformatted) \
  cctx_type(string) \
  cctx_type(css_string) \
  cctx_type(code) \
  cctx_type(math)

enum conversion_context {
  #define cctx_type(name) HCC_type_## name,
   HCC_CONTEXT_TYPES_LIST
  #undef cctx_type
};

/* %default_formatting_references + %default_css_string_formatting_references
   in Texinfo::HTML */
#define HTML_FORMATTING_REFERENCES_LIST \
  html_fr_reference(format_begin_file) \
  html_fr_reference(format_button) \
  html_fr_reference(format_button_icon_img) \
  html_fr_reference(format_css_lines) \
  html_fr_reference(format_comment) \
  html_fr_reference(format_contents) \
  html_fr_reference(format_element_header) \
  html_fr_reference(format_element_footer) \
  html_fr_reference(format_end_file) \
  html_fr_reference(format_footnotes_segment) \
  html_fr_reference(format_footnotes_sequence) \
  html_fr_reference(format_heading_text) \
  html_fr_reference(format_navigation_header) \
  html_fr_reference(format_navigation_panel) \
  html_fr_reference(format_node_redirection_page) \
  html_fr_reference(format_program_string) \
  html_fr_reference(format_protect_text) \
  html_fr_reference(format_separate_anchor) \
  html_fr_reference(format_titlepage) \
  html_fr_reference(format_title_titlepage) \
  html_fr_reference(format_translate_message_tree) \
  html_fr_reference(format_translate_message_string) \

#define HTML_CSS_FORMATTING_REFERENCES_LIST \
  html_fr_reference(format_protect_text)

enum html_formatting_reference {
  #define html_fr_reference(name) FR_## name,
   HTML_FORMATTING_REFERENCES_LIST
  #undef html_fr_reference
};

enum html_css_string_formatting_reference {
  #define html_fr_reference(name) CSSFR_## name,
   HTML_CSS_FORMATTING_REFERENCES_LIST
  #undef html_fr_reference
};

enum formatting_reference_status {
   FRS_status_none,
   FRS_status_default_set,        /* default is set, no customization (or
                                     customization is the same as default) */
   FRS_status_customization_set,  /* customization is set, no default, or
                                     not the same as default */
   FRS_status_ignored,            /* explicitely ignored. Only used for
                                     types_conversion and commands_conversion
                                   */
};

/* down here because it requires error data from before */
#include "document.h"

typedef struct VARIETY_DIRECTION_INDEX {
    char *special_unit_variety;
    int direction_index;
} VARIETY_DIRECTION_INDEX;

typedef struct HTML_TARGET {
    ELEMENT *element;
    char *target;
    char *special_unit_filename;
    char *node_filename;
    char *section_filename;
    char *contents_target;
    char *shortcontents_target;

    char *text;
    ELEMENT *tree;
    ELEMENT *tree_nonumber;
    char *string;
} HTML_TARGET;

typedef struct HTML_TARGET_LIST {
    size_t number;
    size_t space;
    HTML_TARGET *list;
} HTML_TARGET_LIST;

typedef struct MERGED_INDEX {
    char *name;
    INDEX_ENTRY *index_entries;
    size_t index_number;
} MERGED_INDEX;

typedef struct LETTER_INDEX_ENTRIES {
    char *letter;
    INDEX_ENTRY **entries;
    size_t number;
} LETTER_INDEX_ENTRIES;

typedef struct INDEX_SORTED_BY_LETTER {
    char *name;
    LETTER_INDEX_ENTRIES *letter_entries;
    size_t number;
} INDEX_SORTED_BY_LETTER;

typedef struct HTML_COMMAND_CONVERSION {
    char *element;
    int quote; /* for style commands formatting only */
    /* following is only for no arg command formatting */
    int unset;
    char *text;
    ELEMENT *tree;
    char *translated_converted;
    char *translated_to_convert;
} HTML_COMMAND_CONVERSION;

typedef struct COMMAND_ID_LIST {
    size_t number;
    enum command_id *list;
} COMMAND_ID_LIST;

typedef struct TRANSLATED_COMMAND {
    enum command_id cmd;
    char *translation;
} TRANSLATED_COMMAND;

typedef struct FILE_NAME_PATH {
    char *filename;
    char *filepath;
} FILE_NAME_PATH;

typedef struct FILE_NAME_PATH_COUNTER {
    char *filename;
    char *normalized_filename;
    char *filepath;
    int counter;
    int elements_in_file_count; /* only used in HTML, corresponds to
                                   'elements_in_file_count' */
} FILE_NAME_PATH_COUNTER;

typedef struct FILE_NAME_PATH_COUNTER_LIST {
    size_t number;
    size_t space;
    FILE_NAME_PATH_COUNTER *list;
} FILE_NAME_PATH_COUNTER_LIST;

typedef struct SPECIAL_UNIT_DIRECTION {
    OUTPUT_UNIT *output_unit;
    char *direction;
} SPECIAL_UNIT_DIRECTION;

typedef struct FORMATTING_REFERENCE {
/* perl references. This should be SV *sv_*,
   but we don't want to include the Perl headers everywhere; */
    void *sv_reference;
    void *sv_default;
    enum formatting_reference_status status;
} FORMATTING_REFERENCE;

typedef struct CONVERTER {
    int converter_descriptor;
    OPTIONS *conf;
    OPTIONS *init_conf;
    struct DOCUMENT *document;
    int document_units_descriptor;

    ERROR_MESSAGE_LIST *error_messages;
    MERGED_INDEX **index_entries;
    INDEX_SORTED_BY_LETTER **index_entries_by_letter;
    TRANSLATED_COMMAND **translated_commands;

  /* output unit files API */
    FILE_NAME_PATH_COUNTER_LIST *output_unit_files;

  /* perl converter. This should be HV *hv,
     but we don't want to include the Perl headers everywhere; */
    void *hv;

  /* maybe HTML specific */
    char *title_titlepage;

  /* HTML specific */
    ELEMENT *current_root_command;
    OUTPUT_UNIT *current_output_unit;
    OUTPUT_UNIT **global_units_directions;
    SPECIAL_UNIT_DIRECTION **special_units_direction_name;
    char **special_unit_info[SUI_type_heading+1];
    ELEMENT **special_unit_info_tree[SUIT_type_heading+1];
    STRING_LIST *special_unit_varieties;
    VARIETY_DIRECTION_INDEX **varieties_direction_index;
    STRING_LIST *seen_ids;
    HTML_TARGET_LIST *html_targets;
    HTML_TARGET_LIST *html_special_targets[ST_footnote_location+1];
    char **directions_strings[TDS_type_rel+1];
    HTML_COMMAND_CONVERSION **html_command_conversion[BUILTIN_CMD_NUMBER];
    COMMAND_ID_LIST *no_arg_formatted_cmd;
    FORMATTING_REFERENCE
           formatting_references[FR_format_translate_message_string+1];
    FORMATTING_REFERENCE
           css_string_formatting_references[CSSFR_format_protect_text+1];
    FORMATTING_REFERENCE commands_open[BUILTIN_CMD_NUMBER];
    FORMATTING_REFERENCE commands_conversion[BUILTIN_CMD_NUMBER];
    FORMATTING_REFERENCE types_open[ET_special_unit_element+1];
    FORMATTING_REFERENCE types_conversion[ET_special_unit_element+1];
} CONVERTER;

typedef struct TARGET_FILENAME {
    char *target;
    char *filename;
} TARGET_FILENAME;

typedef struct TARGET_CONTENTS_FILENAME {
    char *target;
    char *filename;
    char *target_contents;
    char *target_shortcontents;
} TARGET_CONTENTS_FILENAME;

typedef struct FILE_SOURCE_INFO {
    char *filename;
    char *type;
    char *name;
    ELEMENT *element;
    char *path;
} FILE_SOURCE_INFO;

typedef struct FILE_SOURCE_INFO_LIST {
    size_t number;
    size_t space;
    FILE_SOURCE_INFO *list;
} FILE_SOURCE_INFO_LIST;

/* used in get_perl_info and indices_in_conversion, in unfinished code */
/* TODO remove? */
typedef struct KEY_ALPHA {
    char *key;
    int alpha;
} KEY_ALPHA;

typedef struct SORTABLE_ENTRY {
    char *index_name;
    size_t keys_number;
    KEY_ALPHA *keys;
    char **entry_keys;
    int number;
} SORTABLE_ENTRY;

typedef struct INDEX_SORTABLE_ENTRIES {
    char *name;
    size_t number;
    SORTABLE_ENTRY *sortable_entries;
} INDEX_SORTABLE_ENTRIES;

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

char *normalize_encoding_name (char *text, int *possible_encoding);
ELEMENT *item_line_parent (ELEMENT *current);
ELEMENT *get_label_element (ELEMENT *e);
INDEX *indices_info_index_by_name (INDEX **indices_information, char *name);
INDEX *ultimate_index (INDEX *index);
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
char *decode_string (char *input_string, char *encoding, int *status,
                     SOURCE_INFO *source_info);
char *encode_string (char *input_string, char *encoding, int *status,
                     SOURCE_INFO *source_info);

struct expanded_format *new_expanded_formats (char *format);
void clear_expanded_formats (struct expanded_format *formats);
void add_expanded_format (struct expanded_format *formats, char *format);
int format_expanded_p (struct expanded_format *formats, char *format);

ELEMENT *trim_spaces_comment_from_content (ELEMENT *element);

char *enumerate_item_representation (char *specification, int number);

CONVERTER *new_converter (void);

ELEMENT *set_global_document_command (CONVERTER *self, enum command_id cmd,
                                      enum command_location command_location);
ELEMENT *get_cmd_global_command (GLOBAL_COMMANDS *global_commands_ref,
                                 enum command_id cmd);
#endif
