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
  void reallocate_ ## OBJNAME ## _list (LISTNAME *list); \
  void add_to_ ## OBJNAME ## _list (LISTNAME *list, TYPE object)

/* Output function definitions for .c source files. */
#define def_list_fns(LISTNAME, OBJNAME, TYPE, INC) \
    void reallocate_ ## OBJNAME ## _list (LISTNAME *list) { \
        if (list->number + 1 >= list->space) { \
            list->space += INC; \
            list->list = realloc (list->list, list->space * sizeof (TYPE)); \
            if (!list->list) \
                fatal ("realloc failed"); \
        }} \
    void add_to_ ## OBJNAME ## _list (LISTNAME *list, TYPE object) { \
        reallocate_ ## OBJNAME ## _list (list); \
        list->list[list->number++] = object; }

/* Conveniences to avoid using synthetic names.  This can help in navigating
   the source code, otherwise it could be hard to find where the names are
   defined. */
#define reallocate_(OBJNAME) reallocate_ ## OBJNAME ## _list
#define add_(OBJNAME) add_to_ ## OBJNAME ## _list

/* Extra functions when list is used as a stack. */

/* Output declarations for header files. */
#define decl_stack_fns(LISTNAME, OBJNAME, TYPE) \
  void top_of_ ## OBJNAME ## _list (LISTNAME *list); \
  void pop_ ## OBJNAME ## _list (LISTNAME *list)

/* Output function definitions for .c source files. */
#define def_stack_fns(LISTNAME, OBJNAME, TYPE) \
    TYPE *top_of_ ## OBJNAME ## _list (LISTNAME *list) { \
        if (list->number == 0) fatal (#OBJNAME " stack empty\n"); \
        return &list->list[list->number - 1]; } \
    void pop_ ## OBJNAME ## _list (LISTNAME *list) { \
        if (list->number == 0) fatal (#OBJNAME " stack empty\n"); \
        list->number--; }


#define top_(OBJNAME) top_of_ ## OBJNAME ## _list
#define pop_(OBJNAME) pop_ ## OBJNAME ## _list


#endif


