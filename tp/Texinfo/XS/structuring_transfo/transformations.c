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
#include "structuring.h"
#include "convert_to_texinfo.h"
#include "targets.h"
#include "document.h"
#include "transformations.h"


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
  KEY_PAIR *k_integer
              = lookup_extra (index_entry_info->contents.list[1], "integer");
  char *entry_index_name = index_entry_info->contents.list[0]->text.text;
  int entry_number = (intptr_t) k_integer->value;
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
modify_tree (ELEMENT *tree,
             ELEMENT *(*operation)(const char *type, ELEMENT *element, void* argument),
             void *argument)
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
              /* *operation should take care of destroying removed element */
              remove_from_args (tree, i);
              insert_slice_into_args (tree, i,
                                      new_args, 0,
                                      new_args->args.number);
              i += new_args->args.number -1;
              destroy_element (new_args);
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
              /* *operation should take care of destroying removed element */
              remove_from_contents (tree, i);
              insert_slice_into_contents (tree, i,
                                          new_contents, 0,
                                          new_contents->contents.number);
              i += new_contents->contents.number -1;
              destroy_element (new_contents);
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
  KEY_PAIR *k_level_modifier = lookup_extra (section, "level_modifier");
  if (k_level_modifier)
    {
      int level_to_remove;
      int section_modifier = (intptr_t) k_level_modifier->value;
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
      /* container for the new elements to insert, will be destroyed
         by the caller */
      ELEMENT *container = new_element (ET_NONE);
      ELEMENT *new = new_element (ET_NONE);
      new->parent = e->parent;
      add_to_contents_as_array (container, new);
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
                  int i;
                  if (removed != arg)
                    fatal ("BUG: reference_to_arg_internal removed != arg");
                  /* avoid the type and spaces by getting only the contents */
                  insert_slice_into_contents (new, 0,
                                              removed, 0,
                                              removed->contents.number);
                  for (i = 0; i < new->contents.number; i++)
                    new->contents.list[i]->parent = new;
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
      return container;
    }
  else
   return 0;
}

ELEMENT *
reference_to_arg_in_tree (ELEMENT *tree)
{
  return modify_tree (tree, &reference_to_arg_internal, 0);
}

void
prepend_new_menu_in_node_section (ELEMENT * node, ELEMENT *section,
                                  ELEMENT *current_menu)
{
  ELEMENT *empty_line = new_element (ET_empty_line);
  ELEMENT *menus = lookup_extra_contents (node, "menus", 1);

  add_to_element_contents (section, current_menu);
  text_append (&empty_line->text, "\n");
  add_to_element_contents (section, empty_line);

  add_to_contents_as_array (menus, current_menu);
}

typedef struct EXISTING_ENTRY {
  char *normalized;
  ELEMENT *menu;
  ELEMENT *entry;
} EXISTING_ENTRY;

void
complete_node_menu (ELEMENT *node, int use_sections)
{
  ELEMENT *node_childs = get_node_node_childs_from_sectioning (node);

  if (node_childs->contents.number)
    {
      int existing_entries_nr = 0;
      int existing_entries_space = 5;
      EXISTING_ENTRY *existing_entries = 0;

      ELEMENT *pending = new_element (ET_NONE);
      ELEMENT *current_menu = 0;

      int i;
      ELEMENT* menus = lookup_extra_element (node, "menus");

      if (menus)
        {
          existing_entries
           = malloc(existing_entries_space * sizeof (EXISTING_ENTRY));

          for (i = 0; i < menus->contents.number; i++)
            {
              ELEMENT *menu = menus->contents.list[i];
              int j;
              for (j = 0; j < menu->contents.number; j++)
                {
                  ELEMENT *entry = menu->contents.list[j];
                  if (entry->type == ET_menu_entry)
                    {
                      char *normalized_entry_node
                        = normalized_menu_entry_internal_node (entry);
                      if (normalized_entry_node)
                        {
                          if (existing_entries_nr == existing_entries_space)
                            {
                              existing_entries_space += 5;
                              existing_entries = realloc(existing_entries,
                           existing_entries_space * sizeof (EXISTING_ENTRY));
                            }
                          existing_entries[existing_entries_nr].normalized
                            = normalized_entry_node;
                          existing_entries[existing_entries_nr].menu = menu;
                          existing_entries[existing_entries_nr].entry = entry;
                          existing_entries_nr++;
                        }
                    }
                }
            }
        }

      for (i = 0; i < node_childs->contents.number; i++)
        {
          ELEMENT *node_entry = node_childs->contents.list[i];
          KEY_PAIR *k_normalized = lookup_extra (node_entry, "normalized");
          if (k_normalized && k_normalized->value)
            {
              char *normalized = (char *)k_normalized->value;
              int j;
              ELEMENT *entry = 0;

              for (j = 0; j < existing_entries_nr; j++)
                {
                  if (!strcmp (existing_entries[j].normalized, normalized))
                    {
                      current_menu = existing_entries[j].menu;
                      entry = existing_entries[j].entry;
                      break;
                    }
                }
              if (entry)
                {
                  if (pending->contents.number)
                    {
                      int k;
                      for (j = 0; j < current_menu->contents.number; j++)
                      if (current_menu->contents.list[j] == entry)
                        break;
                      insert_slice_into_contents (current_menu, j,
                                                  pending, 0,
                                                  pending->contents.number);
                      for (k = 0; k < pending->contents.number; k++)
                        pending->contents.list[k]->parent = current_menu;

                      pending->contents.number = 0;
                    }
                }
              else
                {
                  entry = new_node_menu_entry (node_entry, use_sections);
             /*
              not set entry should mean an empty node.  We do not warn as
              we try, in general, to be silent in the transformations.
              */
                  if (entry)
                    add_to_contents_as_array (pending, entry);
                }
            }
        }

      if (pending->contents.number)
        {
          int j;
          if (!current_menu)
            {
              ELEMENT *section = lookup_extra_element (node,
                                                       "associated_section");
              current_menu = pending;
              current_menu->parent = section;
              new_block_command (current_menu, CM_menu);
              prepend_new_menu_in_node_section (node, section,
                                                current_menu);
            }
          else
            {
              int offset_at_end = -1;
              ELEMENT *last_menu_content = last_contents_child (current_menu);

              if (last_menu_content->cmd != CM_end)
                offset_at_end = 0;
              insert_slice_into_contents (current_menu,
                                current_menu->contents.number + offset_at_end,
                                        pending, 0, pending->contents.number);
            }
          for (j = 0; j < pending->contents.number; j++)
            pending->contents.list[j]->parent = current_menu;
        }
      if (current_menu != pending)
        destroy_element (pending);
      free (existing_entries);
    }
}

ELEMENT *
get_non_automatic_nodes_with_sections (ELEMENT *root)
{
  ELEMENT *non_automatic_nodes = new_element (ET_NONE);
  int i;

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      if (content->cmd && content->cmd == CM_node
          && content->args.number <= 1)
        {
          ELEMENT *associated_section
            = lookup_extra_element (content, "associated_section");
          if (associated_section)
            add_to_contents_as_array (non_automatic_nodes, content);
        }
    }
  return non_automatic_nodes;
}

/* This should be called after structuring.c sectioning_structure */
void
complete_tree_nodes_menus (ELEMENT *root, int use_sections)
{
  ELEMENT *non_automatic_nodes
     = get_non_automatic_nodes_with_sections (root);
  int i;
  for (i = 0; i < non_automatic_nodes->contents.number; i++)
    {
      ELEMENT *node = non_automatic_nodes->contents.list[i];
      complete_node_menu (node, use_sections);
    }
  destroy_element (non_automatic_nodes);
}

void
complete_tree_nodes_missing_menu (ELEMENT *root, int use_sections)
{
  ELEMENT *non_automatic_nodes
     = get_non_automatic_nodes_with_sections (root);
  int i;
  for (i = 0; i < non_automatic_nodes->contents.number; i++)
    {
      ELEMENT *node = non_automatic_nodes->contents.list[i];
      ELEMENT *menus = lookup_extra_element (node, "menus");
      if (!(menus && menus->contents.number > 0))
        {
          ELEMENT *section = lookup_extra_element (node, "associated_section");
          ELEMENT *current_menu = new_complete_node_menu (node, use_sections);
          if (current_menu)
            prepend_new_menu_in_node_section (node, section, current_menu);
        }
    }
  destroy_element (non_automatic_nodes);
}

/* FIXME in perl there is a customization_information argument:
# customization_information is used to pass down a translatable object with
# customization information for the gdt() call.
*/
int
regenerate_master_menu (DOCUMENT *document, int use_sections)
{
  LABEL_LIST *identifiers_target = document->identifiers_target;
  ELEMENT *top_node = find_identifier_target (identifiers_target, "Top");
  ELEMENT *menus;
  ELEMENT *master_menu;
  ELEMENT *last_menu;
  ELEMENT *last_content;
  int i;
  int index;

  if (top_node)
    {
      menus = lookup_extra_element (top_node, "menus");
      if (!menus || (menus->contents.number <= 0))
        return 0;
    }
  else
    return 0;

  master_menu = new_master_menu (identifiers_target,
                                 menus, use_sections);

  for (i = 0; i < menus->contents.number; i++)
    {
      int detailmenu_index = 0;
      ELEMENT *menu = menus->contents.list[i];
      for (detailmenu_index = 0; detailmenu_index < menu->contents.number;
           detailmenu_index++)
        {
          ELEMENT *entry = menu->contents.list[detailmenu_index];
          if (entry->cmd == CM_detailmenu)
            {
              destroy_element_and_children (
                 remove_from_contents (menu, detailmenu_index));
              insert_into_contents (menu, master_menu, detailmenu_index);
              return 1;
            }
        }
    }

  last_menu = last_contents_child (menus);
  index = last_menu->contents.number;
  last_content = last_contents_child (last_menu);
  if (last_content && last_content->cmd == CM_end)
    index--;

  master_menu->parent = last_menu;

  if (index)
    {
      ELEMENT *last_element = last_menu->contents.list[index-1];
      ELEMENT *preformatted = 0;
      if (last_element->type == ET_menu_comment
          && last_element->contents.number > 0)
        {
          ELEMENT *last_menu_comment_elt = last_contents_child(last_element);
          if (last_menu_comment_elt->type == ET_preformatted)
            preformatted = last_menu_comment_elt;
        }

      if (preformatted)
        {
          ELEMENT *empty_line = new_element (ET_empty_line);
          text_append (&empty_line->text, "\n");
          add_to_element_contents (preformatted, empty_line);
        }
      else if (last_element->type == ET_menu_entry)
        {
        /*
        there is a last menu entry, add a menu comment containing an empty line
        after it
         */
          ELEMENT *after_line = new_element (ET_after_menu_description_line);
          ELEMENT *menu_comment = new_element (ET_menu_comment);
          insert_into_contents (last_menu, menu_comment, index);
          index++;
          preformatted = new_element (ET_preformatted);
          add_to_element_contents (menu_comment, preformatted);
          text_append (&after_line->text, "\n");
          add_to_element_contents (preformatted, after_line);
        }
    }
  /* insert master menu */
  insert_into_contents (last_menu, master_menu, index);
  return 1;
}

ELEMENT *
new_asis_command_with_text (char *text, ELEMENT *parent, enum element_type type)
{
  ELEMENT *new_command = new_element (ET_NONE);
  ELEMENT *brace_command_arg = new_element (ET_brace_command_arg);
  ELEMENT *text_elt = new_element (type);
  new_command->cmd = CM_asis;
  new_command->parent = parent;
  add_to_element_args (new_command, brace_command_arg);
  text_append (&text_elt->text, text);
  add_to_element_contents (brace_command_arg, text_elt);
  return new_command;
}

ELEMENT *
protect_text (ELEMENT *current, char *to_protect)
{
  if (current->text.end > 0 && !(current->type == ET_raw)
      && strpbrk (current->text.text, to_protect))
    {
      ELEMENT *container = new_element (ET_NONE);
      char *p = current->text.text;
      while (*p)
        {
          int leading_nr = strcspn (p, to_protect);
          if (leading_nr)
            {
              ELEMENT *text_elt = new_element (current->type);
              text_elt->parent = current->parent;
              text_append_n (&text_elt->text, p, leading_nr);
              add_to_contents_as_array (container, text_elt);
              p += leading_nr;
            }
          if (*p)
            {
              int to_protect_nr = strspn (p, to_protect);
              if (!strcmp (to_protect, ","))
                {
                  int i;
                  for (i = 0; i < to_protect_nr; i++)
                    {
                      ELEMENT *comma = new_element (ET_NONE);
                      ELEMENT *brace_command_arg
                           = new_element (ET_brace_command_arg);
                      comma->cmd = CM_comma;
                      comma->parent = current->parent;
                      add_to_element_args (comma, brace_command_arg);
                      add_to_contents_as_array (container, comma);
                    }
                  p += to_protect_nr;
                }
              else
                {
                  ELEMENT *new_command;
                  char saved = p[to_protect_nr];
                  p[to_protect_nr] = '\0';
                  new_command = new_asis_command_with_text(p, current->parent,
                                                           current->type);
                  add_to_contents_as_array (container, new_command);
                  p += to_protect_nr;
                  *p = saved;
                }
            }
        }
      destroy_element (current);
      return container;
    }
  else
    return 0;
}

ELEMENT *
protect_colon (const char *type, ELEMENT *current, void *argument)
{
  return protect_text(current, ":");
}

ELEMENT *
protect_colon_in_tree (ELEMENT *tree)
{
  return modify_tree (tree, &protect_colon, 0);
}
