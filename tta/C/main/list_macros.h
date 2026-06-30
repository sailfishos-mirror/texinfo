/* list_macros.h: generic macros for handling list data structures */
#ifndef LIST_MACROS_H
#define LIST_MACROS_H
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

#define def_list_type(NAME, TYPE) \
  typedef struct NAME { \
      TYPE *list; \
      size_t number; \
      size_t space; \
  } NAME

/* Output declarations for header files. */
#define decl_list_fns(LISTNAME, OBJNAME, TYPE) \
  void add_to_ ## OBJNAME ## _list (LISTNAME *list, TYPE object)

/* Output function definitions for .c source files. */
#define def_list_fns(LISTNAME, OBJNAME, TYPE, INC) \
  void add_to_ ## OBJNAME ## _list (LISTNAME *list, TYPE object) { \
    if (list->number + 1 >= list->space) \
      { \
        list->space += INC; \
        list->list = realloc (list->list, list->space * sizeof (TYPE)); \
        if (!list->list) \
          fatal ("realloc failed"); \
      } \
    list->list[list->number++] = object; \
  }

/* Convenience to avoid using generated names.  This can help in navigating
   the source code. */
#define add_(OBJNAME) add_to_ ## OBJNAME ## _list


#endif


