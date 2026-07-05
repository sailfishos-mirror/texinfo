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

#include "command_ids.h"
#include "list_macros.h"

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

/* see comment re "6 stacks" in Plaintext.pm */
typedef struct PLAINTEXT_CONVERTER_STATE {
    /* context */
    FORMAT_CONTEXT_STACK format_context;
    /* text_element_context */
    FORMATTER_STACK formatters;
    COUNT_CONTEXT_STACK count_context;
    /* document_context */
} PLAINTEXT_CONVERTER_STATE;


#endif
