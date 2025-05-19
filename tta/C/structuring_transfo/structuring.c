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

/* In sync with Texinfo::Structuring */

#include <config.h>

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>

#include "text.h"
#include "element_types.h"
#include "tree_types.h"
#include "global_commands_types.h"
#include "options_data.h"
#include "document_types.h"
/* fatal */
#include "base_utils.h"
#include "types_data.h"
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
#include "errors.h"
#include "debug.h"
/* for get_label_element section_level enumerate_item_representation
   xasprintf */
#include "utils.h"
/* for copy_tree copy_contents parse_node_manual
   protect_colon_in_tree */
#include "manipulate_tree.h"
#include "command_stack.h"
#include "node_name_normalization.h"
#include "convert_to_texinfo.h"
#include "targets.h"
#include "translations.h"
#include "structuring.h"

void
new_block_command (ELEMENT *element)
{
  ELEMENT *block_line_arg = new_element (ET_block_line_arg);
  ELEMENT *arguments_line = new_element (ET_arguments_line);
  ELEMENT *arg_spaces_after = new_text_element (ET_other_text);
  ELEMENT *end = new_command_element (ET_line_command, CM_end);
  ELEMENT *end_args = new_element (ET_line_arg);
  ELEMENT *end_spaces_before = new_text_element (ET_other_text);
  ELEMENT *end_spaces_after = new_text_element (ET_other_text);
  ELEMENT *command_name_text = new_text_element (ET_normal_text);
  const char *command_name = builtin_command_name (element->e.c->cmd);

  text_append (arg_spaces_after->e.text, "\n");
  block_line_arg->elt_info[eit_spaces_after_argument] = arg_spaces_after;
  add_to_element_contents (arguments_line, block_line_arg);

  insert_into_contents (element, arguments_line, 0);

  add_extra_string_dup (end, AI_key_text_arg, command_name);
  text_append (end_spaces_before->e.text, " ");
  end->elt_info[eit_spaces_before_argument] = end_spaces_before;

  text_append (end_spaces_after->e.text, "\n");
  end_args->elt_info[eit_spaces_after_argument] = end_spaces_after;
  add_to_element_contents (end, end_args);

  text_append (command_name_text->e.text, command_name);
  add_to_element_contents (end_args, command_name_text);

  add_to_element_contents (element, end);
}

void
sectioning_structure (DOCUMENT *document)
{
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;

  SECTION_STRUCTURE *previous_section_structure = 0;
  SECTION_STRUCTURE *previous_toplevel_structure = 0;
  int in_appendix = 0;
  /* lowest level with a number.  This is the lowest level above 0. */
  int number_top_level = 0;
  const ELEMENT *section_top = 0;
  size_t i;
  TEXT section_number;
  text_init (&section_number);
  const SECTION_STRUCTURE_LIST *sections_list = &document->sections_list;

  /* holds the current number for all the levels.  It is not possible to use
     something like the last child index, because of @unnumbered. */
  int command_numbers[5] = {-1, -1, -1, -1, -1};
  /* keep track of the unnumbered */
  int command_unnumbered[5] = {0, 0, 0, 0, 0};

  for (i = 0; i < sections_list->number; i++)
    {
      SECTION_STRUCTURE *section_structure = sections_list->list[i];
      ELEMENT *content = (ELEMENT *)section_structure->element;
      int level;

      document->modified_information |= F_DOCM_tree;

      if (content->e.c->cmd == CM_top && !section_top)
        section_top = content;

      level = section_level (content);
      if (level < 0)
        {
          char *str_element = print_element_debug (content, 0);
          fprintf (stderr,"BUG: level < 0 for %s\n", str_element);
          free (str_element);
          level = 0;
        }

      if (previous_section_structure)
        {
          int status;
          const ELEMENT *previous_section = previous_section_structure->element;
          int prev_section_level
             = lookup_extra_integer (previous_section, AI_key_section_level,
                                     &status);
          if (prev_section_level < level)
          /* new command is below */
            {
              if (!section_structure->section_directions)
                section_structure->section_directions = new_directions ();

              previous_section_structure->section_childs
                = new_const_element_list ();

              if (level - prev_section_level > 1)
                {
                  message_list_command_error (error_messages,
                        (options && options->DEBUG.o.integer > 0), content,
                        "raising the section level of @%s which is too low",
                                 builtin_command_name (content->e.c->cmd));
                  level = prev_section_level + 1;
                }
              add_to_const_element_list (
                 previous_section_structure->section_childs, content);
              section_structure->section_directions[D_up] = previous_section;
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
              int status;
              size_t up_section_number;
              int new_upper_part_element = 0;
              /* try to find the up in the sectioning hierarchy */
              const ELEMENT *up = previous_section;
              const SECTION_STRUCTURE *up_structure
                = previous_section_structure;
              const struct ELEMENT * const *up_section_directions
                = previous_section_structure->section_directions;
              CONST_ELEMENT_LIST *up_section_childs;

              int up_level;
              while (1)
                {
                  up_level = lookup_extra_integer (up, AI_key_section_level,
                                                   &status);
                  if (up_section_directions
                      && up_section_directions[D_up]
                      && up_level >= level)
                    {
                      up = up_section_directions[D_up];
                      up_section_number = lookup_extra_integer (up,
                                       AI_key_section_number, &status);
                      up_structure = sections_list->list[up_section_number -1];
                      up_section_directions = up_structure->section_directions;
                    }
                  else
                    break;
                }

              up_section_childs = up_structure->section_childs;
              /* no up found.  The element is below the sectioning root */
              if (level <= up_level)
                {
                  up = 0;
                  int sec_root_level
                    = document->sectioning_root->section_root_level;
                  up_section_childs
                    = &document->sectioning_root->section_childs;

                  if (level <= sec_root_level)
                 /* in that case, the level of the element is not in line
                    with being below the sectioning root, something need to
                    be done */
                    {
                      if (builtin_command_name (content->e.c->cmd == CM_part))
                        {
         /* the first part just appeared, and there was no @top first in
            document.  Mark that the sectioning root level needs to be updated
          */
                          new_upper_part_element = 1;
                          if (level < sec_root_level)
                /* level is 0 for part and section level -1 for sec root. The
                   condition means section level > 1, ie below chapter-level.
                 */
                            message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                              content, 0, "no chapter-level command before @%s",
                                   builtin_command_name (content->e.c->cmd));
                        }
                      else
                        {
                          message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                                 content, 0,
          "lowering the section level of @%s appearing after a lower element",
                                 builtin_command_name (content->e.c->cmd));
                          level = sec_root_level +1;
                        }
                    }
                }
              if ((command_other_flags (content) & CF_appendix)
                  && !in_appendix && level <= number_top_level
                  && up && up->e.c->cmd == CM_part)
                {
                  up = 0;
                  up_section_childs
                    = &document->sectioning_root->section_childs;
                }
              if (new_upper_part_element)
                {
                  /*
                  In that case the root level has to be updated because the
                  first 'part' just appeared, no direction to set.
                   */
                  CONST_ELEMENT_LIST *sec_root_childs
                    = &document->sectioning_root->section_childs;
                  document->sectioning_root->section_root_level = level -1;
                  add_to_const_element_list (sec_root_childs, content);
                  number_top_level = level;
                  if (number_top_level == 0)
                    number_top_level = 1;
                }
              else
                {
                  /* cast to remove const to be able to set directions */
                  ELEMENT *prev = (ELEMENT *)
                    up_section_childs->list[up_section_childs->number -1];
                  int status;
                  size_t prev_number
                    =  lookup_extra_integer (prev,
                                       AI_key_section_number, &status);
                  SECTION_STRUCTURE *prev_structure
                    = sections_list->list[prev_number -1];
                  if (!prev_structure->section_directions)
                    prev_structure->section_directions = new_directions ();
                  if (!section_structure->section_directions)
                    section_structure->section_directions = new_directions ();

                  /* no up set means that the section is below the sectioning
                     root */
                  if (up)
                    section_structure->section_directions[D_up] = up;
                  section_structure->section_directions[D_prev] = prev;
                  prev_structure->section_directions[D_next] = content;
                  add_to_const_element_list (up_section_childs, content);
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
          document->sectioning_root = (SECTIONING_ROOT *)
            malloc (sizeof (SECTIONING_ROOT));
          SECTIONING_ROOT *sectioning_root = document->sectioning_root;
          memset (sectioning_root, 0, sizeof (SECTIONING_ROOT));
           /* first section determines the level of the root.  It is
              typically -1 when there is a @top. */
          sectioning_root->section_root_level = level -1;
          add_to_const_element_list (&sectioning_root->section_childs,
                                     content);
          document->modified_information |= F_DOCM_sectioning_root;
          number_top_level = level;
           /*
             if level of top sectioning element is 0, which means that
             it is a @top, number_top_level is 1 as it is associated to
             the level of chapter/unnumbered...
            */
           if (number_top_level == 0)
             number_top_level = 1;
           if (content->e.c->cmd != CM_top)
             {
               if (!(command_other_flags (content) & CF_unnumbered))
                 command_unnumbered[level] = 0;
               else
                 command_unnumbered[level] = 1;
             }
        }
      add_extra_integer (content, AI_key_section_level, level);

      if (command_numbers[level] < 0)
        {
          if (command_other_flags (content) & CF_unnumbered)
            command_numbers[level] = 0;
          else
            command_numbers[level] = 1;
        }
      if ((command_other_flags (content) & CF_appendix)
          && !in_appendix && level == number_top_level)
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
              text_reset (&section_number);
              if (!in_appendix)
                text_printf (&section_number, "%d",
                             command_numbers[number_top_level]);
              else
                {
                  /* Simpler implementation, but incorrect after Z
                  char appendix_nr = 'A' -1 +command_numbers[number_top_level];
                  text_append_n (&section_number, &appendix_nr, 1);
                   */
                  char *appendix_nr = enumerate_item_representation ("A",
                                            command_numbers[number_top_level]);
                  text_append_n (&section_number, appendix_nr, 1);
                  free (appendix_nr);
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
                add_extra_string_dup (content, AI_key_section_heading_number,
                                      section_number.text);
            }
        }
      previous_section_structure = section_structure;
      if (content->e.c->cmd != CM_part && level <= number_top_level)
        {
          if (previous_toplevel_structure
               || (section_top && section_top != content))
            {
              if (!section_structure->toplevel_directions)
                section_structure->toplevel_directions = new_directions ();

              if (previous_toplevel_structure)
                {
                  if (!previous_toplevel_structure->toplevel_directions)
                    previous_toplevel_structure->toplevel_directions
                      = new_directions ();

                  previous_toplevel_structure->toplevel_directions[D_next]
                    = content;
                  section_structure->toplevel_directions[D_prev]
                    = previous_toplevel_structure->element;
                }
              if (section_top && content != section_top)
                section_structure->toplevel_directions[D_up] = section_top;
            }
          previous_toplevel_structure = section_structure;
        }
      else if (content->e.c->cmd == CM_part
               && !section_structure->part_associated_section)
        {
          message_list_command_warn (error_messages,
                            (options && options->DEBUG.o.integer > 0),
                         content,
                        0, "no sectioning command associated with @%s",
                               builtin_command_name (content->e.c->cmd));
        }
    }

  free (section_number.text);

  document->modified_information |= F_DOCM_sections_list;
}

void
warn_non_empty_parts (DOCUMENT *document)
{
  const GLOBAL_COMMANDS *global_commands = &document->global_commands;
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;

  size_t i;

  for (i = 0; i < global_commands->part.number; i++)
    {
      const ELEMENT *part = global_commands->part.list[i];
      if (!is_content_empty (part, 0))
        message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
              part, 0, "@%s not empty", builtin_command_name (part->e.c->cmd));
    }
}

void
check_menu_entry (DOCUMENT *document, enum command_id cmd,
                  const ELEMENT *menu_content, const ELEMENT *menu_entry_node)
{
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  C_HASHMAP *identifiers_target = &document->identifiers_target;
  OPTIONS *options = document->options;

  const char *normalized_menu_node = lookup_extra_string (menu_entry_node,
                                                    AI_key_normalized);
  if (normalized_menu_node)
    {
      const ELEMENT *menu_node = find_identifier_target (identifiers_target,
                                                   normalized_menu_node);
      if (!menu_node)
        {
          char *entry_node_texi = link_element_to_texi (menu_entry_node);
          message_list_command_error (error_messages,
                        (options && options->DEBUG.o.integer > 0), menu_content,
                         "@%s reference to nonexistent node `%s'",
                         builtin_command_name (cmd), entry_node_texi);
          free (entry_node_texi);
        }
      else
        {
          const ELEMENT *node_content = lookup_extra_container (menu_entry_node,
                                                          AI_key_node_content);
          if (!check_node_same_texinfo_code (menu_node, node_content))
            {
              char *entry_node_texi = link_element_to_texi (menu_entry_node);
              char *menu_node_texi = target_element_to_texi_label (menu_node);
              message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                  menu_content, 0,
                  "@%s entry node name `%s' different from %s name `%s'",
                  builtin_command_name (cmd), entry_node_texi,
                  builtin_command_name (menu_node->e.c->cmd), menu_node_texi);
              free (entry_node_texi);
              free (menu_node_texi);
            }
        }
    }
}

CONST_ELEMENT_LIST *
get_node_node_childs_from_sectioning (const NODE_STRUCTURE *node_structure,
                                  const SECTION_STRUCTURE_LIST *sections_list)
{
  CONST_ELEMENT_LIST *node_childs = new_const_element_list ();

  if (node_structure->associated_section)
    {
      const ELEMENT *associated_section
        = node_structure->associated_section;
      int status;
      size_t associated_section_number
        = lookup_extra_integer (associated_section,
                                AI_key_section_number, &status);
      const SECTION_STRUCTURE *associated_structure
                    = sections_list->list[associated_section_number -1];

      const CONST_ELEMENT_LIST *section_childs
        = associated_structure->section_childs;
      if (section_childs)
        {
          size_t i;
          for (i = 0; i < section_childs->number; i++)
            {
              const ELEMENT *child = section_childs->list[i];
              int status;
              size_t section_number
                = lookup_extra_integer (child, AI_key_section_number, &status);
              const SECTION_STRUCTURE *child_structure
                = sections_list->list[section_number -1];
              if (child_structure->associated_node)
                add_to_const_element_list (node_childs,
                                           child_structure->associated_node);
            }
        }
       /* Special case for @top.  Gather all the children of the @part following
          @top. */
      if (associated_section->e.c->cmd == CM_top)
        {
          const ELEMENT *current = associated_section;
          int status;
          size_t current_section_number
            = lookup_extra_integer (current,
                                    AI_key_section_number, &status);
          const SECTION_STRUCTURE *current_structure
            = sections_list->list[current_section_number -1];
          while (1)
            {
              if (current_structure->section_directions
                  && current_structure->section_directions[D_next])
                {
                  current = current_structure->section_directions[D_next];
                  current_section_number
                    = lookup_extra_integer (current,
                                    AI_key_section_number, &status);
                  current_structure
                    = sections_list->list[current_section_number -1];
                  if (current->e.c->cmd == CM_part)
                    {
                      const CONST_ELEMENT_LIST *section_childs
                       = current_structure->section_childs;
                      if (section_childs)
                        {
                          size_t i;
                          for (i = 0; i < section_childs->number; i++)
                            {
                              const ELEMENT *child = section_childs->list[i];
                              int status;
                              size_t section_number
                                = lookup_extra_integer (child,
                                               AI_key_section_number, &status);
                              const SECTION_STRUCTURE *child_structure
                                = sections_list->list[section_number -1];
                              if (child_structure->associated_node)
                                add_to_const_element_list (node_childs,
                                               child_structure->associated_node);
                            }
                        }
                    }
                  else
                    {
                      /*
                    for @appendix, and what follows, as it stops a @part, but is
                    not below @top
                       */
                      if (current_structure->associated_node)
                        add_to_const_element_list (node_childs,
                                       current_structure->associated_node);
                    }
                }
              else
                break;
            }
        }
    }
  return node_childs;
}

static char **
register_referenced_node (const ELEMENT *node, char **referenced_identifiers,
                          size_t *referenced_identifier_space_ptr,
                          size_t *referenced_identifier_number_ptr)
{
  size_t referenced_identifier_space = *referenced_identifier_space_ptr;
  size_t referenced_identifier_number = *referenced_identifier_number_ptr;
  char *normalized;

  if (node->e.c->cmd != CM_node)
    return referenced_identifiers;

  normalized = lookup_extra_string (node, AI_key_normalized);
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

static int
compare_strings (const void *a, const void *b)
{
  const char **str_a = (const char **) a;
  const char **str_b = (const char **) b;

  return strcmp (*str_a, *str_b);
}

void
check_nodes_are_referenced (DOCUMENT *document)
{
  const NODE_STRUCTURE_LIST *nodes_list = &document->nodes_list;
  const SECTION_STRUCTURE_LIST *sections_list = &document->sections_list;
  const C_HASHMAP *identifiers_target = &document->identifiers_target;
  const ELEMENT_LIST *refs = &document->internal_references;
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;
  int check_node_in_menu;
  int all_nodes_are_referenced;

  char **referenced_identifiers;
  size_t referenced_identifier_space;
  size_t referenced_identifier_number = 1;
  size_t i;
  size_t nr_nodes_to_find = 0;
  size_t nr_not_found = 0;

  const ELEMENT *top_node;

  if (nodes_list->number < 1)
    return;

  referenced_identifier_space = nodes_list->number * 2;
  referenced_identifiers
    = malloc (referenced_identifier_space * sizeof (char *));

  top_node = find_identifier_target (identifiers_target,
                                     "Top");
  if (!top_node)
    {
      top_node = nodes_list->list[0]->element;
      char *normalized = lookup_extra_string (top_node, AI_key_normalized);
      if (normalized)
        referenced_identifiers[0] = normalized;
      else
        referenced_identifier_number = 0;
    }
  else
    referenced_identifiers[0] = "Top";

  for (i = 0; i < nodes_list->number; i++)
    {
      const NODE_STRUCTURE *node_structure = nodes_list->list[i];
      const ELEMENT *node = node_structure->element;
      int is_target = (node->flags & EF_is_target);
      const ELEMENT * const *node_directions = node_structure->node_directions;
      const CONST_ELEMENT_LIST *menus = node_structure->menus;

      if (is_target)
        nr_nodes_to_find++;

      /* gather referenced nodes based on node pointers */
      if (node_directions)
        {
          size_t d;
          for (d = 0; d < directions_length; d++)
            {
              if (node_directions[d])
                referenced_identifiers =
                 register_referenced_node (node_directions[d],
                                           referenced_identifiers,
                                           &referenced_identifier_space,
                                           &referenced_identifier_number);
            }
        }
      if (menus)
        {
          size_t j;
          for (j = 0; j < menus->number; j++)
            {
              const ELEMENT *menu = menus->list[j];
              size_t k;
              for (k = 0; k < menu->e.c->contents.number; k++)
                {
                  const ELEMENT *menu_content = menu->e.c->contents.list[k];
                  if (menu_content->type == ET_menu_entry)
                    {
                      const ELEMENT *menu_node
                        = normalized_entry_associated_internal_node (
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
          const ELEMENT *arguments_line = node->e.c->contents.list[0];
          int automatic_directions
            = (arguments_line->e.c->contents.number <= 1);
          if (automatic_directions)
            {
              CONST_ELEMENT_LIST *node_childs
                = get_node_node_childs_from_sectioning (node_structure,
                                                        sections_list);
              size_t j;
              for (j = 0; j < node_childs->number; j++)
                {
                  referenced_identifiers =
                   register_referenced_node (node_childs->list[j],
                                             referenced_identifiers,
                                             &referenced_identifier_space,
                                             &referenced_identifier_number);

                }
              destroy_const_element_list (node_childs);
            }
        }
    }
  /* consider nodes in internal @*ref commands to be referenced */
  if (refs)
    {
      size_t i;
      for (i = 0; i < refs->number; i++)
        {
          ELEMENT *ref = refs->list[i];
          if (ref->e.c->contents.number > 0)
            {
              ELEMENT *label_arg = ref->e.c->contents.list[0];
              char *ref_normalized;
              if (type_data[label_arg->type].flags & TF_text)
                continue;

              ref_normalized = lookup_extra_string (label_arg,
                                                    AI_key_normalized);
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
                    (referenced_identifier_number - (j + 1))* sizeof (char*));
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

  check_node_in_menu
      = ((!options) || options->CHECK_NORMAL_MENU_STRUCTURE.o.integer > 0)
        && nodes_list->number > 1;

  all_nodes_are_referenced = (nr_nodes_to_find == referenced_identifier_number);

  if (!check_node_in_menu && all_nodes_are_referenced)
    {
      free (referenced_identifiers);
      return;
    }

  /* this loop is used both to show unreferenced nodes and warn about
     referenced nodes that are not in menu, except for the Top node */
  for (i = 0; i < nodes_list->number; i++)
    {
      const NODE_STRUCTURE *node_structure = nodes_list->list[i];
      const ELEMENT *node = node_structure->element;
      int is_target = (node->flags & EF_is_target);

      if (is_target)
        {
          const char *normalized = lookup_extra_string (node, AI_key_normalized);
          if (!all_nodes_are_referenced)
            {
              const char *found = (const char *)bsearch (&normalized,
                             referenced_identifiers,
                             referenced_identifier_number, sizeof (char *),
                             compare_strings);
              if (!found)
                {
                  char *node_texi = target_element_to_texi_label (node);
                  nr_not_found++;
                  message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                                   node, 0, "node `%s' unreferenced",
                                              node_texi);
                  free (node_texi);
                  /* do not check if in menu if not referenced */
                  continue;
                }
            }

          if (check_node_in_menu && strcmp (normalized, "Top"))
            {
              const ELEMENT *arguments_line = node->e.c->contents.list[0];
              int automatic_directions
                 = (arguments_line->e.c->contents.number <= 1);
              const ELEMENT *section = node_structure->associated_section;
              const ELEMENT * const *menu_directions
                = node_structure->menu_directions;
              if (! ((section && automatic_directions)
                     || (menu_directions && menu_directions[D_up])))
                {
                  char *node_texi = target_element_to_texi_label (node);
                  message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                                  node, 0, "node `%s' not in menu",
                                             node_texi);
                  free (node_texi);
                }
            }
        }
    }

  if (nr_nodes_to_find - referenced_identifier_number != nr_not_found)
    {
      fprintf (stderr, "BUG: to find: %zu; found: %zu; not found: %zu\n",
               nr_nodes_to_find, referenced_identifier_number, nr_not_found);
    }
  free (referenced_identifiers);
}

/* set menu_directions */
void
set_menus_node_directions (DOCUMENT *document)
{
  const GLOBAL_COMMANDS *global_commands = &document->global_commands;
  const NODE_STRUCTURE_LIST *nodes_list = &document->nodes_list;
  const C_HASHMAP *identifiers_target = &document->identifiers_target;
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;

  int check_menu_entries = 1;
  size_t i;

  if (nodes_list->number < 1)
    return;

  if (options && (options->novalidate.o.integer > 0
                  || !options->FORMAT_MENU.o.string
                  || strcmp (options->FORMAT_MENU.o.string, "menu")))
    check_menu_entries = 0;

  /*
  First go through all the menus and set menu up, menu next and menu prev,
  and warn for unknown nodes.
  Remark: since the @menu are only checked if they are in @node,
  menu entries before the first node, or @menu nested inside
  another command such as @format, may be treated slightly
  differently; at least, there are no error messages for them.
   */

  for (i = 0; i < nodes_list->number; i++)
    {
      size_t j;
      const NODE_STRUCTURE *node_structure = nodes_list->list[i];
      const ELEMENT *node = node_structure->element;

      const CONST_ELEMENT_LIST *menus = node_structure->menus;

      if (!menus)
        continue;

      document->modified_information |= F_DOCM_tree;

      if (menus->number > 1)
        {
          for (j = 1; j < menus->number; j++)
            {
               const ELEMENT *menu = menus->list[j];
               message_list_command_warn (error_messages,
                             (options && options->DEBUG.o.integer > 0),
                             menu, 0, "multiple @%s",
                             builtin_command_name (menu->e.c->cmd));
            }
        }

      for (j = 0; j < menus->number; j++)
        {
          const ELEMENT *menu = menus->list[j];
          ELEMENT *previous_node = 0;
          NODE_STRUCTURE *previous_node_structure = 0;
          size_t k;
          for (k = 0; k < menu->e.c->contents.number; k++)
            {
              const ELEMENT *menu_content = menu->e.c->contents.list[k];
              if (menu_content->type == ET_menu_entry)
                {
                  ELEMENT *menu_node = 0;
                  NODE_STRUCTURE *menu_node_structure = 0;
                  size_t l;
                  for (l = 0; l < menu_content->e.c->contents.number; l++)
                    {
                      const ELEMENT *content
                        = menu_content->e.c->contents.list[l];
                      if (content->type == ET_menu_entry_node)
                        {
                          const ELEMENT *manual_content
                           = lookup_extra_container (content,
                                                     AI_key_manual_content);

                          if (!manual_content)
                            {
                              if (check_menu_entries)
                                check_menu_entry (document, menu->e.c->cmd,
                                                  menu_content, content);
                              const char *normalized
                                = lookup_extra_string (content,
                                                       AI_key_normalized);
                              if (normalized)
                                {
                                  menu_node
                                   = find_identifier_target (identifiers_target,
                                                             normalized);
                                  if (menu_node
                                      && menu_node->e.c->cmd == CM_node)
                                    {
                                      int status;
                                      size_t menu_node_number
                                       = lookup_extra_integer (menu_node,
                                           AI_key_node_number, &status);
                                      menu_node_structure
                                        = nodes_list->list[menu_node_number -1];

                                      if (!menu_node_structure->menu_directions)
                                        menu_node_structure->menu_directions
                                          = new_directions ();
                                      menu_node_structure->menu_directions[D_up]
                                        = node;
                                    }
                                }
                            }
                          else
                            {
                              menu_node = menu_content->e.c->contents.list[l];
                            }
                          break;
                        }
                    }
                  if (menu_node && previous_node_structure)
                    {
                      const ELEMENT *prev_manual_content
                        = lookup_extra_container (previous_node,
                                                  AI_key_manual_content);
                      if (!prev_manual_content)
                        {
                          if (!previous_node_structure->menu_directions)
                            previous_node_structure->menu_directions
                              = new_directions ();

                          previous_node_structure->menu_directions[D_next]
                            = menu_node;
                        }
                    }
                  if (menu_node_structure && previous_node)
                    {
                      const ELEMENT *manual_content
                        = lookup_extra_container (menu_node,
                                                  AI_key_manual_content);

                      if (!manual_content)
                        {
                          if (!menu_node_structure->menu_directions)
                            menu_node_structure->menu_directions
                              = new_directions ();

                          menu_node_structure->menu_directions[D_prev]
                            = previous_node;
                        }
                    }
                    previous_node = menu_node;
                    previous_node_structure = menu_node_structure;
                }
            } /* end menu */
        }
    }

  /* Check @detailmenu */
  if (check_menu_entries && global_commands->detailmenu.number > 0)
    {
      size_t i;
      for (i = 0; i < global_commands->detailmenu.number; i++)
        {
          const ELEMENT *detailmenu = global_commands->detailmenu.list[i];
          size_t k;
          for (k = 0; k < detailmenu->e.c->contents.number; k++)
            {
              const ELEMENT *menu_content = detailmenu->e.c->contents.list[k];
              if (menu_content->type == ET_menu_entry)
                {
                  size_t l;
                  for (l = 0; l < menu_content->e.c->contents.number; l++)
                    {
                      const ELEMENT *content = menu_content->e.c->contents.list[l];
                      if (content->type == ET_menu_entry_node)
                        {
                          const ELEMENT *manual_content
                           = lookup_extra_container (content,
                                                   AI_key_manual_content);

                          if (!manual_content)
                            check_menu_entry (document,
                                              detailmenu->e.c->cmd,
                                              menu_content, content);
                          break;
                        }
                    }
                }
            }
        }
    }
}

static const ELEMENT *
section_direction_associated_node (const SECTION_STRUCTURE_LIST *sections_list,
                                   const SECTION_STRUCTURE *section_structure,
                                   enum directions direction)
{
  size_t i;
  static const ELEMENT * const *direction_bases[2];
  direction_bases[0] = section_structure->section_directions;
  direction_bases[1] = section_structure->toplevel_directions;
  for (i = 0; i < sizeof (direction_bases) / sizeof (direction_bases[0]);
       i++)
    {
      const ELEMENT * const *directions
        = direction_bases[i];
      if (directions && directions[direction])
        {
          const ELEMENT *section_to = directions[direction];
          if (direction_bases[i] != section_structure->toplevel_directions
              || direction == D_up
              || section_to->e.c->cmd != CM_top)
            {
              int status;
              size_t section_number
                = lookup_extra_integer (section_to,
                                        AI_key_section_number, &status);
              const SECTION_STRUCTURE *direction_structure
                = sections_list->list[section_number -1];
              if (direction_structure->associated_node)
                return direction_structure->associated_node;
            }
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
  const NODE_STRUCTURE_LIST *nodes_list = &document->nodes_list;
  const SECTION_STRUCTURE_LIST *sections_list = &document->sections_list;
  const C_HASHMAP *identifiers_target = &document->identifiers_target;
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;

  size_t i;
  const ELEMENT *top_node = 0;
  const ELEMENT *top_node_next = 0;

  if (nodes_list->number < 1)
    return;

  document->modified_information |= F_DOCM_tree;

  /* Go through all the nodes */

  for (i = 0; i < nodes_list->number; i++)
    {
      NODE_STRUCTURE *node_structure = nodes_list->list[i];
    /* as an exception to the rule we modify an element of the nodes list,
       so use a cast to remove const */
      ELEMENT *node = (ELEMENT *)node_structure->element;
      const char *normalized = lookup_extra_string (node, AI_key_normalized);
      const ELEMENT * const *menu_directions = node_structure->menu_directions;
      const ELEMENT *arguments_line = node->e.c->contents.list[0];
      int automatic_directions = (arguments_line->e.c->contents.number <= 1);

      if (automatic_directions)
        {
          if (strcmp (normalized, "Top"))
            {
              size_t d;
              for (d = 0; d < directions_length; d++)
                {
                  const ELEMENT *section;
              /* prev already defined for the node first Top node menu entry */
                  if (d == D_prev && top_node_next && node == top_node_next)
                    {
                      if (!node_structure->node_directions)
                        node_structure->node_directions = new_directions ();

                      if (!node_structure->node_directions[D_prev])
                         node_structure->node_directions[D_prev] = top_node;
                      continue;
                    }
                  section = node_structure->associated_section;
                  if (section
                      && ((!options)
                          || options->CHECK_NORMAL_MENU_STRUCTURE.o.integer > 0))
                    {
                      const ELEMENT *direction_associated_node;
                      int status;
                      size_t section_number
                        = lookup_extra_integer (section,
                                         AI_key_section_number, &status);
                      const SECTION_STRUCTURE *section_structure
                        = sections_list->list[section_number -1];
                      const SECTION_STRUCTURE *direction_structure
                        = section_structure;
          /* Prefer the section associated with a @part for node directions. */
                      if (section_structure->part_associated_section)
                        {
                          const ELEMENT *node_direction_section
                            = section_structure->part_associated_section;
                          size_t direction_number
                            = lookup_extra_integer (node_direction_section,
                                             AI_key_section_number, &status);
                          direction_structure
                            = sections_list->list[direction_number -1];
                        }
                      direction_associated_node
                        = section_direction_associated_node (sections_list,
                                                       direction_structure, d);
                      if (direction_associated_node)
                        {
                          const CONST_ELEMENT_LIST *menus = 0;
                          const ELEMENT * const *section_directions
                            = direction_structure->section_directions;
                          if (section_directions
                              && section_directions[D_up])
                            {
                              const ELEMENT *up_sec
                               = section_directions[D_up];
                              int status;
                              size_t section_number
                                = lookup_extra_integer (up_sec,
                                    AI_key_section_number, &status);
                              const SECTION_STRUCTURE *up_structure
                                = sections_list->list[section_number -1];

                              if (up_structure->associated_node)
                                {
                                  size_t up_node_number
                                    = lookup_extra_integer (
                                           up_structure->associated_node,
                                           AI_key_node_number, &status);
                                   const NODE_STRUCTURE *up_node_structure
                                     = nodes_list->list[up_node_number -1];
                                   menus = up_node_structure->menus;
                                }
                            }

                          if (menus
                              && menus->number > 0
                              && (!menu_directions
                                  || !menu_directions[d]))
                            {
                              char *node_texi
                                = target_element_to_texi_label (node);
                              char *direction_texi
                               = target_element_to_texi_label
                                               (direction_associated_node);
                              message_list_command_warn (error_messages,
                             (options && options->DEBUG.o.integer > 0),
                                       node, 0,
                      "node %s for `%s' is `%s' in sectioning but not in menu",
                                       direction_names[d], node_texi,
                                       direction_texi);
                              free (node_texi);
                              free (direction_texi);
                            }
                        }
                    }
          /*
            Direction was not set with sections, use menus.  This allows
            using only automatic direction for manuals without sectioning
            commands but with explicit menus.
           */
                  if ((!node_structure->node_directions
                       || !node_structure->node_directions[d])
                      && menu_directions
                      && menu_directions[d])
                    {
                      const ELEMENT *elt_menu_direction
                       = menu_directions[d];
                      const ELEMENT *menu_direction_manual_content
                        = lookup_extra_container (elt_menu_direction,
                                                AI_key_manual_content);
                      if (!menu_direction_manual_content)
                        {
                          if (((!options)
                           || options->CHECK_NORMAL_MENU_STRUCTURE.o.integer > 0)
                              && section)
                            {
                              char *node_texi
                                = target_element_to_texi_label (node);
                              char *entry_texi
                                = target_element_to_texi_label
                                                 (elt_menu_direction);
                              message_list_command_warn (error_messages,
                             (options && options->DEBUG.o.integer > 0),
                             node, 0,
               "node `%s' is %s for `%s' in menu but not in sectioning",
                                entry_texi, direction_names[d], node_texi);
                              free (node_texi);
                              free (entry_texi);
                            }
                          if (!node_structure->node_directions)
                            node_structure->node_directions = new_directions ();

                          node_structure->node_directions[d]
                             = elt_menu_direction;
                        }
                    }
                }
            }
          else if (!node_structure->node_directions
                   || !node_structure->node_directions[D_next])
            {
              /* use first menu entry if available as next for Top */
              const ELEMENT *menu_child
                 = first_menu_node (node_structure, identifiers_target);
              if (menu_child)
                {
                  top_node_next = menu_child;
                }
              else
                {
                  /* use the first non top node as next for Top */
                  size_t j;
                  for (j = 0; j < nodes_list->number; j++)
                    {
                      const NODE_STRUCTURE *first_non_top_node_structure
                        = nodes_list->list[j];
                      const ELEMENT *first_non_top_node
                        = first_non_top_node_structure->element;
                      if (first_non_top_node != node)
                        {
                          top_node_next = first_non_top_node;
                          break;
                        }
                    }
                }
              if (top_node_next)
                {
                  if (!node_structure->node_directions)
                    node_structure->node_directions = new_directions ();
                  node_structure->node_directions[D_next] = top_node_next;
                  const ELEMENT *top_node_next_manual_content
                   = lookup_extra_container (top_node_next,
                                             AI_key_manual_content);
                  if (!top_node_next_manual_content)
                    top_node = node;
                  else
                    top_node_next = 0;
                }
            }
        }
  /* check consistency between node pointer and node entries menu order */
      if (((!options)
           || options->CHECK_NORMAL_MENU_STRUCTURE.o.integer > 0)
          && strcmp (normalized, "Top"))
        {
          const ELEMENT * const *node_directions
                           = node_structure->node_directions;
          if (node_directions && menu_directions)
            {
              size_t d;
              for (d = 0; d < directions_length; d++)
                {
                  if (node_directions[d]
                      && menu_directions[d]
                      && node_directions[d]
                           != menu_directions[d])
                    {
                      const ELEMENT *menu_direction
                       = menu_directions[d];
                      const ELEMENT *menu_dir_manual_content
                       = lookup_extra_container (menu_direction,
                                                 AI_key_manual_content);
                      const ELEMENT *node_dir_manual_content
                       = lookup_extra_container (node_directions[d],
                                                 AI_key_manual_content);
                      if (!menu_dir_manual_content && !node_dir_manual_content)
                        {
                          char *node_texi = target_element_to_texi_label (node);
                          char *dir_texi = target_element_to_texi_label
                                            (node_directions[d]);
                          char *menu_dir_texi
                             = target_element_to_texi_label (menu_direction);
                          message_list_command_warn (error_messages,
                             (options && options->DEBUG.o.integer > 0),
                                           node, 0,
                    "node %s pointer for `%s' is `%s' but %s is `%s' in menu",
                                           direction_names[d], node_texi,
                                           dir_texi, direction_names[d],
                                           menu_dir_texi);
                          free (node_texi);
                          free (dir_texi);
                          free (menu_dir_texi);
                        }
                    }
                }
            }
        }
      /* check for node up / menu up mismatch */
      if ((!options)
          || options->CHECK_MISSING_MENU_ENTRY.o.integer > 0)
        {
          const ELEMENT * const *node_directions
                           = node_structure->node_directions;
          const ELEMENT *up_node = 0;
          if (node_directions && node_directions[D_up])
            up_node = node_directions[D_up];
          if (up_node)
            {
              const ELEMENT *manual_content = lookup_extra_container (up_node,
                                                       AI_key_manual_content);
              int is_target = (node->flags & EF_is_target);

              /* No check if node up is an external manual */
              if (!manual_content
            /* no check for a redundant node, the node registered in the menu
               was the main equivalent node */
                  && is_target)
                {
                  int status;
                  size_t up_node_number
                    = lookup_extra_integer (up_node,
                                            AI_key_node_number, &status);
                  const NODE_STRUCTURE *up_node_structure
                    = nodes_list->list[up_node_number -1];
                  const CONST_ELEMENT_LIST *menus = up_node_structure->menus;
                  int found = 0;
                    /* check only if there are menus */
                  if (menus)
                    {
                      size_t j;
                      for (j = 0; j < menus->number; j++)
                        {
                          const ELEMENT *menu = menus->list[j];
                          size_t k;
                          for (k = 0; k < menu->e.c->contents.number; k++)
                            {
                              const ELEMENT *menu_content = menu->e.c->contents.list[k];
                              if (menu_content->type == ET_menu_entry)
                                {
                                  const ELEMENT *menu_node
                                    = normalized_entry_associated_internal_node (
                                                             menu_content,
                                                              identifiers_target);
                                  if (menu_node == node)
                                    {
                                      found = 1;
                                      break;
                                    }
                                }
                            }
                          if (found)
                            break;
                        }
                      if (!found)
                        {
                          char *up_texi = target_element_to_texi_label (up_node);
                          char *node_texi = target_element_to_texi_label (node);
                          message_list_command_warn (error_messages,
                             (options && options->DEBUG.o.integer > 0),
                                  up_node, 0,
           "node `%s' lacks menu item for `%s' despite being its Up target",
                                  up_texi, node_texi);
                          free (up_texi);
                          free (node_texi);
                        }
                    }
                }
            }
        }
    }
}

/* set node directions based on sectioning and @node explicit directions */
void
construct_nodes_tree (DOCUMENT *document)
{
  const C_HASHMAP *identifiers_target = &document->identifiers_target;
  const SECTION_STRUCTURE_LIST *sections_list = &document->sections_list;
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;

  const ELEMENT *top_node = 0;
  const ELEMENT *top_node_section_child = 0;

  size_t i;

  for (i = 0; i < document->nodes_list.number; i++)
    {
      NODE_STRUCTURE *node_structure = document->nodes_list.list[i];
      ELEMENT *node = (ELEMENT *)node_structure->element;
      ELEMENT *arguments_line;
      const char *normalized;
      int is_target;
      int automatic_directions;

      if (node->e.c->cmd != CM_node)
        continue;

      normalized = lookup_extra_string (node, AI_key_normalized);
      if (!normalized)
        continue;

      document->modified_information |= F_DOCM_tree;

      is_target = (node->flags & EF_is_target);
      if (is_target && !strcmp (normalized, "Top"))
        top_node = node;

      arguments_line = node->e.c->contents.list[0];
      automatic_directions = (arguments_line->e.c->contents.number <= 1);

      if (automatic_directions)
        if (!top_node || node != top_node)
          {
            enum directions d;
            for (d = 0; d < directions_length; d++)
              {
                const ELEMENT *section;
                const ELEMENT *direction_associated_node;
           /* prev defined as Top for the first Top node menu entry node */
                if (d == D_prev && top_node_section_child
                    && node == top_node_section_child)
                  {
                    if (!node_structure->node_directions)
                      node_structure->node_directions = new_directions ();
                    node_structure->node_directions[D_prev] = top_node;
                    continue;
                  }
                section = node_structure->associated_section;
                if (section)
                  {
                    int status;
                    size_t section_number
                      = lookup_extra_integer (section,
                                       AI_key_section_number, &status);
                    const SECTION_STRUCTURE *section_structure
                      = sections_list->list[section_number -1];
          /* Prefer the section associated with a @part for node directions. */
                    if (section_structure->part_associated_section)
                        section = section_structure->part_associated_section;

                    direction_associated_node
                      = section_direction_associated_node (sections_list,
                                                        section_structure, d);
                    if (direction_associated_node)
                      {
                        if (!node_structure->node_directions)
                          node_structure->node_directions = new_directions ();
                        node_structure->node_directions[d]
                           = direction_associated_node;
                      }
                  }
              }
          }
        else /* Special case for Top node, use first section */
          {
            const ELEMENT *section = node_structure->associated_section;
            const CONST_ELEMENT_LIST *section_childs = 0;
            int status;
            if (section)
              {
                size_t associated_section_number
                    = lookup_extra_integer (section,
                                            AI_key_section_number, &status);
                const SECTION_STRUCTURE *associated_structure
                        = sections_list->list[associated_section_number -1];
                section_childs = associated_structure->section_childs;
              }

            if (section_childs && section_childs->number > 0)
              {
                const ELEMENT *first_sec = section_childs->list[0];
                size_t section_number
                  = lookup_extra_integer (first_sec,
                                          AI_key_section_number, &status);
                const SECTION_STRUCTURE *section_child_structure
                  = sections_list->list[section_number -1];
                if (section_child_structure->associated_node)
                  {
                    if (!node_structure->node_directions)
                      node_structure->node_directions = new_directions ();
                    top_node_section_child
                      = section_child_structure->associated_node;
                    node_structure->node_directions[D_next]
                      = top_node_section_child;
                  }
              }
          }
      else /* explicit directions */
        {
          size_t i;
          for (i = 1; i < arguments_line->e.c->contents.number; i++)
            {
              const ELEMENT *direction_element
                = arguments_line->e.c->contents.list[i];
              int direction = (int) i - 1;
              const ELEMENT *manual_content
                            = lookup_extra_container (direction_element,
                                                    AI_key_manual_content);
              if (manual_content)
                {
                  if (!node_structure->node_directions)
                    node_structure->node_directions = new_directions ();
                  node_structure->node_directions[direction]
                    = direction_element;
                }
              else
                {
                  char *direction_normalized
                    = lookup_extra_string (direction_element, AI_key_normalized);
                  if (direction_normalized)
                    {
                      const ELEMENT *node_target
                        = find_identifier_target (identifiers_target,
                                                  direction_normalized);
                      if (node_target)
                        {
                          if (!node_structure->node_directions)
                            node_structure->node_directions = new_directions ();
                          node_structure->node_directions[direction]
                            = node_target;
                          if ((!options)
                               || options->novalidate.o.integer <= 0)
                            {
                               const ELEMENT *direction_node_content
                                 = lookup_extra_container (direction_element,
                                                      AI_key_node_content);
                               if (!check_node_same_texinfo_code (node_target,
                                                       direction_node_content))
                                 {
                                   char *direction_texi
                                    = link_element_to_texi (direction_element);
                                   char *node_texi
                                    = target_element_to_texi_label (node);
                                   char *node_target_texi
                                    = target_element_to_texi_label (node_target);
                                   message_list_command_warn (error_messages,
                             (options && options->DEBUG.o.integer > 0),
                                       node, 0,
                "%s pointer `%s' (for node `%s') different from %s name `%s'",
                                       direction_texts[direction],
                                       direction_texi, node_texi,
                                       builtin_command_name
                                                   (node_target->e.c->cmd),
                                       node_target_texi);
                                   free (direction_texi);
                                   free (node_texi);
                                   free (node_target_texi);
                                 }
                             }
                        }
                      else
                        {
                          if ((!options)
                               || options->novalidate.o.integer <= 0)
                            {
                              char *direction_texi
                                 = link_element_to_texi (direction_element);
                              message_list_command_error (
                                     error_messages,
                        (options && options->DEBUG.o.integer > 0), node,
                                     "%s reference to nonexistent `%s'",
                                     direction_texts[direction],
                                     direction_texi);
                              free (direction_texi);
                            }
                        }
                    }
                }
            }
        }
    }

  document->modified_information |= F_DOCM_nodes_list;
}

void
associate_internal_references (DOCUMENT *document)
{
  const C_HASHMAP *identifiers_target = &document->identifiers_target;
  const ELEMENT_LIST *refs = &document->internal_references;
  ERROR_MESSAGE_LIST *error_messages = &document->error_messages;
  OPTIONS *options = document->options;

  size_t i;

  if (!refs || !refs->number)
    return;

  document->modified_information |= F_DOCM_tree;

  for (i = 0; i < refs->number; i++)
    {
      ELEMENT *ref = refs->list[i];
      ELEMENT *label_element;
      const ELEMENT *label_node_content;

      if (ref->type == ET_menu_entry_node)
        label_element = ref;
      else
        label_element = ref->e.c->contents.list[0];

      label_node_content
        = lookup_extra_container (label_element, AI_key_node_content);
      if (label_node_content)
        {
          char *normalized
            = convert_contents_to_identifier (label_node_content);
          if (normalized)
            {
              if (strlen (normalized))
                {
                  add_extra_string (label_element, AI_key_normalized,
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
          const ELEMENT *node_target = 0;
          const char *normalized = lookup_extra_string (label_element,
                                                  AI_key_normalized);
          if (normalized)
            {
              node_target
                = find_identifier_target (identifiers_target,
                                          normalized);
            }

          if (!node_target)
            {
              if ((!options)
                  || options->novalidate.o.integer <= 0)
                {
                  char *label_texi = link_element_to_texi (label_element);
                  message_list_command_error (error_messages,
                        (options && options->DEBUG.o.integer > 0),
                             ref, "@%s reference to nonexistent node `%s'",
                             builtin_command_name (ref->e.c->cmd), label_texi);
                  free (label_texi);
                }
            }
          else
            {
              label_node_content = lookup_extra_container (label_element,
                                                         AI_key_node_content);
              if ((!options)
                  || options->novalidate.o.integer <= 0)
                {
                  if (!check_node_same_texinfo_code (node_target,
                                                     label_node_content))
                    {
                      char *label_texi = link_element_to_texi (label_element);
                      char *target_texi
                         = target_element_to_texi_label (node_target);
                       message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                                ref, 0,
                                "@%s to `%s', different from %s name `%s'",
                                builtin_command_name (ref->e.c->cmd), label_texi,
                                builtin_command_name (node_target->e.c->cmd),
                                target_texi);
                      free (label_texi);
                      free (target_texi);
                    }
                }
            }
        }
    }
}

void
number_floats (DOCUMENT *document)
{
  const LISTOFFLOATS_TYPE_LIST *listoffloats_list = &document->listoffloats;
  size_t i;
  const SECTION_STRUCTURE_LIST *sections_list = &document->sections_list;

  if (!listoffloats_list)
    return;

  TEXT number;
  text_init (&number);

  document->modified_information |= F_DOCM_tree;

  for (i = 0; i < listoffloats_list->number; i++)
    {
      const LISTOFFLOATS_TYPE *listoffloats
        = &listoffloats_list->float_types[i];
      int float_index = 0;
      int nr_in_chapter = 0;
      const SECTION_STRUCTURE *current_chapter_structure = 0;
      size_t j;
      for (j = 0; j < listoffloats->float_list.number; j++)
        {
          FLOAT_INFORMATION *float_info
            = &listoffloats->float_list.list[j];
          ELEMENT *float_elt = float_info->float_element;
          const char *normalized
            = lookup_extra_string (float_elt, AI_key_normalized);
          const SECTION_STRUCTURE *up_structure;

          if (!normalized)
            continue;

          text_reset (&number);
          float_index++;
          up_structure = float_info->float_section;
          if (up_structure)
            {
              int status;
              size_t up_section_number;
              const ELEMENT *up = up_structure->element;
              while (1)
                {
                  const ELEMENT * const *section_directions
                    = up_structure->section_directions;
                  if (section_directions
                      && section_directions[D_up])
                    {
                      const ELEMENT *up_elt = section_directions[D_up];
                      if (up_elt->e.c->cmd
                          && command_structuring_level[up_elt->e.c->cmd] > 0)
                        {
                          up = up_elt;
                          up_section_number = lookup_extra_integer (up,
                                       AI_key_section_number, &status);
                          up_structure
                            = sections_list->list[up_section_number -1];
                          continue;
                        }
                    }
                  break;
                }
              if (!current_chapter_structure
                  || current_chapter_structure != up_structure)
                {
                  nr_in_chapter = 0;
                  current_chapter_structure = up_structure;
                }
              if (!(command_other_flags (up) & CF_unnumbered))
                {
                  const char *section_number
                    = lookup_extra_string (up, AI_key_section_heading_number);
                  nr_in_chapter++;
                  text_printf (&number, "%s.%zu", section_number,
                                                  nr_in_chapter);
                }
            }
          if (number.end == 0)
            text_printf (&number, "%d", float_index);
          add_extra_string_dup (float_elt, AI_key_float_number, number.text);
        }
    }
  free (number.text);
}

/*
  returns the texinfo tree corresponding to a single menu entry pointing
  to NODE.
  if USE_SECTIONS is set, use the section name as menu entry name. */
ELEMENT *
new_node_menu_entry (const ELEMENT *node,
                     const NODE_STRUCTURE_LIST *nodes_list, int use_sections)
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
  size_t i;
  int is_target = (node->flags & EF_is_target);
  if (is_target)
    node_name_element = node->e.c->contents.list[0]->e.c->contents.list[0];

  if (!node_name_element)
    return 0;

  if (use_sections)
    {
      size_t i;
      ELEMENT *name_element;
      int status;
      size_t node_number
        = lookup_extra_integer (node, AI_key_node_number, &status);
      const NODE_STRUCTURE *node_structure
        = nodes_list->list[node_number -1];

      if (node_structure->associated_title_command)
        {
          const ELEMENT *arguments_line
            = node_structure->associated_title_command->e.c->contents.list[0];
          name_element = arguments_line->e.c->contents.list[0];
        }
      else
        name_element = node_name_element; /* shouldn't happen */

      menu_entry_name = copy_contents (name_element, 0, ET_menu_entry_name);
      for (i = 0; i < menu_entry_name->e.c->contents.number; i++)
        {
          ELEMENT *content = menu_entry_name->e.c->contents.list[i];
          content->parent = menu_entry_name;
        }
      /*
      colons could be doubly protected, but it is probably better
      than not protected at all.
       */
      protect_colon_in_tree (menu_entry_name);
    }

  entry = new_element (ET_menu_entry);
  entry->e.c->source_info = node->e.c->source_info;

  menu_entry_node = copy_contents (node_name_element, 0, ET_menu_entry_node);
  for (i = 0; i < menu_entry_node->e.c->contents.number; i++)
    {
      ELEMENT *content = menu_entry_node->e.c->contents.list[i];
      content->parent = menu_entry_node;
    }

  /* do not protect here, as it could already be protected, and
     the menu entry should be the same as the node
  protect_colon_in_tree (menu_entry_node);
   */

  description = new_element (ET_menu_entry_description);
  preformatted = new_element (ET_preformatted);
  add_to_element_contents (description, preformatted);
  description_text = new_text_element (ET_normal_text);
  text_append (description_text->e.text, "\n");
  add_to_element_contents (preformatted, description_text);

  menu_entry_leading_text = new_text_element (ET_menu_entry_leading_text);
  text_append (menu_entry_leading_text->e.text, "* ");

  add_to_element_contents (entry, menu_entry_leading_text);

  if (use_sections)
    {
      ELEMENT *menu_entry_separator = new_text_element (ET_menu_entry_separator);
      ELEMENT *menu_entry_after_node = new_text_element (ET_menu_entry_separator);
      text_append (menu_entry_separator->e.text, ": ");
      text_append (menu_entry_after_node->e.text, ".");
      add_to_element_contents (entry, menu_entry_name);
      add_to_element_contents (entry, menu_entry_separator);
      add_to_element_contents (entry, menu_entry_node);
      add_to_element_contents (entry, menu_entry_after_node);
    }
  else
    {
      ELEMENT *menu_entry_separator = new_text_element (ET_menu_entry_separator);
      add_to_element_contents (entry, menu_entry_node);
      text_append (menu_entry_separator->e.text, "::");
      add_to_element_contents (entry, menu_entry_separator);
    }

  add_to_element_contents (entry, description);

  parsed_entry_node = parse_node_manual (menu_entry_node, 1);
  if (parsed_entry_node->node_content)
    {
      char *normalized;
      add_extra_container (menu_entry_node, AI_key_node_content,
                           parsed_entry_node->node_content);
      normalized = convert_to_identifier (parsed_entry_node->node_content);
      if (normalized)
        {
          if (strlen (normalized))
            {
              add_extra_string (menu_entry_node, AI_key_normalized,
                                normalized);
            }
          else
            free (normalized);
         }
    }
  /* seems that it may happen, if there is leading parenthesised text? */
  if (parsed_entry_node->manual_content)
    add_extra_container (menu_entry_node, AI_key_manual_content,
                         parsed_entry_node->manual_content);
  free (parsed_entry_node);

  return entry;
}

static void
insert_menu_comment_content (ELEMENT_LIST *element_list, size_t position,
                   ELEMENT *inserted_element, int no_leading_empty_line)
{
  ELEMENT *menu_comment = new_element (ET_menu_comment);
  ELEMENT *preformatted = new_element (ET_preformatted);
  ELEMENT *empty_line_first_after = new_text_element (ET_empty_line);
  ELEMENT *empty_line_second_after = new_text_element (ET_empty_line);
  size_t index_in_preformatted = 0;
  size_t i;

  add_to_element_contents (menu_comment, preformatted);

  if (!no_leading_empty_line)
    {
      ELEMENT *empty_line_before = new_text_element (ET_empty_line);
      text_append (empty_line_before->e.text, "\n");
      add_to_element_contents (preformatted, empty_line_before);
      index_in_preformatted = 1;
    }

  for (i = 0; i < inserted_element->e.c->contents.number; i++)
    inserted_element->e.c->contents.list[i]->parent = preformatted;

  insert_slice_into_contents (preformatted, index_in_preformatted,
                              inserted_element,
                              0, inserted_element->e.c->contents.number);

  text_append (empty_line_first_after->e.text, "\n");
  text_append (empty_line_second_after->e.text, "\n");
  add_to_element_contents (preformatted, empty_line_first_after);
  add_to_element_contents (preformatted, empty_line_second_after);

  insert_into_element_list (element_list, menu_comment, position);
}

ELEMENT *
new_complete_node_menu (const NODE_STRUCTURE *node_structure,
                        const NODE_STRUCTURE_LIST *nodes_list,
                        const SECTION_STRUCTURE_LIST *sections_list,
                        DOCUMENT *document,
                        LANG_TRANSLATION *lang_translations,
                        int debug_level, int use_sections)
{
  CONST_ELEMENT_LIST *node_childs
    = get_node_node_childs_from_sectioning (node_structure,
                                            sections_list);
  const ELEMENT *section;
  ELEMENT *new_menu;
  size_t i;

  if (node_childs->number <= 0)
    {
      destroy_const_element_list (node_childs);
      return 0;
    }

  /* only holds contents here, will add spaces and end in
     new_block_command */

  section = node_structure->associated_section;
  new_menu = new_command_element (ET_block_command, CM_menu);

  for (i = 0; i < node_childs->number; i++)
    {
      const ELEMENT *child = node_childs->list[i];
      ELEMENT *entry = new_node_menu_entry (child, nodes_list, use_sections);
      if (entry)
        {
          add_to_element_contents (new_menu, entry);
        }
    }

  if (section && section->e.c->cmd == CM_top && lang_translations)
    {
      const char *normalized = lookup_extra_string (node_structure->element,
                                                    AI_key_normalized);
      if (normalized && !strcmp (normalized, "Top"))
        {
          size_t content_index = 0;
          int in_appendix = 0;
          for (i = 0; i < node_childs->number; i++)
            {
              const ELEMENT *child = node_childs->list[i];
              int is_target = (child->flags & EF_is_target);
              const ELEMENT *child_section;
              int status;
              size_t node_child_number;
              const NODE_STRUCTURE *node_child_structure;

              if (!is_target)
                continue;

              node_child_number
                = lookup_extra_integer (child, AI_key_node_number, &status);
              node_child_structure = nodes_list->list[node_child_number -1];
              child_section = node_child_structure->associated_section;

              if (child_section)
                {
                  int part_added = 0;
                  int status;
                  size_t section_number
                    = lookup_extra_integer (child_section,
                                         AI_key_section_number, &status);
                  const SECTION_STRUCTURE *child_structure
                    = sections_list->list[section_number -1];

                  const ELEMENT *associated_part
                    = child_structure->associated_part;
                  if (associated_part)
                    {
                      const ELEMENT *part_arguments_line
                        = associated_part->e.c->contents.list[0];
                      const ELEMENT *part_line_arg
                        = part_arguments_line->e.c->contents.list[0];
                      ELEMENT *part_title_copy
                       = copy_contents (part_line_arg, 0, ET_NONE);
                      NAMED_STRING_ELEMENT_LIST *substrings
                                       = new_named_string_element_list ();
                      ELEMENT *part_title;
                      add_element_to_named_string_element_list (substrings,
                                                "part_title", part_title_copy);

                      part_title
                        = gdt_tree ("Part: {part_title}", document,
                                    lang_translations,
                                    substrings, debug_level, 0);

                      insert_menu_comment_content (&new_menu->e.c->contents,
                                                   content_index, part_title,
                                                   (content_index == 0));
                      destroy_element (part_title);

                      content_index++;
                      part_added = 1;
                      destroy_named_string_element_list (substrings);
                    }
                  if (!in_appendix
                      && command_other_flags (child_section) & CF_appendix)
                    {
                      ELEMENT *appendix_title
                        = gdt_tree ("Appendices", document,
                                    lang_translations,
                                    0, debug_level, 0);

                      insert_menu_comment_content (&new_menu->e.c->contents,
                                                   content_index,
                                                   appendix_title,
                                         (content_index == 0 || part_added));
                      destroy_element (appendix_title);

                      content_index++;
                      in_appendix++;
                    }
                }
              content_index++;
            }
        }
    }

  destroy_const_element_list (node_childs);

  new_block_command (new_menu);

  return (new_menu);
}

static ELEMENT_LIST *
print_down_menus (const ELEMENT *node, ELEMENT_STACK *up_nodes,
                  ERROR_MESSAGE_LIST *error_messages,
                  const OPTIONS *options,
                  const C_HASHMAP *identifiers_target,
                  const NODE_STRUCTURE_LIST *nodes_list,
                  const SECTION_STRUCTURE_LIST *sections_list,
                  int use_sections)
{
  ELEMENT_LIST *master_menu_contents;
  CONST_ELEMENT_LIST *menus;
  int status;
  size_t node_number;
  const NODE_STRUCTURE *node_structure;

  CONST_ELEMENT_LIST *node_menus;
  ELEMENT_LIST *node_children;
  ELEMENT *new_current_menu = 0;
  size_t i;

  if (node->e.c->cmd != CM_node)
    return 0;

  master_menu_contents = new_list ();

  node_number
    = lookup_extra_integer (node, AI_key_node_number, &status);
  node_structure = nodes_list->list[node_number -1];
  node_menus = node_structure->menus;

  if (node_menus && node_menus->number > 0)
    menus = node_menus;
  else
    {
      /* If there is no menu for the node, we create a temporary menu to be
         able to find and copy entries as if there was already a menu */
      new_current_menu = new_complete_node_menu (node_structure, nodes_list,
                                                 sections_list,
                                                 0, 0, 0, use_sections);
      if (new_current_menu)
        {
          menus = new_const_element_list ();
          add_to_const_element_list (menus, new_current_menu);
        }
      else
        return master_menu_contents;
    }

  node_children = new_list ();

  for (i = 0; i < menus->number; i++)
    {
      const ELEMENT *menu = menus->list[i];
      size_t j;
      for (j = 0; j < menu->e.c->contents.number; j++)
        {
          ELEMENT *entry = menu->e.c->contents.list[j];
          if (entry->type == ET_menu_entry)
            {
              ELEMENT *entry_copy = copy_tree (entry, 0);
              ELEMENT *node;
              add_to_element_list (master_menu_contents, entry_copy);
              /* gather node children to recursively print their menus */
              node = normalized_entry_associated_internal_node (entry,
                                                        identifiers_target);
              if (node)
                add_to_element_list (node_children, node);
            }
        }
    }

  if (!node_menus)
    destroy_const_element_list (menus);

  if (new_current_menu)
    destroy_element_and_children (new_current_menu);

  if (master_menu_contents->number > 0)
    {
      const ELEMENT *node_name_element;
      ELEMENT *node_title_copy;
      int status;
      size_t node_number
       = lookup_extra_integer (node, AI_key_node_number, &status);
      const NODE_STRUCTURE *node_structure
       = nodes_list->list[node_number -1];
      int new_up_nodes = 0;
      if (node_structure->associated_section)
        {
          const ELEMENT *associated_section
            = node_structure->associated_section;
          const ELEMENT *arguments_line
            = associated_section->e.c->contents.list[0];
          node_name_element = arguments_line->e.c->contents.list[0];
        }
      else
        {
          const ELEMENT *arguments_line = node->e.c->contents.list[0];
          node_name_element = arguments_line->e.c->contents.list[0];
        }

      node_title_copy = copy_contents (node_name_element, 0, ET_NONE);

      insert_menu_comment_content (master_menu_contents,
                                   0, node_title_copy, 0);

      destroy_element (node_title_copy);

      if (!up_nodes)
        {
          new_up_nodes = 1;
          up_nodes = (ELEMENT_STACK *) malloc (sizeof (ELEMENT_STACK));
          memset (up_nodes, 0, sizeof (ELEMENT_STACK));
        }

      push_stack_element (up_nodes, node);

      /* now recurse in the children */
      for (i = 0; i < node_children->number; i++)
        {
          const ELEMENT *child = node_children->list[i];
          const char *normalized_child
            = lookup_extra_string (child, AI_key_normalized);
          size_t j;
          int up_node_in_menu = 0;

          for (j = 0; j < up_nodes->top; j++)
            {
              const ELEMENT *up_node = up_nodes->stack[j];
              const char *normalized_up_node
                = lookup_extra_string (up_node, AI_key_normalized);
              if (!strcmp (normalized_child, normalized_up_node))
                {
                  char *up_node_texi
                    = target_element_to_texi_label (up_node);
                  message_list_command_warn (error_messages,
                                (options && options->DEBUG.o.integer > 0),
                                             up_node, 0,
                                   "node `%s' appears in its own menus",
                                   up_node_texi);
                  free (up_node_texi);
                  up_node_in_menu = 1;
                  break;
                }
            }

          if (!up_node_in_menu)
            {
              ELEMENT_LIST *child_menu_content
               = print_down_menus (child, up_nodes, error_messages,
                                   options, identifiers_target, nodes_list,
                                   sections_list, use_sections);
              if (child_menu_content)
                {
                  insert_list_slice_into_list (master_menu_contents,
                                               master_menu_contents->number,
                                               child_menu_content, 0,
                                               child_menu_content->number);
                  destroy_list (child_menu_content);
                }
            }
        }

      pop_stack_element (up_nodes);

      if (new_up_nodes)
        {
          free (up_nodes->stack);
          free (up_nodes);
        }
    }

  destroy_list (node_children);

  return master_menu_contents;
}

ELEMENT *
new_detailmenu (ERROR_MESSAGE_LIST *error_messages,
                const OPTIONS *options,
                LANG_TRANSLATION *lang_translation,
                const C_HASHMAP *identifiers_target,
                const NODE_STRUCTURE_LIST *nodes_list,
                const SECTION_STRUCTURE_LIST *sections_list,
                const CONST_ELEMENT_LIST *menus, int use_sections)
{
  /* only holds contents here, will add spaces and end in
     new_block_command */

  ELEMENT *new_detailmenu_e = new_command_element (ET_block_command,
                                                   CM_detailmenu);

  if (menus && menus->number > 0)
    {
      size_t i;
      for (i = 0; i < menus->number; i++)
        {
          const ELEMENT *menu = menus->list[i];
          size_t j;
          for (j = 0; j < menu->e.c->contents.number; j++)
            {
              const ELEMENT *entry = menu->e.c->contents.list[j];
              if (entry->type == ET_menu_entry)
                {
                  const ELEMENT *menu_node
                   = normalized_entry_associated_internal_node (entry,
                                                  identifiers_target);
                  if (menu_node)
                    {
                      ELEMENT_LIST *down_menus = print_down_menus (menu_node,
                                          0, error_messages, options,
                                          identifiers_target, nodes_list,
                                          sections_list, use_sections);
                      if (down_menus)
                        {
                          size_t k;
                          for (k = 0; k < down_menus->number; k++)
                            down_menus->list[k]->parent = new_detailmenu_e;
                          insert_list_slice_into_contents (new_detailmenu_e,
                                           new_detailmenu_e->e.c->contents.number,
                                           down_menus, 0, down_menus->number);
                          destroy_list (down_menus);
                        }
                    }
                }
            }
        }
    }
  if (new_detailmenu_e->e.c->contents.number > 0)
    {
      size_t i;
      ELEMENT *new_line = new_text_element (ET_normal_text);
    /* There is a menu comment with a preformatted added in front of each
       detailed menu section with the node section name */
      ELEMENT *first_preformatted
        = new_detailmenu_e->e.c->contents.list[0]->e.c->contents.list[0];

      text_append (new_line->e.text, "\n");
      new_line->parent = first_preformatted;
      insert_into_contents (first_preformatted, new_line, 0);

      if (options)
        {
          ELEMENT *master_menu_title;
          master_menu_title
            = gdt_tree (" --- The Detailed Node Listing ---", 0,
                        lang_translation, 0,
                        options->DEBUG.o.integer, 0);

          for (i = 0; i < master_menu_title->e.c->contents.number; i++)
            master_menu_title->e.c->contents.list[i]->parent = first_preformatted;

          insert_slice_into_contents (first_preformatted, 0,
                                      master_menu_title, 0,
                                      master_menu_title->e.c->contents.number);
          destroy_element (master_menu_title);
        }
      else
        {
          ELEMENT *master_menu_title_string = new_text_element (ET_normal_text);
          text_append (master_menu_title_string->e.text,
                       " --- The Detailed Node Listing ---");
          master_menu_title_string->parent = first_preformatted;
          insert_into_contents (first_preformatted,
                                master_menu_title_string, 0);
        }

      new_block_command (new_detailmenu_e);
      return new_detailmenu_e;
    }
  else
    {
      destroy_element (new_detailmenu_e);
      return 0;
    }
}

ELEMENT *
new_complete_menu_master_menu (ERROR_MESSAGE_LIST *error_messages,
                               const OPTIONS *options,
                               LANG_TRANSLATION *lang_translations,
                               const C_HASHMAP *identifiers_target,
                               const NODE_STRUCTURE_LIST *nodes_list,
                               const SECTION_STRUCTURE_LIST *sections_list,
                               const NODE_STRUCTURE *node_structure)
{
  ELEMENT *menu_node = new_complete_node_menu (node_structure,
                                               nodes_list, sections_list,
                                               0, lang_translations,
                                               options->DEBUG.o.integer, 0);

  if (menu_node)
    {
      const char *normalized
        = lookup_extra_string (node_structure->element, AI_key_normalized);
      if (normalized && !strcmp (normalized, "Top"))
        {
          if (node_structure->associated_section
              && node_structure->associated_section->e.c->cmd == CM_top)
            {
              CONST_ELEMENT_LIST *menus = new_const_element_list ();
              ELEMENT *detailmenu;

              add_to_const_element_list (menus, menu_node);
              detailmenu = new_detailmenu (error_messages, options,
                                           lang_translations,
                                           identifiers_target, nodes_list,
                                           sections_list, menus, 0);
              destroy_const_element_list (menus);

              if (detailmenu)
                {
                  /* add a blank line before the detailed node listing */
                  ELEMENT *menu_comment = new_element (ET_menu_comment);
                  ELEMENT *preformatted = new_element (ET_preformatted);
                  ELEMENT *empty_line
                     = new_text_element (ET_after_menu_description_line);

                  add_to_element_contents (menu_node, menu_comment);
                  add_to_element_contents (menu_comment, preformatted);
                  text_append_n (empty_line->e.text, "\n", 1);
                  add_to_element_contents (preformatted, empty_line);

                  add_to_element_contents (menu_node, detailmenu);
                }
            }
        }
    }
  return menu_node;
}
