/* extra.h - declarations for extra.c */
#ifndef EXTRA_H
#define EXTRA_H

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

#include "tree_types.h"

void add_extra_element (ELEMENT *e, char *key, ELEMENT *value);
void add_extra_element_oot (ELEMENT *e, char *key, ELEMENT *value);
void add_extra_contents (ELEMENT *e, char *key, ELEMENT *value);
void add_extra_text (ELEMENT *e, char *key, ELEMENT *value);
void add_extra_misc_args (ELEMENT *e, char *key, ELEMENT *value);
void add_extra_string (ELEMENT *e, char *key, char *value);
void add_extra_string_dup (ELEMENT *e, char *key, char *value);
void add_extra_integer (ELEMENT *e, char *key, long value);
void add_info_string (ELEMENT *e, char *key, char *value);
void add_info_string_dup (ELEMENT *e, char *key, char *value);
void add_info_element_oot (ELEMENT *e, char *key, ELEMENT *value);
KEY_PAIR *lookup_extra (ELEMENT *e, char *key);
KEY_PAIR *lookup_info (ELEMENT *e, char *key);
ELEMENT *lookup_extra_element (ELEMENT *e, char *key);
ELEMENT *lookup_info_element (ELEMENT *e, char *key);

#endif