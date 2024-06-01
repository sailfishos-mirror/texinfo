/* Copyright 2014-2024 Free Software Foundation, Inc.

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

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "types_data.h"
#include "extra.h"
#include "builtin_commands.h"
#include "debug.h"

const char *
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
debug_protect_eol (const char *input_string)
{
  char *end_of_line;

  if (!input_string)
    return strdup ("[NULL]");

  end_of_line = strchr (input_string, '\n');

  if (end_of_line)
    {
      const char *p = input_string;
      TEXT text;
      text_init (&text);
      while (end_of_line)
        {
          size_t add_len = end_of_line - p;
          if (add_len)
            {
              text_append_n (&text, p, add_len);
              p += add_len;
            }
          text_append_n (&text, "\\n", 2);
          p += 1;
          end_of_line = strchr (p, '\n');
        }
      if (*p)
        {
          text_append (&text, p);
        }
      return text.text;
    }
  return strdup (input_string);
}

char *
print_element_debug (const ELEMENT *e, int print_parent)
{
  TEXT text;

  text_init (&text);
  text_append (&text, "");
  if (e->type)
    text_printf (&text, "(%s)", type_data[e->type].name);
  if (type_data[e->type].flags & TF_text)
    {
      if (e->text->end == 0)
        {
          text_append_n (&text, "[T]", 3);
        }
      else
        {
          char *element_text = debug_protect_eol (e->text->text);
          text_printf (&text, "[T: %s]", element_text);
          free (element_text);
        }
    }
  else
    {
      if (e->cmd)
        text_printf (&text, "@%s", debug_element_command_name (e));
      if (e->c->args.number)
        text_printf (&text, "[A%d]", e->c->args.number);
      if (e->c->contents.number)
        text_printf (&text, "[C%d]", e->c->contents.number);
    }
  if (print_parent && e->parent)
    {
      text_append (&text, " <- ");
      if (e->parent->cmd)
        text_printf (&text, "@%s", element_command_name (e->parent));
      if (e->parent->type)
        text_printf (&text, "(%s)", type_data[e->parent->type].name);
    }
  return text.text;
}

char *
print_associate_info_debug (const ASSOCIATED_INFO *info)
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
          text_printf (&text, "integer: %d", k->k.integer);
          break;
        case extra_string:
          text_printf (&text, "string: %s", k->k.string);
          break;
        case extra_element:
        case extra_element_oot:
          {
            char *element_str = print_element_debug (k->k.element, 0);
            if (k->type == extra_element_oot)
              text_append (&text, "oot ");
            text_printf (&text, "element %p: %s", k->k.element, element_str);
            free (element_str);
            break;
          }
        case extra_misc_args:
          {
            int j;
            const ELEMENT_LIST *l = k->k.list;
            text_append (&text, "array: ");
            for (j = 0; j < l->number; j++)
              {
                const ELEMENT *e = l->list[j];
                if (e->type == ET_other_text)
                  text_printf (&text, "%s|", e->text->text);
                else
                  {
                    KEY_PAIR *k_integer = lookup_extra (e, "integer");
                    if (k_integer)
                      text_printf (&text, "%d|", k_integer->k.integer);
                  }
              }
            break;
           }
        case extra_contents:
          {
            int j;
            const ELEMENT_LIST *l = k->k.list;
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
            const ELEMENT *f = k->k.element;
            text_append (&text, "contents: ");
            for (j = 0; j < f->c->contents.number; j++)
              {
                const ELEMENT *e = f->c->contents.list[j];
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

