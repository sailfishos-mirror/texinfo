/* command_stack.h - declarations for command_stack.c */
#ifndef COMMAND_STACK_H
#define COMMAND_STACK_H
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

typedef struct {
    enum command_id *stack;
    size_t top;   /* One above last pushed context. */
    size_t space;
} COMMAND_STACK;

void reset_command_stack (COMMAND_STACK *stack);
void push_command (COMMAND_STACK *stack, enum command_id cmd);
enum command_id pop_command (COMMAND_STACK *stack);
enum command_id top_command (COMMAND_STACK *stack);
enum command_id current_context_command (void);

#endif
