/* Copyright 2010-2024 Free Software Foundation, Inc.

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
#include <stdbool.h>
#include <iconv.h>
#include "unistr.h"

/* for isolate_last_space and global_documentlanguage */
#include "parser.h"
#include "command_ids.h"
#include "tree_types.h"
#include "text.h"
#include "tree.h"
#include "builtin_commands.h"
#include "extra.h"
/* for whitespace_chars fatal def_aliases */
#include "utils.h"
/* for relocate_source_marks */
#include "manipulate_tree.h"
#include "source_marks.h"
#include "commands.h"
#include "unicode.h"

void
gather_def_item (ELEMENT *current, enum command_id next_command)
{
  enum element_type type;
  ELEMENT *def_item;
  int contents_count, i;

  if (next_command
      && next_command != CM_defline && next_command != CM_deftypeline)
    type = ET_inter_def_item; /* Between @def*x and @def*. */
  else
    type = ET_def_item;

  if (!current->cmd)
    return;

  /* Check this isn't an "x" type command.
     "This may happen for a construct like:
     @deffnx a b @section
     but otherwise the end of line will lead to the command closing." */
  if (command_data(current->cmd).flags & CF_line)
    return;

  contents_count = current->contents.number;
  if (contents_count == 0)
    return;

  /* Starting from the end, collect everything that is not a ET_def_line and
     put it into the ET_def_item. */
  def_item = new_element (type);
  for (i = 0; i < contents_count; i++)
    {
      ELEMENT *last_child, *item_content;
      last_child = last_contents_child (current);
      if (last_child->type == ET_def_line)
        break;
      item_content = pop_element_from_contents (current);
      insert_into_contents (def_item, item_content, 0);
    }

  if (def_item->contents.number > 0)
    {
      if (current->cmd == CM_defblock
        /* all content between @defblock and first @def*line */
          && def_item->contents.number == contents_count)
        {
          def_item->type = ET_before_defline;
        }
      add_to_element_contents (current, def_item);
    }
  else
    destroy_element (def_item);
}


/* Starting at I in the contents, return the next non-whitespace element,
   incrementing I.  Return null if no more elements. */
ELEMENT *
next_bracketed_or_word_agg (ELEMENT *current, int *i)
{
  int num = 0;
  ELEMENT *new;
  ELEMENT *e;
  int j;
  while (1)
    {
      if (*i == current->contents.number)
        break;
      e = current->contents.list[*i];
      if (e->type == ET_spaces
          || e->type == ET_delimiter)
        {
          if (num > 0)
            break;
          else
            {
              (*i)++;
            }
        }
      else
        {
         /* e is a text or command element or bracketed argument */
          (*i)++;
          num++;
        }
    }

  if (num == 0)
    return 0;

  if (num == 1)
    {
      /* FIXME e is probably already this element */
      e = current->contents.list[*i - 1];

      /* there is only one bracketed element */
      if (e->type == ET_bracketed_arg)
        return e;
    }

  new = new_element (ET_def_aggregate);
  for (j = 0; j < num; j++)
    {
      add_to_element_contents (new,
                               remove_from_contents (current, *i - num));
      /* Note: if we did a lot of this could write a special
         "splicing" function. */
    }
  insert_into_contents (current, new, *i - num);
  *i = *i - num + 1;
  return new;
}

typedef struct {
    enum command_id command;
    char **arguments;
} DEF_MAP;

  /*
     Meaning of these:
     CATEGORY - type of entity, e.g. "Function"
     CLASS - class for object-oriented programming
     TYPE - data type of a variable or function return value
     NAME - name of entity being documented
     ARGUMENTS - arguments to a function or macro                  */

char *defline_arguments[] = {"category", "name", "arg", 0};
char *deftypeline_arguments[] = {"category", "type", "name", "argtype", 0};
char *defvr_arguments[] = {"category", "name", 0};
char *deftypefn_arguments[] = {"category", "type", "name", "argtype", 0};
char *deftypeop_arguments[] = {"category", "class" , "type", "name", "argtype", 0};
char *deftypevr_arguments[] = {"category", "type", "name", 0};
char *defcv_arguments[] = {"category", "class" , "name", 0};
char *deftypecv_arguments[] = {"category", "class" , "type", "name", 0};
char *defop_arguments[] = {"category", "class" , "name", "arg", 0};
char *deftp_arguments[] = {"category", "name", "argtype", 0};

DEF_MAP def_maps[] = {
  CM_defline, defline_arguments,
  CM_deftypeline, deftypeline_arguments,
  CM_deffn, defline_arguments,
  CM_defvr, defvr_arguments,
  CM_deftypefn, deftypefn_arguments,
  CM_deftypeop, deftypeop_arguments,
  CM_deftypevr, deftypevr_arguments,
  CM_defcv, defcv_arguments,
  CM_deftypecv, deftypecv_arguments,
  CM_defop, defop_arguments,
  CM_deftp, deftp_arguments,
};

/* Split non-space text elements into strings without [ ] ( ) , and single
   character strings with one of them. */
static void
split_delimiters (ELEMENT *current, int starting_idx)
{
  int i;
  static char *chars = "[](),";
  for (i = starting_idx; i < current->contents.number; i++)
    {
      ELEMENT *e = current->contents.list[i];
      char *p;
      ELEMENT *new;
      int len;
      /* count UTF-8 encoded Unicode characters for source marks locations */
      uint8_t *u8_text = 0;
      size_t current_position;
      uint8_t *u8_p;
      size_t u8_len;

      if (e->type != ET_NONE && (e->type == ET_bracketed_arg
                                 || e->text.end > 0))
        continue;
      else if (e->text.end == 0)
        {
          new = new_element (ET_def_aggregate);
          new->parent = e->parent;
          add_to_element_contents (new, e);
          current->contents.list[i] = new;
          continue;
        }

      p = e->text.text;

      if (e->source_mark_list.number)
        {
          u8_text = utf8_from_string (p);
          u8_p = u8_text;

          current_position = 0;
        }

      while (1)
        {
          if (strchr (chars, *p))
            {
              new = new_element (ET_delimiter);
              text_append_n (&new->text, p, 1);

              if (u8_text)
                {
                  u8_len = u8_mbsnlen (u8_p, 1);
                  u8_p += u8_len;

                  current_position
                   = relocate_source_marks (&(e->source_mark_list), new,
                                                 current_position, u8_len);
                }

              insert_into_contents (current, new, i++);
              add_extra_string_dup (new, "def_role", "delimiter");
              if (!*++p)
                break;
              continue;
            }

          ELEMENT *new_text = new_element (ET_NONE);
          len = strcspn (p, chars);
          text_append_n (&new_text->text, p, len);

          if (u8_text)
            {
              u8_len = u8_mbsnlen (u8_p, len);
              u8_p += u8_len;

             current_position
               = relocate_source_marks (&(e->source_mark_list), new_text,
                                          current_position, u8_len);
            }

          new = new_element (ET_def_aggregate);
          add_to_element_contents (new, new_text);

          insert_into_contents (current, new, i++);
          if (!*(p += len))
            break;
        }
      destroy_element (remove_from_contents (current, i--));
      free (u8_text);
    }
}


/* Divide any text elements into separate elements, separating whitespace
   and non-whitespace. */
static void
split_def_args (ELEMENT *current, int starting_idx)
{
  int i;
  for (i = starting_idx; i < current->contents.number; i++)
    {
      ELEMENT *e = current->contents.list[i];
      char *p;
      ELEMENT *new;
      int len;
      /* count UTF-8 encoded Unicode characters for source marks locations */
      uint8_t *u8_text = 0;
      size_t current_position;
      uint8_t *u8_p;
      size_t u8_len;

      if (e->type == ET_bracketed_arg)
        {
          isolate_last_space (e);
          continue;
        }

      if (e->text.end == 0)
        continue;

      if (e->type == ET_spaces)
        {
          int status;
          int inserted = lookup_info_integer (e, "inserted", &status);
          if (inserted > 0)
            continue;
        }

      p = e->text.text;

      if (e->source_mark_list.number)
        {
          u8_text = utf8_from_string (p);
          u8_p = u8_text;

          current_position = 0;
        }

      while (1)
        {
          len = strspn (p, whitespace_chars);
          if (len)
            {
              new = new_element (ET_spaces);
              add_extra_string_dup (new, "def_role", "spaces");
            }
          else
            {
              len = strcspn (p, whitespace_chars);
              new = new_element (ET_NONE);
            }

          text_append_n (&new->text, p, len);

          if (u8_text)
            {
              u8_len = u8_mbsnlen (u8_p, len);
              u8_p += u8_len;

              current_position
                = relocate_source_marks (&(e->source_mark_list), new,
                                         current_position, u8_len);
            }
          insert_into_contents (current, new, i++);
          if (!*(p += len))
            break;
        }
      destroy_element (remove_from_contents (current, i--));
      free (u8_text);
    }
}

DEF_ARG **
parse_def (enum command_id command, ELEMENT *current)
{
  int contents_idx = 0;
  int type, set_type_not_arg;
  int i, i_def;
  int arg_types_nr;
  ELEMENT *e, *e1;
  DEF_ARG **result;
  char **arguments_list;

  split_def_args (current, contents_idx);

  /* Check for "def alias" - for example @defun for @deffn. */
  if (command_data(command).flags & CF_def_alias)
    {
      char *category;
      int i;
      for (i = 0; def_aliases[i].alias ; i++)
        {
          if (def_aliases[i].alias == command)
            goto found;
        }
      fatal ("no alias for CF_def_alias command");
    found:
      /* Prepended content is inserted into contents, so
         @defun is converted into @deffn Function */

      category = def_aliases[i].category;
      command = def_aliases[i].command;

      /* Used when category text has a space in it. */
      e = new_element (ET_def_category);
      add_info_integer (e, "inserted", 1);
      insert_into_contents (current, e, contents_idx);
      e1 = new_element (ET_NONE);
      text_append_n (&e1->text, category, strlen (category));
      add_to_element_contents (e, e1);
      if (global_documentlanguage && *global_documentlanguage)
        {
          e->type = ET_untranslated_def_category;
          e1->type = ET_untranslated;
          add_extra_string_dup (e, "documentlanguage",
                                global_documentlanguage);
          if (def_aliases[i].translation_context)
            add_extra_string_dup (e, "translation_context",
                                  def_aliases[i].translation_context);
        }

      e = new_element (ET_spaces);
      text_append_n (&e->text, " ", 1);
      add_extra_string_dup (e, "def_role", "spaces");
      add_info_integer (e, "inserted", 1);
      insert_into_contents (current, e, contents_idx + 1);
    }

 /* Read arguments as CATEGORY [CLASS] [TYPE] NAME [ARGUMENTS]. */

  for (i_def = 0; i_def < sizeof (def_maps) / sizeof (*def_maps); i_def++)
    {
      if (def_maps[i_def].command == command)
        goto def_found;
    }
  fatal ("no arguments for def command");
 def_found:

  /* determine non arg/argtype number of arguments */
  arg_types_nr = 0;
  arguments_list = def_maps[i_def].arguments;
  while (arguments_list[arg_types_nr])
    {
      char *arg_type_name = arguments_list[arg_types_nr];

      if (!strcmp (arg_type_name, "arg")
          || !strcmp (arg_type_name, "argtype"))
        break;
      arg_types_nr++;
    }
  result = malloc ((arg_types_nr+1) * sizeof (DEF_ARG *));

  for (i = 0; i < arg_types_nr; i++)
    {
      ELEMENT *e = next_bracketed_or_word_agg (current, &contents_idx);

      if (e)
        {
          char *arg_type_name = arguments_list[i];
          DEF_ARG *def_arg = malloc (sizeof (DEF_ARG));

          result[i] = def_arg;
          def_arg->arg_type = strdup(arg_type_name);
          def_arg->element = e;
        }
      else
        break;
    }

  result[i] = 0;

  for (i = 0; i < arg_types_nr; i++)
    {
      if (result[i])
        {
          DEF_ARG *def_arg = result[i];
          if (def_arg->element)
            add_extra_string_dup (def_arg->element, "def_role", def_arg->arg_type);
        }
      else
        break;
    }

  /* Process args */
  split_delimiters (current, contents_idx);

  /* For some commands, alternate between "arg" and "typearg". This matters for
     the DocBook output. */
  /* In that case set_type_not_arg is both used to set to argtype and
     to switch sign to switch between arg and argtype */
  if (command == CM_deftypeline || command == CM_deftypefn
      || command == CM_deftypeop || command == CM_deftp)
    set_type_not_arg = -1;
  else
    set_type_not_arg = 1;

  type = set_type_not_arg;
  for (i = contents_idx; i < current->contents.number; i++)
    {
      e = contents_child_by_index (current, i);
      if (e->type == ET_spaces)
        {
          continue;
        }
      if (e->type == ET_delimiter)
        {
          type = set_type_not_arg;
          continue;
        }
      if (e->type == ET_def_aggregate && e->contents.number == 1
          && e->contents.list[0]->cmd && e->contents.list[0]->cmd != CM_code)
        {
          add_extra_string_dup (e, "def_role", "arg");
          type = set_type_not_arg;
          continue;
        }
      add_extra_string_dup (e, "def_role",
                            (type == 1 ? "arg" : "typearg"));
      type *= set_type_not_arg;
    }
  return result;
}
