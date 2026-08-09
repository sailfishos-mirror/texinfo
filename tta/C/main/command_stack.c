/* Copyright 2010-2026 Free Software Foundation, Inc.

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

#include <config.h>
#include <stdlib.h>
#include <string.h>

#include "command_ids.h"
#include "tree_types.h"
/* ELEMENT_STACK */
#include "document_types.h"
/* COMMAND_OR_TYPE_STACK STRING_STACK ... */
#include "converter_types.h"
/* HTML_FORMATTING_CONTEXT HTML_DOCUMENT_CONTEXT */
#include "html_converter_state.h"
/* fatal */
#include "base_utils.h"
#include "list_macros.h"
#include "command_stack.h"

/* Generic stack functions */

void
reset_command_stack (COMMAND_STACK *stack)
{
  stack->number = 0;
  stack->space = 0;
  free (stack->list);
  stack->list = 0;
}

def_list_fns(COMMAND_STACK, command, enum command_id, 5);
def_stack_fns(COMMAND_STACK, command, enum command_id);


/* stack of command or type ids */
void
push_command_or_type (COMMAND_OR_TYPE_STACK *stack, enum command_id cmd,
                      enum element_type type)
{
  if (stack->number >= stack->space)
    {
      stack->list
        = realloc (stack->list,
                   (stack->space += 5) * sizeof (COMMAND_OR_TYPE));
    }

  if (type)
    {
      stack->list[stack->number].ct.type = type;
      stack->list[stack->number].variety = CTV_type_type;
    }
  else if (cmd)
    {
      stack->list[stack->number].ct.cmd = cmd;
      stack->list[stack->number].variety = CTV_type_command;
    }
  else
    {
      stack->list[stack->number].ct.cmd = 0;
      stack->list[stack->number].variety = CTV_type_none;
    }

  stack->number++;
}

void
pop_command_or_type (COMMAND_OR_TYPE_STACK *stack)
{
  if (stack->number == 0)
    fatal ("command or type stack empty");

  stack->number--;
}

COMMAND_OR_TYPE *
top_command_or_type (const COMMAND_OR_TYPE_STACK *stack)
{
  if (stack->number == 0)
    fatal ("command or type stack empty for top");

  return &stack->list[stack->number - 1];
}


/* stack of strings */
void
push_string_stack_string (STRING_STACK *stack, const char *string)
{
  if (stack->number >= stack->space)
    {
      stack->list
        = realloc (stack->list,
                   (stack->space += 5) * sizeof (char *));
    }

  if (string)
    stack->list[stack->number] = strdup (string);
  else
    stack->list[stack->number] = 0;

  stack->number++;
}

void
pop_string_stack (STRING_STACK *stack)
{
  if (stack->number == 0)
    fatal ("string stack empty");

  free (stack->list[stack->number - 1]);
  stack->number--;
}

const char *
top_string_stack (const STRING_STACK *stack)
{
  if (stack->number == 0)
    fatal ("string stack empty for top");

  return stack->list[stack->number - 1];
}

void
clear_string_stack (STRING_STACK *stack)
{
  while (stack->number > 0)
    pop_string_stack (stack);
}


/* stack of integers */

def_list_fns(INTEGER_STACK, integer, int, 5);
def_stack_fns(INTEGER_STACK, integer, int);


/* accents/elements stacks */
void
push_stack_element (ELEMENT_STACK *stack, const ELEMENT *e)
{
  if (stack->number >= stack->space)
    {
      stack->list
        = realloc (stack->list,
                   (stack->space += 5) * sizeof (ELEMENT *));
    }

  stack->list[stack->number] = e;
  stack->number++;
}

const ELEMENT *
pop_stack_element (ELEMENT_STACK *stack)
{
  if (stack->number == 0)
    fatal ("element stack empty");

  stack->number--;
  return stack->list[stack->number + 1];
}


/* elements stack that can also be called from an external language (Perl)
   where there is no reference to C elements */
void
push_element_reference_stack_element (ELEMENT_REFERENCE_STACK *stack,
                                      const ELEMENT *e, const void *hv)
{
  if (stack->number >= stack->space)
  {
    stack->list
      = realloc (stack->list,
                 (stack->space += 5) * sizeof (ELEMENT_STACK));
  }

  memset (&stack->list[stack->number], 0, sizeof (ELEMENT_STACK));

  if (e)
    stack->list[stack->number].element = e;
  if (hv)
    stack->list[stack->number].hv = hv;

  stack->number++;
}

void
pop_element_reference_stack (ELEMENT_REFERENCE_STACK *stack)
{
  if (stack->number == 0)
    fatal ("element reference stack empty for top");

  stack->number--;
}

int
command_is_in_referred_command_stack (const ELEMENT_REFERENCE_STACK *stack,
                                      const ELEMENT *e, const void *hv)
{
  size_t i;
  for (i = 0; i < stack->number; i++)
    {
      ELEMENT_REFERENCE *element_reference = &stack->list[i];
      if ((e && element_reference->element == e)
          || (hv && element_reference->hv == hv))
        {
          return 1;
        }
    }
  return 0;
}

ELEMENT_REFERENCE_STACK *
new_element_reference_stack (void)
{
  ELEMENT_REFERENCE_STACK *stack = (ELEMENT_REFERENCE_STACK *)
                   malloc (sizeof (ELEMENT_REFERENCE_STACK));
  memset (stack, 0, sizeof (ELEMENT_REFERENCE_STACK));
  return stack;
}

void
destroy_element_reference_stack (ELEMENT_REFERENCE_STACK *stack)
{
  free (stack->list);
  free (stack);
}


/* HTML specific but also used to build Perl data */
HTML_DOCUMENT_CONTEXT *
html_top_document_context (const CONVERTER *self)
{
  const HTML_DOCUMENT_CONTEXT_STACK *stack;
  stack = &self->html_converter->html_document_context;

  if (stack->number == 0)
    fatal ("HTML document context stack empty for top");

  return &stack->list[stack->number - 1];
}

HTML_FORMATTING_CONTEXT *
html_top_formatting_context (const HTML_FORMATTING_CONTEXT_STACK *stack)
{
  if (stack->number == 0)
    fatal ("HTML formatting context stack empty for top");

  return &stack->list[stack->number - 1];
}

