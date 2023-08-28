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
#include "document.h"
#include "transformations.h"
/* FIXME in parsetexi/. Move to main/?  Some ties to parser */
#include "labels.h"
#include "translations.h"
#include "structuring.h"

void
new_block_command (ELEMENT *element, enum command_id cmd)
{
  ELEMENT *args = new_element (ET_block_line_arg);
  ELEMENT *arg_spaces_after = new_element (ET_NONE);
  ELEMENT *end = new_element (ET_NONE);
  ELEMENT *end_args = new_element (ET_line_arg);
  ELEMENT *end_spaces_before = new_element (ET_NONE);
  ELEMENT *end_spaces_after = new_element (ET_NONE);
  ELEMENT *command_name_text = new_element (ET_NONE);
  char *command_name = builtin_command_name(cmd);

  element->cmd = cmd;

  text_append (&arg_spaces_after->text, "\n");
  add_info_element_oot (args, "spaces_after_argument", arg_spaces_after);
  add_to_element_args (element, args);

  end->cmd = CM_end;
  add_extra_string_dup (end, "text_arg", command_name);
  text_append (&end_spaces_before->text, " ");
  add_info_element_oot (end, "spaces_before_argument", end_spaces_before);

  text_append (&end_spaces_after->text, "\n");
  add_info_element_oot (end_args, "spaces_after_argument", end_spaces_after);
  add_to_element_args (end, end_args);

  text_append (&command_name_text->text, command_name);
  add_to_element_contents (end_args, command_name_text);

  add_to_element_contents (element, end);
}

ELEMENT *
sectioning_structure (ELEMENT *root)
{
  ELEMENT *sec_root = 0;
  ELEMENT *previous_section = 0;
  ELEMENT *previous_toplevel = 0;
  int in_appendix = 0;
  /* lowest level with a number.  This is the lowest level above 0. */
  int number_top_level = 0;
  ELEMENT *sections_list = new_element (ET_NONE);;
  ELEMENT *section_top = 0;
  int i;

  /* holds the current number for all the levels.  It is not possible to use
     something like the last child index, because of @unnumbered. */
  int command_numbers[5] = {-1, -1, -1, -1, -1};
  /* keep track of the unnumbered */
  int command_unnumbered[5] = {0, 0, 0, 0, 0};

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
              add_extra_directions (content, "section_directions",
                                    section_directions);
              section_directions->contents.list[D_up] = previous_section;
               /*
                if the up is unnumbered, the number information has to be kept,
                to avoid reusing an already used number.
                */
              if (!(command_other_flags (previous_section) & CF_unnumbered))
                command_numbers[level] = -1;
              else if (!(command_other_flags (content) & CF_unnumbered))
                {
                  if (command_numbers[level] < 0)
                    command_numbers[level] = 0;
                  command_numbers[level]++;
                }
              if (command_other_flags (content) & CF_unnumbered)
                command_unnumbered[level] = 1;
              else
                command_unnumbered[level] = 0;
            }
          else
            {
              int new_upper_part_element = 0;
              /* try to find the up in the sectioning hierarchy */
              ELEMENT *up = previous_section;
              int up_level;
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
              /* no up found.  The element is below the sectioning root */
              if (level <= up_level)
                {
                  up = sec_root;
                  int sec_root_level
                    = lookup_extra_integer (sec_root, "section_level",
                                                               &status);
                  if (level <= sec_root_level)
                 /* in that case, the level of the element is not in line
                    with being below the sectioning root, something need to
                    be done */
                    {
                      if (builtin_command_name (content->cmd == CM_part))
                        {
         /* the first part just appeared, and there was no @top first in
            document.  Mark that the sectioning root level needs to be updated
          */
                          new_upper_part_element = 1;
                          if (level < sec_root_level)
                /* level is 0 for part and section level -1 for sec root. The
                   condition means section level > 1, ie below chapter-level.
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
                          level = sec_root_level +1;
                        }
                    }
                }
              if ((command_other_flags (content) & CF_appendix)
                  && !in_appendix && level <= number_top_level
                  && up->cmd == CM_part)
                {
                  up = sec_root;
                }
              if (new_upper_part_element)
                {
                  /*
                  In that case the root level has to be updated because the
                  first 'part' just appeared, no direction to set.
                   */
                  ELEMENT *sec_root_childs
                    = lookup_extra_element (sec_root, "section_childs");
                  add_extra_integer (sec_root, "section_level", level -1);
                  add_to_contents_as_array (sec_root_childs, content);
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
                    = lookup_extra_directions (prev, "section_directions", 1);
                  add_extra_directions (content, "section_directions",
                                        section_directions);
              /* do not set sec_root as up, but always put in section_childs */
                  if (up != sec_root)
                    section_directions->contents.list[D_up] = up;
                  section_directions->contents.list[D_prev] = prev;

                  prev_section_directions->contents.list[D_next] = content;
                  add_to_contents_as_array (up_section_childs, content);
                }
              if (!(command_other_flags (content) & CF_unnumbered))
                {
                  if (command_numbers[level] < 0)
                    command_numbers[level] = 0;
                  command_numbers[level]++;
                  command_unnumbered[level] = 0;
                }
              else
                command_unnumbered[level] = 1;
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
           /*
            in the tree as an out of tree element in extra */
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
          command_numbers[level] = 1;
        }
      if (!(command_other_flags (content) & CF_unnumbered))
        {
          /* construct the number, if not below an unnumbered */
          if (!command_unnumbered[number_top_level])
            {
              int i;
              TEXT section_number;
              text_init (&section_number);
              if (!in_appendix)
                text_printf (&section_number, "%d",
                             command_numbers[number_top_level]);
              else
                {
                  /* FIXME do better than that, see in perl
                     enumerate_item_representation */
                  char appendix_nr = 'A' -1 +command_numbers[number_top_level];
                  text_append_n (&section_number, &appendix_nr, 1);
                }
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
              if (section_top && content != section_top)
                {
                  toplevel_directions->contents.list[D_up] = section_top;
                }
            }
          previous_toplevel = content;
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

void
warn_non_empty_parts (DOCUMENT *document)
{
  GLOBAL_INFO *global_info = document->global_info;
  int i;

  for (i = 0; i < global_info->part.contents.number; i++)
    {
      ELEMENT *part = global_info->part.contents.list[i];
      if (!is_content_empty (part, 0))
        command_warn (part, "@%s not empty",
                      builtin_command_name (part->cmd));
    }
}

void
check_menu_entry (LABEL_LIST *identifiers_target, enum command_id cmd,
                  ELEMENT *menu_content, ELEMENT *menu_entry_node)
{
  char *normalized_menu_node = lookup_extra_string (menu_entry_node,
                                                    "normalized");
  if (normalized_menu_node)
    {
      ELEMENT *menu_node = find_identifier_target (identifiers_target,
                                                   normalized_menu_node);
      if (!menu_node)
        command_error (menu_content, "@%s reference to nonexistent node `%s'",
                       builtin_command_name (cmd),
                       link_element_to_texi (menu_entry_node));

      else
        {
          ELEMENT *node_content = lookup_extra_element (menu_entry_node,
                                                        "node_content");
          if (!check_node_same_texinfo_code (menu_node, node_content))
            command_warn (menu_content,
                  "@%s entry node name `%s' different from %s name `%s'",
                  builtin_command_name (cmd),
                  link_element_to_texi (menu_entry_node),
                  builtin_command_name (menu_node->cmd),
                  target_element_to_texi_label (menu_node));
        }
    }
}

char *
normalized_menu_entry_internal_node (ELEMENT *entry)
{
  int i;
  for (i = 0; i < entry->contents.number; i++)
    {
      ELEMENT *content = entry->contents.list[i];
      if (content->type == ET_menu_entry_node)
        {
          if (!lookup_extra_element (content, "manual_content"))
            {
              return lookup_extra_string (content, "normalized");
            }
          return 0;
        }
    }
  return 0;
}

ELEMENT *
normalized_entry_associated_internal_node (ELEMENT *entry,
                                           LABEL_LIST *identifiers_target)
{
  char *normalized_entry_node = normalized_menu_entry_internal_node (entry);
  if (normalized_entry_node)
    {
      ELEMENT *node = find_identifier_target (identifiers_target,
                                              normalized_entry_node);
      return node;
    }
  return 0;
}

ELEMENT *
get_node_node_childs_from_sectioning (ELEMENT *node)
{
  ELEMENT *node_childs = new_element (ET_NONE);

  ELEMENT *associated_section = lookup_extra_element (node, "associated_section");
  if (associated_section)
    {
      ELEMENT *section_childs = lookup_extra_element (associated_section,
                                                      "section_childs");
      if (section_childs)
        {
          int i;
          for (i = 0; i < section_childs->contents.number; i++)
            {
              ELEMENT *child = section_childs->contents.list[i];
              ELEMENT *associated_node = lookup_extra_element (child,
                                                             "associated_node");
              if (associated_node)
                add_to_contents_as_array (node_childs, associated_node);
            }
        }
       /* Special case for @top.  Gather all the children of the @part following
          @top. */
      if (associated_section->cmd == CM_top)
        {
          ELEMENT *current = associated_section;
          while (1)
            {
              ELEMENT *section_directions = lookup_extra_element (current,
                                                        "section_directions");
              if (section_directions
                  && section_directions->contents.list[D_next])
                {
                  current = section_directions->contents.list[D_next];
                  if (current->cmd == CM_part)
                    {
                      ELEMENT *section_childs = lookup_extra_element (current,
                                                              "section_childs");
                      if (section_childs)
                        {
                          int i;
                          for (i = 0; i < section_childs->contents.number; i++)
                            {
                              ELEMENT *child = section_childs->contents.list[i];
                              ELEMENT *associated_node
                                   = lookup_extra_element (child,
                                                           "associated_node");
                              if (associated_node)
                                add_to_contents_as_array (node_childs,
                                                          associated_node);
                            }
                        }
                    }
                  else
                    {
                      ELEMENT *associated_node = lookup_extra_element (current,
                                                            "associated_node");
                      /*
                    for @appendix, and what follows, as it stops a @part, but is
                    not below @top
                       */
                      if (associated_node)
                        add_to_contents_as_array (node_childs, associated_node);
                    }
                }
              else
                break;
            }
        }
    }
  return node_childs;
}

char **
register_referenced_node (ELEMENT *node, char **referenced_identifiers,
                          size_t *referenced_identifier_space_ptr,
                          size_t *referenced_identifier_number_ptr)
{
  size_t referenced_identifier_space = *referenced_identifier_space_ptr;
  size_t referenced_identifier_number = *referenced_identifier_number_ptr;
  char *normalized;

  if (node->cmd != CM_node)
    return referenced_identifiers;

  normalized = lookup_extra_string (node, "normalized");
  if (normalized)
    {
      if (referenced_identifier_space == referenced_identifier_number)
        {
          referenced_identifier_space *= 2;
          referenced_identifiers
             = realloc (referenced_identifiers,
                        referenced_identifier_space * sizeof (char *));
        }
      referenced_identifiers[referenced_identifier_number] = normalized;
      referenced_identifier_number++;
    }
  *referenced_identifier_space_ptr = referenced_identifier_space;
  *referenced_identifier_number_ptr = referenced_identifier_number;
  return referenced_identifiers;
}

int
compare_strings (const void *a, const void *b)
{
  const char **str_a = (const char **) a;
  const char **str_b = (const char **) b;

  return strcmp (*str_a, *str_b);
}

void
check_nodes_are_referenced (DOCUMENT *document)
{
  ELEMENT *nodes_list = document->nodes_list;
  LABEL_LIST *identifiers_target = document->identifiers_target;
  ELEMENT_LIST *refs = document->internal_references;
  char **referenced_identifiers;
  size_t referenced_identifier_space;
  size_t referenced_identifier_number = 1;
  size_t i;
  size_t nr_nodes_to_find = 0;
  size_t nr_not_found = 0;

  ELEMENT *top_node;

  if (!nodes_list || nodes_list->contents.number <= 0)
    return;

  referenced_identifier_space = nodes_list->contents.number * 2;
  referenced_identifiers
    = malloc (referenced_identifier_space * sizeof (char *));

  top_node = find_identifier_target (identifiers_target,
                                     "Top");
  if (!top_node)
    {
      top_node = nodes_list->contents.list[0];
      char *normalized = lookup_extra_string (top_node, "normalized");
      if (normalized)
        referenced_identifiers[0] = normalized;
      else
        referenced_identifier_number = 0;
    }
  else
    referenced_identifiers[0] = "Top";

  for (i = 0; i < nodes_list->contents.number; i++)
    {
      int status;
      ELEMENT *node = nodes_list->contents.list[i];
      int is_target = lookup_extra_integer (node, "is_target", &status);
      ELEMENT *node_directions = lookup_extra_element (node,
                                                    "node_directions");
      ELEMENT *menus = lookup_extra_element (node, "menus");

      if (is_target)
        nr_nodes_to_find++;

      /* gather referenced nodes based on node pointers */
      if (node_directions)
        {
          int d;
          for (d = 0; d < directions_length; d++)
            {
              if (node_directions->contents.list[d])
                referenced_identifiers =
                 register_referenced_node (node_directions->contents.list[d],
                                           referenced_identifiers,
                                           &referenced_identifier_space,
                                           &referenced_identifier_number);
            }
        }
      if (menus)
        {
          int j;
          for (j = 0; j < menus->contents.number; j++)
            {
              ELEMENT *menu = menus->contents.list[j];
              int k;
              for (k = 0; k < menu->contents.number; k++)
                {
                  ELEMENT *menu_content = menu->contents.list[k];
                  if (menu_content->type == ET_menu_entry)
                    {
                      ELEMENT *menu_node
                        = normalized_entry_associated_internal_node(
                                            menu_content, identifiers_target);
                      if (menu_node)
                        referenced_identifiers =
                         register_referenced_node (menu_node,
                                                   referenced_identifiers,
                                                &referenced_identifier_space,
                                                &referenced_identifier_number);
                    }
                }
            }
        }
      else
        {
      /* If an automatic menu can be setup, consider that all
         the nodes appearing in the automatic menu are referenced.
         Note that the menu may not be actually setup, but
         it is better not to warn for nothing. */
          int automatic_directions = (node->args.number <= 1);
          if (automatic_directions)
            {
              ELEMENT *node_childs
                = get_node_node_childs_from_sectioning (node);
              int j;
              for (j = 0; j < node_childs->contents.number; j++)
                {
                  referenced_identifiers =
                   register_referenced_node (node_childs->contents.list[j],
                                             referenced_identifiers,
                                             &referenced_identifier_space,
                                             &referenced_identifier_number);

                }
            }
        }
    }
  /* consider nodes in internal @*ref commands to be referenced */
  if (refs)
    {
      int i;
      for (i = 0; i < refs->number; i++)
        {
          ELEMENT *ref = refs->list[i];
          if (ref->args.number > 0)
            {
              ELEMENT *label_arg = ref->args.list[0];
              char *ref_normalized = lookup_extra_string (label_arg,
                                                          "normalized");
              if (ref_normalized)
                {
                  ELEMENT *target = find_identifier_target (identifiers_target,
                                                            ref_normalized);
                  if (target)
                    referenced_identifiers =
                     register_referenced_node (target, referenced_identifiers,
                                               &referenced_identifier_space,
                                               &referenced_identifier_number);
                }
            }
        }
    }
   /*
  fprintf (stderr, "DEBUG: referenced_identifiers (%zu): %zu\n",
           referenced_identifier_space, referenced_identifier_number);
  for (i =0; i < referenced_identifier_number; i++)
    fprintf (stderr, " %zu: %s\n", i, referenced_identifiers[i]);
   */

  qsort (referenced_identifiers, referenced_identifier_number,
         sizeof (char *), compare_strings);

   /*
  fprintf (stderr, "DEBUG: sorted referenced: %zu\n",
           referenced_identifier_number);
  for (i =0; i < referenced_identifier_number; i++)
    fprintf (stderr, " %zu: %s\n", i, referenced_identifiers[i]);
   */

  /* remove duplicates */
  if (referenced_identifier_number > 1)
    {
      i = 0;
      while (i < referenced_identifier_number -1)
        {
          size_t j = i;
          while (j < referenced_identifier_number - 1
                 && !strcmp (referenced_identifiers[i],
                             referenced_identifiers[j+1]))
            {
              j++;
            }
          if (j > i)
            {
              if (j < referenced_identifier_number - 1)
                {
                  memmove (&referenced_identifiers[i+1],
                           &referenced_identifiers[j+1],
                    (referenced_identifier_number - (j + 1))* sizeof(char*));
                }
              referenced_identifier_number -= (j - i);
            }
          i++;
        }
    }
   /*
  fprintf (stderr, "DEBUG: trimmed referenced: %zu\n",
           referenced_identifier_number);
  for (i =0; i < referenced_identifier_number; i++)
    fprintf (stderr, " %zu: %s\n", i, referenced_identifiers[i]);
    */

  /* FIXME we could return here if there is no non referenced node:
   if (nr_nodes_to_find == referenced_identifier_number)
     return;
   */

  for (i = 0; i < nodes_list->contents.number; i++)
    {
      int status;
      ELEMENT *node = nodes_list->contents.list[i];
      int is_target = lookup_extra_integer (node, "is_target", &status);

      if (is_target)
        {
          char *normalized = lookup_extra_string (node, "normalized");
          char *found = (char *)bsearch (&normalized, referenced_identifiers,
                             referenced_identifier_number, sizeof(char *),
                             compare_strings);
          if (!found)
            {
              nr_not_found++;
              command_warn (node, "node `%s' unreferenced",
                            target_element_to_texi_label(node));
            }
        }
    }

  if (nr_nodes_to_find - referenced_identifier_number != nr_not_found)
    {
      fprintf (stderr, "BUG: to find: %zu; found: %zu; not found: %zu\n",
               nr_nodes_to_find, referenced_identifier_number, nr_not_found);
    }
}

ELEMENT *
first_menu_node (ELEMENT *node, LABEL_LIST *identifiers_target)
{
  ELEMENT *menus = lookup_extra_element (node, "menus");
  if (menus)
    {
      int i;
      for (i = 0; i < menus->contents.number; i++)
        {
          ELEMENT *menu = menus->contents.list[i];
          int j;
          for (j = 0; j < menu->contents.number; j++)
            {
              ELEMENT *menu_content = menu->contents.list[j];
              if (menu_content->type == ET_menu_entry)
                {
                  int k;
                  ELEMENT *menu_node
                    = normalized_entry_associated_internal_node (menu_content,
                                                          identifiers_target);
                  /* an internal node */
                  if (menu_node)
                    return menu_node;

                  for (k = 0; menu_content->contents.number; k++)
                    {
                      ELEMENT *content = menu_content->contents.list[k];
                      if (content->type == ET_menu_entry_node)
                        {
                          ELEMENT *manual_content
                           = lookup_extra_element (content, "manual_content");
                          /* a reference to an external manual */
                          if (manual_content)
                            return content;
                          break;
                        }
                    }
                }
            }
        }
    }
  return 0;
}

/* set menu_directions */
/* FIXME $registrar and $customization_information in perl */
void
set_menus_node_directions (DOCUMENT *document)
{
  GLOBAL_INFO *global_info = document->global_info;
  ELEMENT *nodes_list = document->nodes_list;
  LABEL_LIST *identifiers_target = document->identifiers_target;

  int check_menu_entries = 1;
  int i;

  if (!nodes_list || nodes_list->contents.number <= 0)
    return;

/*
  my $check_menu_entries = (!$customization_information->get_conf('novalidate')
      and $customization_information->get_conf('FORMAT_MENU') eq 'menu');
*/

  /*
  First go through all the menus and set menu up, menu next and menu prev,
  and warn for unknown nodes.
  Remark: since the @menu are only checked if they are in @node,
  menu entries before the first node, or @menu nested inside
  another command such as @format, may be treated slightly
  differently; at least, there are no error messages for them.
   */

  for (i = 0; i < nodes_list->contents.number; i++)
    {
      int j;
      ELEMENT *node = nodes_list->contents.list[i];
      ELEMENT *menus = lookup_extra_element (node, "menus");

      if (!menus)
        continue;

      if (menus->contents.number > 1)
        {
          for (j = 1; j < menus->contents.number; j++)
            {
               ELEMENT *menu = menus->contents.list[j];
               command_warn (menu, "multiple @%s",
                             builtin_command_name (menu->cmd));
            }
        }

      for (j = 0; j < menus->contents.number; j++)
        {
          ELEMENT *menu = menus->contents.list[j];
          ELEMENT *previous_node = 0;
          int k;
          for (k = 0; k < menu->contents.number; k++)
            {
              ELEMENT *menu_content = menu->contents.list[k];
              if (menu_content->type == ET_menu_entry)
                {
                  ELEMENT *menu_node = 0;
                  int l;
                  for (l = 0; l < menu_content->contents.number; l++)
                    {
                      ELEMENT *content = menu_content->contents.list[l];
                      if (content->type == ET_menu_entry_node)
                        {
                          ELEMENT *manual_content
                           = lookup_extra_element (content, "manual_content");

                          if (!manual_content)
                            {
                              if (check_menu_entries)
                                check_menu_entry (identifiers_target, menu->cmd,
                                                  menu_content, content);
                              char *normalized
                                = lookup_extra_string (content, "normalized");
                              if (normalized)
                                {
                                  menu_node
                                   = find_identifier_target (identifiers_target,
                                                             normalized);
                                  if (menu_node)
                                    {
                                      ELEMENT *menu_directions
                                       = lookup_extra_directions (menu_node,
                                                          "menu_directions", 1);
                                      menu_directions->contents.list[D_up]
                                        = node;
                                    }
                                }
                            }
                          else
                            {
                              menu_node = content;
                            }
                          break;
                        }
                    }
                  if (menu_node)
                    {
                      if (previous_node)
                        {
                          ELEMENT *manual_content
                           = lookup_extra_element (menu_node, "manual_content");
                          ELEMENT *prev_manual_content
                           = lookup_extra_element (previous_node,
                                                   "manual_content");
                          if (!manual_content)
                            {
                              ELEMENT *menu_directions
                                = lookup_extra_directions (menu_node,
                                                    "menu_directions", 1);
                               menu_directions->contents.list[D_prev]
                                 = previous_node;
                            }
                          if (!prev_manual_content)
                            {
                              ELEMENT *menu_directions
                                = lookup_extra_directions (previous_node,
                                                    "menu_directions", 1);
                              menu_directions->contents.list[D_next]
                                 = menu_node;
                            }
                        }
                      previous_node = menu_node;
                    }
                }
            } /* end menu */
        }
    }

  /* Check @detailmenu */
  if (check_menu_entries && global_info->detailmenu.contents.number > 0)
    {
      int i;
      for (i = 0; i < global_info->detailmenu.contents.number; i++)
        {
          ELEMENT *detailmenu = global_info->detailmenu.contents.list[i];
          int k;
          for (k = 0; k < detailmenu->contents.number; k++)
            {
              ELEMENT *menu_content = detailmenu->contents.list[k];
              if (menu_content->type == ET_menu_entry)
                {
                  int l;
                  for (l = 0; l < menu_content->contents.number; l++)
                    {
                      ELEMENT *content = menu_content->contents.list[l];
                      if (content->type == ET_menu_entry_node)
                        {
                          ELEMENT *manual_content
                           = lookup_extra_element (content, "manual_content");

                          if (!manual_content)
                            check_menu_entry (identifiers_target,
                                              detailmenu->cmd,
                                              menu_content, content);
                          break;
                        }
                    }
                }
            }
        }
    }
}

static char *direction_bases[] = {"section_directions", "toplevel_directions"};

ELEMENT *
section_direction_associated_node (ELEMENT *section, enum directions direction)
{
  int i;
  for (i = 0; i < sizeof (direction_bases) / sizeof (direction_bases[0]);
       i++)
    {
      ELEMENT *directions = lookup_extra_element (section, direction_bases[i]);
      if (directions && directions->contents.list[direction])
        {
          ELEMENT *section_to = directions->contents.list[direction];
          ELEMENT *associated_node = lookup_extra_element (section_to,
                                                       "associated_node");
          if ((strcmp (direction_bases[i], "toplevel_directions")
               || direction == D_up
               || section_to->cmd != CM_top)
              && associated_node)
            return associated_node;
        }
    }
  return 0;
}

/*
 complete automatic directions with menus (and first node
 for Top node).
 Checks on structure related to menus.
*/
void
complete_node_tree_with_menus (DOCUMENT *document)
{
  ELEMENT *nodes_list = document->nodes_list;
  LABEL_LIST *identifiers_target = document->identifiers_target;

  int i;

  if (!nodes_list || nodes_list->contents.number <= 0)
    return;

  /* Go through all the nodes */

  for (i = 0; i < nodes_list->contents.number; i++)
    {
      ELEMENT *node = nodes_list->contents.list[i];
      char *normalized = lookup_extra_string (node, "normalized");
      ELEMENT *menu_directions = lookup_extra_element (node,
                                                      "menu_directions");
      int automatic_directions = (node->args.number <= 1);

      if (automatic_directions)
        {
          ELEMENT *node_directions = lookup_extra_element (node,
                                                          "node_directions");
          if (strcmp (normalized, "Top"))
            {
              int d;
              for (d = 0; d < directions_length; d++)
                {
                  ELEMENT *section;
              /* prev already defined for the node first Top node menu entry */
                  if (d == D_prev)
                    {
                      if (node_directions && node_directions->contents.list[d])
                        {
                          ELEMENT *prev = node_directions->contents.list[d];
                          char *prev_normalized = lookup_extra_string (prev,
                                                               "normalized");
                          if (prev_normalized && !strcmp (normalized, "Top"))
                            continue;
                        }
                    }
                  section = lookup_extra_element (node, "associated_section");
                  if (section
                      && (0))
/*
                     and $customization_information->get_conf(
                                               'CHECK_NORMAL_MENU_STRUCTURE')) {}
*/
                    {
                      ELEMENT *node_direction_section = section;
                      ELEMENT *part_section;
                      ELEMENT *direction_associated_node;
          /* Prefer the section associated with a @part for node directions. */
                      part_section = lookup_extra_element (section,
                                                   "part_associated_section");
                      if (part_section)
                        node_direction_section = part_section;
                      direction_associated_node
                        = section_direction_associated_node(
                                                  node_direction_section, d);
                      if (direction_associated_node)
                        {
                          ELEMENT *menus = 0;
                          ELEMENT *section_directions
                            = lookup_extra_element (node_direction_section,
                                                    "section_directions");
                          if (section_directions
                              && section_directions->contents.list[D_up])
                            {
                              ELEMENT *up_sec
                               = section_directions->contents.list[D_up];
                              ELEMENT *up_node = lookup_extra_element (up_sec,
                                                            "associated_node");
                              if (up_node)
                                menus
                                  = lookup_extra_element (up_node, "menus");
                            }

                          if (menus
                              && menus->contents.number > 0
                              && (!menu_directions
                                  || !menu_directions->contents.list[d]))
                            command_warn (node,
                      "node %s for `%s' is `%s' in sectioning but not in menu",
                                       direction_names[d],
                                       target_element_to_texi_label (node),
                      target_element_to_texi_label (direction_associated_node));
                        }
                    }
          /*
            Direction was not set with sections, use menus.  This allows
            using only automatic direction for manuals without sectioning
            commands but with explicit menus.
           */
                  if ((!node_directions
                       || !node_directions->contents.list[d])
                      && menu_directions
                      && menu_directions->contents.list[d])
                    {
                      ELEMENT *elt_menu_direction
                       = menu_directions->contents.list[d];
                      ELEMENT *menu_direction_manual_content
                        = lookup_extra_element (elt_menu_direction,
                                                "manual_content");
                      if (!menu_direction_manual_content)
                        {
                          if (0 && section)
          /*
            if ($customization_information->get_conf(
                                               'CHECK_NORMAL_MENU_STRUCTURE')
           */
                            command_warn (node,
               "node `%s' is %s for `%s' in menu but not in sectioning",
                       target_element_to_texi_label (elt_menu_direction),
                                           direction_names[d],
                                 target_element_to_texi_label(node));

                          node_directions = lookup_extra_directions (node,
                                                      "node_directions", 1);
                          node_directions->contents.list[d]
                             = elt_menu_direction;
                        }
                    }
                }
            }
          else if (!node_directions
                   || !node_directions->contents.list[D_next])
            {
              /* use first menu entry if available as next for Top */
              ELEMENT *menu_child = first_menu_node(node, identifiers_target);
              if (menu_child)
                {
                  node_directions = lookup_extra_directions (node,
                                                "node_directions", 1);
                  node_directions->contents.list[D_next] = menu_child;
                  ELEMENT *menu_child_manual_content
                    = lookup_extra_element (menu_child, "manual_content");
                  if (!menu_child_manual_content)
                    {
                      ELEMENT *child_node_directions
                        = lookup_extra_directions (menu_child,
                                                   "node_directions", 1);
                      if (!child_node_directions->contents.list[D_prev])
                        child_node_directions->contents.list[D_prev] = node;
                    }
                }
              else
                {
                  /* use the first non top node as next for Top */
                  int j;
                  for (j = 0; j < nodes_list->contents.number; j++)
                    {
                      ELEMENT *first_non_top_node
                        = nodes_list->contents.list[j];
                      if (first_non_top_node != node)
                        {
                          node_directions = lookup_extra_directions (node,
                                                      "node_directions", 1);
                          node_directions->contents.list[D_next]
                              = first_non_top_node;
                          int first_non_top_node_automatic
                            = (first_non_top_node->args.number <= 1);
                          if (first_non_top_node_automatic)
                            {
                              ELEMENT *non_top_node_directions
                               = lookup_extra_directions (first_non_top_node,
                                                        "node_directions", 1);
                              non_top_node_directions->contents.list[D_prev]
                               = node;
                            }
                          break;
                        }
                    }
                }
            }
        }
  /* check consistency between node pointer and node entries menu order */
      if (0 && strcmp (normalized, "Top"))
  /* 0 corresponds to
    if ($customization_information->get_conf('CHECK_NORMAL_MENU_STRUCTURE')
   */

        {
          ELEMENT *node_directions = lookup_extra_element (node,
                                                           "node_directions");
          if (node_directions && menu_directions)
            {
              int d;
              for (d = 0; d < directions_length; d++)
                {
                  if (node_directions->contents.list[d]
                      && menu_directions->contents.list[d]
                      && node_directions->contents.list[d]
                           != menu_directions->contents.list[d])
                    {
                      ELEMENT *menu_direction
                       = menu_directions->contents.list[d];
                      ELEMENT *menu_dir_manual_content
                       = lookup_extra_element (menu_direction, "manual_content");
                      if (!menu_dir_manual_content)
                        {
                          command_warn (node,
                    "node %s pointer for `%s' is `%s' but %s is `%s' in menu",
                                           direction_names[d],
                                target_element_to_texi_label (node),
               target_element_to_texi_label (node_directions->contents.list[d]),
                                           direction_names[d],
                                target_element_to_texi_label (menu_direction));
                        }
                    }
                }
            }
        }
      /* check for node up / menu up mismatch */
      if (1)
  /*
    if ($customization_information->get_conf('CHECK_MISSING_MENU_ENTRY')) {
   */
        {
          ELEMENT *node_directions = lookup_extra_element (node,
                                                           "node_directions");
          ELEMENT *up_node = 0;
          if (node_directions && node_directions->contents.list[D_up])
            up_node = node_directions->contents.list[D_up];
          if (up_node)
            {
              int status;
              ELEMENT *manual_content = lookup_extra_element (up_node,
                                                          "manual_content");
              int is_target = lookup_extra_integer (node, "is_target",
                                                    &status);
              ELEMENT *menus = lookup_extra_element (up_node, "menus");

              /* No check if node up is an external manual */
              if (!manual_content
            /* no check for a redundant node, the node registered in the menu
               was the main equivalent node */
                  && is_target
               /* check only if there are menus */
                  && menus)
                {
                  int j;
                  int found = 0;
                  for (j = 0; j < menus->contents.number; j++)
                    {
                      ELEMENT *menu = menus->contents.list[j];
                      int k;
                      for (k = 0; k < menu->contents.number; k++)
                        {
                          ELEMENT *menu_content = menu->contents.list[k];
                          if (menu_content->type == ET_menu_entry)
                            {
                              ELEMENT *menu_node
                                = normalized_entry_associated_internal_node(
                                                         menu_content,
                                                          identifiers_target);
                              if (menu_node == node)
                                {
                                  found = 1;
                                  break;
                                }
                            }
                        }
                    }
                  if (!found)
                    command_warn (up_node,
           "node `%s' lacks menu item for `%s' despite being its Up target",
                                  target_element_to_texi_label (up_node),
                                  target_element_to_texi_label (node));
                }
            }
        }
    }
}

/* set node directions based on sectioning and @node explicit directions */
/* in perl: registrar and customization_information */
ELEMENT *
nodes_tree (DOCUMENT *document)
{
  LABEL_LIST *identifiers_target = document->identifiers_target;
  ELEMENT *root = document->tree;

  ELEMENT *top_node = 0;
  ELEMENT *nodes_list = new_element (ET_NONE);

  int i;

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *node = root->contents.list[i];
      char *normalized;
      int is_target;
      int status;
      int automatic_directions;

      if (node->cmd != CM_node)
        continue;

      normalized = lookup_extra_string (node, "normalized");
      if (!normalized)
        continue;

      add_to_contents_as_array (nodes_list, node);
      is_target = lookup_extra_integer (node, "is_target", &status);
      if (is_target && !strcmp (normalized, "Top"))
        top_node = node;

      automatic_directions = (node->args.number <= 1);

      if (automatic_directions)
        if (!top_node || node != top_node)
          {
            enum directions d;
            ELEMENT *node_directions = lookup_extra_element (node,
                                                   "node_directions");
            for (d = 0; d < directions_length; d++)
              {
                ELEMENT *section;
                ELEMENT *part_section;
                ELEMENT *direction_associated_node;
           /* prev already defined for the node first Top node menu entry */
                if (d == D_prev && node_directions
                    && node_directions->contents.list[d])
                  {
                    ELEMENT *prev_element = node_directions->contents.list[d];
                    char *prev_normalized
                      = lookup_extra_string (prev_element, "normalized");
                    if (prev_normalized)
                      {
                        if (!strcmp (prev_normalized, "Top"))
                          continue;
                      }
                  }
                section = lookup_extra_element (node, "associated_section");
                if (section)
                  {
          /* Prefer the section associated with a @part for node directions. */
                    part_section = lookup_extra_element (section,
                                                 "part_associated_section");
                    if (part_section)
                      section = part_section;
                    direction_associated_node
                      = section_direction_associated_node(section, d);
                    if (direction_associated_node)
                      {
                        node_directions = lookup_extra_directions (node,
                                                    "node_directions", 1);
                        node_directions->contents.list[d]
                           = direction_associated_node;
                      }
                  }
              }
          }
        else /* Special case for Top node, use first section */
          {
            ELEMENT *section
              = lookup_extra_element (node, "associated_section");
            if (section)
              {
                ELEMENT *section_childs
                  = lookup_extra_element (section, "section_childs");
                if (section_childs && section_childs->contents.number > 0)
                  {
                    ELEMENT *first_sec = section_childs->contents.list[0];
                    ELEMENT *top_node_section_child
                      = lookup_extra_element (first_sec, "associated_node");
                    if (top_node_section_child)
                      {
                        ELEMENT *top_directions = lookup_extra_directions (node,
                                                    "node_directions", 1);
                        top_directions->contents.list[D_next]
                          = top_node_section_child;
                        if (top_node_section_child->args.number <= 1)
                          {
                            ELEMENT *top_section_child_directions
                             = lookup_extra_directions (top_node_section_child,
                                                         "node_directions", 1);
                            top_section_child_directions->contents.list[D_prev]
                              = node;
                          }
                      }
                  }
              }
          }
      else /* explicit directions */
        {
          int i;
          for (i = 1; i < node->args.number; i++)
            {
              ELEMENT *direction_element = node->args.list[i];
              int direction = i - 1;
              ELEMENT *manual_content
                            = lookup_extra_element (direction_element,
                                                     "manual_content");
              if (manual_content)
                {
                  ELEMENT *node_directions = lookup_extra_directions (node,
                                                    "node_directions", 1);
                  node_directions->contents.list[direction]
                      = direction_element;
                }
              else
                {
                  char *direction_normalized
                    = lookup_extra_string (direction_element, "normalized");
                  if (direction_normalized)
                    {
                      ELEMENT *node_target
                        = find_identifier_target (identifiers_target,
                                                  direction_normalized);
                      if (node_target)
                        {
                          ELEMENT *node_directions
                            = lookup_extra_directions (node,
                                                    "node_directions", 1);
                          node_directions->contents.list[direction]
                            = node_target;
             /*
            if (!$customization_information->get_conf('novalidate')
              */
                          ELEMENT *direction_node_content
                            = lookup_extra_element (direction_element,
                                                    "node_content");
                          if (!check_node_same_texinfo_code (node_target,
                                                    direction_node_content))
                             {
                               command_warn (node,
                "%s pointer `%s' (for node `%s') different from %s name `%s'",
                                  direction_texts[direction],
                                  link_element_to_texi (direction_element),
                                  target_element_to_texi_label (node),
                                  builtin_command_name (node_target->cmd),
                                  target_element_to_texi_label (node_target));
                             }
                        }
                      else
                        {
                           /*
            if ($customization_information->get_conf('novalidate')) {
              $node->{'extra'}->{'node_directions'} = {}
                 if (!defined($node->{'extra'}->{'node_directions'}));
              $node->{'extra'}->{'node_directions'}->{$direction}
                 = $direction_element;
            } else {
                           */
                           command_error (node,
                                     "%s reference to nonexistent `%s'",
                                     direction_texts[direction],
                                     link_element_to_texi(direction_element));
                        }
                    }
                }
            }
        }
    }
  return nodes_list;
}

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
          char *normalized = lookup_extra_string (label_element, "normalized");
          if (normalized)
            {
              node_target
                = find_identifier_target (identifiers_target,
                                         normalized);
            }

          if (!node_target)
            {
              /*
        if (!$customization_information->get_conf('novalidate'))
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

void
number_floats (DOCUMENT *document)
{
  FLOAT_RECORD_LIST *listoffloats_list = document->listoffloats;
  size_t i;

  if (!listoffloats_list)
    return;

  for (i = 0; i < listoffloats_list->number; i++)
    {
      FLOAT_RECORD *listoffloats = &listoffloats_list->float_types[i];
      int float_index = 0;
      int nr_in_chapter = 0;
      ELEMENT *current_chapter = 0;
      size_t j;
      for (j = 0; j < listoffloats->element->contents.number; j++)
        {
          static TEXT number;
          ELEMENT *float_elt = listoffloats->element->contents.list[j];
          char *normalized = lookup_extra_string (float_elt, "normalized");
          ELEMENT *up;
          if (!normalized)
            continue;

          text_reset (&number);
          float_index ++;
          up = lookup_extra_element (float_elt, "float_section");
          if (up)
            {
              while (1)
                {
                  ELEMENT *section_directions
                    = lookup_extra_element (up, "section_directions");
                  if (section_directions
                      && section_directions->contents.list[D_up])
                    {
                      ELEMENT *up_elt = section_directions->contents.list[D_up];
                      if (up_elt->cmd
                          && command_structuring_level[up_elt->cmd] > 0)
                        {
                          up = up_elt;
                          continue;
                        }
                    }
                  break;
                }
              if (!current_chapter || current_chapter != up)
                {
                  nr_in_chapter = 0;
                  current_chapter = up;
                }
              if (!(command_other_flags (up) & CF_unnumbered))
                {
                  char *section_number
                       = lookup_extra_string (up, "section_number");
                  nr_in_chapter++;
                  text_printf (&number, "%s.%zu", section_number,
                                                  nr_in_chapter);
                  add_extra_string_dup (float_elt, "float_number", number.text);
                }
            }
          if (number.end == 0)
            text_printf (&number, "%d", float_index);
          add_extra_string_dup (float_elt, "float_number", number.text);
        }
    }
}

/*
  returns the texinfo tree corresponding to a single menu entry pointing
  to NODE.
  if USE_SECTIONS is set, use the section name as menu entry name. */
ELEMENT *
new_node_menu_entry (ELEMENT *node, int use_sections)
{
  ELEMENT *node_name_element = 0;
  ELEMENT *menu_entry_name;
  ELEMENT *menu_entry_node;
  ELEMENT *entry;
  ELEMENT *description;
  ELEMENT *preformatted;
  ELEMENT *description_text;
  ELEMENT *menu_entry_leading_text;
  NODE_SPEC_EXTRA *parsed_entry_node;
  int i;
  int status;
  int is_target = lookup_extra_integer (node, "is_target", &status);
  if (is_target)
    node_name_element = node->args.list[0];

  if (!node_name_element)
    return 0;

  if (use_sections)
    {
      int i;
      ELEMENT *name_element;
      ELEMENT *associated_section
        = lookup_extra_element (node, "associated_section");
      if (associated_section)
        name_element = associated_section->args.list[0];
      else
        name_element = node_name_element; /* shouldn't happen */

      menu_entry_name = copy_contents (name_element, ET_menu_entry_name);
      for (i = 0; i < menu_entry_name->contents.number; i++)
        {
          ELEMENT *content = menu_entry_name->contents.list[i];
          content->parent = menu_entry_name;
        }
      /*
      colons could be doubly protected, but it is probably better
      than not protected at all.
       */
      protect_colon_in_tree (menu_entry_name);
    }

  entry = new_element (ET_menu_entry);

  menu_entry_node = copy_contents (node_name_element, ET_menu_entry_node);
  for (i = 0; i < menu_entry_node->contents.number; i++)
    {
      ELEMENT *content = menu_entry_node->contents.list[i];
      content->parent = menu_entry_node;
    }

  /* do not protect here, as it could already be protected, and
     the menu entry should be the same as the node
  protect_colon_in_tree (menu_entry_node);
   */

  description = new_element (ET_menu_entry_description);
  preformatted = new_element (ET_preformatted);
  add_to_element_contents (description, preformatted);
  description_text = new_element (ET_NONE);
  text_append (&description_text->text, "\n");
  add_to_element_contents (preformatted, description_text);

  menu_entry_leading_text = new_element (ET_menu_entry_leading_text);
  text_append (&menu_entry_leading_text->text, "* ");

  add_to_element_contents (entry, menu_entry_leading_text);

  if (use_sections)
    {
      ELEMENT *menu_entry_separator = new_element (ET_menu_entry_separator);
      ELEMENT *menu_entry_after_node = new_element (ET_menu_entry_separator);
      text_append (&menu_entry_separator->text, ": ");
      text_append (&menu_entry_after_node->text, ".");
      add_to_element_contents (entry, menu_entry_name);
      add_to_element_contents (entry, menu_entry_separator);
      add_to_element_contents (entry, menu_entry_node);
      add_to_element_contents (entry, menu_entry_after_node);
    }
  else
    {
      ELEMENT *menu_entry_separator = new_element (ET_menu_entry_separator);
      add_to_element_contents (entry, menu_entry_node);
      text_append (&menu_entry_separator->text, "::");
      add_to_element_contents (entry, menu_entry_separator);
    }

  add_to_element_contents (entry, description);

  parsed_entry_node = parse_node_manual (menu_entry_node, 1);
  if (parsed_entry_node->node_content)
    {
      char *normalized;
      add_extra_contents (menu_entry_node, "node_content",
                          parsed_entry_node->node_content);
      normalized = convert_to_identifier (parsed_entry_node->node_content);
      if (normalized)
        {
          if (strlen (normalized))
            {
              add_extra_string (menu_entry_node, "normalized",
                                normalized);
            }
          else
            free (normalized);
         }
    }
  /* seems that it may happen, if there is leading parenthesised text? */
  if (parsed_entry_node->manual_content)
    add_extra_contents (menu_entry_node, "manual_content",
                        parsed_entry_node->manual_content);
  free (parsed_entry_node);

  return entry;
}

ELEMENT *
new_complete_node_menu (ELEMENT *node, int use_sections)
{
  ELEMENT *node_childs = get_node_node_childs_from_sectioning (node);
  ELEMENT *section;
  ELEMENT *new_menu;
  int i;

  if (node_childs->contents.number <= 0)
    return 0;

  /* only holds contents here, will be turned into a proper block
     command in new_block_command */

  section = lookup_extra_element (node, "associated_section");
  new_menu = new_element (ET_NONE);
  new_menu->parent = section;

  for (i = 0; i < node_childs->contents.number; i++)
    {
      ELEMENT *child = node_childs->contents.list[i];
      ELEMENT *entry = new_node_menu_entry (child, use_sections);
      if (entry)
        {
          add_to_element_contents (new_menu, entry);
        }
    }

  new_block_command (new_menu, CM_menu);

  return (new_menu);
}

ELEMENT *
print_down_menus(ELEMENT *node, LABEL_LIST *identifiers_target,
                 int use_sections)
{
  ELEMENT *master_menu_contents = new_element (ET_NONE);
  ELEMENT *menus;
  ELEMENT *node_menus = lookup_extra_element (node, "menus");
  ELEMENT *node_children;
  int i;

  if (node_menus && node_menus->contents.number > 0)
    menus = node_menus;
  else
    {
      ELEMENT *current_menu = new_complete_node_menu (node, use_sections);
      node_menus = 0;
      if (current_menu)
        {
          menus = new_element (ET_NONE);
          add_to_contents_as_array (menus, current_menu);
        }
      else
        return master_menu_contents;
    }

  node_children = new_element (ET_NONE);

  for (i = 0; i < menus->contents.number; i++)
    {
      ELEMENT *menu = menus->contents.list[i];
      int j;
      for (j = 0; j < menu->contents.number; j++)
        {
          ELEMENT *entry = menu->contents.list[j];
          if (entry->type == ET_menu_entry)
            {
              ELEMENT *entry_copy = copy_tree (entry, 0);
              ELEMENT *node;
              add_to_contents_as_array (master_menu_contents, entry_copy);
              /* gather node children to recursively print their menus */
              node = normalized_entry_associated_internal_node (entry,
                                                        identifiers_target);
              if (node)
                add_to_contents_as_array (node_children, node);
            }
        }
    }

  if (master_menu_contents->contents.number > 0)
    {
      ELEMENT *node_name_element;
      ELEMENT *node_title_copy;
      ELEMENT *menu_comment = new_element (ET_menu_comment);
      ELEMENT *preformatted = new_element (ET_preformatted);
      ELEMENT *empty_line_before = new_element (ET_empty_line);
      ELEMENT *empty_line_first_after = new_element (ET_empty_line);
      ELEMENT *empty_line_second_after = new_element (ET_empty_line);
      ELEMENT *associated_section
       = lookup_extra_element (node, "associated_section");
      if (associated_section)
        node_name_element = associated_section->args.list[0];
      else
        node_name_element = node->args.list[0];

      node_title_copy = copy_contents (node_name_element, ET_NONE);

      for (i = 0; i < node_title_copy->contents.number; i++)
        node_title_copy->contents.list[i]->parent = preformatted;

      add_to_element_contents (menu_comment, preformatted);

      text_append (&empty_line_before->text, "\n");
      text_append (&empty_line_first_after->text, "\n");
      text_append (&empty_line_second_after->text, "\n");

      add_to_element_contents (preformatted, empty_line_before);
      insert_slice_into_contents (preformatted, 1, node_title_copy,
                                  0, node_title_copy->contents.number);
      add_to_element_contents (preformatted, empty_line_first_after);
      add_to_element_contents (preformatted, empty_line_second_after);

      insert_into_contents (master_menu_contents, menu_comment, 0);
      menu_comment->parent = 0;

      /* now recurse in the children */
      for (i = 0; i < node_children->contents.number; i++)
        {
          ELEMENT *child = node_children->contents.list[i];
          ELEMENT *child_menu_content
           = print_down_menus (child, identifiers_target, use_sections);
          insert_slice_into_contents (master_menu_contents,
                                      master_menu_contents->contents.number,
                                      child_menu_content, 0,
                                      child_menu_content->contents.number);
          destroy_element (child_menu_content);
        }
    }

  destroy_element (node_children);

  if (!node_menus)
    destroy_element (menus);

  return master_menu_contents;
}

/* FIXME in perl there is a $customization_information argument */
ELEMENT *
new_master_menu (LABEL_LIST *identifiers_target, ELEMENT *menus,
                 int use_sections)
{
  /*  only holds contents here, will be turned into a proper block
      in new_block_command */
  ELEMENT *master_menu = new_element (ET_NONE);

  if (menus && menus->contents.number > 0)
    {
      int i;
      for (i = 0; i < menus->contents.number; i++)
        {
          ELEMENT *menu = menus->contents.list[i];
          int j;
          for (j = 0; j < menu->contents.number; j++)
            {
              ELEMENT *entry = menu->contents.list[j];
              if (entry->type == ET_menu_entry)
                {
                  ELEMENT *menu_node
                   = normalized_entry_associated_internal_node(entry,
                                                  identifiers_target);
                  if (menu_node)
                    {
                      ELEMENT *down_menus = print_down_menus(menu_node,
                                       identifiers_target, use_sections);
                      if (down_menus)
                        {
                          int k;
                          for (k = 0; k < down_menus->contents.number; k++)
                            down_menus->contents.list[k]->parent = master_menu;
                          insert_slice_into_contents (master_menu,
                                                 master_menu->contents.number,
                                                 down_menus, 0,
                                                 down_menus->contents.number);
                          destroy_element (down_menus);
                        }
                    }
                }
            }
        }
    }
  if (master_menu->contents.number > 0)
    {
      int i;
      ELEMENT *master_menu_title;
      ELEMENT *new_line = new_element (ET_NONE);
    /* There is a menu comment with a preformatted added in front of each
       detailed menu section with the node section name */
      ELEMENT *first_preformatted
        = master_menu->contents.list[0]->contents.list[0];
      master_menu_title = gdt (" --- The Detailed Node Listing ---", 0, 0, 0);

      for (i = 0; i < master_menu_title->contents.number; i++)
        master_menu_title->contents.list[i]->parent = first_preformatted;

      text_append (&new_line->text, "\n");
      new_line->parent = first_preformatted;
      insert_into_contents (first_preformatted, new_line, 0);

      insert_slice_into_contents (first_preformatted, 0, master_menu_title, 0,
                                  master_menu_title->contents.number);

      new_block_command (master_menu, CM_detailmenu);
      return master_menu;
    }
  else
    return 0;
}
