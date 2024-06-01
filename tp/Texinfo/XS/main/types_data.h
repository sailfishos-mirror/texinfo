/* types_data.h - declarations for types_data.c */
#ifndef TYPES_DATA_H
#define TYPES_DATA_H
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

#include "element_types.h"

typedef struct types_struct {
  char *name;
  unsigned long flags;
} TYPE_DATA;

extern TYPE_DATA type_data[];

#define TF_text               0x0001

#endif
