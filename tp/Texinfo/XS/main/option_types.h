/* option_types.h - declarations of option type */
#ifndef OPTIONS_TYPE_H
#define OPTIONS_TYPE_H

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

#include "tree_types.h"

enum global_option_type {
   GO_NONE,
   GO_integer,
   GO_char,
   GO_bytes,
   GO_icons,
   GO_buttons,
   GO_bytes_string_list,
   GO_file_string_list,
   GO_char_string_list,
};

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
    /* number of BIT_function button_information_type functions that
       are user-defined and not functions defined by default */
    size_t BIT_user_function_number;
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

typedef struct OPTION {
    enum global_option_type type;
    int configured;
    union {
      int integer;
      char *string;
      STRING_LIST *strlist;
      BUTTON_SPECIFICATION_LIST *buttons;
      DIRECTION_ICON_LIST *icons;
    };
} OPTION;

#endif
