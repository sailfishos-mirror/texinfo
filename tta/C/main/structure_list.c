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
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
/* xasprintf */
#include "utils.h"
#include "convert_to_texinfo.h"
#include "debug.h"
#include "structure_list.h"

NODE_STRUCTURE_LIST *
new_node_structure_list (void)
{
  NODE_STRUCTURE_LIST *result = (NODE_STRUCTURE_LIST *)
     malloc (sizeof (NODE_STRUCTURE_LIST));
  memset (result, 0, sizeof (NODE_STRUCTURE_LIST));
  return result;
}

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

void
reallocate_node_structure_for (size_t n, NODE_STRUCTURE_LIST *list)
{
  if (list->number + n >= list->space)
    {
      list->space += n + 1;
      list->list = realloc (list->list,
                            list->space * sizeof (NODE_STRUCTURE *));
      if (!list->list)
        fatal ("realloc failed");
    }
}

void
add_to_node_structure_list (NODE_STRUCTURE_LIST *list,
                            NODE_STRUCTURE *node_structure)
{
  /* NOTE there could be theoretically an overflow if
     list->number + 1 > SIZE_MAX.  The numbers are big, this is unlikely
     to happen */
  reallocate_node_structure_list (list);

  list->list[list->number++] = node_structure;
}

NODE_STRUCTURE *
add_node_to_node_structure_list (NODE_STRUCTURE_LIST *list, ELEMENT *e)
{
  NODE_STRUCTURE *node_structure = new_node_structure (e);

  add_to_node_structure_list (list, node_structure);

  return node_structure;
}

SECTION_STRUCTURE *
add_section_to_section_structure_list (SECTION_STRUCTURE_LIST *list,
                                       ELEMENT *e)
{
  SECTION_STRUCTURE *section = new_section_structure (e);
  reallocate_section_structure_list (list);

  list->list[list->number++] = section;

  return section;
}

HEADING_STRUCTURE *
add_heading_to_heading_structure_list (HEADING_STRUCTURE_LIST *list,
                                       ELEMENT *e)
{
  HEADING_STRUCTURE *heading = new_heading_structure (e);
  reallocate_heading_structure_list (list);

  list->list[list->number++] = heading;

  return heading;
}

/* Add a node structure for the element E into the LIST at index WHERE. */
NODE_STRUCTURE *
insert_node_into_node_structure_list (NODE_STRUCTURE_LIST *list,
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

SECTION_STRUCTURE *
insert_section_into_section_structure_list (SECTION_STRUCTURE_LIST *list,
                                             ELEMENT *e, size_t where)
{
  SECTION_STRUCTURE *section = new_section_structure (e);
  reallocate_section_structure_list (list);

  if (where > list->number)
    fatal ("elements list index out of bounds");

  memmove (&list->list[where + 1], &list->list[where],
           (list->number - where) * sizeof (SECTION_STRUCTURE *));
  list->list[where] = section;
  list->number++;

  return section;
}

void
free_node_structure_list (NODE_STRUCTURE_LIST *list)
{
  size_t i;
  for (i = 0; i < list->number; i++)
    {
      NODE_STRUCTURE *node_structure = list->list[i];
      if (node_structure->menus)
        destroy_const_element_list (node_structure->menus);
      if (node_structure->menu_directions)
        free (node_structure->menu_directions);
      if (node_structure->node_directions)
        free (node_structure->node_directions);
      free (node_structure);
    }
  free (list->list);
}

void
destroy_node_structure_list (NODE_STRUCTURE_LIST *list)
{
  free_node_structure_list (list);
  free (list);
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
#define SECTION_STRUCT_PRINT_KEY(name) \
      if (structure->name) \
        { \
          char *value \
            = print_root_command (structure->name); \
          text_printf (&result, " " #name ": %s\n", \
                       value); \
          free (value); \
        }

#define SECTION_STRUCT_PRINT_KEY_OR_NULL(name) \
      if (structure->name) \
        { \
          char *value \
            = print_section_command (structure->name); \
          if (value) \
            { \
              text_printf (&result, " " #name ": %s", \
                           value); \
              free (value); \
            } \
          else \
            text_append (&result, " " #name); \
          text_append_n (&result, "\n", 1); \
        }

char *
print_sections_list (const DOCUMENT *document)
{
  size_t i;

  TEXT result;

  text_init (&result);
  text_append (&result, "");

  for (i = 0; i < document->sections_list.number; i++)
    {
      const SECTION_STRUCTURE *structure
        = document->sections_list.list[i];
      const ELEMENT *element = structure->element;
      char *root_command_texi = print_root_command (element);
      if (!root_command_texi)
        text_printf (&result, "%zu", i+1);
      else
        {
          text_printf (&result, "%zu|%s", i+1, root_command_texi);
          free (root_command_texi);
        }
      text_append_n (&result, "\n", 1);

      SECTION_STRUCT_PRINT_KEY(associated_anchor_command)
      SECTION_STRUCT_PRINT_KEY(associated_node)
      SECTION_STRUCT_PRINT_KEY(associated_part)
      SECTION_STRUCT_PRINT_KEY(part_associated_section)
      SECTION_STRUCT_PRINT_KEY(part_following_node)
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
print_line_command (const ELEMENT *element)
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

static void
print_line_command_key_element (TEXT *result, const char *key,
                                const ELEMENT *element)
{
  char *line_command_text = print_line_command(element);
  if (!line_command_text)
    text_printf (result, " %s", key);
  else
    {
      text_printf (result, " %s: %s", key, line_command_text);
      free (line_command_text);
    }
}

static char *
print_menu_node (const ELEMENT *element)
{
  if (element->e.c->cmd == CM_node)
    return print_root_command (element);
  else if (element->e.c->cmd)
    {
      const ELEMENT *line_arg = element->e.c->contents.list[0];
      if (line_arg->e.c->contents.number > 0)
        {
          return convert_contents_to_texinfo (line_arg);
        }
    }

  return (convert_to_texinfo (element));
}

static void
print_directions (TEXT *result, const ELEMENT * const *directions)
{
  size_t d;
  for (d = 0; d < directions_length; d++)
    {
      if (directions[d])
        {
          const char *d_key = direction_names[d];
          const ELEMENT *e = directions[d];
          char *element_str = print_menu_node (e);
          if (!element_str)
            /* not sure that it may happen */
            text_printf (result, "  %s->\n", d_key);
          else
            {
              text_printf (result, "  %s->%s\n", d_key, element_str);
              free (element_str);
            }
        }
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
      const NODE_STRUCTURE *structure
        = document->nodes_list.list[i];
      const ELEMENT *element = structure->element;
      char *root_command_texi = print_root_command (element);
      if (!root_command_texi)
        text_printf (&result, "%zu", i+1);
      else
        {
          text_printf (&result, "%zu|%s", i+1, root_command_texi);
          free (root_command_texi);
        }
      text_append_n (&result, "\n", 1);

      SECTION_STRUCT_PRINT_KEY_OR_NULL(associated_section)
      SECTION_STRUCT_PRINT_KEY_OR_NULL(node_preceding_part)

      if (structure->associated_title_command)
        {
          print_line_command_key_element (&result, "associated_title_command",
                                 structure->associated_title_command);
          text_append_n (&result, "\n", 1);
        }
      if (structure->node_description)
        {
          print_line_command_key_element (&result, "node_description",
                                 structure->node_description);
          text_append_n (&result, "\n", 1);
        }
      if (structure->node_long_description)
        {
          const char *command_key = "node_long_description";
          const ELEMENT *command_element = structure->node_long_description;
          text_printf (&result, " %s: @%s", command_key,
                       builtin_command_name (command_element->e.c->cmd));
          text_append_n (&result, "\n", 1);
        }

      if (structure->menus && structure->menus->number)
        {
          text_append_n (&result, " menus:\n", 8);
          size_t j;
          for (j = 0; j < structure->menus->number; j++)
            {
              const ELEMENT *menu = structure->menus->list[j];

              size_t k;
              for (k = 0; k < menu->e.c->contents.number; k++)
                {
                  const ELEMENT *menu_content = menu->e.c->contents.list[k];
                  if (menu_content->type == ET_menu_entry)
                    {
                      size_t l;
                      for (l = 0; l < menu_content->e.c->contents.number; l++)
                        {
                          const ELEMENT *content
                            = menu_content->e.c->contents.list[l];
                          if (content->type == ET_menu_entry_node)
                            {
                              /* This is only supposed to identify the menu */
                              char *node_menu_entry_texi
                                = convert_to_texinfo (content);
                              text_printf (&result, "  %s\n",
                                           node_menu_entry_texi);
                              free (node_menu_entry_texi);
                            }
                        }
                    }
                }
            }
        }
      if (structure->menu_directions)
        {
          text_append_n (&result, " menu_directions:\n", 18);
          print_directions (&result, structure->menu_directions);
        }
      if (structure->node_directions)
        {
          text_append_n (&result, " node_directions:\n", 18);
          print_directions (&result, structure->node_directions);
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
      const HEADING_STRUCTURE *structure
        = document->headings_list.list[i];
      const ELEMENT *element = structure->element;
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

      SECTION_STRUCT_PRINT_KEY(associated_anchor_command)
    }

  return result.text;
}

#undef SECTION_STRUCT_PRINT_KEY_OR_NULL
#undef SECTION_STRUCT_PRINT_KEY
