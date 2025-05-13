/* Copyright 2010-2025 Free Software Foundation, Inc.

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
#include <stddef.h>

#include "text.h"
#include "command_ids.h"
#include "tree_types.h"
#include "document_types.h"
#include "base_utils.h"
#include "extra.h"
#include "builtin_commands.h"
/* xasprintf */
#include "utils.h"
#include "convert_to_texinfo.h"
#include "debug.h"
#include "structure_list.h"

NODE_STRUCTURE *
new_node_structure (ELEMENT *element)
{
  NODE_STRUCTURE *node = (NODE_STRUCTURE *) malloc (sizeof (NODE_STRUCTURE));
  memset (node, 0, sizeof (NODE_STRUCTURE));
  node->element = element;
  return node;
}

SECTION_STRUCTURE *
new_section_structure (ELEMENT *element)
{
  SECTION_STRUCTURE *section
    = (SECTION_STRUCTURE *) malloc (sizeof (SECTION_STRUCTURE));
  memset (section, 0, sizeof (SECTION_STRUCTURE));
  section->element = element;
  return section;
}

HEADING_STRUCTURE *
new_heading_structure (ELEMENT *element)
{
  HEADING_STRUCTURE *heading
    = (HEADING_STRUCTURE *) malloc (sizeof (HEADING_STRUCTURE));
  memset (heading, 0, sizeof (HEADING_STRUCTURE));
  heading->element = element;
  return heading;
}

/* Make sure there is space for at least one more element. */
#define setup_reallocate_structure_list(name, type) \
static void \
reallocate_##name##_structure_list (type##_STRUCTURE_LIST *list) \
{ \
  if (list->number + 1 >= list->space) \
    { \
      list->space += 10; \
      list->list = realloc (list->list, \
                            list->space * sizeof (type##_STRUCTURE *)); \
      if (!list->list) \
        fatal ("realloc failed"); \
    } \
}

setup_reallocate_structure_list(node,NODE)
setup_reallocate_structure_list(section,SECTION)
setup_reallocate_structure_list(heading,HEADING)

NODE_STRUCTURE *
add_to_node_structure_list (NODE_STRUCTURE_LIST *list, ELEMENT *e)
{
  NODE_STRUCTURE *node = new_node_structure (e);
  /* NOTE there could be theoretically an overflow if
     list->number + 1 > SIZE_MAX.  The numbers are big, this is unlikely
     to happen */
  reallocate_node_structure_list (list);

  list->list[list->number++] = node;

  return node;
}

SECTION_STRUCTURE *
add_to_section_structure_list (SECTION_STRUCTURE_LIST *list, ELEMENT *e)
{
  SECTION_STRUCTURE *section = new_section_structure (e);
  reallocate_section_structure_list (list);

  list->list[list->number++] = section;

  return section;
}

HEADING_STRUCTURE *
add_to_heading_structure_list (HEADING_STRUCTURE_LIST *list, ELEMENT *e)
{
  HEADING_STRUCTURE *heading = new_heading_structure (e);
  reallocate_heading_structure_list (list);

  list->list[list->number++] = heading;

  return heading;
}

/* Add a node structure for the element E into the LIST at index WHERE. */
NODE_STRUCTURE *
insert_into_node_structure_list (NODE_STRUCTURE_LIST *list,
                                 ELEMENT *e, size_t where)
{
  NODE_STRUCTURE *node = new_node_structure (e);
  reallocate_node_structure_list (list);

  if (where > list->number)
    fatal ("elements list index out of bounds");

  memmove (&list->list[where + 1], &list->list[where],
           (list->number - where) * sizeof (NODE_STRUCTURE *));
  list->list[where] = node;
  list->number++;

  return node;
}

void
free_node_structure_list (NODE_STRUCTURE_LIST *list)
{
  size_t i;
  for (i = 0; i < list->number; i++)
    free (list->list[i]);
  free (list->list);
}

void
free_section_structure_list (SECTION_STRUCTURE_LIST *list)
{
  size_t i;
  for (i = 0; i < list->number; i++)
    free (list->list[i]);
  free (list->list);
}

void
free_heading_structure_list (HEADING_STRUCTURE_LIST *list)
{
  size_t i;
  for (i = 0; i < list->number; i++)
    free (list->list[i]);
  free (list->list);
}

static char *
print_root_command (const ELEMENT *element)
{
  ELEMENT *argument_line = element->e.c->contents.list[0];
  if (argument_line->e.c->contents.number > 0)
    {
      ELEMENT *line_arg = argument_line->e.c->contents.list[0];
      if (line_arg->e.c->contents.number > 0)
        {
          char *root_command_texi
            = convert_contents_to_texinfo (line_arg);
          return root_command_texi;
        }
    }
  return 0;
}

/* used in t/X.t tests */
char *
print_sections_list (const DOCUMENT *document)
{
  size_t i;

  TEXT result;

  text_init (&result);
  text_append (&result, "");

  for (i = 0; i < document->sections_list.number; i++)
    {
      const SECTION_STRUCTURE *section_structure
        = document->sections_list.list[i];
      const ELEMENT *element = section_structure->element;
      char *root_command_texi = print_root_command (element);
      if (!root_command_texi)
        text_printf (&result, "%zu", i+1);
      else
        {
          text_printf (&result, "%zu|%s", i+1, root_command_texi);
          free (root_command_texi);
        }
      text_append_n (&result, "\n", 1);

      if (section_structure->associated_anchor_command)
        {
          char *associated_anchor_command_text
            = print_root_command (section_structure->associated_anchor_command);
          text_printf (&result, " associated_anchor_command: %s\n",
                       associated_anchor_command_text);
          free (associated_anchor_command_text);
        }

      if (section_structure->associated_node)
        {
          char *associated_node_text
            = print_root_command (section_structure->associated_node);
          text_printf (&result, " associated_node: %s\n", associated_node_text);
          free (associated_node_text);
        }
    }

  return result.text;
}

static char *
print_section_command (const ELEMENT *element)
{
  char *root_command_texi = print_root_command (element);

  char *section_heading_number
    = lookup_extra_string (element, AI_key_section_heading_number);

  if (section_heading_number && strlen (section_heading_number))
    {
      if (root_command_texi)
        {
          char *result;
          xasprintf (&result, "%s %s", section_heading_number,
                     root_command_texi);
          free (root_command_texi);
          return result;
        }
      return strdup (section_heading_number);
    }
  return root_command_texi;
}

static char *
print_title_command_command (const ELEMENT *element)
{
  if (builtin_command_data[element->e.c->cmd].flags & CF_root)
    return print_section_command (element);
  else
    {
      const ELEMENT *line_arg = element->e.c->contents.list[0];
      if (line_arg->e.c->contents.number > 0)
        {
          char *result;
          char *root_command_texi
            = convert_contents_to_texinfo (line_arg);
          xasprintf (&result , "@%s %s",
                     builtin_command_name (element->e.c->cmd),
                     root_command_texi);
          free (root_command_texi);
          return result;
        }
      return 0;
    }
}

char *
print_nodes_list (const DOCUMENT *document)
{
  size_t i;

  TEXT result;

  text_init (&result);
  text_append (&result, "");

  for (i = 0; i < document->nodes_list.number; i++)
    {
      const NODE_STRUCTURE *node_structure
        = document->nodes_list.list[i];
      const ELEMENT *element = node_structure->element;
      char *root_command_texi = print_root_command (element);
      if (!root_command_texi)
        text_printf (&result, "%zu", i+1);
      else
        {
          text_printf (&result, "%zu|%s", i+1, root_command_texi);
          free (root_command_texi);
        }
      text_append_n (&result, "\n", 1);

      if (node_structure->associated_section)
        {
          char *associated_section_text
            = print_section_command (node_structure->associated_section);
          if (associated_section_text)
            {
              text_printf (&result, " associated_section: %s",
                           associated_section_text);
              free (associated_section_text);
            }
          else
            text_append (&result, " associated_section");
          text_append_n (&result, "\n", 1);
        }

      if (node_structure->associated_title_command)
        {
          char *associated_title_command_text
            = print_title_command_command (
                              node_structure->associated_title_command);
          if (associated_title_command_text)
            {
              text_printf (&result, " associated_title_command: %s",
                           associated_title_command_text);
              free (associated_title_command_text);
            }
          else
            text_append (&result, " associated_title_command");
          text_append_n (&result, "\n", 1);
        }
    }

  return result.text;
}

char *
print_headings_list (const DOCUMENT *document)
{
  size_t i;

  TEXT result;

  text_init (&result);
  text_append (&result, "");

  for (i = 0; i < document->headings_list.number; i++)
    {
      const HEADING_STRUCTURE *heading_structure
        = document->headings_list.list[i];
      const ELEMENT *element = heading_structure->element;
      const ELEMENT *line_arg = element->e.c->contents.list[0];
      char *root_command_texi = 0;

      if (line_arg->e.c->contents.number > 0)
        root_command_texi = convert_contents_to_texinfo (line_arg);

      if (!root_command_texi)
        text_printf (&result, "%zu", i+1);
      else
        {
          text_printf (&result, "%zu|%s", i+1, root_command_texi);
          free (root_command_texi);
        }
      text_append_n (&result, "\n", 1);

      if (heading_structure->associated_anchor_command)
        {
          char *associated_anchor_command_text
            = print_root_command (heading_structure->associated_anchor_command);
          text_printf (&result, " associated_anchor_command: %s\n",
                       associated_anchor_command_text);
          free (associated_anchor_command_text);
        }
    }

  return result.text;
}
