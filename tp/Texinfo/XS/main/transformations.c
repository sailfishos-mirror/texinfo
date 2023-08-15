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

/* In sync with Texinfo::Transformations */

#include <config.h>

#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

#include "tree_types.h"
#include "tree.h"
#include "element_types.h"
#include "command_ids.h"
#include "builtin_commands.h"
#include "extra.h"
#include "text.h"
#include "debug.h"
#include "transformations.h"

#include "structuring_tables.c"

#define min_level command_structuring_level[CM_chapter]
#define max_level command_structuring_level[CM_subsubsection]

/* in Common.pm */
int
section_level (ELEMENT *section)
{
  int level = command_structuring_level[section->cmd];
  KEY_PAIR *k = lookup_extra (section, "sections_level");
  if (k && k->value)
    {
      int section_modifier = (intptr_t) k->value;
      level -= section_modifier;
      if (level < min_level)
        if (command_structuring_level[section->cmd] < min_level)
          level = command_structuring_level[section->cmd];
        else
          level = min_level;
      else if (level > max_level)
        level = max_level;
    }
  return level;
}

/* Add raise/lowersections to be back at the normal level from
   the SECTION level.  The raise/lowersections are added at the
   end of PARENT.
   If MODIFIER is set to -1, add raise/lowersections to go from
   the normal level to the SECTION level.
 */
void
correct_level (ELEMENT *section, ELEMENT *parent, int modifier)
{
  KEY_PAIR *k = lookup_extra (section, "sections_level");
  if (k && k->value)
    {
      int level_to_remove;
      int section_modifier = (intptr_t) k->value;
      enum command_id cmd;
      int remaining_level;

      level_to_remove = section_modifier * modifier;
      if (level_to_remove < 0)
        cmd = CM_raisesections;
      else
        cmd = CM_lowersections;

      remaining_level = abs(level_to_remove);
      while (remaining_level > 0)
        {
          ELEMENT *element = new_element (ET_NONE);
          ELEMENT *rawline_arg = new_element (ET_rawline_arg);

          element->cmd = cmd;
          add_to_element_contents (parent, element);
          text_append (&rawline_arg->text, "\n");
          add_to_element_args (element, rawline_arg);
          remaining_level--;
        }
    }
}

ELEMENT *
fill_gaps_in_sectioning (ELEMENT *root)
{
  ELEMENT *added_sections = new_element (ET_NONE);
  int idx_current_section = -1;
  int idx_next_section = -1;
  size_t idx = 0;

  while (idx < root->contents.number)
    {
      ELEMENT *content = root->contents.list[idx];
      if (!content->cmd || content->cmd == CM_node
          || !(CF_root & builtin_command_flags(content)))
        {
        }
      else if (idx_current_section < 0)
        idx_current_section = idx;
      else if (idx_next_section < 0)
        {
          idx_next_section = idx;
          break;
        }
      idx++;
    }

  if (idx_current_section < 0)
    return 0;

  if (idx_next_section < 0)
    return added_sections;

  while (1)
    {
      ELEMENT *current_section = root->contents.list[idx_current_section];
      ELEMENT *next_section = root->contents.list[idx_next_section];
      int current_section_level = section_level (current_section);
      int next_section_level = section_level (next_section);

      if (next_section_level - current_section_level > 1)
        {
          ELEMENT *new_sections = new_element (ET_NONE);
          correct_level (next_section, current_section, 1);
          while (next_section_level - current_section_level > 1)
            {
              ELEMENT *new_section = new_element (ET_NONE);
              ELEMENT *spaces_before_argument = new_element (ET_NONE);
              ELEMENT *line_arg = new_element (ET_line_arg);
              ELEMENT *spaces_after_argument = new_element (ET_NONE);
              ELEMENT *asis_command = new_element (ET_NONE);
              ELEMENT *brace_command_arg = new_element (ET_brace_command_arg);
              ELEMENT *empty_line = new_element (ET_empty_line);

              current_section_level++;
              new_section->cmd
        = level_to_structuring_command[CM_unnumbered][current_section_level];
              new_section->parent = root;

              text_append (&spaces_before_argument->text, " ");
              add_info_element_oot (new_section, "spaces_before_argument",
                                    spaces_before_argument); 
              text_append (&spaces_after_argument->text, "\n");

              add_info_element_oot (line_arg, "spaces_after_argument",
                                    spaces_after_argument);
              add_to_element_args (new_section, line_arg);

              asis_command->cmd = CM_asis;
              add_to_element_contents (line_arg, asis_command);
              add_to_element_args (asis_command, brace_command_arg);

              text_append (&empty_line->text, "\n");
              add_to_element_contents (new_section, empty_line);
              
              add_to_contents_as_array (new_sections, new_section);
            }
          insert_slice_into_contents (root, idx_current_section+1,
                                      new_sections, 0,
                                      new_sections->contents.number);
          idx_next_section += new_sections->contents.number;
          insert_slice_into_contents (added_sections,
                                      added_sections->contents.number,
                                      new_sections, 0,
                                      new_sections->contents.number);
          correct_level (next_section, last_contents_child (new_sections),
                         -1);
          destroy_element (new_sections);
        }
      idx_current_section = idx_next_section;

      /* find the new next section index */
      idx_next_section = idx_current_section +1;
      while (idx_next_section < root->contents.number)
        {
          ELEMENT *content = root->contents.list[idx_next_section];
          if (content->cmd && content->cmd != CM_node
              && (CF_root & builtin_command_flags(content)))
            break;
          idx_next_section++;
        }
      if (idx_next_section >= root->contents.number)
        break;
    }
  return added_sections;
}

