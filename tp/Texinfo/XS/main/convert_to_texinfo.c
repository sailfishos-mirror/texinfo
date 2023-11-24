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

/* In sync with Texinfo::Convert::Texinfo */

#include <config.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "tree_types.h"
#include "text.h"
/* for lookup_info* */
#include "extra.h"
/* new_element and destroy_element for convert_contents_to_texinfo */
#include "tree.h"
/* get_label_element and collapse_spaces */
#include "utils.h"
#include "builtin_commands.h"
#include "element_types.h"
#include "debug.h"
#include "convert_to_texinfo.h"


static void expand_cmd_args_to_texi (const ELEMENT *e, TEXT *result);
static void convert_to_texinfo_internal (const ELEMENT *e, TEXT *result);


#define ADD(x) text_append (result, x)

static void
expand_cmd_args_to_texi (const ELEMENT *e, TEXT *result)
{
  enum command_id cmd = element_builtin_cmd (e);
  char *arg_line;
  ELEMENT *elt, *spc_before_arg;

  if (cmd)
    {
      char *cmdname = element_command_name (e);
      ADD("@");  ADD(cmdname);
      elt = lookup_info_element (e, "spaces_after_cmd_before_arg");
      if (elt)
        ADD((char *)elt->text.text);
    }

  spc_before_arg = lookup_info_element (e, "spaces_before_argument");

  arg_line = lookup_info_string (e, "arg_line");
  if (arg_line)
    {
      if (spc_before_arg)
        ADD((char *)spc_before_arg->text.text);

      ADD(arg_line);
    }
  else if (e->args.number > 0)
    {
      int braces, arg_nr, i;
      int with_commas = 0;

      braces = (e->args.list[0]->type == ET_brace_command_arg
                || e->args.list[0]->type == ET_brace_command_context);
      if (braces)
        ADD("{");

      if (cmd == CM_verb)
        {
          char *delimiter = lookup_info_string (e, "delimiter");
          ADD(delimiter);
        }

      if (spc_before_arg)
        ADD((char *)spc_before_arg->text.text);

      if ((builtin_command_data[cmd].flags & CF_block
           && ! (builtin_command_data[cmd].flags & CF_def
                 || cmd == CM_multitable))
          || cmd == CM_node
          || (builtin_command_data[cmd].flags & CF_brace)
          || (builtin_command_data[cmd].flags & CF_INFOENCLOSE))
        with_commas = 1;

      arg_nr = 0;
      for (i = 0; i < e->args.number; i++)
        {
          ELEMENT *arg = e->args.list[i];
          if (arg->type == ET_spaces_inserted
              || arg->type == ET_bracketed_inserted
              || arg->type == ET_command_as_argument_inserted)
            continue;

          if (with_commas)
            {
              if (arg_nr)
                ADD(",");
              arg_nr++;
            }
          convert_to_texinfo_internal (arg, result);
        }

      if (cmd == CM_verb)
        {
          char *delimiter = lookup_info_string (e, "delimiter");
          ADD(delimiter);
        }

      if (braces)
        ADD("}");
    }
  else
    {
      if (spc_before_arg)
        ADD((char *)spc_before_arg->text.text);
    }
}

static void
convert_to_texinfo_internal (const ELEMENT *e, TEXT *result)
{
  ELEMENT *elt;

  if (e->type == ET_spaces_inserted
      || e->type == ET_bracketed_inserted
      || e->type == ET_command_as_argument_inserted)
    {}
  else if (e->text.end > 0)
    ADD(e->text.text);
  else
    {
      if (e->cmd
          || e->type == ET_def_line)
        {
          expand_cmd_args_to_texi (e, result);
        }
      else
        {
          if (e->type == ET_bracketed_arg
              || e->type == ET_bracketed_linemacro_arg)
            ADD("{");
          elt = lookup_info_element (e, "spaces_before_argument");
          if (elt)
            {
              ADD((char *)elt->text.text);
            }
        }
      if (e->contents.number > 0)
        {
          int i;
          for (i = 0; i < e->contents.number; i++)
            convert_to_texinfo_internal (e->contents.list[i], result);
        }

      elt = lookup_info_element (e, "spaces_after_argument");
      if (elt)
        {
          ADD((char *)elt->text.text);
        }

      elt = lookup_info_element (e, "comment_at_end");
      if (elt)
        convert_to_texinfo_internal (elt, result);

      if (e->type == ET_bracketed_arg || e->type == ET_bracketed_linemacro_arg)
        ADD("}");
    }

  return;
}
#undef ADD

/* Return value to be freed by caller. */
char *
convert_to_texinfo (const ELEMENT *e)
{
  TEXT result;

  if (!e)
    return strdup ("");
  text_init (&result);
  /* in case of a document without any content expanded, for instance
     containing only containers, we still want to output an empty string */
  text_append (&result, "");
  convert_to_texinfo_internal (e, &result);
  return result.text;
}

char *
convert_contents_to_texinfo (const ELEMENT *e)
{
  ELEMENT *tmp = new_element (ET_NONE);
  char *result;

  tmp->contents = e->contents;
  result = convert_to_texinfo (tmp);
  tmp->contents.list = 0;
  destroy_element (tmp);

  return result;
}

/* Return value to be freed by caller. */
char *
link_element_to_texi (const ELEMENT *element)
{
  TEXT result;
  ELEMENT *element_link;

  text_init (&result);
  text_append (&result, "");

  element_link = lookup_extra_element (element, "manual_content");
  if (element_link)
    {
      char *manual_texi = convert_contents_to_texinfo (element_link);
      text_append (&result, "(");
      text_append (&result, manual_texi);
      text_append (&result, ")");
      free (manual_texi);
    }

  element_link = lookup_extra_element (element, "node_content");
  if (element_link)
    {
      char *node_texi = convert_contents_to_texinfo (element_link);
      text_append (&result, node_texi);
      free (node_texi);
    }
  return result.text;
}

/* Return value to be freed by caller. */
char *
target_element_to_texi_label (const ELEMENT *element)
{
  const ELEMENT *label_element = get_label_element (element);
  return convert_contents_to_texinfo (label_element);
}

int
check_node_same_texinfo_code (const ELEMENT *reference_node,
                              const ELEMENT *node_content)
{
  char *reference_node_texi;
  char *node_texi;
  int equal_texi;
  const char *normalized = lookup_extra_string (reference_node, "normalized");

  if (normalized)
    {
      char *tmp_texi;
      const ELEMENT *label_element = get_label_element (reference_node);

      tmp_texi = convert_contents_to_texinfo (label_element);
      reference_node_texi = collapse_spaces (tmp_texi);
      free (tmp_texi);
    }
  else
    reference_node_texi = strdup ("");

  if (node_content)
    {
      char *tmp_texi;

      const ELEMENT *last_content = last_contents_child (node_content);
      if (last_content && last_content->type == ET_space_at_end_menu_node)
        {
          ELEMENT *tmp_elt = new_element (ET_NONE);
          insert_slice_into_contents (tmp_elt, 0,
                                      node_content, 0,
                                      node_content->contents.number -1);
          tmp_texi = convert_to_texinfo (tmp_elt);
          destroy_element (tmp_elt);
        }
      else
        tmp_texi = convert_contents_to_texinfo (node_content);

      node_texi = collapse_spaces (tmp_texi);
      free (tmp_texi);
    }
  else
    node_texi = strdup ("");

  equal_texi = !strcmp(reference_node_texi, node_texi);
  free (reference_node_texi);
  free (node_texi);

  return equal_texi;
}

/* for debugging */
/* Return value to be freed by caller. */
char *
root_heading_command_to_texinfo (const ELEMENT *element)
{
  const ELEMENT *tree = 0;
  TEXT text;

  if (element->cmd)
    {
      if ((element->cmd == CM_node
           || (builtin_command_flags (element) & CF_sectioning_heading))
          && element->args.number > 0)
        tree = element->args.list[0];
    }
  else
    return strdup("Not a command");

  text_init (&text);
  if (tree)
    {
      char *tree_txi = convert_contents_to_texinfo (tree);
      text_printf (&text, "@%s %s", builtin_command_name (element->cmd),
                                    tree_txi);
      free (tree_txi);
    }
  else
   text_printf (&text, "@%s", builtin_command_name (element->cmd));

  return (text.text);
}
