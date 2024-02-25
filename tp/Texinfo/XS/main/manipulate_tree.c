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

#include <config.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "unistr.h"

#include "tree_types.h"
#include "command_ids.h"
#include "text.h"
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
#include "debug.h"
#include "targets.h"
#include "utils.h"
#include "manipulate_tree.h"
#include "unicode.h"

/* copy_tree from Texinfo::Common */

ELEMENT *
copy_tree_internal (ELEMENT* current, ELEMENT *parent);

void
increase_ref_counter (ELEMENT *element)
{
  KEY_PAIR *k_counter;
  int *counter_ptr;

  k_counter = lookup_extra_by_index (element, "_counter", -1);
  if (!k_counter)
    add_extra_integer (element, "_counter", 0);
  k_counter = lookup_extra_by_index (element, "_counter", -1);
  counter_ptr = &k_counter->integer;
  (*counter_ptr) ++;
}

void
copy_associated_info (ASSOCIATED_INFO *info, ASSOCIATED_INFO* new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      KEY_PAIR *k_ref = &info->info[i];
      const char *key = k_ref->key;
      ELEMENT *f = k_ref->element;
      ELEMENT *new_extra_element;
      ELEMENT_LIST *new_extra_contents;
      KEY_PAIR *k_copy = 0;
      int j;

      if (k_ref->type == extra_deleted)
        continue;

      switch (k_ref->type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp(key, "_copy"))
            break;
          k_copy = lookup_extra_by_index (f, "_copy", -1);
          if (k_copy)
            {
              KEY_PAIR *k
                = get_associated_info_key (new_info, key, k_ref->type);
              k->element = k_copy->element;
            }
          else
            {
              increase_ref_counter (f);
            }
          copy_tree_internal (f, 0);
          break;
        case extra_contents:
        case extra_directions:
          {
          KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
          new_extra_contents = new_list ();
          k->list = new_extra_contents;
          for (j = 0; j < k_ref->list->number; j++)
            {
              ELEMENT *e = k_ref->list->list[j];
              if (!e && info->info[i].type == extra_directions)
                {
                  add_to_element_list (new_extra_contents, 0);
                }
              else
                {
                  k_copy = lookup_extra_by_index (e, "_copy", -1);
                  if (k_copy)
                    add_to_element_list (new_extra_contents,
                                         k_copy->element);
                  else
                    {
                      increase_ref_counter (e);
                      add_to_element_list (new_extra_contents, 0);
                    }
                  copy_tree_internal (e, 0);
                }
            }
          break;
          }
        case extra_container:
          {
          KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
          new_extra_element = new_element (ET_NONE);
          k->element = new_extra_element;
          for (j = 0; j < f->contents.number; j++)
            {
              ELEMENT *e = f->contents.list[j];
              k_copy = lookup_extra_by_index (e, "_copy", -1);
              if (k_copy)
                add_to_contents_as_array (new_extra_element,
                                          k_copy->element);
              else
                {
                  increase_ref_counter (e);
                  add_to_contents_as_array (new_extra_element, 0);
                }
              copy_tree_internal (e, 0);
            }
            break;
          }
        default:
          break;
        }
    }
}

ELEMENT *
copy_tree_internal (ELEMENT* current, ELEMENT *parent)
{
  KEY_PAIR *k_copy = 0;
  ELEMENT *new;
  int i;

  k_copy = lookup_extra_by_index (current, "_copy", -1);
  if (k_copy)
    {
      new = k_copy->element;
      if (parent && !new->parent)
        new->parent = parent;
      return new;
    }

  new = new_element(ET_NONE);
  if (current->type)
    new->type = current->type;
  if (current->cmd)
    new->cmd = current->cmd;
  if (current->text.space > 0)
    text_append (&new->text, current->text.text);

  increase_ref_counter (current);
  add_extra_element (current, "_copy", new);

  /*
  fprintf (stderr, "CTNEW %p %s %p\n", current,
                                       print_element_debug (current, 0), new);
  */

  for (i = 0; i < current->args.number; i++)
    add_to_element_args (new,
                copy_tree_internal(current->args.list[i], new));
  for (i = 0; i < current->contents.number; i++)
    add_to_element_contents (new,
                copy_tree_internal(current->contents.list[i], new));
  copy_associated_info (&current->info_info, &new->info_info);
  copy_associated_info (&current->extra_info, &new->extra_info);
  return new;
}

ELEMENT *
get_copy_ref (ELEMENT *element)
{
  KEY_PAIR *k_counter, *k_copy;
  int *counter_ptr;
  ELEMENT *result;

  k_copy = lookup_extra_by_index (element, "_copy", -1);
  result = k_copy->element;

  k_counter = lookup_extra_by_index (element, "_counter", -2);
  counter_ptr = &k_counter->integer;
  (*counter_ptr) --;

  if (*counter_ptr == 0)
    {
      element->extra_info.info_number -= 2;
    }

  return result;
}

void
copy_extra_info (ELEMENT *current, ELEMENT *new);

void
associate_info_references (ASSOCIATED_INFO *info, ASSOCIATED_INFO *new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      KEY_PAIR *k_ref = &info->info[i];
      const char *key = k_ref->key;
      ELEMENT *f = k_ref->element;
      ELEMENT *new_extra_element;
      int j;

      if (k_ref->type == extra_deleted)
        continue;

      switch (k_ref->type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp(key, "_copy"))
            break;
          {
            KEY_PAIR *k;
            KEY_PAIR *k_copy;
            k = lookup_associated_info (new_info, key);
            if (!k)
              {
                ELEMENT *e = get_copy_ref (f);
                k = get_associated_info_key (new_info, key,
                                             info->info[i].type);
                k->element = e;
              }
            k_copy = lookup_extra_by_index (f, "_copy", -1);
            if (k_copy)
              copy_extra_info (f, k_copy->element);
            break;
          }
        case extra_contents:
        case extra_directions:
          {
            KEY_PAIR *k = lookup_associated_info (new_info, key);
            ELEMENT_LIST *new_extra_contents = k->list;
            for (j = 0; j < k_ref->list->number; j++)
              {
                KEY_PAIR *k_copy;
                ELEMENT *e = k_ref->list->list[j];
                ELEMENT *new_e = new_extra_contents->list[j];
                if (!e && info->info[i].type == extra_directions)
                  {
                  }
                else
                  {
                    if (!new_e)
                      {
                        ELEMENT *new_ref = get_copy_ref (e);
                        new_extra_contents->list[j] = new_ref;
                      }
                    k_copy = lookup_extra_by_index (e, "_copy", -1);
                    if (k_copy)
                      copy_extra_info (e, k_copy->element);
                  }
              }
            break;
          }
        case extra_container:
          {
            KEY_PAIR *k = lookup_associated_info (new_info, key);
            new_extra_element = k->element;
            for (j = 0; j < f->contents.number; j++)
              {
                KEY_PAIR *k_copy;
                ELEMENT *e = f->contents.list[j];
                ELEMENT *new_e = new_extra_element->contents.list[j];
                if (!new_e)
                  {
                    ELEMENT *new_ref = get_copy_ref (e);
                    new_extra_element->contents.list[j] = new_ref;
                  }

                k_copy = lookup_extra_by_index (e, "_copy", -1);
                if (k_copy)
                  copy_extra_info (e, k_copy->element);
              }
            break;
          }
        case extra_string:
          { /* A simple string. */
            char *value = k_ref->string;
            KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
            k->string = strdup (value);
            break;
          }
        case extra_integer:
          if (!strcmp(key, "_counter"))
            break;
          { /* A simple integer. */
            KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
            k->integer = k_ref->integer;
            break;
          }
        case extra_misc_args:
          {
          int j;
          new_extra_element = new_element (ET_NONE);
          KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
          k->element = new_extra_element;
          for (j = 0; j < f->contents.number; j++)
            {
              ELEMENT *e = new_element (ET_NONE);
              KEY_PAIR *k_integer = lookup_extra (f->contents.list[j], "integer");
              if (k_integer)
                {
                  add_extra_integer (e, "integer", k_integer->integer);
                }
              else
                {
                  if (f->contents.list[j]->text.space > 0)
                    text_append (&e->text, f->contents.list[j]->text.text);
                }
              add_to_contents_as_array (new_extra_element, e);
            }
          break;
          }
        default:
          fatal ("associate_info_references: unknown extra type");
          break;
        }
    }
}

void
copy_extra_info (ELEMENT *current, ELEMENT *new)
{
  KEY_PAIR *k_copy = 0;
  int i;

  k_copy = lookup_extra_by_index (current, "_copy", -1);
  if (!k_copy)
    /* already done */
    return;
  get_copy_ref (current);

  for (i = 0; i < current->args.number; i++)
    copy_extra_info (current->args.list[i], new->args.list[i]);
  for (i = 0; i < current->contents.number; i++)
    copy_extra_info (current->contents.list[i], new->contents.list[i]);

  associate_info_references (&current->info_info, &new->info_info);
  associate_info_references (&current->extra_info, &new->extra_info);
}

ELEMENT *
copy_tree (ELEMENT *current)
{
  ELEMENT *copy = copy_tree_internal (current, 0);
  copy_extra_info (current, copy);
  return copy;
}

ELEMENT *
copy_contents (ELEMENT *element, enum element_type type)
{
  ELEMENT *tmp = new_element (type);
  ELEMENT *result;
  tmp->contents = element->contents;

  result = copy_tree (tmp);

  tmp->contents.list = 0;
  destroy_element (tmp);

  return result;
}



void
add_source_mark (SOURCE_MARK *source_mark, ELEMENT *e)
{
  SOURCE_MARK_LIST *s_mark_list = &e->source_mark_list;
  if (s_mark_list->number == s_mark_list->space)
    {
      s_mark_list->space++;
      s_mark_list->list
          = realloc (s_mark_list->list,
                     s_mark_list->space * sizeof (SOURCE_MARK *));
      if (!s_mark_list->list)
        fatal ("realloc failed");
    }
  s_mark_list->list[s_mark_list->number] = source_mark;
  s_mark_list->number++;
}

static SOURCE_MARK *
remove_from_source_mark_list (SOURCE_MARK_LIST *list, size_t where)
{
  SOURCE_MARK *removed;

  if (where < 0)
    where = list->number + where;

  if (where < 0 || where > list->number)
    fatal ("source marks list index out of bounds");

  removed = list->list[where];
  memmove (&list->list[where], &list->list[where + 1],
           (list->number - (where+1)) * sizeof (SOURCE_MARK *));
  list->number--;
  return removed;
}

/* relocate SOURCE_MARKS source marks with position between
   BEGIN_POSITION and BEGIN_POSITION + LEN to be relative to BEGIN_POSITION,
   and move to element E.
   Returns BEGIN_POSITION + LEN if there were source marks.
*/
size_t
relocate_source_marks (SOURCE_MARK_LIST *source_mark_list, ELEMENT *new_e,
                       size_t begin_position, size_t len)
{
  size_t i = 0;
  size_t j;
  size_t list_number = source_mark_list->number;
  size_t *indices_to_remove;
  size_t end_position;

  if (list_number == 0)
    return 0;

  end_position = begin_position + len;

  indices_to_remove = malloc (sizeof (size_t) * list_number);
  memset (indices_to_remove, 0, sizeof (size_t) * list_number);

  while (i < list_number)
    {
      SOURCE_MARK *source_mark
         = source_mark_list->list[i];
      if ((begin_position == 0 && source_mark->position == 0)
          || (source_mark->position > begin_position
              && source_mark->position <= end_position))
        {
          indices_to_remove[i] = 1;
          if (new_e->text.space > 0)
            {
              source_mark->position
                = source_mark->position - begin_position;
            }
          else
            {
         /*
         if the source mark is to be added to a command, it can only be right
         after the command.  The current use case is a symbol with a source
         mark after the symbol replaced by an @-command, so we are in
         the case of added_length = 1 and
         source_mark->position == end_position
         */
              if (source_mark->position - begin_position > 1)
                fprintf (stderr, "BUG? after command %zu way past %zu\n",
                                 source_mark->position, begin_position);
              source_mark->position = 0;
            }
          add_source_mark (source_mark, new_e);
        }
      i++;
      if (source_mark->position > end_position)
        break;
    }
  /* i is past the last index with a potential source mark to remove
     (to be ready for the next pass in the loop above).  So remove one */
  for (j = i - 1; ; j--)
    {
      if (indices_to_remove[j] == 1)
        remove_from_source_mark_list (source_mark_list, j);
      if (j == 0)
        break;
    }

  free (indices_to_remove);
  return end_position;
}



/* NODE->contents is the Texinfo for the specification of a node.  This
   function sets two fields on the returned object:

     manual_content - Texinfo tree for a manual name extracted from the
                      node specification.
     node_content - Texinfo tree for the node name on its own

   Objects returned from this function are used as an 'extra' key in
   the element for elements linking to nodes (such as @*ref,
   menu_entry_node or node direction arguments).  In that case
   modify_node is set to 1 and the node contents are modified in-place to
   hold the same elements as the returned objects.

   This function is also used for elements that are targets of links (@node and
   @anchor first argument, float second argument) mainly to check that
   the syntax for an external node is not used.  In that case modify_node
   is set to 0 and the node is not modified, and added elements are
   collected in a third field of the returned object,
     out_of_tree_elements - elements collected in manual_content or
                            node_content and not in the node
 */

NODE_SPEC_EXTRA *
parse_node_manual (ELEMENT *node, int modify_node)
{
  NODE_SPEC_EXTRA *result;
  ELEMENT *node_content = 0;
  int idx = 0; /* index into node->contents */

  result = malloc (sizeof (NODE_SPEC_EXTRA));
  result->manual_content = result->node_content = 0;
  /* if not modifying the tree, and there is a manual name, the elements
     added for the manual name and for the node content that are based
     on texts from tree elements are not anywhere in the tree.
     They are collected in result->out_of_tree_element to be freed later.
     These elements correspond to the text after the first manual name
     opening brace and text before and after the closing manual name brace */
  result->out_of_tree_elements = 0;

  /* If the content starts with a '(', try to get a manual name. */
  if (node->contents.number > 0 && node->contents.list[0]->text.end > 0
      && node->contents.list[0]->text.text[0] == '(')
    {
      ELEMENT *manual, *first;
      ELEMENT *new_first = 0;
      ELEMENT *opening_brace = 0;
      char *opening_bracket, *closing_bracket;

      /* Handle nested parentheses in the manual name, for whatever reason. */
      int bracket_count = 1; /* Number of ( seen minus number of ) seen. */

      manual = new_element (ET_NONE);

      /* If the first contents element is "(" followed by more text, split
         the leading "(" into its own element. */
      first = node->contents.list[0];
      if (first->text.end > 1)
        {
          if (modify_node)
            {
              opening_brace = new_element (0);
              text_append_n (&opening_brace->text, "(", 1);
            }
          new_first = new_element (0);
          text_append_n (&new_first->text, first->text.text +1, first->text.end -1);
        }
      else
        {
          /* first element is "(", keep it */
          idx++;
        }

      for (; idx < node->contents.number; idx++)
        {
          ELEMENT *e;
          char *p, *q;

          if (idx == 0)
            e = new_first;
          else
            e = node->contents.list[idx];

          if (e->text.end == 0)
            {
              /* Put this element in the manual contents. */
              add_to_contents_as_array (manual, e);
              continue;
            }
          p = e->text.text;
          while (p < e->text.text + e->text.end
                 && bracket_count > 0)
            {
              opening_bracket = strchr (p, '(');
              closing_bracket = strchr (p, ')');
              if (!opening_bracket && !closing_bracket)
                {
                  break;
                }
              else if (opening_bracket && !closing_bracket)
                {
                  bracket_count++;
                  p = opening_bracket + 1;
                }
              else if (!opening_bracket && closing_bracket)
                {
                  bracket_count--;
                  p = closing_bracket + 1;
                }
              else if (opening_bracket < closing_bracket)
                {
                  bracket_count++;
                  p = opening_bracket + 1;
                }
              else if (opening_bracket > closing_bracket)
                {
                  bracket_count--;
                  p = closing_bracket + 1;
                }
            }

          if (bracket_count > 0)
            add_to_contents_as_array (manual, e);
          else /* end of filename component */
            {
              size_t current_position = 0;
              /* At this point, we are sure that there is a manual part,
                 so the pending removal/addition of elements at the beginning
                 of the manual can proceed (if modify_node). */
              /* Also, split the element in two, putting the part before the ")"
                 in the manual name, leaving the part afterwards for the
                 node name. */
              if (modify_node)
                {
                  if (opening_brace)
                    {
                      /* remove the original first element and prepend the
                         split "(" and text elements */
                      remove_from_contents (node, 0); /* remove first element */
                      insert_into_contents (node, new_first, 0);
                      insert_into_contents (node, opening_brace, 0);
                      idx++;
                      if (first->source_mark_list.number > 0)
                        {
                          size_t current_position
                            = relocate_source_marks (&(first->source_mark_list),
                                                     opening_brace, 0,
                                   count_multibyte (opening_brace->text.text));
                          relocate_source_marks (&(first->source_mark_list),
                                                 new_first, current_position,
                                       count_multibyte (new_first->text.text));
                        }
                      destroy_element (first);
                    }
                  remove_from_contents (node, idx); /* Remove current element e
                                                       with closing brace from the tree. */
                }
              else
                {
                  /* collect elements out of tree */
                  result->out_of_tree_elements = calloc (3, sizeof (ELEMENT *));
                  if (new_first)
                    result->out_of_tree_elements[0] = new_first;
                }
              p--; /* point at ) */
              if (p > e->text.text)
                {
                  /* text before ), part of the manual name */
                  ELEMENT *last_manual_element = new_element (ET_NONE);
                  text_append_n (&last_manual_element->text, e->text.text,
                                 p - e->text.text);
                  add_to_contents_as_array (manual, last_manual_element);
                  if (modify_node)
                    {
                      insert_into_contents (node, last_manual_element, idx++);
                      current_position
                        = relocate_source_marks (&(e->source_mark_list),
                                                 last_manual_element,
                                                 current_position,
                            count_multibyte (last_manual_element->text.text));
                    }
                  else
                    result->out_of_tree_elements[1] = last_manual_element;
                }

              if (modify_node)
                {
                  ELEMENT *closing_brace = new_element (0);
                  text_append_n (&closing_brace->text, ")", 1);
                  insert_into_contents (node, closing_brace, idx++);
                  current_position
                    = relocate_source_marks (&(e->source_mark_list),
                                             closing_brace,
                                             current_position,
                        count_multibyte (closing_brace->text.text));
                }

              /* Skip ')' and any following whitespace.
                 Note that we don't manage to skip any multibyte
                 UTF-8 space characters here. */
              p++;
              q = p + strspn (p, whitespace_chars);
              if (q > p && modify_node)
                {
                  ELEMENT *spaces_element = new_element (0);
                  text_append_n (&spaces_element->text, p, q - p);
                  insert_into_contents (node, spaces_element, idx++);
                  current_position
                    = relocate_source_marks (&(e->source_mark_list),
                                             spaces_element,
                                             current_position,
                        count_multibyte (spaces_element->text.text));
                }

              p = q;
              if (*p)
                {
                  /* text after ), part of the node name. */
                  ELEMENT *leading_node_content = new_element (ET_NONE);
                  text_append_n (&leading_node_content->text, p,
                                 e->text.text + e->text.end - p);
                  /* start node_content */
                  node_content = new_element (0);
                  add_to_contents_as_array (node_content, leading_node_content);
                  if (modify_node)
                    {
                      insert_into_contents (node, leading_node_content, idx);
                      current_position
                        = relocate_source_marks (&(e->source_mark_list),
                                                 leading_node_content,
                                                 current_position,
                            count_multibyte (leading_node_content->text.text));
                    }
                  else
                    result->out_of_tree_elements[2] = leading_node_content;
                  idx++;
                }
              if (modify_node)
                destroy_element (e);
              break;
            }
        } /* for */

      if (bracket_count == 0)
        result->manual_content = manual;
      else /* Unbalanced parentheses, consider that there is no manual
              afterall.  So far the node has not been modified, so the
              only thing that needs to be done is to remove the manual
              element and the elements allocated for the beginning of
              the manual, and start over */
        {
          destroy_element (manual);
          if (new_first)
            destroy_element (new_first);
          if (opening_brace)
            destroy_element (opening_brace);
          idx = 0; /* Back to the start, and consider the whole thing
                      as a node name. */
        }
    }

  /* If anything left, it is part of the node name. */
  if (idx < node->contents.number)
    {
      if (!node_content)
        node_content = new_element (0);
      insert_slice_into_contents (node_content, node_content->contents.number,
                                  node, idx, node->contents.number);
    }

  if (node_content)
    result->node_content = node_content;

  return result;
}



/* in Common.pm */
ELEMENT *
modify_tree (ELEMENT *tree,
             ELEMENT_LIST *(*operation)(const char *type, ELEMENT *element, void* argument),
             void *argument)
{
  if (tree->args.number > 0)
    {
      int i;
      for (i = 0; i < tree->args.number; i++)
        {
          ELEMENT_LIST *new_args;
          new_args = (*operation) ("arg", tree->args.list[i], argument);
          if (new_args)
            {
              /* *operation should take care of destroying removed element */
              remove_from_args (tree, i);
              insert_list_slice_into_args (tree, i,
                                           new_args, 0,
                                           new_args->number);
              i += new_args->number -1;
              destroy_list (new_args);
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
          ELEMENT_LIST *new_contents;
          new_contents = (*operation) ("content", tree->contents.list[i],
                                       argument);
          if (new_contents)
            {
              /* *operation should take care of destroying removed element */
              remove_from_contents (tree, i);
              insert_list_slice_into_contents (tree, i,
                                              new_contents, 0,
                                              new_contents->number);
              i += new_contents->number -1;
              destroy_list (new_contents);
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
              ELEMENT_LIST *new_element;
              new_element = (*operation) ("source_mark",
                                     tree->source_mark_list.list[i]->element,
                                          argument);
              if (new_element)
                {
               /* *operation should take care of destroying removed element */
                  tree->source_mark_list.list[i]->element
                      = new_element->list[0];
                  destroy_list (new_element);
                }
            }
        }
    }
  return tree;
}

ELEMENT *
new_asis_command_with_text (const char *text, ELEMENT *parent,
                            enum element_type type)
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

ELEMENT_LIST *
protect_text (ELEMENT *current, const char *to_protect)
{
  if (current->text.end > 0 && !(current->type == ET_raw
                                 || current->type == ET_rawline_arg)
      && strpbrk (current->text.text, to_protect))
    {
      ELEMENT_LIST *container = new_list();
      char *p = current->text.text;
      /* count UTF-8 encoded Unicode characters for source marks locations */
      uint8_t *u8_text = 0;
      size_t current_position;
      const uint8_t *u8_p = 0;
      size_t u8_len;

      if (current->source_mark_list.number)
        {
          u8_text = utf8_from_string (p);
          u8_p = u8_text;

          current_position = 0;
        }

      while (*p)
        {
          size_t leading_nr = strcspn (p, to_protect);
          ELEMENT *text_elt = new_element (current->type);
          text_elt->parent = current->parent;
          if (leading_nr)
            {
              text_append_n (&text_elt->text, p, leading_nr);
              p += leading_nr;
            }
          /*
          Note that it includes for completeness the case of leading_nr == 0
          although it is unclear that source marks may happen in that case
          as they are rather associated to the previous element.
           */
          if (u8_text)
            {
              u8_len = u8_mbsnlen (u8_p, leading_nr);
              u8_p += u8_len;

              current_position
                = relocate_source_marks (&current->source_mark_list,
                                        text_elt,
                                        current_position, u8_len);
            }

          if (leading_nr || text_elt->source_mark_list.number)
            add_to_element_list (container, text_elt);
          else
            destroy_element (text_elt);

          if (*p)
            {
              size_t to_protect_nr = strspn (p, to_protect);
              if (!strcmp (to_protect, ","))
                {
                  size_t i;
                  for (i = 0; i < to_protect_nr; i++)
                    {
                      ELEMENT *comma = new_element (ET_NONE);
                      ELEMENT *brace_command_arg
                           = new_element (ET_brace_command_arg);
                      comma->cmd = CM_comma;
                      comma->parent = current->parent;
                      add_to_element_args (comma, brace_command_arg);
                      add_to_element_list (container, comma);
                      if (u8_text)
                        {
                          u8_len = u8_mbsnlen (u8_p, 1);
                          u8_p += u8_len;

                        current_position
                          = relocate_source_marks (&current->source_mark_list,
                                                   comma,
                                                   current_position, u8_len);
                        }
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
                  add_to_element_list (container, new_command);
                  if (u8_text)
                    {
                      u8_len = u8_mbsnlen (u8_p, to_protect_nr);
                      u8_p += u8_len;

                      current_position
                       = relocate_source_marks (&current->source_mark_list,
                                new_command->args.list[0]->contents.list[0],
                                              current_position, u8_len);
                    }
                  p += to_protect_nr;
                  *p = saved;
                }
            }
        }
      free (u8_text);
      destroy_element (current);
      return container;
    }
  else
    return 0;
}



const char *
normalized_menu_entry_internal_node (const ELEMENT *entry)
{
  int i;
  for (i = 0; i < entry->contents.number; i++)
    {
      const ELEMENT *content = entry->contents.list[i];
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
normalized_entry_associated_internal_node (const ELEMENT *entry,
                                           const LABEL_LIST *identifiers_target)
{
  const char *normalized_entry_node = normalized_menu_entry_internal_node (entry);
  if (normalized_entry_node)
    {
      ELEMENT *node = find_identifier_target (identifiers_target,
                                              normalized_entry_node);
      return node;
    }
  return 0;
}

ELEMENT *
first_menu_node (ELEMENT *node, LABEL_LIST *identifiers_target)
{
  const ELEMENT_LIST *menus = lookup_extra_contents (node, "menus");
  if (menus)
    {
      int i;
      for (i = 0; i < menus->number; i++)
        {
          const ELEMENT *menu = menus->list[i];
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

