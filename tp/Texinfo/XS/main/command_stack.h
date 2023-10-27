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
#include "element_types.h"

enum command_type_variety {
   CTV_type_none,
   CTV_type_command,
   CTV_type_type,
};

enum monospace_context {
   MONO_ctx_off,
   MONO_ctx_on,
};

typedef struct {
    enum command_id *stack;
    size_t top;   /* One above last pushed command. */
    size_t space;
} COMMAND_STACK;

void reset_command_stack (COMMAND_STACK *stack);
void push_command (COMMAND_STACK *stack, enum command_id cmd);
enum command_id pop_command (COMMAND_STACK *stack);
enum command_id top_command (COMMAND_STACK *stack);

/* either a type or a command id */
typedef struct {
    enum command_type_variety variety;
    union {
      enum command_id cmd;
      enum element_type type;
    };
} COMMAND_OR_TYPE;

typedef struct {
    COMMAND_OR_TYPE *stack;
    size_t top;   /* One above last pushed command. */
    size_t space;
} COMMAND_OR_TYPE_STACK;

void push_command_or_type (COMMAND_OR_TYPE_STACK *stack, enum command_id cmd,
                           enum element_type type);
void pop_command_or_type (COMMAND_OR_TYPE_STACK *stack);
COMMAND_OR_TYPE *top_command_or_type (COMMAND_OR_TYPE_STACK *stack);


typedef struct {
    char **stack;
    size_t top;   /* One above last pushed command. */
    size_t space;
} STRING_STACK;

void push_string_stack_string (STRING_STACK *stack, char *string);
void pop_string_stack (STRING_STACK *stack);
char *top_string_stack (STRING_STACK *stack);


typedef struct {
    enum monospace_context *stack;
    size_t top;   /* One above last pushed. */
    size_t space;
} MONOSPACE_CONTEXT_STACK;

void push_monospace (MONOSPACE_CONTEXT_STACK *stack);
void push_style_no_code (MONOSPACE_CONTEXT_STACK *stack);
enum monospace_context pop_monospace_context (MONOSPACE_CONTEXT_STACK *stack);
enum monospace_context top_monospace_context (MONOSPACE_CONTEXT_STACK *stack);

#endif
