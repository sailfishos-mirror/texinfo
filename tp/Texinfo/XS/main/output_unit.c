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
#include <string.h>
#include <stdio.h>

#include "tree_types.h"
/* for fatal */
#include "utils.h"
#include "tree.h"
#include "extra.h"
/* for xasprintf */
#include "errors.h"
#include "debug.h"
#include "builtin_commands.h"
#include "convert_to_texinfo.h"
#include "output_unit.h"

static OUTPUT_UNIT_LIST *output_units_list;
static size_t output_units_number;
static size_t output_units_space;

OUTPUT_UNIT_LIST *
retrieve_output_units (int output_units_descriptor)
{
  /* the list can still be uninitialized and .list be 0 */
  if (output_units_descriptor > 0
      && output_units_descriptor <= output_units_number)
    return &output_units_list[output_units_descriptor -1];
  return 0;
}

/* descriptor starts at 1, 0 is an error */
size_t
new_output_units_descriptor (void)
{
  size_t output_units_index;
  int slot_found = 0;
  int i;

  for (i = 0; i < output_units_number; i++)
    {
      if (output_units_list[i].list == 0)
        {
          slot_found = 1;
          output_units_index = i;
        }
    }
  if (!slot_found)
    {
      if (output_units_number == output_units_space)
        {
          output_units_list = realloc (output_units_list,
                      (output_units_space += 5) * sizeof (OUTPUT_UNIT_LIST));
          if (!output_units_list)
            fatal ("realloc failed");
        }
      output_units_index = output_units_number;
      output_units_number++;
    }

  memset (&output_units_list[output_units_index], 0, sizeof (OUTPUT_UNIT_LIST));

  return output_units_index +1;
}

OUTPUT_UNIT *
new_output_unit (enum output_unit_type unit_type)
{
  OUTPUT_UNIT *output_unit = (OUTPUT_UNIT *) malloc (sizeof (OUTPUT_UNIT));
  memset (output_unit, 0, sizeof (OUTPUT_UNIT));
  output_unit->unit_type = unit_type;
  return output_unit;
}

void
add_to_output_unit_list (OUTPUT_UNIT_LIST *list, OUTPUT_UNIT *output_unit)
{
  if (list->number + 1 >= list->space)
    {
      list->space += 10;
      list->list = realloc (list->list, list->space * sizeof (OUTPUT_UNIT *));
      if (!list->list)
        fatal ("realloc failed");
    }
  list->list[list->number] = output_unit;
  list->number++;
}

/* in addition to splitting, register the output_units list */
int
split_by_node (ELEMENT *root)
{
  int output_units_descriptor = new_output_units_descriptor ();
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  OUTPUT_UNIT *current = new_output_unit (OU_unit);
  ELEMENT *pending_parts = new_element (ET_NONE);
  int i;

  add_to_output_unit_list (output_units, current);

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      if (content->cmd == CM_part)
        {
          add_to_contents_as_array (pending_parts, content);
          continue;
        }
      if (content->cmd == CM_node)
        {
          if (!current->unit_command)
            current->unit_command = content;
          else
            {
              OUTPUT_UNIT *last = output_units->list[output_units->number -1];
              current = new_output_unit (OU_unit);
              current->unit_command = content;
              current->tree_unit_directions[D_prev] = last;
              last->tree_unit_directions[D_next] = current;
              add_to_output_unit_list (output_units, current);
            }
        }
      if (pending_parts->contents.number > 0)
        {
          int j;
          for (j = 0; j < pending_parts->contents.number; j++)
            {
              ELEMENT *part = pending_parts->contents.list[j];
              add_to_element_list (&current->unit_contents, part);
              part->associated_unit = current;
            }
          pending_parts->contents.number = 0;
        }
      add_to_element_list (&current->unit_contents, content);
      content->associated_unit = current;
    }

  if (pending_parts->contents.number > 0)
    {
      int j;
      for (j = 0; j < pending_parts->contents.number; j++)
        {
          ELEMENT *part = pending_parts->contents.list[j];
          add_to_element_list (&current->unit_contents, part);
          part->associated_unit = current;
        }
      pending_parts->contents.number = 0;
    }

  destroy_element (pending_parts);

  return output_units_descriptor;
}

/* in addition to splitting, register the output_units list */
int
split_by_section (ELEMENT *root)
{
  int output_units_descriptor = new_output_units_descriptor ();
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  OUTPUT_UNIT *current = new_output_unit (OU_unit);
  int i;

  add_to_output_unit_list (output_units, current);

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      ELEMENT *new_section = 0;
      if (content->cmd == CM_node)
        {
          ELEMENT *associated_section
            = lookup_extra_element (content, "associated_section");
          if (associated_section)
            new_section = associated_section;
        }
      else if (content->cmd == CM_part)
        {
          ELEMENT *part_associated_section
            = lookup_extra_element (content, "part_associated_section");
          if (part_associated_section)
            new_section = part_associated_section;
        }
      if (!new_section && content->cmd != CM_node
          && (CF_root & builtin_command_flags(content)))
        {
          new_section = content;
        }
      if (new_section)
        {
          if (!current->unit_command)
            {
              current->unit_command = new_section;
            }
          else if (new_section != current->unit_command)
            {
              OUTPUT_UNIT *last = output_units->list[output_units->number -1];
              current = new_output_unit (OU_unit);
              current->unit_command = new_section;
              current->tree_unit_directions[D_prev] = last;
              last->tree_unit_directions[D_next] = current;
              add_to_output_unit_list (output_units, current);
            }
        }

      add_to_element_list (&current->unit_contents, content);
      content->associated_unit = current;
    }
  return output_units_descriptor;
}

int
unsplit (ELEMENT *root)
{
  int unsplit_needed = 0;
  int i;

  if (root->type != ET_document_root || root->contents.number <= 0)
    return 0;

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      if (content->associated_unit)
        {
          content->associated_unit = 0;
          unsplit_needed = 1;
        }
    }
  return unsplit_needed;
}


static ELEMENT *
output_unit_section (OUTPUT_UNIT *output_unit)
{
  ELEMENT *element;

  if (!output_unit->unit_command)
    return 0;

  element = output_unit->unit_command;
  if (element->cmd == CM_node)
    {
      ELEMENT *associated_section
         = lookup_extra_element (element, "associated_section");
      if (associated_section)
        return associated_section;
      else
        return 0;
    }
  else
    return element;
}

typedef struct LEVEL_SPLIT_STRING {
    int level;
    char *split;
} LEVEL_SPLIT_STRING;

static LEVEL_SPLIT_STRING split_level_table[3] = {
 {-1, "node"},
 {1, "chapter"},
 {2, "section"}
};

/*
 Associate top-level units with pages according to the splitting
 specification.  Set 'first_in_page' on each unit to the unit
 that is the first in the output page.
 */
void
split_pages (OUTPUT_UNIT_LIST *output_units, char *split)
{
  int split_level = -2;
  int i;
  OUTPUT_UNIT *current_first_in_page = 0;

  if (!output_units || !output_units->number)
    return;

  if (!split || !strlen (split))
    {
      for (i = 0; i < output_units->number; i++)
        {
          OUTPUT_UNIT *output_unit = output_units->list[i];
          output_unit->first_in_page = output_units->list[0];
        }
      return;
    }

  for (i = 0; i < 3; i++)
    {
      if (!strcmp (split, split_level_table[i].split))
        {
          split_level = split_level_table[i].level;
          break;
        }
    }
  if (split_level == -2)
    {
      fprintf (stderr, "Unknown split specification: %s\n", split);
      split_level = -1; /* split by node */
    }

  for (i = 0; i < output_units->number; i++)
    {
      OUTPUT_UNIT *output_unit = output_units->list[i];
      ELEMENT *section = output_unit_section (output_unit);
      int level = -3;
      if (section)
        {
          int status;
          level = lookup_extra_integer (section, "section_level", &status);
          if (status < 0)
            level = -3;
        }
      if ((split_level == -1) || (level != -3 && split_level >= level)
          || !current_first_in_page)
        current_first_in_page = output_unit;

      output_unit->first_in_page = current_first_in_page;
    }
}

/* return to be freed by the caller */
char *
unit_or_external_element_texi (OUTPUT_UNIT *element)
{
  ELEMENT *command_element;

  if (!element)
    return strdup("UNDEF ELEMENT");

  command_element = element->unit_command;

  if (element->unit_type == OU_external_node_unit)
    return convert_contents_to_texinfo (command_element);

  if (!command_element)
    {
    /* happens when there are only nodes and sections are used as elements */
      char *result;
      xasprintf (&result, "No associated command (type %s)",
                 output_unit_type_names[element->unit_type]);
      return result;
    }

  return root_heading_command_to_texinfo(command_element);
}

