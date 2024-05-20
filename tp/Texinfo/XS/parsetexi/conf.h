/* conf.h - declarations for conf.c */
#ifndef CONF_H
#define CONF_H
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

#include "document_types.h"

typedef struct CONF {
    int cpp_line_directives;
    int debug;
    int ignore_space_after_braced_command_name;
    STRING_LIST include_directories;
    int max_macro_call_nesting;
    int no_index;
    int no_user_commands;
    int show_menu;

    EXPANDED_FORMAT expanded_formats[7];
    VALUE_LIST values;
} CONF;

extern CONF conf;

/* part of public API */
void conf_set_show_menu (int i);
void conf_set_CPP_LINE_DIRECTIVES (int i);
int conf_set_DEBUG (int i);
void conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i);
void conf_set_MAX_MACRO_CALL_NESTING (int i);
int conf_set_NO_INDEX (int i);
int conf_set_NO_USER_COMMANDS (int i);
void conf_clear_INCLUDE_DIRECTORIES (void);
void conf_add_include_directory (const char *filename);
void conf_clear_expanded_formats (void);
void conf_add_expanded_format (const char *format);

void reset_conf (void);

#endif
