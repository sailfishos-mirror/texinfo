/* labels.h - declarations for labels.c */
#ifndef LABELS_H
#define LABELS_H
/* Copyright 2010-2021 Free Software Foundation, Inc.

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

extern ELEMENT **target_elements_list;
extern size_t labels_number;
void register_label (ELEMENT *current, ELEMENT *label);
void reset_labels (void);


extern ELEMENT **internal_xref_list;
extern size_t internal_xref_number;

void remember_internal_xref (ELEMENT *element);
void reset_internal_xrefs (void);
#endif
