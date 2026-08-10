/* plaintext_converter_state.h - plaintext-specific converter state */
#ifndef PLAINTEXT_CONVERTER_STATE_H
#define PLAINTEXT_CONVERTER_STATE_H
/* Copyright 2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>. */

#include <stddef.h>

#include "command_ids.h"
#include "text.h"
#include "tree_types.h"
#include "list_macros.h"

typedef struct PLAINTEXT_COMMAND_STRUCT {
    unsigned long flags;
    int indent_format_length;
    /*
    enum command_id pre_class_cmd;
    enum command_id upper_case_cmd;
     */
} PLAINTEXT_COMMAND_STRUCT;

typedef struct FORMATTER_CONTAINER {
  int paragraph; /* Paragaph ID */
} FORMATTER_CONTAINER;

typedef struct FORMATTER {
  FORMATTER_CONTAINER container;
  /* upper_case_stack */
  /* font_type_stack */
  /* w */
  /* frenchspacing_stack */
  /* suppress_styles */
  /* no_added_eol */
} FORMATTER;

def_list_type(FORMATTER_STACK, FORMATTER);
decl_list_fns(FORMATTER_STACK, formatter, FORMATTER);

typedef struct FORMAT_CONTEXT {
  enum command_id cmd;
  int paragraph_count;
  int context_index_len;
  int row;
  int row_counts;
  int paragraph_counts;
  int columns_size;
} FORMAT_CONTEXT;

def_list_type(FORMAT_CONTEXT_STACK, FORMAT_CONTEXT);
decl_list_fns(FORMAT_CONTEXT_STACK, format_context, FORMAT_CONTEXT);

typedef struct COUNT_CONTEXT {
  size_t lines;
  size_t bytes;
  TEXT result;
  /* TEXT pending_text; */
} COUNT_CONTEXT;

def_list_type(COUNT_CONTEXT_STACK, COUNT_CONTEXT);
decl_list_fns(COUNT_CONTEXT_STACK, count_context, COUNT_CONTEXT);

typedef struct STRING_WITH_WIDTH {
    char *string;
    /* TODO or size_t?  Matches return type of para_counter */
    int width;
} STRING_WITH_WIDTH;

typedef struct MATH_ELEMENT_IMAGE {
    /* the element is used to make sure that going through the tree
       and through the MATH_ELEMENT_IMAGE_LIST list is done in sync.
     */
    const ELEMENT *element;
    char *filename;
    int dpi;
    int depth;
} MATH_ELEMENT_IMAGE;

def_list_type(MATH_ELEMENT_IMAGE_LIST, MATH_ELEMENT_IMAGE);
decl_list_fns(MATH_ELEMENT_IMAGE_LIST, math_element_image, MATH_ELEMENT_IMAGE);

/* result of Texinfo::Convert::LaTeX::convert_math_to_images */
typedef struct MATH_ELEMENTS_IMAGES {
    MATH_ELEMENT_IMAGE_LIST math_images;
    MATH_ELEMENT_IMAGE_LIST displaymath_images;
    size_t math_index;
    size_t displaymath_index;
} MATH_ELEMENTS_IMAGES;

/* see comment re "6 stacks" in Plaintext.pm */
typedef struct PLAINTEXT_CONVERTER_STATE {
    COMMAND_STACK context;
    FORMAT_CONTEXT_STACK format_context;
    /* text_element_context */
    FORMATTER_STACK formatters;
    COUNT_CONTEXT_STACK count_context;
    /* document_context */

    /* to cache values based on customization options */
    char *enabled_encoding;
    int to_utf8;
    /* */
    PLAINTEXT_COMMAND_STRUCT commands_data[BUILTIN_CMD_NUMBER];
    int encoding_disabled;
    int in_copying_header;
    int silent;

    /* conversion state */
    char *output_filename;
    char *text_before_first_node;
    const ELEMENT *current_node;
    /* cache node names */
    STRING_WITH_WIDTH *node_names_cache;
    /* cache "outside of any node" translated string for use in
       printindex formatting */
    char *outside_of_any_node_text;
    int outside_of_any_node_text_width;
    /* register index entries warned as being outside of any node to avoid
       warning twice */
    C_HASHMAP index_entries_no_node;
    /* register node names already warned for characters that should
       not appear in printindex */
    C_HASHMAP index_entry_node_colon;
    MATH_ELEMENTS_IMAGES *element_images;
} PLAINTEXT_CONVERTER_STATE;

#endif
