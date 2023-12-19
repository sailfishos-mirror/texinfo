/* converter_types.h - declarations of types used in many places */
#ifndef CONVERTER_TYPES_H
#define CONVERTER_TYPES_H

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
#include <stdio.h>

#include "element_types.h"
#include "tree_types.h"
#include "document_types.h"
/*
#include "options_types.h"
 */

/* for interdependency with options_types.h */
struct OPTIONS;

enum formatting_reference_status {
   FRS_status_none,
   FRS_status_default_set,        /* default is set, no customization (or
                                     customization is the same as default) */
   FRS_status_customization_set,  /* customization is set, no default, or
                                     not the same as default */
   FRS_status_internal,           /* formatting reference is not used, code in C
                                     does the task */
   FRS_status_ignored,            /* explicitely ignored. Only used for
                                     types_conversion and commands_conversion
                                   */
};

enum command_type_variety {
   CTV_type_none,
   CTV_type_command,
   CTV_type_type,
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

#define SUI_TYPES_LIST \
  sui_type(class) \
  sui_type(direction) \
  sui_type(order) \
  sui_type(file_string) \
  sui_type(target) \
  sui_type(heading)

enum special_unit_info_type {
   SUI_type_none = -1,
  #define sui_type(name) SUI_type_ ## name,
   SUI_TYPES_LIST
  #undef sui_type
};

/* translated from corresponding SUI_type* */
enum special_unit_info_tree {
   SUIT_type_none = -1,

   SUIT_type_heading,
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

enum direction_string_type {
  #define tds_type(name) TDS_type_ ## name,
   TDS_TRANSLATED_TYPES_LIST
   TDS_NON_TRANSLATED_TYPES_LIST
  #undef tds_type
};

#define TDS_TRANSLATED_MAX_NR TDS_type_text +1
#define TDS_TYPE_MAX_NR TDS_type_rel +1

enum direction_string_context {
  TDS_context_normal,
  TDS_context_string,
};

/* %default_formatting_references in Texinfo::HTML */
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
  html_fr_reference(format_translate_message)

enum html_formatting_reference {
  #define html_fr_reference(name) FR_## name,
   HTML_FORMATTING_REFERENCES_LIST
  #undef html_fr_reference
};

#define HTML_ARGUMENTS_FORMATTED_FORMAT_TYPE \
  html_aft_type(none) \
  html_aft_type(normal) \
  html_aft_type(string) \
  html_aft_type(monospace) \
  html_aft_type(monospacetext) \
  html_aft_type(monospacestring) \
  html_aft_type(filenametext) \
  html_aft_type(url) \
  html_aft_type(raw)

enum html_argument_formatting_type {
   #define html_aft_type(name) AFT_type_##name,
    HTML_ARGUMENTS_FORMATTED_FORMAT_TYPE
   #undef html_aft_type
};

/* TODO move to convert_html.c? */
enum html_special_character {
   SC_paragraph_symbol,
   SC_left_quote,
   SC_right_quote,
   SC_bullet,
   SC_non_breaking_space,
};

enum html_text_type {
   HTT_text,
   HTT_text_nonumber,
   HTT_string,
   HTT_string_nonumber, /* not sure that it is set/used */
   /* not only used for element text, also for direction text */
   HTT_href,
   HTT_target,
   HTT_node,
   HTT_section,
};

enum htmlxref_split_type {
   htmlxref_split_type_none = -1,

   htmlxref_split_type_mono,
   htmlxref_split_type_node,
   htmlxref_split_type_section,
   htmlxref_split_type_chapter,
};

typedef struct {
    enum command_id *stack;
    size_t top;   /* One above last pushed command. */
    size_t space;
} COMMAND_STACK;

/* either a type or a command id */
typedef struct {
    enum command_type_variety variety;
    union {
      enum command_id cmd;
      enum element_type type;
    };
} COMMAND_OR_TYPE;

typedef struct {
    COMMAND_OR_TYPE *stack;
    size_t top;   /* One above last pushed. */
    size_t space;
} COMMAND_OR_TYPE_STACK;

typedef struct {
    char **stack;
    size_t top;   /* One above last pushed. */
    size_t space;
} STRING_STACK;

typedef struct {
    int *stack;
    size_t top;   /* One above last pushed. */
    size_t space;
} INTEGER_STACK;

typedef struct ELEMENT_STACK {
    const ELEMENT **stack;
    size_t top;
    size_t space;
} ELEMENT_STACK;

typedef struct FILE_NUMBER_NAME {
    size_t file_number;
    char *filename;
} FILE_NUMBER_NAME;

typedef struct VARIETY_DIRECTION_INDEX {
    char *special_unit_variety;
    int direction_index;
} VARIETY_DIRECTION_INDEX;

typedef struct HTML_TARGET {
    const ELEMENT *element;
    char *target;
    char *special_unit_filename;
    char *node_filename;
    char *section_filename;
    char *contents_target;
    char *shortcontents_target;

    char *command_text[HTT_string_nonumber+1];
    TREE_ADDED_ELEMENTS tree;
    TREE_ADDED_ELEMENTS tree_nonumber;
    FILE_NUMBER_NAME file_number_name;
    int filename_set;
    ELEMENT *root_element_command;
    int root_element_command_set;
    /*
    ELEMENT *node_command;
    */
} HTML_TARGET;

typedef struct HTML_TARGET_LIST {
    size_t number;
    size_t space;
    HTML_TARGET *list;
} HTML_TARGET_LIST;

typedef struct HTML_SHARED_CONVERSION_STATE {
    int explained_commands; /* explained_commands->{char $cmdname}->{char $normalized_type}
                               = ELEMENT */
    int element_explanation_content; /* element_explanation_content->{ELEMENT $command}
                                = ELEMENT */
    int footnote_id_numbers; /* footnote_id_numbers->{char $footid} = int */
    /* Not useful, directly use expanded formats in the converter.
       Needed in perl as expanded formats are accessed per format in the API
    int expanded_format_raw;
     */
    int formatted_index_entries; /* formatted_index_entries->{INDEX_ENTRY $index_entry_ref} = 1, ++ */
    int formatted_nodedescriptions; /* formatted_nodedescriptions->{ELEMENT $node_description} = 1, ++ */
    ASSOCIATED_INFO integers;
    STRING_LIST key_strings; /* used to save the keys used in
                                ASSOCIATED_INFO integers such that they can be
                                free'd later.  In general constant strings are
                                for keys, if not, key_strings should be used */
} HTML_SHARED_CONVERSION_STATE;

typedef struct MERGED_INDEX {
    char *name;
    INDEX_ENTRY *index_entries;
    size_t entries_number;
} MERGED_INDEX;

typedef struct LETTER_INDEX_ENTRIES {
    char *letter;
    INDEX_ENTRY **entries;
    size_t entries_number;
} LETTER_INDEX_ENTRIES;

typedef struct INDEX_SORTED_BY_LETTER {
    char *name;
    LETTER_INDEX_ENTRIES *letter_entries;
    size_t letter_number;
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

typedef struct HTML_DIRECTION_STRING_TRANSLATED {
    char *to_convert;
    char *converted[TDS_context_string +1];
} HTML_DIRECTION_STRING_TRANSLATED;

typedef struct COMMAND_ID_LIST {
    size_t number;
    enum command_id *list;
} COMMAND_ID_LIST;

typedef struct ARRAY_INDEX_LIST {
    size_t number;
    size_t *list;
} ARRAY_INDEX_LIST;

typedef struct PAGE_NAME_NUMBER {
    size_t number;
    const char *page_name;
} PAGE_NAME_NUMBER;

typedef struct PAGE_NAME_NUMBER_LIST {
    size_t number;
    PAGE_NAME_NUMBER *list;
} PAGE_NAME_NUMBER_LIST;

typedef struct CSS_LIST {
    char *page_name;
    size_t number;
    size_t space;
    char **list;
} CSS_LIST;

typedef struct PAGES_CSS_LIST {
    size_t number;
    CSS_LIST *list; /* index 0 is for document_global_context_css
                       others for the output files */
} PAGES_CSS_LIST;

typedef struct COMMAND_ID_INDEX {
    enum command_id cmd;
    size_t index;
} COMMAND_ID_INDEX;

typedef struct TRANSLATED_COMMAND {
    enum command_id cmd;
    char *translation;
} TRANSLATED_COMMAND;

typedef struct FILE_NAME_PATH_COUNTER {
    char *filename;
    char *normalized_filename;
    char *filepath;
    int counter;
    int elements_in_file_count; /* only used in HTML, corresponds to
                                   'elements_in_file_count' */
    TEXT body;           /* file body output, used for HTML */
    const OUTPUT_UNIT *first_unit;
} FILE_NAME_PATH_COUNTER;

typedef struct FILE_NAME_PATH_COUNTER_LIST {
    size_t number;
    size_t space;
    FILE_NAME_PATH_COUNTER *list;
} FILE_NAME_PATH_COUNTER_LIST;

typedef struct FILE_STREAM {
    char *file_path;
    FILE *stream;
} FILE_STREAM;

typedef struct FILE_STREAM_LIST {
    size_t number;
    size_t space;
    FILE_STREAM *list;
} FILE_STREAM_LIST;

typedef struct OUTPUT_FILES_INFORMATION {
    STRING_LIST opened_files;
    FILE_STREAM_LIST unclosed_files;
} OUTPUT_FILES_INFORMATION;

typedef struct SPECIAL_UNIT_DIRECTION {
    const OUTPUT_UNIT *output_unit;
    char *direction;
} SPECIAL_UNIT_DIRECTION;

typedef struct FORMATTING_REFERENCE {
/* perl references. This should be SV *sv_*,
   but we don't want to include the Perl headers everywhere; */
    void *sv_reference;
    void *sv_default;
    enum formatting_reference_status status;
} FORMATTING_REFERENCE;

typedef struct HTML_FORMATTING_CONTEXT {
    char *context_name;
    int preformatted_number;
    int paragraph_number;
    int upper_case_ctx;
    int space_protected;
    int no_break;
} HTML_FORMATTING_CONTEXT;

typedef struct HTML_FORMATTING_CONTEXT_STACK {
    HTML_FORMATTING_CONTEXT *stack;
    size_t top;   /* One above last pushed context. */
    size_t space;
} HTML_FORMATTING_CONTEXT_STACK;

typedef struct HTML_DOCUMENT_CONTEXT {
    char *context;
    int string_ctx;
    int raw_ctx;
    int verbatim_ctx;
    int math_ctx;
    int inside_preformatted;
    char *document_global_context;
    INTEGER_STACK monospace;
    INTEGER_STACK preformatted_context;
    COMMAND_OR_TYPE_STACK composition_context;
    COMMAND_STACK block_commands;
    HTML_FORMATTING_CONTEXT_STACK formatting_context;
    STRING_STACK preformatted_classes;
} HTML_DOCUMENT_CONTEXT;

typedef struct HTML_DOCUMENT_CONTEXT_STACK {
    HTML_DOCUMENT_CONTEXT *stack;
    size_t top;   /* One above last pushed context. */
    size_t space;
} HTML_DOCUMENT_CONTEXT_STACK;

typedef struct STRING_WITH_LEN {
    char *string;
    size_t len;
} STRING_WITH_LEN;

typedef struct HTML_ADDED_TARGET_LIST {
    size_t space;
    size_t number;
    HTML_TARGET **list;
} HTML_ADDED_TARGET_LIST;

typedef struct CSS_SELECTOR_STYLE {
    char *selector;
    char *style;
} CSS_SELECTOR_STYLE;

typedef struct CSS_SELECTOR_STYLE_LIST {
    size_t number;
    CSS_SELECTOR_STYLE *list;
} CSS_SELECTOR_STYLE_LIST;

/* we have a circular reference with TYPE_CONVERSION_FUNCTION
   and CONVERTER and with COMMAND_CONVERSION_FUNCTION and CONVERTER */
struct CONVERTER;

typedef struct TYPE_CONVERSION_FUNCTION {
    enum formatting_reference_status status;
    /* points to the perl formatting reference if it is used for
       conversion */
    FORMATTING_REFERENCE *formatting_reference;
    /* the function used for conversion, either a function that calls
       the perl function in formatting_reference, or another C function */
    void (* type_conversion) (struct CONVERTER *self, const enum element_type type,
                              const ELEMENT *element, const char *content,
                              TEXT *text);
} TYPE_CONVERSION_FUNCTION;

typedef struct TYPE_OPEN_FUNCTION {
    enum formatting_reference_status status;
    /* points to the perl formatting reference if it is used for
       conversion */
    FORMATTING_REFERENCE *formatting_reference;
    /* the function used for conversion, either a function that calls
       the perl function in formatting_reference, or another C function */
    void (* type_open) (struct CONVERTER *self, const enum element_type type,
                         const ELEMENT *element, TEXT *text);
} TYPE_OPEN_FUNCTION;

typedef struct HTML_ARG_FORMATTED {
    const ELEMENT *tree;
    char *formatted[AFT_type_raw+1];
} HTML_ARG_FORMATTED;

typedef struct HTML_ARGS_FORMATTED {
    size_t number;
    HTML_ARG_FORMATTED *args;
} HTML_ARGS_FORMATTED;

typedef struct COMMAND_CONVERSION_FUNCTION {
    enum formatting_reference_status status;
    /* points to the perl formatting reference if it is used for
       conversion */
    FORMATTING_REFERENCE *formatting_reference;
    /* the function used for conversion, either a function that calls
       the perl function in formatting_reference, or another C function */
    void (* command_conversion) (struct CONVERTER *self,
                                 const enum command_id cmd,
                                 const ELEMENT *element,
                                 const HTML_ARGS_FORMATTED *args_formatted,
                                 const char *content, TEXT *result);
} COMMAND_CONVERSION_FUNCTION;

typedef struct COMMAND_OPEN_FUNCTION {
    enum formatting_reference_status status;
    /* points to the perl formatting reference if it is used for
       conversion */
    FORMATTING_REFERENCE *formatting_reference;
    /* the function used for conversion, either a function that calls
       the perl function in formatting_reference, or another C function */
    void (* command_open) (struct CONVERTER *self, const enum command_id cmd,
                           const ELEMENT *element, TEXT *result);
} COMMAND_OPEN_FUNCTION;

typedef struct OUTPUT_UNIT_CONVERSION_FUNCTION {
    enum formatting_reference_status status;
    /* points to the perl formatting reference if it is used for
       conversion */
    FORMATTING_REFERENCE *formatting_reference;
    /* the function used for conversion, either a function that calls
       the perl function in formatting_reference, or another C function */
    void (* output_unit_conversion) (struct CONVERTER *self,
                        const enum output_unit_type unit_type,
                        const OUTPUT_UNIT *output_unit, const char *content,
                        TEXT *result);
} OUTPUT_UNIT_CONVERSION_FUNCTION;

typedef struct SPECIAL_UNIT_BODY_FORMATTING {
    enum formatting_reference_status status;
    /* points to the perl formatting reference if it is used for
       conversion */
    FORMATTING_REFERENCE *formatting_reference;
    /* the function used for conversion, either a function that calls
       the perl function in formatting_reference, or another C function */
    void (* special_unit_body_formatting) (struct CONVERTER *self,
            const size_t special_unit_number, const char *special_unit_variety,
            const OUTPUT_UNIT *output_unit,
            TEXT *result);
} SPECIAL_UNIT_BODY_FORMATTING;

typedef struct HTML_PENDING_FOOTNOTE {
    const ELEMENT *command;
    char *footid;
    char *docid;
    int number_in_doc;
    char *footnote_location_filename;
    char *multi_expanded_region;
} HTML_PENDING_FOOTNOTE;

typedef struct HTML_PENDING_FOOTNOTE_STACK {
    size_t top;
    size_t space;
    HTML_PENDING_FOOTNOTE **stack;
} HTML_PENDING_FOOTNOTE_STACK;

typedef struct HTML_INLINE_CONTENT {
    char *category;
    char *string;
} HTML_INLINE_CONTENT;

typedef struct HTML_INLINE_CONTENT_STACK {
    size_t top;
    size_t space;
    HTML_INLINE_CONTENT *stack;
} HTML_INLINE_CONTENT_STACK;

/* there should be either a pointer to a C tree element in element,
   if set from C, or a reference to a perl tree element in hv, if set
   from perl */
typedef struct HTML_ASSOCIATED_INLINE_CONTENT {
    const ELEMENT *element;
  /* perl element. This should be HV *hv,
     but we don't want to include the Perl headers everywhere; */
    const void *hv;
    TEXT inline_content;
} HTML_ASSOCIATED_INLINE_CONTENT;

typedef struct HTML_ASSOCIATED_INLINE_CONTENT_LIST {
    size_t number;
    size_t space;
    HTML_ASSOCIATED_INLINE_CONTENT *list;
} HTML_ASSOCIATED_INLINE_CONTENT_LIST;

typedef struct HTMLXREF_MANUAL {
    char *manual;
    char *urlprefix[htmlxref_split_type_chapter +1];
} HTMLXREF_MANUAL;

typedef struct HTMLXREF_MANUAL_LIST {
    size_t number;
    HTMLXREF_MANUAL *list;
} HTMLXREF_MANUAL_LIST;

typedef struct ASSOCIATED_INFO_LIST {
    size_t number;
    ASSOCIATED_INFO *list;
} ASSOCIATED_INFO_LIST;

typedef struct JSLICENSE_FILE_INFO {
    char *filename;
    char *license;
    char *url;
    char *source;
} JSLICENSE_FILE_INFO;

typedef struct JSLICENSE_FILE_INFO_LIST {
    char *category;
    size_t number;
    JSLICENSE_FILE_INFO *list;
} JSLICENSE_FILE_INFO_LIST;

typedef struct JSLICENSE_CATEGORY_LIST {
    size_t number;
    JSLICENSE_FILE_INFO_LIST *list;
} JSLICENSE_CATEGORY_LIST;

typedef struct CONVERTER {
    int converter_descriptor;
  /* perl converter. This should be HV *hv,
     but we don't want to include the Perl headers everywhere; */
    void *hv;

    struct OPTIONS *conf;
    struct OPTIONS *init_conf;
    char *output_format;
    EXPANDED_FORMAT *expanded_formats;
    TRANSLATED_COMMAND *translated_commands;

    ERROR_MESSAGE_LIST error_messages;

    DOCUMENT *document;
    MERGED_INDEX *index_entries;
    INDEX_SORTED_BY_LETTER *index_entries_by_letter;
    int document_units_descriptor;

  /* output unit files API */
    FILE_NAME_PATH_COUNTER_LIST output_unit_files;

  /* to find index in output_unit_files based on name */
    PAGE_NAME_NUMBER_LIST page_name_number;

  /* API to open, set encoding and register files */
    OUTPUT_FILES_INFORMATION output_files_information;

  /* HTML specific */
    /* set for a converter */
    COMMAND_ID_LIST no_arg_formatted_cmd;
    int code_types[TXI_TREE_TYPES_NUMBER];
    char *pre_class_types[TXI_TREE_TYPES_NUMBER];
    int upper_case[BUILTIN_CMD_NUMBER];
    STRING_WITH_LEN special_character[SC_non_breaking_space+1];
    STRING_WITH_LEN line_break_element;
    CSS_SELECTOR_STYLE_LIST css_element_class_styles;
    FORMATTING_REFERENCE
       formatting_references[FR_format_translate_message+1];
    FORMATTING_REFERENCE
       css_string_formatting_references[FR_format_translate_message+1];
    FORMATTING_REFERENCE commands_open[BUILTIN_CMD_NUMBER];
    FORMATTING_REFERENCE commands_conversion[BUILTIN_CMD_NUMBER];
    FORMATTING_REFERENCE css_string_commands_conversion[BUILTIN_CMD_NUMBER];
    FORMATTING_REFERENCE types_open[TXI_TREE_TYPES_NUMBER];
    FORMATTING_REFERENCE types_conversion[TXI_TREE_TYPES_NUMBER];
    FORMATTING_REFERENCE css_string_types_conversion[TXI_TREE_TYPES_NUMBER];
    FORMATTING_REFERENCE output_units_conversion[OU_special_unit+1];
    FORMATTING_REFERENCE *special_unit_body;
    STRING_LIST special_unit_varieties;
    char **special_unit_info[SUI_type_heading+1];
    HTMLXREF_MANUAL_LIST htmlxref;
    TYPE_CONVERSION_FUNCTION type_conversion_function[TXI_TREE_TYPES_NUMBER];
    TYPE_CONVERSION_FUNCTION css_string_type_conversion_function[TXI_TREE_TYPES_NUMBER];
    TYPE_OPEN_FUNCTION type_open_function[TXI_TREE_TYPES_NUMBER];
    COMMAND_CONVERSION_FUNCTION command_conversion_function[BUILTIN_CMD_NUMBER];
    COMMAND_OPEN_FUNCTION command_open_function[BUILTIN_CMD_NUMBER];
    COMMAND_CONVERSION_FUNCTION css_string_command_conversion_function[BUILTIN_CMD_NUMBER];
    OUTPUT_UNIT_CONVERSION_FUNCTION output_unit_conversion_function[OU_special_unit+1];
    SPECIAL_UNIT_BODY_FORMATTING *special_unit_body_formatting;
    HTML_DIRECTION_STRING_TRANSLATED *translated_direction_strings[TDS_TRANSLATED_MAX_NR];
    /* set for a converter, modified in a document */
    HTML_COMMAND_CONVERSION html_command_conversion[BUILTIN_CMD_NUMBER][HCC_type_css_string+1];
    char ***directions_strings[TDS_TYPE_MAX_NR];
    const char **direction_unit_direction_name;

    /* set for a document */
    enum htmlxref_split_type document_htmlxref_split_type;
    const OUTPUT_UNIT **global_units_directions;
    SPECIAL_UNIT_DIRECTION *special_units_direction_name;
    ELEMENT **special_unit_info_tree[SUIT_type_heading+1];
    STRING_LIST seen_ids;
    HTML_TARGET_LIST html_targets;
    HTML_TARGET_LIST html_special_targets[ST_footnote_location+1];
    JSLICENSE_CATEGORY_LIST jslicenses;
    /* associate cmd and index in special_unit_varieties STRING_LIST */
    /* number in sync with command_special_unit_variety, +1 for trailing 0 */
    COMMAND_ID_INDEX command_special_variety_name_index[4+1];
    size_t *output_unit_file_indices;   /* array of indices in output_unit_files
              each position corresponding to an output unit. */
    size_t *special_unit_file_indices;  /* same for special output units */
    char *title_titlepage;
    ELEMENT *simpletitle_tree;
    enum command_id simpletitle_cmd;
    ELEMENT *title_tree;
    char *title_string;
    char *documentdescription_string;
    char *copying_comment;

    /* state only in C converter */
    unsigned long modified_state; /* specifies which perl state to rebuild */
    ELEMENT_LIST tree_to_build; /* C trees that needs to be built to perl
                               before calling perl functions on it */
    COMMAND_ID_LIST no_arg_formatted_cmd_translated; /* list of commands that
                         were translated and need to be passed back to perl */
    ELEMENT_LIST reset_target_commands; /* element targets that should have
                                           their texts reset after language
                                           change */
    HTML_ADDED_TARGET_LIST added_targets; /* targets added */
    STRING_LIST shared_conversion_state_integer; /* modified */
    /* next 4 allow to switch from normal HTML formatting to css strings
       formatting */
    FORMATTING_REFERENCE *current_formatting_references;
    TYPE_CONVERSION_FUNCTION *current_types_conversion_function;
    COMMAND_CONVERSION_FUNCTION *current_commands_conversion_function;
    void (* current_format_protect_text) (const char *text, TEXT *result);
    int added_title_tree;
    char *date_in_header;

    /* state common with perl converter */
    int document_global_context;
    int ignore_notice;
    const ELEMENT *current_root_command;
    const ELEMENT *current_node;
    const OUTPUT_UNIT *current_output_unit;
    HTML_DOCUMENT_CONTEXT_STACK html_document_context;
    STRING_STACK multiple_pass;
    STRING_STACK pending_closes;
    FILE_NUMBER_NAME current_filename;
    ELEMENT_STACK referred_command_stack;
    HTML_SHARED_CONVERSION_STATE shared_conversion_state;
    HTML_INLINE_CONTENT_STACK pending_inline_content;
    HTML_PENDING_FOOTNOTE_STACK pending_footnotes;
    HTML_ASSOCIATED_INLINE_CONTENT_LIST associated_inline_content;
    PAGES_CSS_LIST page_css;
    STRING_LIST check_htmlxref_already_warned;
    ASSOCIATED_INFO_LIST html_files_information;
    /* state common with perl converter, not transmitted to perl */
    int use_unicode_text;
} CONVERTER;

typedef struct TRANSLATED_SUI_ASSOCIATION {
    enum special_unit_info_tree tree_type;
    enum special_unit_info_type string_type;
} TRANSLATED_SUI_ASSOCIATION;

/* FIXME move somewhere else? */

/* button directions are not often used as enum, but it can be useful
   sometime to have an enum name for a direction */
/* special units are put after these fixed types, they are dynamically
   determined from perl input */
enum direction_unit_direction {
  #define hgdt_name(name) D_direction_ ## name,
   HTML_GLOBAL_DIRECTIONS_LIST
  #undef hgdt_name
   D_direction_Space,
  #define rud_type(name) D_direction_ ## name,
   RUD_DIRECTIONS_TYPES_LIST
   RUD_FILE_DIRECTIONS_TYPES
  #undef rud_type
  #define rud_type(name) D_direction_FirstInFile## name,
   RUD_DIRECTIONS_TYPES_LIST
  #undef rud_type
};

#define FIRSTINFILE_MIN_IDX D_direction_FirstInFileThis
#define FIRSTINFILE_MAX_IDX D_direction_FirstInFileNodeBack
#define FIRSTINFILE_OFFSET (D_direction_This - D_direction_FirstInFileThis)
#define FIRSTINFILE_NR (FIRSTINFILE_MAX_IDX - FIRSTINFILE_MIN_IDX +1)
#define NODE_DIRECTIONS_OFFSET (D_direction_NodeNext - D_direction_Next)

#define NON_SPECIAL_DIRECTIONS_NR (FIRSTINFILE_MAX_IDX +1)

enum button_specification_type {
  BST_direction,
  BST_function,
  BST_string,
  BST_direction_info,
};

enum button_information_type {
  BIT_string,
  BIT_function,
  BIT_selected_direction_information_type,
  BIT_href_direction_information_type,
};

/* enum value corresponding to a default button formatting function
   used later on to select a C function to replace the default function */
/* longest strings first to avoid ambiguity */
enum button_function_type {
  BFT_type_none,
  /* _default_panel_button_dynamic_direction_section_footer */
  BFT_type_panel_section_footer,
  /* _default_panel_button_dynamic_direction_node_footer */
  BFT_type_panel_node_footer,
  /* _default_panel_button_dynamic_direction */
  BFT_type_panel_directions,
};

typedef struct BUTTON_FUNCTION {
 /* perl references. This should be SV *sv_*,
    but we don't want to include the Perl headers everywhere; */
    void *sv_reference;
    enum button_function_type type;
} BUTTON_FUNCTION;

typedef struct BUTTON_SPECIFICATION_INFO {
     /* both global and relative directions index */
    int direction;
    enum button_information_type type;
    union {
      BUTTON_FUNCTION button_function; /* BIT_function */
  /* perl references. This should be SV *sv_*,
     but we don't want to include the Perl headers everywhere; */
      void *sv_string; /* BIT_string */
     /* both global and relative directions index */
      int direction_information_type; /* BIT_direction_information_type
            text string in perl, element direction information type */
    };
} BUTTON_SPECIFICATION_INFO;

typedef struct BUTTON_SPECIFICATION {
    void *sv; /* reference to perl data that can be used instead of
                 the C data */

    enum button_specification_type type;
    union {
     /* both global and relative directions index */
      int direction; /* BST_direction, string with an element direction */
  /* perl references. This should be SV *sv_*,
     but we don't want to include the Perl headers everywhere; */
      void *sv_reference; /* BST_function */
      void *sv_string; /* BST_string scalar reference */
      BUTTON_SPECIFICATION_INFO *button_info; /* BST_direction_info
                                              array reference of length 2 */
    };
} BUTTON_SPECIFICATION;

typedef struct BUTTON_SPECIFICATION_LIST {
    void *av; /* reference to perl data that can be used instead of
                 the list */
    size_t number;
    BUTTON_SPECIFICATION *list;
} BUTTON_SPECIFICATION_LIST;

typedef struct FORMATTED_BUTTON_INFO {
    char *active;
    char *passive;
    int need_delimiter;
} FORMATTED_BUTTON_INFO;

typedef struct DIRECTION_ICON_LIST {
    size_t number;
    char **list;
} DIRECTION_ICON_LIST;

#endif
