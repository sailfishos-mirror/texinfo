/* document_types.h - parsed Texinfo document types */
#ifndef DOCUMENT_TYPES_H
#define DOCUMENT_TYPES_H

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

#include "tree_types.h"
#include "options_types.h"
#include "global_commands_types.h"

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

typedef struct GLOBAL_INFO {
    char *input_file_name;
    char *input_directory;
    char *input_encoding_name;
    int sections_level_modifier;
    ELEMENT_LIST dircategory_direntry; /* an array of elements */
    /* Ignored characters for index sort key */
    IGNORED_CHARS ignored_chars;
} GLOBAL_INFO;

typedef struct DOCUMENT {
    int descriptor;
    ELEMENT *tree;
    INDEX **index_names;
    FLOAT_RECORD_LIST *floats;
    LISTOFFLOATS_TYPE_LIST *listoffloats;
    ELEMENT_LIST *internal_references;
    LABEL_LIST *labels_list;
    LABEL_LIST *identifiers_target;
    GLOBAL_INFO *global_info;
    GLOBAL_COMMANDS *global_commands;
    STRING_LIST *small_strings;
    ELEMENT_LIST *nodes_list;
    ELEMENT_LIST *sections_list;
    ERROR_MESSAGE_LIST *error_messages;
    OPTIONS *options; /* for options used in structuring */
} DOCUMENT;

/* not in document, but used in parser */
typedef struct expanded_format {
    char *format;
    int expandedp;
} EXPANDED_FORMAT;

#endif
