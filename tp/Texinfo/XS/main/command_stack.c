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

enum command_id
current_context_command (void)
{
  int i;

  if (top == 0)
    return CM_NONE;
  for (i = top -1; i >= 0; i--)
    {
      if (command_stack.stack[i] != CM_NONE)
        return command_stack.stack[i];
    }
  return CM_NONE;
}
