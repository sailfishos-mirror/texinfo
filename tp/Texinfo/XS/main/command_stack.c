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

#include <config.h>
#include <stdlib.h>
#include <string.h>

#include "tree_types.h"
#include "command_ids.h"
#include "utils.h"
#include "command_stack.h"

/* Generic command stack functions */

void
reset_command_stack (COMMAND_STACK *stack)
{
  stack->top = 0;
  stack->space = 0;
  free (stack->stack);
  stack->stack = 0;
}

void
push_command (COMMAND_STACK *stack, enum command_id cmd)
{
  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (enum command_id));
    }

  stack->stack[stack->top] = cmd;
  stack->top++;
}

enum command_id
pop_command (COMMAND_STACK *stack)
{
  if (stack->top == 0)
    fatal ("command stack empty");

  return stack->stack[--stack->top];
}

enum command_id
top_command (COMMAND_STACK *stack)
{
  if (stack->top == 0)
    fatal ("command stack empty for top");

  return stack->stack[stack->top - 1];
}


/* stack of command or type ids */
void
push_command_or_type (COMMAND_OR_TYPE_STACK *stack, enum command_id cmd,
                      enum element_type type)
{
  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (COMMAND_OR_TYPE));
    }

  if (type)
    {
      stack->stack[stack->top].type = type;
      stack->stack[stack->top].variety = CTV_type_type;
    }
  else if (cmd)
    {
      stack->stack[stack->top].cmd = cmd;
      stack->stack[stack->top].variety = CTV_type_command;
    }
  else
    {
      stack->stack[stack->top].cmd = 0;
      stack->stack[stack->top].variety = CTV_type_none;
    }

  stack->top++;
}

void
pop_command_or_type (COMMAND_OR_TYPE_STACK *stack)
{
  if (stack->top == 0)
    fatal ("command or type stack empty");

  stack->top--;
}

COMMAND_OR_TYPE *
top_command_or_type (COMMAND_OR_TYPE_STACK *stack)
{
  if (stack->top == 0)
    fatal ("command or type stack empty for top");

  return &stack->stack[stack->top - 1];
}


/* stack of strings */
void
push_string_stack_string (STRING_STACK *stack, char *string)
{
  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (char *));
    }

  stack->stack[stack->top] = strdup (string);

  stack->top++;
}

void
pop_string_stack (STRING_STACK *stack)
{
  if (stack->top == 0)
    fatal ("string stack empty");

  free (stack->stack[stack->top - 1]);
  stack->top--;
}

char *
top_string_stack (STRING_STACK *stack)
{
  if (stack->top == 0)
    fatal ("string stack empty for top");

  return stack->stack[stack->top - 1];
}


/* stack of monospace contexts */
static void
push_monospace_context (MONOSPACE_CONTEXT_STACK *stack,
                        enum monospace_context mono_ctx)
{
  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (enum monospace_context));
    }

  stack->stack[stack->top] = mono_ctx;
  stack->top++;
}

void
push_monospace (MONOSPACE_CONTEXT_STACK *stack)
{
  push_monospace_context (stack, MONO_ctx_on);
}

void
push_style_no_code (MONOSPACE_CONTEXT_STACK *stack)
{
  push_monospace_context (stack, MONO_ctx_off);
}

enum monospace_context
pop_monospace_context (MONOSPACE_CONTEXT_STACK *stack)
{
  if (stack->top == 0)
    fatal ("monospace stack empty for top");

  return stack->stack[--stack->top];
}

enum monospace_context
top_monospace_context (MONOSPACE_CONTEXT_STACK *stack)
{
  if (stack->top == 0)
    fatal ("monospace stack empty for top");

  return stack->stack[stack->top - 1];
}

/* HTML specific but also used to build perl */
HTML_DOCUMENT_CONTEXT *
html_top_document_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT_STACK *stack = &self->html_document_context;

  if (stack->top == 0)
    fatal ("HTML document context stack empty for top");

  return &stack->stack[stack->top - 1];
}

HTML_FORMATTING_CONTEXT *
html_top_formatting_context (HTML_FORMATTING_CONTEXT_STACK *stack)
{
  if (stack->top == 0)
    fatal ("HTML formatting context stack empty for top");

  return &stack->stack[stack->top - 1];
}

