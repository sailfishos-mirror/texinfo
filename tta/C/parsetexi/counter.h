/* counter.h - definitions for counter.c */
#ifndef COUNTER_H
#define COUNTER_H

/* Copyright 2015-2025 Free Software Foundation, Inc.

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

typedef struct {
    int *values; /* Array of values. */
    ELEMENT **elts; /* Elements corresponding to each value. */
    int nvalues;
    int space;
} COUNTER;

void counter_push (COUNTER *c, ELEMENT *e, int n);
void counter_pop (COUNTER *c);
void counter_inc (COUNTER *c);
void counter_dec (COUNTER *c);
int counter_remove_element (COUNTER *c, ELEMENT *elt);
int counter_value (COUNTER *c, ELEMENT *e);
void counter_reset (COUNTER *c, const char *not_empty_message);
int counter_element_value (COUNTER *c, ELEMENT *elt);

void print_counter_top (COUNTER *c);

/* A large positive number used to represent an unlimited number of remaining
   arguments. */
#define COUNTER_VARIADIC 32767

#endif
