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

/* In sync with Texinfo::Structuring */

#include <config.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "tree_types.h"
#include "tree.h"
#include "element_types.h"
#include "extra.h"
#include "errors.h"
#include "debug.h"
#include "node_name_normalization.h"
#include "convert_to_texinfo.h"
#include "targets.h"
#include "builtin_commands.h"
/* for get_label_element and section_level */
#include "utils.h"
#include "structuring.h"

void
associate_internal_references (LABEL_LIST *identifiers_target,
                               ELEMENT_LIST *refs)
{
  int i;

  if (!refs || !refs->number)
    return;

  for (i = 0; i < refs->number; i++)
    {
      ELEMENT *ref = refs->list[i];
      ELEMENT *label_element;
      ELEMENT *label_node_content;

      if (ref->type == ET_menu_entry_node)
        label_element = ref;
      else
        label_element = ref->args.list[0];

      label_node_content
          = lookup_extra_element (label_element, "node_content");
      if (label_node_content)
        {
          char *normalized
            = convert_contents_to_identifier (label_node_content);
          if (normalized)
            {
              if (strlen (normalized))
                {
                  add_extra_string (label_element, "normalized",
                                    normalized);
                }
              else
                free (normalized);
            }
        }

      if (ref->type == ET_menu_entry_node)
        /* similar messages are output in check_menu_entry */
        continue;
      else
        {
          ELEMENT *node_target = 0;
          KEY_PAIR *k_normalized = lookup_extra (label_element, "normalized");
          if (k_normalized && k_normalized->value)
            {
              char *normalized = (char *)k_normalized->value;
              node_target
                = find_identifier_target(identifiers_target,
                                         normalized);
            }

          if (!node_target)
            {
              /*
        if (!$customization_information->get_conf('novalidate')) {
               */
               /* FIXME registrar */
              command_error (ref, "@%s reference to nonexistent node `%s'",
                             builtin_command_name (ref->cmd),
                             link_element_to_texi (label_element));
            }
          else
            {
              label_node_content = lookup_extra_element (label_element,
                                                         "node_content");
          /*
        if (!$customization_information->get_conf('novalidate')
          */
               /* FIXME registrar */
              if (!check_node_same_texinfo_code (node_target,
                                                 label_node_content))
                {
                  command_warn (ref,
                                "@%s to `%s', different from %s name `%s'",
                                builtin_command_name (ref->cmd),
                                link_element_to_texi (label_element),
                                builtin_command_name (node_target->cmd),
                                target_element_to_texi_label (node_target));
                }
            }
        }
    }
}

ELEMENT *
sectioning_structure (ELEMENT *root)
{
  ELEMENT *sec_root;
  ELEMENT *previous_section = 0;
  ELEMENT *previous_toplevel = 0;
  int in_appendix = 0;
  /* lowest level with a number.  This is the lowest level above 0. */
  int number_top_level;
  ELEMENT *sections_list = new_element (ET_NONE);;
  ELEMENT *section_top = 0;
  int i;

  /* holds the current number for all the levels.  It is not possible to use
     something like the last child index, because of @unnumbered. */
  int command_numbers[5] = {-1, -1, -1, -1, -1};
  /* keep track of the unnumbered */
  int command_unnumbered[5] = {-1, -1, -1, -1, -1};

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      ELEMENT *section_directions = new_element (ET_NONE);
      int level;

      if (!content->cmd || content->cmd == CM_node
          || content->cmd == CM_bye)
        continue;

      add_to_contents_as_array (sections_list, content);

      if (content->cmd == CM_top && !section_top)
        section_top = content;

      level = section_level (content);
      if (level < 0)
        {
          char *str_element = print_element_debug (content, 0);
          fprintf (stderr,"BUG: level < 0 for %s\n", str_element);
          free (str_element);
          level = 0;
        }
      add_extra_directions (content, "section_directions",
                            section_directions);

      if (previous_section)
        {
          int status;
          int prev_section_level
             = lookup_extra_integer (previous_section, "section_level",
                                     &status);
          if (prev_section_level < level)
          /* new command is below */
            {
              ELEMENT *section_childs = new_element (ET_NONE);
              if (level - prev_section_level > 1)
                {
                  command_error (content,
                        "raising the section level of @%s which is too low",
                                 builtin_command_name (content->cmd));
                  level = prev_section_level + 1;
                }
              add_to_contents_as_array (section_childs, content);
              add_extra_contents (previous_section, "section_childs",
                                   section_childs);
              section_directions->contents.list[D_up] = previous_section;
               /*
                if the up is unnumbered, the number information has to be kept,
                to avoid reusing an already used number.
                */
              if (!(command_other_flags (previous_section) & CF_unnumbered))
                command_numbers[level] = -1;
              else if (!(command_other_flags (content) & CF_unnumbered))
                command_numbers[level]++;
              if (command_other_flags (previous_section) & CF_unnumbered)
                command_unnumbered[level] = 1;
              else
                command_unnumbered[level] = 0;
            }
          else
            {
              int new_upper_part_element = 0;
              ELEMENT *up;
              ELEMENT *prev_section_directions
                = lookup_extra_element (previous_section, "section_directions");
              up = prev_section_directions->contents.list[D_up];
              if (prev_section_level != level)
                {
                  int up_level;
                  /*
                  means it is above the previous command, the up is to be found
                   */
                  while (1)
                    {
                      ELEMENT *up_section_directions
                        = lookup_extra_element (up, "section_directions");
                      up_level = lookup_extra_integer (up, "section_level",
                                                       &status);
                      if (up_section_directions
                          && up_section_directions->contents.list[D_up]
                          && up_level >= level)
                        up = up_section_directions->contents.list[D_up];
                      else
                        break;
                    }
                  if (level <= up_level)
                    {
                      if (builtin_command_name (content->cmd == CM_part))
                         {
                           new_upper_part_element = 1;
                           if (level < up_level)
                              {
                                /*
                                  in this case, up is necessarily the sec_root
                                 */
                                command_warn (content,
                                  "no chapter-level command before @%s",
                                       builtin_command_name (content->cmd));
                              }
                            else
                              {
                                command_warn (content,
          "lowering the section level of @%s appearing after a lower element",
                                       builtin_command_name (content->cmd));
                                level = up_level +1;
                              }
                         }
                    }
                }
              if ((command_other_flags (content) & CF_appendix)
                  && !in_appendix && level <= number_top_level
                  && up->cmd == CM_part)
                {
                  ELEMENT *up_section_directions
                    = lookup_extra_element (up, "section_directions");
                  up = up_section_directions->contents.list[D_up];
                }
              if (new_upper_part_element)
                {
                  ELEMENT *sec_root_childs
                    = lookup_extra_element (sec_root, "section_childs");
                  /*
                  In that case the root has to be updated because the first
                  'part' just appeared
                   */
                  add_extra_integer (sec_root, "section_level", level -1);
                  add_to_contents_as_array (sec_root_childs, content);
                  section_directions->contents.list[D_up] = sec_root;
                  number_top_level = level;
                  if (number_top_level == 0)
                    number_top_level = 1;
                }
              else
                {
                  ELEMENT *up_section_childs
                    = lookup_extra_element (up, "section_childs");
                  ELEMENT *prev = last_contents_child (up_section_childs);
                  ELEMENT *prev_section_directions
                    = lookup_extra_element (prev, "section_directions");
                  section_directions->contents.list[D_up] = up;
                  section_directions->contents.list[D_prev] = prev;
                  prev_section_directions->contents.list[D_next] = content;
                  add_to_contents_as_array (up_section_childs, content);
                }
            }
        }
      else
        {
          ELEMENT *sec_root_childs = new_element (ET_NONE);
          sec_root = new_element (ET_NONE);
           /* first section determines the level of the root.  It is
              typically -1 when there is a @top. */
          add_extra_integer (sec_root, "section_level", level -1);
          add_to_contents_as_array (sec_root_childs, content);
          add_extra_contents (sec_root, "section_childs", sec_root_childs);
          section_directions->contents.list[D_up] = sec_root;
           /*
            put sec_root more directly in the tree as an out of tree element
            in extra, not only as direction. Especially of use for XS. */
          add_extra_element_oot (content, "sectioning_root", sec_root);
          number_top_level = level;
           /*
             if level of top sectioning element is 0, which means that
             it is a @top, number_top_level is 1 as it is associated to
             the level of chapter/unnumbered...
            */
           if (number_top_level == 0)
             number_top_level = 1;
           if (content->cmd != CM_top)
             {
               if (!(command_other_flags (content) & CF_unnumbered))
                 command_unnumbered[level] = 0;
               else
                 command_unnumbered[level] = 1;
             }
        }
      add_extra_integer (content, "section_level", level);

      if (command_numbers[level] < 0)
        {
          if (command_other_flags (content) & CF_unnumbered)
            command_numbers[level] = 0;
          else
            command_numbers[level] = 1;
        }
      if ((command_other_flags (content) & CF_appendix)
          && !in_appendix)
        {
          in_appendix = 1;
          command_numbers[level] = 'A';
        }
      if (!(command_other_flags (content) & CF_unnumbered))
        {
          /* construct the number, if not below an unnumbered */
          if (!command_unnumbered[number_top_level])
            {
              int i;
              TEXT section_number;
              text_init (&section_number);
              text_printf (&section_number, "%d",
                           command_numbers[number_top_level]);
              for (i = number_top_level+1; i <= level; i++)
                {
                  text_printf (&section_number, ".%d",
                               command_numbers[i]);
                  if (command_unnumbered[i])
                    {
                      text_reset (&section_number);
                      break;
                    }
                }
              if (section_number.end > 0)
                add_extra_string_dup (content, "section_number",
                                      section_number.text);
              free (section_number.text);
            }
        }
      previous_section = content;
      if (content->cmd != CM_part && level <= number_top_level)
        {
          if (previous_toplevel || (section_top && section_top != content))
            {
              ELEMENT *toplevel_directions = new_element (ET_NONE);
              add_extra_directions (content, "toplevel_directions",
                                    toplevel_directions);

              if (previous_toplevel)
                {
                  ELEMENT *prev_toplvl_directions
                   = lookup_extra_directions (previous_toplevel,
                                              "toplevel_directions", 1);
                  prev_toplvl_directions->contents.list[D_next] = content;
                  toplevel_directions->contents.list[D_prev] = previous_toplevel;
                }
              if (section_top && section_top != content)
                {
                  toplevel_directions->contents.list[D_up] = section_top;
                }
              previous_toplevel = content;
            }
        }
      else if (content->cmd == CM_part)
        {
          ELEMENT *part_associated_section
            = lookup_extra_element (content, "part_associated_section");
          if (!part_associated_section)
            {
              command_warn (content,
                   "no sectioning command associated with @%s",
                            builtin_command_name (content->cmd));
            }
        }
    }

  if (sections_list->contents.number == 0)
    {
      destroy_element (sections_list);
      return 0;
    }
  return sections_list;
}
