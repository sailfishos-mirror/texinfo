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
#include "converter_types.h"

void reset_command_stack (COMMAND_STACK *stack);
void push_command (COMMAND_STACK *stack, enum command_id cmd);
enum command_id pop_command (COMMAND_STACK *stack);
enum command_id top_command (COMMAND_STACK *stack);

void push_command_or_type (COMMAND_OR_TYPE_STACK *stack, enum command_id cmd,
                           enum element_type type);
void pop_command_or_type (COMMAND_OR_TYPE_STACK *stack);
COMMAND_OR_TYPE *top_command_or_type (COMMAND_OR_TYPE_STACK *stack);

void push_string_stack_string (STRING_STACK *stack, char *string);
void pop_string_stack (STRING_STACK *stack);
char *top_string_stack (STRING_STACK *stack);

void push_integer_stack_integer (INTEGER_STACK *stack, int value);
int pop_integer_stack (INTEGER_STACK *stack);
int top_integer_stack (INTEGER_STACK *stack);

HTML_DOCUMENT_CONTEXT *html_top_document_context (CONVERTER *self);

HTML_FORMATTING_CONTEXT *html_top_formatting_context
                         (HTML_FORMATTING_CONTEXT_STACK *stack);
#endif
