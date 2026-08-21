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

#include "command_ids.h"
#include "tree_types.h"
#include "list_macros.h"
/* for fatal */
#include "base_utils.h"
#include "command_stack.h"
#include "commands.h"
#include "debug_parser.h"
#include "context_stack.h"

def_list_type(PARSER_CONTEXT_STACK, enum context);

def_list_fns(PARSER_CONTEXT_STACK, context_stack, enum context, 5);
def_stack_fns(PARSER_CONTEXT_STACK, context_stack, enum context);

static PARSER_CONTEXT_STACK context_stack;

/* Kept in sync with context_stack. */
static COMMAND_STACK command_stack;

enum command_id
current_context_command (void)
{
  int i;

  if (command_stack.number == 0)
    fatal ("command stack empty");
  for (i = command_stack.number -1; i > 0; i--)
    {
      if (command_stack.list[i] != CM_NONE)
        return command_stack.list[i];
    }
  return CM_NONE;
}

enum command_id
top_context_command (void)
{
  return *top_(command) (&command_stack);
}

/* Context stacks */

void
reset_context_stack (void)
{
  context_stack.number = 0;
  reset_command_stack (&command_stack);
}

char *
context_name (enum context c)
{
  return c == ct_preformatted ? "ct_preformatted"
         : c == ct_line ? "ct_line"
         : c == ct_def ? "ct_def"
         : c == ct_paragraph ? "ct_paragraph"
         : c == ct_rawpreformatted ? "ct_rawpreformatted"
         : c == ct_math ? "ct_math"
         : c == ct_inlineraw ? "ct_inlineraw"
         : "";
}

void
push_context (enum context c, enum command_id cmd)
{
  add_(context_stack) (&context_stack, c);
  add_(command) (&command_stack, cmd);
}

enum context
pop_context (void)
{
  enum context context = *top_(context_stack) (&context_stack);
  pop_(command) (&command_stack);
  pop_(context_stack) (&context_stack);
  return context;
}

enum context
current_context (void)
{
  return *top_(context_stack) (&context_stack);
}

int
is_context_empty (void)
{
  return (context_stack.number == 0);
}

/* used for @kbd */
int
in_preformatted_context_not_menu ()
{
  int i;

  if (context_stack.number == 0)
    return 0;
  for (i = context_stack.number -1; i >= 0; i--)
    {
      enum context ct;
      enum command_id cmd;
      ct = context_stack.list[i];
      if (ct != ct_line && ct != ct_preformatted)
        return 0;
      cmd = command_stack.list[i];
      if (parsed_command_data(cmd).flags & CF_block
          && parsed_command_data(cmd).data != BLOCK_menu
          && ct == ct_preformatted)
        return 1;
    }
  return 0;
}



/* Command nesting context. */

NESTING_CONTEXT nesting_context;
