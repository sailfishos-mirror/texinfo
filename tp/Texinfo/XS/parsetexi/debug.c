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
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include "parser.h"

/* Whether to dump debugging output on stderr. */
int debug_output = 0;

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
debug_print_element_short (ELEMENT *e, int print_parent)
{
  if (e->cmd)
    debug_nonl("@%s", command_name(e->cmd));
  if (e->type)
    debug_nonl("(%s)", element_type_names[e->type]);
  if (e->text.end > 0)
    {
      char *end_of_line = strchr (e->text.text, '\n');
      char *element_text = e->text.text;
      if (end_of_line) {
        char *p;
        element_text = malloc ((e->text.end + 2) * sizeof(char));
        memcpy (element_text, e->text.text, e->text.end);
        p = element_text + (end_of_line - e->text.text);
        *p = '\\';
        *(p+1) = 'n';
        *(p+2) = '\0';
      }
      debug_nonl ("[T: %s]", element_text);
      if (end_of_line)
        free (element_text);
    }
  if (e->args.number)
    debug_nonl ("[A%d]", e->args.number);
  if (e->contents.number)
    debug_nonl ("[C%d]", e->contents.number);
  if (print_parent && e->parent)
    {
      debug_nonl (" <- ");
      if (e->parent->cmd)
        debug_nonl("@%s", command_name(e->parent->cmd));
      if (e->parent->type)
        debug_nonl("(%s)", element_type_names[e->parent->type]);
    }
}
