/* Copyright 2014-2023 Free Software Foundation, Inc.

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
#include <stdlib.h>

#include "builtin_commands.h"
#include "tree_types.h"
#include "text.h"
#include "element_types.h"
#include "extra.h"
#include "debug.h"

/* Whether to dump debugging output on stderr. */
int debug_output = 0;

void
set_debug_output (int value)
{
  debug_output = value;
}

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

char *
debug_element_command_name (const ELEMENT *e)
{
  if (e->cmd == CM_TAB)
    return "\\t";
  else if (e->cmd == CM_NEWLINE)
    return "\\n";
  else
    return element_command_name (e);
}

char *
debug_protect_eol (char *input_string, int *allocated)
{
  char *end_of_line = strchr (input_string, '\n');
  char *protected_string = input_string;
  *allocated = 0;
  if (end_of_line) {
    char *p;
    protected_string = malloc ((strlen(input_string) + 2) * sizeof(char));
    *allocated = 1;
    memcpy (protected_string, input_string, strlen(input_string));
    p = protected_string + (end_of_line - input_string);
    *p = '\\';
    *(p+1) = 'n';
    *(p+2) = '\0';
  }
  return protected_string;
}

char *
print_element_debug (const ELEMENT *e, int print_parent)
{
  TEXT text;
  char *result;

  text_init (&text);
  text_append (&text, "");
  if (e->cmd)
    text_printf (&text, "@%s", debug_element_command_name (e));
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
        text_printf (&text, "@%s", element_command_name (e->parent));
      if (e->parent->type)
        text_printf (&text, "(%s)", element_type_names[e->parent->type]);
    }
  result = strdup (text.text);
  free (text.text);
  return result;
}

char *print_associate_info_debug (const ASSOCIATED_INFO *info)
{
  TEXT text;
  char *result;
  int i;

  text_init (&text);
  text_append (&text, "");

  for (i = 0; i < info->info_number; i++)
    {
      KEY_PAIR *k = &info->info[i];
      const char *key = k->key;
      text_printf (&text, "  %s|", key);
      switch (info->info[i].type)
        {
        case extra_deleted:
          text_printf (&text, "deleted");
          break;
        case extra_integer:
          text_printf (&text, "integer: %d", k->integer);
          break;
        case extra_string:
          text_printf (&text, "string: %s", k->string);
          break;
        case extra_element:
        case extra_element_oot:
          {
            char *element_str = print_element_debug (k->element, 0);
            if (k->type == extra_element_oot)
              text_append (&text, "oot ");
            text_printf (&text, "element %p: %s", k->element, element_str);
            free (element_str);
            break;
          }
        case extra_misc_args:
          {
            int j;
            ELEMENT *f = k->element;
            text_append (&text, "array: ");
            for (j = 0; j < f->contents.number; j++)
              {
                KEY_PAIR *k_integer = lookup_extra (f->contents.list[j], "integer");
                if (k_integer)
                  text_printf (&text, "%d|", k_integer->integer);
                else
                  text_printf (&text, "%s|", f->contents.list[j]->text.text);
              }
            break;
           }
        case extra_contents:
          {
            int j;
            ELEMENT_LIST *l = k->list;
            text_append (&text, "contents: ");
            for (j = 0; j < l->number; j++)
              {
                const ELEMENT *e = l->list[j];
                char *element_str = print_element_debug (e, 0);
                text_printf (&text, "%p;%s|", e, element_str);
                free (element_str);
              }
            break;
          }
        case extra_container:
          {
            int j;
            ELEMENT *f = k->element;
            text_append (&text, "contents: ");
            for (j = 0; j < f->contents.number; j++)
              {
                const ELEMENT *e = f->contents.list[j];
                char *element_str = print_element_debug (e, 0);
                text_printf (&text, "%p;%s|", e, element_str);
                free (element_str);
              }
            break;
          }
        default:
          text_printf (&text, "UNKNOWN (%d)", info->info[i].type);
          break;
        }
      text_append (&text, "\n");
    }

  result = strdup (text.text);
  free (text.text);
  return result;
}

char *
print_element_debug_details (const ELEMENT *e, int print_parent)
{
  char *string = print_element_debug (e, print_parent);
  TEXT text;
  char *result;

  text_init (&text);
  text_append (&text, string);
  text_append (&text, "\n");

  if (e->extra_info.info_number > 0)
    {
      char *associated_info_str;
      text_append (&text, " EXTRA\n");
      associated_info_str = print_associate_info_debug (&e->extra_info);
      text_append (&text, associated_info_str);
      free (associated_info_str);
    }

  if (e->info_info.info_number > 0)
    {
      char *associated_info_str;
      text_append (&text, " INFO\n");
      associated_info_str = print_associate_info_debug (&e->info_info);
      text_append (&text, associated_info_str);
      free (associated_info_str);
    }

  free (string);
  result = strdup (text.text);
  free (text.text);
  return result;
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
      char *result;
      if (!input_string)
        result = "[NULL]";
      else
        result = debug_protect_eol (input_string, &allocated);
      fputs (result, stderr);
      if (allocated)
        free (result);
    }
}

