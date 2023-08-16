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
#include <string.h>

#include "tree_types.h"
#include "tree.h"
#include "utils.h"
#include "element_types.h"
#include "command_ids.h"
#include "builtin_commands.h"
#include "extra.h"
#include "text.h"
#include "debug.h"
#include "transformations.h"

#include "cmd_structuring.c"

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

/* FIXME in indices.c, but for within parser only,
   use only one? */
INDEX *
indices_info_index_by_name (INDEX **indices_information, char *name)
{
  INDEX **i, *idx;

  for (i = indices_information; (idx = *i); i++)
    if (!strcmp (idx->name, name))
      return idx;
  return 0;
}


/* in Common.pm */
INDEX_ENTRY_AND_INDEX *
lookup_index_entry (ELEMENT *index_entry_info, INDEX **indices_information)
{
  INDEX_ENTRY_AND_INDEX *result = 0;
  KEY_PAIR *k = lookup_extra (index_entry_info->contents.list[1], "integer");
  char *entry_index_name = index_entry_info->contents.list[0]->text.text;
  int entry_number = (intptr_t) k->value;
  INDEX *index_info;

  index_info = indices_info_index_by_name (indices_information,
                                           entry_index_name);
  if (!index_info)
    return 0;

  result = malloc (sizeof (INDEX_ENTRY_AND_INDEX));
  result->index = index_info;
  result->index_entry = 0;
  if (index_info->index_number && entry_number <= index_info->index_number)
    {
      result->index_entry = &index_info->index_entries[entry_number -1];
    }
  return result;
}

/* in Common.pm */
ELEMENT *
modify_tree (ELEMENT *tree, ELEMENT *(*operation)(const char *type, ELEMENT *element, void* argument), void *argument)
{
  if (tree->args.number > 0)
    {
      int i;
      for (i = 0; i < tree->args.number; i++)
        {
          ELEMENT *new_args;
          new_args = (*operation) ("arg", tree->args.list[i], argument);
          if (new_args)
            {
             /* this puts the new args at the place of the old arg using the
               offset from the end of the array */
              insert_slice_into_args (tree, tree->args.number - i +1,
                                      new_args, 0,
                                      new_args->args.number);
            }
          else
            modify_tree (tree->args.list[i], operation, argument);
        }
    }
  if (tree->contents.number > 0)
    {
      int i;
      for (i = 0; i < tree->contents.number; i++)
        {
          ELEMENT *new_contents;
          new_contents = (*operation) ("content", tree->contents.list[i],
                                       argument);
          if (new_contents)
            {
           /* this puts the new contents at the place of the old using the
             offset from the end of the array */
              insert_slice_into_contents (tree, tree->contents.number - i +1,
                                          new_contents, 0,
                                          new_contents->contents.number);
            }
          else
            modify_tree (tree->contents.list[i], operation, argument);
        }
    }
  if (tree->source_mark_list.number > 0)
    {
      int i;
      for (i = 0; i < tree->source_mark_list.number; i++)
        {
          if (tree->source_mark_list.list[i]->element)
            {
              ELEMENT *new_element;
              new_element = (*operation) ("source_mark",
                                     tree->source_mark_list.list[i]->element,
                                          argument);
              if (new_element)
                {
                  /* FIXME destroy previous element? or let the operation
                     do it? */
                  tree->source_mark_list.list[i]->element = new_element;
                }
            }
        }
    }
  return tree;
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

void
relate_index_entries_to_table_items_in (ELEMENT *table,
                                        INDEX **indices_information)
{
  int i;

  if (table->contents.number <= 0)
    return;

  for (i = 0; i < table->contents.number; i++)
    {
      ELEMENT *table_entry = table->contents.list[i];
      ELEMENT *term;
      ELEMENT *definition;
      ELEMENT *item = 0;

      if (table_entry->type != ET_table_entry
          || table_entry->contents.number <= 0)
        continue;

      term = table_entry->contents.list[0];

      /*
       Move any index entries from the start of a 'table_definition' to
       the 'table_term'.
       */

      if (table_entry->contents.number > 1
          && table_entry->contents.list[1]->type == ET_table_definition)
        {
          size_t nr_index_entry_command = 0;
          int j;
          definition = table_entry->contents.list[1];

          for (j = 0; j < definition->contents.number; j++)
            {
              ELEMENT *child = definition->contents.list[j];
              if (child->type == ET_index_entry_command)
                {
                  child->parent = term;
                  nr_index_entry_command++;
                }
              else
                break;
            }
          if (nr_index_entry_command > 0)
            {
              insert_slice_into_contents (term, 0, definition, 0,
                                          nr_index_entry_command);
              remove_slice_from_contents (definition, 0,
                                          nr_index_entry_command);
            }
        }
      if (term->type == ET_table_term)
        {
          INDEX_ENTRY *index_entry = 0;
          int j;
         /*
         Relate the first index_entry_command in the 'table_term' to
         the term itself.
          */
          for (j = 0; j < term->contents.number; j++)
            {
              ELEMENT *content = term->contents.list[j];
              if (content->type == ET_index_entry_command)
                {
                  if (!index_entry)
                    {
                      INDEX_ENTRY_AND_INDEX *idx_info;
                      ELEMENT *index_entry_info = lookup_extra_element (content,
                                                                 "index_entry");
                      idx_info = lookup_index_entry (index_entry_info,
                                                     indices_information);
                      if (idx_info->index_entry)
                        index_entry = idx_info->index_entry;
                   }
                }
              else if (content->cmd && content->cmd == CM_item_LINE)
                {
                  if (!item)
                    item = content;
                }
              if (item && index_entry)
                {
                 /*
                  This is better than overwriting 'entry_element', which
                  holds important information.
                  */
                  index_entry->entry_associated_element = item;
                  break;
                }
            }
        }
    }
}

ELEMENT *
relate_index_entries_to_table_items_internal (const char *type,
                                              ELEMENT *current,
                                              void *argument)
{
  if (current->cmd && current->cmd == CM_table)
    {
      INDEX **indices_information = (INDEX **)argument;
      relate_index_entries_to_table_items_in (current, indices_information);
    }
  return 0;
}

void
relate_index_entries_to_table_items_in_tree (ELEMENT *tree,
                                             INDEX **indices_information)
{
  modify_tree (tree, &relate_index_entries_to_table_items_internal,
               indices_information);
}

void
move_index_entries_after_items (ELEMENT *current)
{
  ELEMENT *previous = 0;
  int i;

  for (i = 0; i < current->contents.number; i++)
    {
      ELEMENT *item = current->contents.list[i];
      if (previous && item->cmd && item->cmd == CM_item
          && previous->contents.number > 0)
        {
          ELEMENT *previous_ending_container;
          ELEMENT *prev_last_child = last_contents_child (previous);
          int last_entry_idx = -1;
          int j;
          size_t contents_nr;

          if (prev_last_child->type == ET_paragraph
              || prev_last_child->type == ET_preformatted)
            previous_ending_container = prev_last_child;
          else
            previous_ending_container = previous;

          contents_nr = previous_ending_container->contents.number;
          for (j = contents_nr - 1; j >= 0; j--)
            {
              ELEMENT *content = previous_ending_container->contents.list[j];
              if (content->type == ET_index_entry_command)
                last_entry_idx = j;
              else if (!content->cmd
                       || (content->cmd != CM_comment
                           && content->cmd != CM_c))
                break;
            }

          if (last_entry_idx >= 0)
            {
              size_t insertion_idx = 0;
              ELEMENT *item_container;

              if (item->contents.number
                  && item->contents.list[0]->type == ET_preformatted)
                item_container = item->contents.list[0];
              else
                item_container = item;

              for (j = last_entry_idx; j < contents_nr; j++)
                previous_ending_container->contents.list[j]->parent
                  = item_container;

              if (item_container->contents.number
                  && item_container->contents.list[0]->type
                          == ET_ignorable_spaces_after_command)
                {
                  TEXT *t = &item_container->contents.list[0]->text;
                  /*
                   insert after leading spaces, and add an end of line if there
                   is none
                   */
                  insertion_idx = 1;

                  if (t->text[t->end -1] != '\n')
                    {
                      text_append (t, "\n");
                    }
                }
              insert_slice_into_contents (item_container, insertion_idx,
                                          previous_ending_container,
                                          last_entry_idx, contents_nr);
              remove_slice_from_contents (previous_ending_container,
                                          last_entry_idx, contents_nr);
            }
        }
      previous = item;
    }
}

ELEMENT *
move_index_entries_after_items_internal (const char *type,
                                         ELEMENT *current,
                                         void *argument)
{
  if (current->cmd && (current->cmd == CM_enumerate
                       || current->cmd == CM_itemize))
    {
      move_index_entries_after_items (current);
    }
  return 0;
}

void
move_index_entries_after_items_in_tree (ELEMENT *tree)
{
  modify_tree (tree, &move_index_entries_after_items_internal, 0);
}

/* from Common.pm */
int
is_content_empty (ELEMENT *tree, int do_not_ignore_index_entries);

int
is_content_empty (ELEMENT *tree, int do_not_ignore_index_entries)
{
  int i;
  if (!tree || !tree->contents.number)
    return 1;

  for (i = 0; i < tree->contents.number; i++)
    {
      ELEMENT *content = tree->contents.list[i];
      if (content->cmd)
        {
          if (content->type == ET_index_entry_command)
            {
              if (do_not_ignore_index_entries)
                return 0;
              else
               continue;
            }
          if (builtin_command_flags(content) & CF_line)
            {
              if (builtin_command_other_flags(content) & CF_formatted_line
                  || builtin_command_other_flags(content) & CF_formattable_line)
                return 0;
              else
                continue;
            }
          else if (builtin_command_flags(content) & CF_nobrace)
            {
              if (builtin_command_other_flags(content) & CF_formatted_nobrace)
                return 0;
              else
                continue;
            }
          else if (builtin_command_other_flags(content) & CF_non_formatted_brace
                   || builtin_command_other_flags(content) & CF_non_formatted_block)
            continue;
          else
            return 0;
        }
      if (content->type == ET_paragraph)
        return 0;
      if (content->text.end > 0)
        {
          char *text = element_text (content);
          /* only whitespace characters */
          if (! text[strspn (text, whitespace_chars)] == '\0')
            return 0;
        }
      if (! is_content_empty (content, do_not_ignore_index_entries))
        return 0;
    }
  return 1;
}

/* also in node_name_normalization.c */
int ref_3_args_order[] = {0, 1, 2, -1};
int ref_5_args_order[] = {0, 1, 2, 4, 3, -1};

/*
 This converts a reference @-command to simple text using one of the
 arguments.  This is used to remove reference @-command from
 constructed node names trees, as node names cannot contain
 reference @-command while there could be some in the tree used in
 input for the node name tree.
 */
ELEMENT *
reference_to_arg_internal (const char *type,
                           ELEMENT *e,
                           void *argument)
{
  if (e->cmd
      && builtin_command_data[e->cmd].flags & CF_ref)
    {
      int index = 0;
      int *arguments_order = ref_5_args_order;
      ELEMENT *new = new_element (ET_NONE);
      new->parent = e->parent;
      if (e->cmd == CM_inforef || e->cmd == CM_link)
        arguments_order = ref_3_args_order;
      while (arguments_order[index] >= 0)
        {
          if (e->args.number > arguments_order[index])
            {
              ELEMENT *arg = e->args.list[arguments_order[index]];
            /*
             this will not detect if the content expands as spaces only, like
             @asis{ }, @ , but it is not an issue or could even be considered
             as a feature.
             */
              if (!is_content_empty (arg, 0))
                {
                  ELEMENT *removed
                      = remove_from_args (e, arguments_order[index]);
                  if (removed != arg)
                    fatal ("BUG: reference_to_arg_internal removed != arg");
                  /* avoid the type and spaces by getting only the contents */
                  new->contents = removed->contents;
                  removed->contents.list = 0;
                  destroy_element (removed);
                  break;
                }
            }
          index++;
        }
      destroy_element_and_children (e);
      if (new->contents.number == 0)
        text_append (&new->text, "");
      return new;
    }
  else
   return 0;
}

ELEMENT *
reference_to_arg_in_tree (ELEMENT *tree)
{
  return modify_tree (tree, &reference_to_arg_internal, 0);
}
