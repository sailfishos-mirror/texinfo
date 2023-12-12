/* Copyright 2014-2019 Free Software Foundation, Inc.

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
#include <string.h>
#include <stdio.h>

#include "commands.h"
#include "tree_types.h"
#include "text.h"
#include "element_types.h"
#include "debug.h"
#include "debug_parser.h"

/* Whether to dump debugging output on stderr. */
int debug_output = 0;

void
set_debug_output (int value)
{
  debug_output = value;
}

/* debug functions used in parser, depending on debug_output */

void
debug (char *s, ...)
{
  va_list v;

  if (!debug_output)
    return;
  va_start (v, s);
  vfprintf (stderr, s, v);
  fputc ('\n', stderr);
}

void
debug_nonl (char *s, ...)
{
  va_list v;

  if (!debug_output)
    return;
  va_start (v, s);
  vfprintf (stderr, s, v);
}

void
debug_print_element (const ELEMENT *e, int print_parent)
{
  if (debug_output)
    {
      char *result;
      result = print_element_debug (e, print_parent);
      fputs (result, stderr);
      free (result);
    }
}

void
debug_print_protected_string (char *input_string)
{
  if (debug_output)
    {
      int allocated = 0;
      char *result = debug_protect_eol (input_string, &allocated);
      fputs (result, stderr);
      if (allocated)
        free (result);
    }
}

/* Here use command_name to get command names, using information on
   user-defined commands.  To be used in parser.

   There are corresponding functions in debug.c, which do not use
   user-defined commands information.
*/

char *
debug_parser_command_name (enum command_id cmd)
{
  if (cmd == CM_TAB)
    return "\\t";
  else if (cmd == CM_NEWLINE)
    return "\\n";
  else
    return command_name (cmd);
}

char *
print_element_debug_parser (ELEMENT *e, int print_parent)
{
  TEXT text;
  char *result;

  text_init (&text);
  text_append (&text, "");
  if (e->cmd)
    text_printf (&text, "@%s", debug_parser_command_name (e->cmd));
  if (e->type)
    text_printf (&text, "(%s)", element_type_names[e->type]);
  if (e->text.end > 0)
    {
      int allocated = 0;
      char *element_text = debug_protect_eol (e->text.text, &allocated);
      text_printf (&text, "[T: %s]", element_text);
      if (allocated)
        free (element_text);
    }
  if (e->args.number)
    text_printf (&text, "[A%d]", e->args.number);
  if (e->contents.number)
    text_printf (&text, "[C%d]", e->contents.number);
  if (print_parent && e->parent)
    {
      text_append (&text, " <- ");
      if (e->parent->cmd)
        text_printf (&text, "@%s", command_name (e->parent->cmd));
      if (e->parent->type)
        text_printf (&text, "(%s)", element_type_names[e->parent->type]);
    }
  result = strdup (text.text);
  free (text.text);
  return result;
}

void
debug_parser_print_element (ELEMENT *e, int print_parent)
{
  if (debug_output)
    {
      char *result;
      result = print_element_debug_parser (e, print_parent);
      fputs (result, stderr);
      free (result);
    }
}
