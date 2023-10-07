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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "builtin_commands.h"
#include "utils.h"
#include "extra.h"
#include "targets.h"
#include "debug.h"
#include "structuring.h"
#include "output_unit.h"
#include "convert_html.h"


typedef struct ROOT_AND_UNIT {
  OUTPUT_UNIT *output_unit;
  ELEMENT *root;
} ROOT_AND_UNIT;

/*
  If FIND_CONTAINER is set, the element that holds the command output
  is found, otherwise the element that holds the command is found.  This is
  mostly relevant for footnote only.
  If no known root element type is found, the returned root element is undef,
  and not set to the element at the tree root
 */
static ROOT_AND_UNIT *
html_get_tree_root_element (CONVERTER *self, ELEMENT *command,
                            int find_container)
{
  ELEMENT *current = command;
  OUTPUT_UNIT *output_unit = 0;
  ELEMENT *root_command = 0;

  while (1)
    {
      if (current->type == ET_special_unit_element)
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = current->associated_unit;
          result->root = current;
          return result;
        }

      if (current->cmd && (builtin_command_flags(current) & CF_root))
        root_command = current;
      else if (current->cmd && (builtin_command_flags(current) & CF_block)
               && builtin_command_data[current->cmd].data == BLOCK_region)
        {
          OUTPUT_UNIT_LIST *output_units
             = retrieve_output_units (self->document_units_descriptor);
          if (current->cmd == CM_copying
              && self->document->global_commands
                      ->insertcopying.contents.number > 0)
            {
              ELEMENT global_insertcopying
                = self->document->global_commands->insertcopying;
              int i;
              for (i = 0; i < global_insertcopying.contents.number; i++)
                {
                  ELEMENT *insertcopying
                      = global_insertcopying.contents.list[i];
                  ROOT_AND_UNIT *cur_result = html_get_tree_root_element(self,
                                                insertcopying, find_container);
                  if (cur_result->output_unit || cur_result->root)
                    return cur_result;
                }
            }
          else if (current->cmd == CM_titlepage
                   && self->conf->USE_TITLEPAGE_FOR_TITLE
                   && self->conf->SHOW_TITLE
                   && output_units->number > 0)
            {
              ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
              result->output_unit = output_units->list[0];
              result->root = output_units->list[0]->unit_command;
              return result;
            }
          if (output_unit || root_command)
            fatal ("Problem output_unit, root_command");
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          memset (result, 0, sizeof (ROOT_AND_UNIT));
          return result;
        }
      else if (find_container)
        {
     /* @footnote and possibly @*contents when a separate element is set */
             /* TODO
                  my ($special_unit_variety, $special_unit, $class_base,
            $special_unit_direction)
         = $self->command_name_special_unit_information($current->{'cmdname'});
        if ($special_unit) {
          return ($special_unit, undef);
             */

        }

      if (current->associated_unit)
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = current->associated_unit;
          result->root = current;
          return result;
        }
      else if (current->parent)
        {
          current = current->parent;
        }
      else
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = 0;
          result->root = root_command;
          return result;
        }
    }
}

/* Associate output units to the global targets, First, Last, Top, Index. */
static void
prepare_output_units_global_targets (CONVERTER *self,
                                     int output_units_descriptor)
{
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  ELEMENT *node_top = find_identifier_target
                          (self->document->identifiers_target, "Top");
  ELEMENT *section_top = self->document->global_commands->top;

  self->global_target_directions[GD_First] = output_units->list[0];
  self->global_target_directions[GD_Last]
    = output_units->list[output_units->number - 1];

  if (section_top)
    self->global_target_directions[GD_Top] = section_top->associated_unit;
  else if (node_top)
    self->global_target_directions[GD_Top] = node_top->associated_unit;
  else
    self->global_target_directions[GD_Top] = output_units->list[0];

  /* It is always the first printindex, even if it is not output (for example
     it is in @copying and @titlepage, which are certainly wrong constructs).
   */
  if (self->document->global_commands->printindex.contents.number > 0)
    {
      ELEMENT *printindex
        = self->document->global_commands->printindex.contents.list[0];
      ROOT_AND_UNIT *root_unit
        = html_get_tree_root_element(self, printindex, 0);
      if (root_unit->output_unit)
        {
          OUTPUT_UNIT *document_unit = root_unit->output_unit;
          ELEMENT *root_command = root_unit->root;
          if (root_command && root_command->cmd == CM_node)
            {
              ELEMENT *associated_section
                = lookup_extra_element (root_command, "associated_section");
              if (associated_section)
                root_command = associated_section;
            }
       /* find the first level 1 sectioning element to associate the printindex
           with */
          if (root_command && root_command->cmd != CM_node)
            {
              while (1)
                {
                  int status;
                  int section_level
                    = lookup_extra_integer (root_command, "section_level",
                                                               &status);
                  if (!status && section_level <= 1)
                    break;

                  ELEMENT *up_section_directions
                    = lookup_extra_element (root_command, "section_directions");
                  if (up_section_directions
                      && up_section_directions->contents.list[D_up]
                      && up_section_directions->contents.list[D_up]
                                     ->associated_unit)
                    {
                      root_command = up_section_directions->contents.list[D_up];
                      document_unit = root_command->associated_unit;
                    }
                  else
                    break;
                }
              self->global_target_directions[GD_Index] = document_unit;
            }
        }
      free (root_unit);
    }

  if (self->conf->DEBUG >= 0 && self->conf->DEBUG)
    {
      int i;
      fprintf (stderr, "GLOBAL DIRECTIONS:\n");
      for (i = 0; i < GD_Last+1; i++)
        {
          if (self->global_target_directions[i])
            {
              OUTPUT_UNIT *global_unit = self->global_target_directions[i];
              char *unit_texi = unit_or_external_element_texi (global_unit);
              fprintf (stderr, "%s: %s\n", output_unit_type_names[i],
                                           unit_texi);
              free (unit_texi);
            }
        }
    }
}

void
html_prepare_conversion_units (CONVERTER *self, const char *document_name,
                               int *output_units_descriptor_ref,
                               int *special_units_descriptor_ref,
                               int *associated_special_units_descriptor_ref)
{
  int output_units_descriptor;
  int special_units_descriptor = 0;
  int associated_special_units_descriptor = 0;

  if (self->conf->USE_NODES)
    output_units_descriptor = split_by_node (self->document->tree);
  else
    output_units_descriptor = split_by_section (self->document->tree);

  /* Needs to be set early in case it would be needed to find some region
     command associated root command. */
  self->document_units_descriptor = output_units_descriptor;

  /* This may be done as soon as output units are available. */
  prepare_output_units_global_targets (self, output_units_descriptor);

  *output_units_descriptor_ref = output_units_descriptor;
  *special_units_descriptor_ref = special_units_descriptor;
  *associated_special_units_descriptor_ref
     = associated_special_units_descriptor;
}
