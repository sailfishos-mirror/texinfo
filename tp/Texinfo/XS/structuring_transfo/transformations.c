/* Copyright 2010-2024 Free Software Foundation, Inc.

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
#include <iconv.h>
#include <stdbool.h>
#include "unistr.h"

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "document_types.h"
#include "types_data.h"
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
#include "errors.h"
#include "debug.h"
#include "utils.h"
/* for copy_contents normalized_menu_entry_internal_node modify_tree
   protect_colon_in_tree new_asis_command_with_text
   protect_comma_in_tree protect_node_after_label_in_tree */
#include "manipulate_tree.h"
#include "convert_to_texinfo.h"
#include "targets.h"
#include "unicode.h"
#include "node_name_normalization.h"
#include "structuring.h"
#include "transformations.h"


/* in Common.pm */
INDEX_ENTRY_AND_INDEX *
lookup_index_entry (ELEMENT *index_entry_info, INDEX_LIST *indices_info)
{
  INDEX_ENTRY_AND_INDEX *result = 0;
  int status;
  int entry_number
    = lookup_extra_integer (index_entry_info->contents.list[1], "integer",
                            &status);
  char *entry_index_name = index_entry_info->contents.list[0]->text.text;
  INDEX *index_info;

  index_info = indices_info_index_by_name (indices_info,
                                           entry_index_name);
  if (!index_info)
    return 0;

  result = (INDEX_ENTRY_AND_INDEX *) malloc (sizeof (INDEX_ENTRY_AND_INDEX));
  result->index = index_info;
  result->entry_number = entry_number;
  result->index_entry = 0;
  if (index_info->entries_number && entry_number <= index_info->entries_number)
    {
      result->index_entry = &index_info->index_entries[entry_number -1];
    }
  return result;
}

/* In Texinfo::ManipulateTree */
void
protect_first_parenthesis (ELEMENT *element)
{
  int i;

  if (element->contents.number <= 0)
    return;
  for (i = 0; i < element->contents.number; i++)
    {
      ELEMENT *content = element->contents.list[i];
      const char *p;
      if (content->type != ET_normal_text || content->text.end == 0)
        continue;
      p = content->text.text;
      if (*p == '(')
        {
          ELEMENT *new_command
           = new_asis_command_with_text ("(", content->parent, content->type);
          ELEMENT *removed = 0;
          /* count UTF-8 encoded Unicode characters for source marks locations */
          uint8_t *u8_text = 0;
          size_t current_position;
          uint8_t *u8_p;
          size_t u8_len;

          if (content->source_mark_list.number)
            {
              u8_text = utf8_from_string (p);
              u8_p = u8_text;

              current_position = 0;

              u8_len = u8_mbsnlen (u8_p, 1);
              u8_p += u8_len;

              current_position
                = relocate_source_marks (&(content->source_mark_list),
                              new_command->args.list[0]->contents.list[0],
                                     current_position, u8_len);
            }

          if (!*(p+1))
            /* should be the same as content */
            removed = remove_from_contents (element, i);
          else
            {
              /* remove leading open brace */
              text_reset (&content->text);
              text_append (&content->text, p+1);

              if (u8_text)
                {
                  /* relocate all the remaining source marks */
                  SOURCE_MARK_LIST source_mark_list = content->source_mark_list;
                  memset (&(content->source_mark_list), 0,
                      sizeof (SOURCE_MARK_LIST));

                  u8_len = u8_mbsnlen (u8_p, u8_strlen (u8_p));
                  u8_p += u8_len;

                  current_position
                    = relocate_source_marks (&source_mark_list,
                       content, current_position, u8_len);
                  free (source_mark_list.list);
               }
            }
          insert_into_contents (element, new_command, i);
          free (u8_text);
          /* could destroy children too, but it should only be text, no
             children */
          if (removed)
            destroy_element (removed);
        }
      return;
    }
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
  int status;
  int section_modifier = lookup_extra_integer (section, "level_modifier",
                                               &status);
  if (status >= 0)
    {
      int level_to_remove;
      enum command_id cmd;
      int remaining_level;

      level_to_remove = section_modifier * modifier;
      if (level_to_remove < 0)
        cmd = CM_raisesections;
      else
        cmd = CM_lowersections;

      remaining_level = abs (level_to_remove);
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

ELEMENT_LIST *
fill_gaps_in_sectioning (ELEMENT *root, ELEMENT *commands_heading_content)
{
  ELEMENT_LIST *added_sections = new_list ();
  int idx_current_section = -1;
  int idx_next_section = -1;
  size_t idx = 0;

  while (idx < root->contents.number)
    {
      ELEMENT *content = root->contents.list[idx];
      enum command_id data_cmd = element_builtin_data_cmd (content);
      unsigned long flags = builtin_command_data[data_cmd].flags;

      if (!data_cmd || data_cmd == CM_node || !(CF_root & flags))
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
          ELEMENT_LIST *new_sections = new_list ();
          correct_level (next_section, current_section, 1);
          while (next_section_level - current_section_level > 1)
            {
              ELEMENT *line_content;
              ELEMENT *new_section = new_element (ET_NONE);
              ELEMENT *spaces_before_argument = new_element (ET_other_text);
              ELEMENT *line_arg = new_element (ET_line_arg);
              ELEMENT *spaces_after_argument = new_element (ET_other_text);
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

              if (commands_heading_content)
                {
                  line_content = copy_contents (commands_heading_content,
                                                ET_NONE);
                }
              else
                {
                  ELEMENT *asis_command = new_element (ET_NONE);
                  ELEMENT *brace_command_arg
                    = new_element (ET_brace_command_arg);
                  asis_command->cmd = CM_asis;
                  add_to_element_args (asis_command, brace_command_arg);
                  line_content = asis_command;
                }
              add_to_element_contents (line_arg, line_content);

              text_append (&empty_line->text, "\n");
              add_to_element_contents (new_section, empty_line);

              add_to_element_list (new_sections, new_section);
            }
          insert_list_slice_into_contents (root, idx_current_section+1,
                                          new_sections, 0,
                                          new_sections->number);
          idx_next_section += new_sections->number;
          insert_list_slice_into_list (added_sections,
                                      added_sections->number,
                                      new_sections, 0,
                                      new_sections->number);
          correct_level (next_section,
                         new_sections->list[new_sections->number -1], -1);
          destroy_list (new_sections);
        }
      idx_current_section = idx_next_section;

      /* find the new next section index */
      idx_next_section = idx_current_section +1;
      while (idx_next_section < root->contents.number)
        {
          ELEMENT *content = root->contents.list[idx_next_section];
          enum command_id data_cmd = element_builtin_data_cmd (content);
          unsigned long flags = builtin_command_data[data_cmd].flags;

          if (data_cmd && data_cmd != CM_node && (CF_root & flags))
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
                                        INDEX_LIST *indices_info)
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
          INDEX_ENTRY_AND_INDEX *entry_idx_info = 0;
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
                  if (!entry_idx_info)
                    {
                      INDEX_ENTRY_AND_INDEX *idx_info;
                      ELEMENT *index_entry_info = lookup_extra_element (content,
                                                                 "index_entry");
                      idx_info = lookup_index_entry (index_entry_info,
                                                     indices_info);
                      if (idx_info->index_entry)
                        entry_idx_info = idx_info;
                      else
                        free (idx_info);
                   }
                }
              /* the command in the tree is CM_item, not CM_item_LINE */
              else if (content->cmd == CM_item)
                {
                  if (!item)
                    item = content;
                }
              if (item && entry_idx_info)
                {
                  ELEMENT *index_entry_command = new_element (ET_NONE);
                  ELEMENT *e = new_element (ET_other_text);
                 /*
                  This is better than overwriting 'entry_element', which
                  holds important information.
                  */
                  entry_idx_info->index_entry->entry_associated_element = item;
              /* also add a reference from element to index entry in index */
                  text_append (&e->text, entry_idx_info->index->name);
                  add_to_element_contents (index_entry_command, e);
                  e = new_element (ET_NONE);
                  add_extra_integer (e, "integer",
                                     entry_idx_info->entry_number);
                  add_to_element_contents (index_entry_command, e);
                  add_extra_misc_args (item, "associated_index_entry",
                                       index_entry_command);
                  free (entry_idx_info);
                  break;
                }
            }
        }
    }
}

ELEMENT_LIST *
relate_index_entries_to_table_items_internal (const char *type,
                                              ELEMENT *current,
                                              void *argument)
{
  if (current->cmd && current->cmd == CM_table)
    {
      INDEX_LIST *indices_info = (INDEX_LIST *)argument;
      relate_index_entries_to_table_items_in (current, indices_info);
    }
  return 0;
}

void
relate_index_entries_to_table_items_in_tree (ELEMENT *tree,
                                             INDEX_LIST *indices_info)
{
  modify_tree (tree, &relate_index_entries_to_table_items_internal,
               indices_info);
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

ELEMENT_LIST *
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

/* ERROR_MESSAGES is not actually useful, as the code checks that
   the new node target label does not exist already.
 */
ELEMENT *
new_node (ERROR_MESSAGE_LIST *error_messages, ELEMENT *node_tree,
          DOCUMENT *document)
{
  const LABEL_LIST *identifiers_target = &document->identifiers_target;
  int document_descriptor = document->descriptor;
  int empty_node = 0;
  int appended_number;
  int new_line_at_end = 0;
  TEXT spaces_after_argument;
  ELEMENT *last_content;
  ELEMENT *comment_at_end = 0;
  ELEMENT *node = 0;
  char *normalized;
  /*
   We protect for all the contexts, as the node name should be
   the same in the different contexts, even if some protections
   are not needed for the parsing.  Also, this way the node tree
   can be directly reused in the menus for example, without
   additional protection, some parts could be double protected
   otherwise, those that are protected with @asis.

   needed in nodes lines, @*ref and in menus with a label
   */
  node_tree = protect_comma_in_tree (node_tree);
  /* always */
  protect_first_parenthesis (node_tree);
  /* in menu entry without label */
  node_tree = protect_colon_in_tree (node_tree);
  /* in menu entry with label */
  node_tree = protect_node_after_label_in_tree (node_tree);
  node_tree = reference_to_arg_in_tree (node_tree, document);

  if (node_tree->contents.number <= 0)
    {
      ELEMENT *empty_text = new_element (ET_normal_text);
      text_append (&empty_text->text, "");
      add_to_element_contents (node_tree, empty_text);
      empty_node = 1;
    }

  last_content = last_contents_child (node_tree);
  if (last_content->cmd == CM_c || last_content->cmd == CM_comment)
    {
      comment_at_end = pop_element_from_contents (node_tree);
      last_content = last_contents_child (node_tree);
    }

  text_init (&spaces_after_argument);
  text_append (&spaces_after_argument, "");
  if (last_content && last_content->type == ET_normal_text
      && last_content->text.end > 0)
    {
      int end = last_content->text.end;
      char *p = last_content->text.text + end-1;
      for (; p >= last_content->text.text; p--)
        {
          if (!strchr (whitespace_chars, *p))
            break;
          if (*p == '\n')
            new_line_at_end = 1;
          end--;
        }
      text_append (&spaces_after_argument, p+1);
      last_content->text.end = end;
    }
  if (!new_line_at_end && !comment_at_end)
    text_append (&spaces_after_argument, "\n");

  appended_number = 0+empty_node;

  while (1)
    {
      int i;
      char *non_hyphen_char;
      ELEMENT *target = 0;
      ELEMENT *appended_text = 0;
      ELEMENT *node_line_arg = new_element (ET_line_arg);
      ELEMENT *spaces_before = new_element (ET_other_text);
      ELEMENT *spaces_after = new_element (ET_other_text);

      node = new_element (ET_NONE);
      node->cmd = CM_node;
      add_to_element_args (node, node_line_arg);
      text_append (&spaces_before->text, " ");
      text_append (&spaces_after->text, spaces_after_argument.text);
      add_info_element_oot (node, "spaces_before_argument", spaces_before);
      add_info_element_oot (node_line_arg, "spaces_after_argument",
                            spaces_after);

      if (comment_at_end)
        add_info_element_oot (node_line_arg, "comment_at_end", comment_at_end);
      insert_slice_into_contents (node_line_arg, 0, node_tree, 0,
                                  node_tree->contents.number);

      for (i = 0; i < node_line_arg->contents.number; i++)
        node_line_arg->contents.list[i]->parent = node_line_arg;

      if (appended_number)
        {
          appended_text = new_element (ET_normal_text);
          text_printf (&appended_text->text, " %d", appended_number);
          add_to_element_contents (node_line_arg, appended_text);
        }
      normalized = convert_contents_to_identifier (node_line_arg);

      non_hyphen_char = normalized + strspn (normalized, "-");
      if (*non_hyphen_char)
        {
          if (identifiers_target->number > 0)
            {
              target = find_identifier_target (identifiers_target, normalized);
            }
          if (!target)
            break;
        }

      free (normalized);
      destroy_element (node_line_arg);
      if (appended_text)
        destroy_element (appended_text);
      destroy_element (node);
      appended_number++;
    }

  add_extra_string (node, "normalized", normalized);

  register_label_element (document_descriptor, node, error_messages);

  free (spaces_after_argument.text);

  return node;
}

ELEMENT_LIST *
reassociate_to_node (const char *type, ELEMENT *current, void *argument)
{
  ELEMENT_LIST *new_previous = (ELEMENT_LIST *) argument;
  ELEMENT *added_node = new_previous->list[0];
  ELEMENT *previous_node = new_previous->list[1];

  if (current->cmd == CM_menu)
    {
      ELEMENT_LIST *added_node_menus;
      if (previous_node)
        {
          ELEMENT_LIST *menus
            = lookup_extra_contents (previous_node, "menus");
          int previous_idx = -1;
          if (menus)
            {
              int i;
              for (i = 0; i < menus->number; i++)
                {
                  if (menus->list[i] == current)
                    {
                      previous_idx = i;
                      break;
                    }
                }
            }
          if (previous_idx < 0)
            fprintf (stderr, "BUG: menu %p not in previous node %p\n",
                             current, previous_node);
          else
            {
              /* removed element should be current */
              remove_from_element_list (menus, previous_idx);
              if (menus->number <= 0)
                {
                  KEY_PAIR *k = lookup_extra (previous_node, "menus");
                  k->key = "";
                  k->type = extra_deleted;
                  destroy_list (menus);
                }
            }
        }
      added_node_menus = add_extra_contents (added_node, "menus", 0);
      add_to_element_list (added_node_menus, current);
    }
  else
    {
      ELEMENT *element_node = lookup_extra_element (current, "element_node");
      if (element_node)
        {
          if (previous_node && element_node != previous_node)
            {
              char *element_debug = print_element_debug (current, 0);
              char *previous_node_texi
                = root_heading_command_to_texinfo (previous_node);
              char *element_node_texi
                = root_heading_command_to_texinfo (element_node);
              fprintf (stderr, "BUG: element %p not in previous node %p; %s\n"
                       "  previous node: %s\n"
                       "  current node: %s\n", current, previous_node,
                       element_debug, previous_node_texi, element_node_texi);
              free (element_debug);
              free (previous_node_texi);
              free (element_node_texi);
            }
          add_extra_element (current, "element_node", added_node);
        }
    }
  return 0;
}

/* in perl registrar and configuration.  The document errors list
   is used here.  It could be relevant to use an error messages list
   as argument instead of using the document error messages list, but
   it does not matter much as there should be no error, see comment
   before new_node */
ELEMENT_LIST *
insert_nodes_for_sectioning_commands (DOCUMENT *document)
{
  ELEMENT *root = document->tree;
  ELEMENT_LIST *added_nodes = new_list ();
  int idx;
  ELEMENT *previous_node = 0;

  for (idx = 0; idx < root->contents.number; idx++)
    {
      ELEMENT *content = root->contents.list[idx];
      enum command_id data_cmd = element_builtin_data_cmd (content);
      unsigned long flags = builtin_command_data[data_cmd].flags;

      if (data_cmd && data_cmd != CM_node && data_cmd != CM_part
          && flags & CF_root)
        {
          const ELEMENT *associated_node = lookup_extra_element (content,
                                                       "associated_node");
          if (!associated_node)
            {
              ELEMENT *added_node;
              ELEMENT *new_node_tree;

              document->modified_information |= F_DOCM_tree;

              if (content->cmd == CM_top)
                {
                  ELEMENT *top_node_text = new_element (ET_normal_text);
                  new_node_tree = new_element (ET_normal_text);
                  text_append (&top_node_text->text, "Top");
                  add_to_element_contents (new_node_tree, top_node_text);
                }
              else
                {
                  new_node_tree = copy_contents (content->args.list[0],
                                                 ET_NONE);
                }
              added_node = new_node (&document->error_messages, new_node_tree,
                                     document);
              destroy_element (new_node_tree);
              if (added_node)
                {
                  ELEMENT_LIST *new_previous = new_list ();
                  insert_into_contents (root, added_node, idx);
                  idx++;
                  add_to_element_list (added_nodes, added_node);
                  add_extra_element (added_node, "associated_section",
                                     content);
                  add_extra_element (content, "associated_node", added_node);
                  added_node->parent = content->parent;
                  /* reassociate index entries and menus */
                  add_to_element_list (new_previous, added_node);
                  add_to_element_list (new_previous, previous_node);
                  modify_tree (content, &reassociate_to_node,
                               (void *)new_previous);
                  destroy_list (new_previous);
                }
            }
        }
      if (content->cmd == CM_node)
        {
          int status;
          int is_target = lookup_extra_integer (content, "is_target", &status);
          if ((!status) && is_target)
            previous_node = content;
        }
    }
  return added_nodes;
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
ELEMENT_LIST *
reference_to_arg_internal (const char *type,
                           ELEMENT *e,
                           void *argument)
{
  if (e->cmd
      && builtin_command_data[e->cmd].flags & CF_ref)
    {
      DOCUMENT *document = (DOCUMENT *) argument;
      int index = 0;
      int *arguments_order = ref_5_args_order;
      /* container for the new elements to insert, will be destroyed
         by the caller */
      ELEMENT_LIST *container = new_list ();
      ELEMENT *new = new_element (ET_NONE);
      new->parent = e->parent;
      add_to_element_list (container, new);
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
                  destroy_element (removed);
                  break;
                }
            }
          index++;
        }
      if (document && document->internal_references.number > 0)
        {
          const ELEMENT *removed_internal_ref =
              remove_element_from_list (&document->internal_references, e);
          if (removed_internal_ref)
            document->modified_information |= F_DOCM_internal_references;
        }
      if (document)
        document->modified_information |= F_DOCM_tree;
      destroy_element_and_children (e);
      if (new->contents.number == 0)
        text_append (&new->text, "");
      return container;
    }
  else
   return 0;
}

ELEMENT *
reference_to_arg_in_tree (ELEMENT *tree, DOCUMENT *document)
{
  return modify_tree (tree, &reference_to_arg_internal, (void *) document);
}

void
prepend_new_menu_in_node_section (ELEMENT *node, ELEMENT *section,
                                  ELEMENT *current_menu)
{
  ELEMENT *empty_line = new_element (ET_empty_line);
  ELEMENT_LIST *menus = add_extra_contents (node, "menus", 0);

  add_to_element_contents (section, current_menu);
  text_append (&empty_line->text, "\n");
  add_to_element_contents (section, empty_line);

  add_to_element_list (menus, current_menu);
}

typedef struct EXISTING_ENTRY {
    const char *normalized;
    ELEMENT *menu;
    ELEMENT *entry;
} EXISTING_ENTRY;

void
complete_node_menu (ELEMENT *node, int use_sections)
{
  ELEMENT_LIST *node_childs = get_node_node_childs_from_sectioning (node);

  if (node_childs->number)
    {
      int existing_entries_nr = 0;
      int existing_entries_space = 5;
      EXISTING_ENTRY *existing_entries = 0;

      ELEMENT_LIST *pending = new_list ();
      ELEMENT *current_menu = 0;

      int i;
      const ELEMENT_LIST *menus = lookup_extra_contents (node, "menus");

      if (menus)
        {
          existing_entries
           = malloc (existing_entries_space * sizeof (EXISTING_ENTRY));

          for (i = 0; i < menus->number; i++)
            {
              ELEMENT *menu = menus->list[i];
              int j;
              for (j = 0; j < menu->contents.number; j++)
                {
                  ELEMENT *entry = menu->contents.list[j];
                  if (entry->type == ET_menu_entry)
                    {
                      const char *normalized_entry_node
                        = normalized_menu_entry_internal_node (entry);
                      if (normalized_entry_node)
                        {
                          if (existing_entries_nr == existing_entries_space)
                            {
                              existing_entries_space += 5;
                              existing_entries = realloc (existing_entries,
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

      for (i = 0; i < node_childs->number; i++)
        {
          const ELEMENT *node_entry = node_childs->list[i];
          const char *normalized = lookup_extra_string (node_entry, "normalized");
          if (normalized)
            {
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
                  if (pending->number)
                    {
                      int k;
                      for (j = 0; j < current_menu->contents.number; j++)
                      if (current_menu->contents.list[j] == entry)
                        break;
                      insert_list_slice_into_contents (current_menu, j,
                                                       pending, 0,
                                                       pending->number);
                      for (k = 0; k < pending->number; k++)
                        pending->list[k]->parent = current_menu;

                      pending->number = 0;
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
                    add_to_element_list (pending, entry);
                }
            }
        }

      if (pending->number)
        {
          int j;
          if (!current_menu)
            {
              ELEMENT *section = lookup_extra_element (node,
                                                       "associated_section");
              current_menu = new_element (ET_NONE);
              insert_list_slice_into_contents (current_menu, 0,
                                               pending, 0,
                                               pending->number);
              current_menu->parent = section;
              new_block_command (current_menu, CM_menu);
              prepend_new_menu_in_node_section (node, section,
                                                current_menu);
            }
          else
            {
              int offset_at_end = -1;
              const ELEMENT *last_menu_content
                = last_contents_child (current_menu);

              if (last_menu_content->cmd != CM_end)
                offset_at_end = 0;
              insert_list_slice_into_contents (current_menu,
                                current_menu->contents.number + offset_at_end,
                                        pending, 0, pending->number);
            }
          for (j = 0; j < pending->number; j++)
            pending->list[j]->parent = current_menu;

        }

      destroy_list (pending);

      free (existing_entries);
    }
  destroy_list (node_childs);
}

static ELEMENT_LIST *
get_non_automatic_nodes_with_sections (const ELEMENT *root)
{
  ELEMENT_LIST *non_automatic_nodes = new_list ();
  int i;

  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      if (content->cmd && content->cmd == CM_node
          && content->args.number <= 1)
        {
          const ELEMENT *associated_section
            = lookup_extra_element (content, "associated_section");
          if (associated_section)
            add_to_element_list (non_automatic_nodes, content);
        }
    }
  return non_automatic_nodes;
}

/* This should be called after structuring.c sectioning_structure */
void
complete_tree_nodes_menus (const ELEMENT *root, int use_sections)
{
  ELEMENT_LIST *non_automatic_nodes
     = get_non_automatic_nodes_with_sections (root);
  int i;
  for (i = 0; i < non_automatic_nodes->number; i++)
    {
      ELEMENT *node = non_automatic_nodes->list[i];
      complete_node_menu (node, use_sections);
    }
  destroy_list (non_automatic_nodes);
}

void
complete_tree_nodes_missing_menu (DOCUMENT *document, int use_sections)
{
  const ELEMENT *root = document->tree;
  OPTIONS *options = document->options;
  ELEMENT_LIST *non_automatic_nodes
     = get_non_automatic_nodes_with_sections (root);
  int i;
  for (i = 0; i < non_automatic_nodes->number; i++)
    {
      ELEMENT *node = non_automatic_nodes->list[i];
      const ELEMENT_LIST *menus = lookup_extra_contents (node, "menus");
      if (!(menus && menus->number > 0))
        {
          ELEMENT *section = lookup_extra_element (node, "associated_section");
          ELEMENT *current_menu = new_complete_node_menu (node, document,
                                                      options, use_sections);
          if (current_menu)
            {
              prepend_new_menu_in_node_section (node, section, current_menu);
              document->modified_information |= F_DOCM_tree;
            }
        }
    }
  destroy_list (non_automatic_nodes);
}

int
regenerate_master_menu (DOCUMENT *document, int use_sections)
{
  const LABEL_LIST *identifiers_target = &document->identifiers_target;

  const ELEMENT *top_node = find_identifier_target (identifiers_target, "Top");
  const ELEMENT_LIST *menus;
  ELEMENT *new_detailmenu_e;
  ELEMENT *last_menu;
  const ELEMENT *last_content;
  int i;
  int index;

  if (top_node)
    {
      menus = lookup_extra_contents (top_node, "menus");
      if (!menus || (menus->number <= 0))
        return 0;
    }
  else
    return 0;

  new_detailmenu_e = new_detailmenu (&document->error_messages,
                                    document->options, identifiers_target,
                                    menus, use_sections);

  /* no need for a master menu */
  if (!new_detailmenu_e)
    return 0;

  document->modified_information |= F_DOCM_tree;

  for (i = 0; i < menus->number; i++)
    {
      int detailmenu_index = 0;
      ELEMENT *menu = menus->list[i];
      for (detailmenu_index = 0; detailmenu_index < menu->contents.number;
           detailmenu_index++)
        {
          const ELEMENT *entry = menu->contents.list[detailmenu_index];
          if (entry->cmd == CM_detailmenu)
            {
              size_t j;
              ELEMENT *removed = remove_from_contents (menu, detailmenu_index);
              replace_element_in_list (&document->global_commands.detailmenu,
                                       removed, new_detailmenu_e);
              /* remove internal refs of removed entries */
              for (j = 0; j < removed->contents.number; j++)
                {
                  const ELEMENT *content = removed->contents.list[j];
                  if (content->type == ET_menu_entry)
                    {
                      size_t k;
                      for (k = 0; k < content->contents.number; k++)
                        {
                          const ELEMENT *entry_content = content->contents.list[k];
                          if (entry_content->type == ET_menu_entry_node)
                            {
                              const ELEMENT *removed_internal_ref =
                                remove_element_from_list (
                                        &document->internal_references,
                                                        entry_content);
                              if (removed_internal_ref)
                                document->modified_information
                                            |= F_DOCM_internal_references;
                              else
                                {
                                  char *removed_internal_texi
                                     = convert_to_texinfo (entry_content);
                                  fprintf (stderr,
                                    "BUG: %s: not found in internal refs\n",
                                      removed_internal_texi);
                                  free (removed_internal_texi);
                                }
                            }
                        }
                    }
                }
              destroy_element_and_children (removed);
              insert_into_contents (menu, new_detailmenu_e, detailmenu_index);
              return 1;
            }
        }
    }

  last_menu = menus->list[menus->number -1];
  index = last_menu->contents.number;
  last_content = last_contents_child (last_menu);
  if (last_content && last_content->cmd == CM_end)
    index--;

  new_detailmenu_e->parent = last_menu;

  if (index)
    {
      const ELEMENT *last_element = last_menu->contents.list[index-1];
      ELEMENT *preformatted = 0;
      if (last_element->type == ET_menu_comment
          && last_element->contents.number > 0)
        {
          ELEMENT *last_menu_comment_elt = last_contents_child (last_element);
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
  insert_into_contents (last_menu, new_detailmenu_e, index);
  add_to_element_list (&document->global_commands.detailmenu,
                       new_detailmenu_e);
  return 1;
}

/* NOTE in perl there is a separate registrar and customization_information,
   here we directly use a document from ARGUMENT for error registration and
   customization.
   It would be more flexible to pass separately error_messages and
   options, but would also require a specific structure, and we
   always have a document in C/XS, so it is simpler to use it.
   In Perl, the document may actually be used to get the registrar and
   customization_information. */
ELEMENT_LIST *
protect_hashchar_at_line_beginning_internal (const char *type,
                                             ELEMENT *current,
                                             void *argument)
{
  if ((current->type == ET_normal_text || current->type == ET_raw)
       && current->text.end > 0)
    {
      char *filename;
      int line_no = 0;
      int status = 0;
      filename = parse_line_directive (current->text.text, &status, &line_no);

      if (status)
        {
     /*
      find the $current element index in parent to check if first or preceded
      by a new line
      */
          ELEMENT *parent = current->parent;
          int i;

          if (filename)
            free (filename);

          for (i = 0; i < parent->contents.number; i++)
            {
              if (parent->contents.list[i] == current)
                {
                  int do_protect = 0;
                  if (i == 0)
                    do_protect = 1;
                  else
                    {
                      ELEMENT *previous = parent->contents.list[i-1];
                      if (type_data[previous->type].flags & TF_text
                          && previous->text.end > 0)
                         {
                           int end = previous->text.end;
                           if (previous->text.text[end -1] == '\n')
                             do_protect = 1;
                         }
                    }
                  if (do_protect)
                    {
                  /* do not actually protect in raw block command, but warn */
                      if (current->type == ET_raw)
                        {
                          ELEMENT *parent_for_warn = parent;
                          while (parent_for_warn)
                            {
                              if (parent_for_warn->cmd
                                  && parent_for_warn->source_info.line_nr)
                                {
                                  DOCUMENT *document = (DOCUMENT *) argument;
                                  const OPTIONS *options = document->options;

                                  message_list_command_warn (
                                    &document->error_messages,
                                    options, parent_for_warn, 0,
                                    "could not protect hash character in @%s",
                                builtin_command_name (parent_for_warn->cmd));
                                  break;
                                }
                              parent_for_warn = parent_for_warn->parent;
                            }
                          return 0;
                        }
                      else
                        {
                          ELEMENT_LIST *container = new_list ();
                          char *current_text = strdup (current->text.text);
                          char *p = current_text;
                          size_t leading_spaces_nr;
                          ELEMENT *leading_spaces = new_element (ET_normal_text);
                          ELEMENT *hashchar = new_element (ET_NONE);
                          ELEMENT *arg = new_element (ET_brace_command_arg);
                          /* count UTF-8 encoded Unicode characters for
                             source marks locations */
                          uint8_t *u8_text = 0;
                          size_t current_position;
                          const uint8_t *u8_p;
                          size_t u8_len;
                          SOURCE_MARK_LIST source_mark_list;

                          if (current->source_mark_list.number)
                            {
                              source_mark_list = current->source_mark_list;
                              memset (&(current->source_mark_list), 0,
                                  sizeof (SOURCE_MARK_LIST));

                              u8_text = utf8_from_string (p);
                              u8_p = u8_text;

                              current_position = 0;
                            }

                          /* NOTE not exactly the perl code, but use similar
                             code as line directive parsing so should be ok */

                          leading_spaces->parent = parent;
                          leading_spaces_nr = strspn (p, " \t");
                          if (leading_spaces_nr)
                            {
                              p += leading_spaces_nr;
                              *p = '\0'; /* as a side note, it replaces the # */
                              text_append (&leading_spaces->text, current_text);
                            }

                          if (u8_text)
                            {
                              u8_len = u8_mbsnlen (u8_p, leading_spaces_nr);
                              u8_p += u8_len;

                              current_position
                                = relocate_source_marks (&source_mark_list,
                                                         leading_spaces,
                                                     current_position, u8_len);
                            }

                          if (leading_spaces_nr
                              || leading_spaces->source_mark_list.number)
                            add_to_element_list (container, leading_spaces);
                          else
                            destroy_element (leading_spaces);

                          /* advance past # */
                          p++;

                          hashchar->cmd = CM_hashchar;
                          hashchar->parent = parent;
                          add_to_element_args (hashchar, arg);
                          add_to_element_list (container, hashchar);

                          if (u8_text)
                            {
                              u8_len = u8_mbsnlen (u8_p, 1);
                              u8_p += u8_len;

                              current_position
                                = relocate_source_marks (&source_mark_list,
                                                         hashchar,
                                                     current_position, u8_len);
                            }

                          text_reset (&current->text);
                          text_append (&current->text, p);
                          free (current_text);

                          if (u8_text)
                            {
                              /* relocate all the remaining source marks */
                              u8_len = u8_mbsnlen (u8_p, u8_strlen (u8_p));
                              u8_p += u8_len;

                              current_position
                                = relocate_source_marks (&source_mark_list,
                                          current, current_position, u8_len);

                              free (source_mark_list.list);
                              free (u8_text);
                            }

                          add_to_element_list (container, current);
                          return container;
                        }
                    }
                }
            }
        }
    }
  return 0;
}

/* NOTE in perl there is a customization_information, but here we use the
   document for error registration and customization */
ELEMENT *
protect_hashchar_at_line_beginning (DOCUMENT *document)
{
  ELEMENT *tree = document->tree;
  return modify_tree (tree, &protect_hashchar_at_line_beginning_internal,
                      (void *) document);
}

ELEMENT_LIST *
protect_first_parenthesis_in_targets_internal (const char *type,
                                               ELEMENT *current,
                                               void *argument)
{
  ELEMENT *element_label = get_label_element (current);
  if (element_label)
    protect_first_parenthesis (element_label);
  return 0;
}

void
protect_first_parenthesis_in_targets (ELEMENT *tree)
{
  modify_tree (tree, &protect_first_parenthesis_in_targets_internal, 0);
}
