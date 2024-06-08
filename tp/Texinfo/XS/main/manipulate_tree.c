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

/* Corresponding Perl code is mainly in Texinfo::ManipulateTree */

#include <config.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "unistr.h"

#include "tree_types.h"
#include "command_ids.h"
#include "types_data.h"
#include "text.h"
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
#include "debug.h"
#include "targets.h"
#include "utils.h"
#include "manipulate_tree.h"
#include "unicode.h"

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
  counter_ptr = &k_counter->k.integer;
  (*counter_ptr) ++;
}

ELEMENT *
copy_element (ELEMENT *f)
{
  KEY_PAIR *k_copy;
  ELEMENT *e = 0;
  k_copy = lookup_extra_by_index (f, "_copy", -1);
  if (k_copy)
    {
      e = k_copy->k.element;
    }
  else
    {
      increase_ref_counter (f);
    }
  copy_tree_internal (f, 0);
  return e;
}

void
copy_associated_info (ASSOCIATED_INFO *info, ASSOCIATED_INFO* new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      KEY_PAIR *k_ref = &info->info[i];
      const char *key = k_ref->key;
      ELEMENT *f = k_ref->k.element;
      ELEMENT_LIST *new_extra_contents;
      KEY_PAIR *k_copy = 0;
      int j;

      if (k_ref->type == extra_deleted)
        continue;

      switch (k_ref->type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp (key, "_copy"))
            break;
          {
            ELEMENT *copy = copy_element (f);
            if (copy)
              {
                KEY_PAIR *k
                  = get_associated_info_key (new_info, key, k_ref->type);
                k->k.element = copy;
              }
          }
          break;
        case extra_contents:
        case extra_directions:
          {
          KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
          new_extra_contents = new_list ();
          k->k.list = new_extra_contents;
          for (j = 0; j < k_ref->k.list->number; j++)
            {
              ELEMENT *e = k_ref->k.list->list[j];
              if (!e && info->info[i].type == extra_directions)
                {
                  add_to_element_list (new_extra_contents, 0);
                }
              else
                {
                  k_copy = lookup_extra_by_index (e, "_copy", -1);
                  if (k_copy)
                    add_to_element_list (new_extra_contents,
                                         k_copy->k.element);
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
          ELEMENT *new_extra_element = new_element (ET_NONE);
          k->k.element = new_extra_element;
          for (j = 0; j < f->e.c->contents.number; j++)
            {
              ELEMENT *e = f->e.c->contents.list[j];
              k_copy = lookup_extra_by_index (e, "_copy", -1);
              if (k_copy)
                add_to_contents_as_array (new_extra_element,
                                          k_copy->k.element);
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
      new = k_copy->k.element;
      if (parent && !new->parent)
        new->parent = parent;
      return new;
    }

  if (type_data[current->type].flags & TF_text)
    new = new_text_element (current->type);
  else if (current->cmd)
    new = new_command_element (current->type, current->cmd);
  else
    new = new_element (current->type);

  new->flags = current->flags;

  increase_ref_counter (current);
  add_extra_element (current, "_copy", new);

  /*
  fprintf (stderr, "CTNEW %p %s %p\n", current,
                                       print_element_debug (current, 1), new);
  */

  if (type_data[current->type].flags & TF_text)
    {
      text_append_n (new->e.text, current->e.text->text,  current->e.text->end);
      copy_associated_info (&current->extra_info, &new->extra_info);
      return new;
    }

  for (i = 0; i < current->e.c->args.number; i++)
    add_to_element_args (new,
                copy_tree_internal (current->e.c->args.list[i], new));
  for (i = 0; i < current->e.c->contents.number; i++)
    add_to_element_contents (new,
                copy_tree_internal (current->e.c->contents.list[i], new));

  if (type_data[current->type].elt_info_number > 0)
    {
      for (i = 0; i < type_data[current->type].elt_info_number; i++)
        if (current->elt_info[i])
          {
            ELEMENT *copy = copy_element (current->elt_info[i]);
            if (copy)
              new->elt_info[i] = copy;
          }
    }

  if (current->e.c->string_info)
    {
      int string_info_nr = 1;
      if (current->type == ET_definfoenclose_command
          || current->type == ET_index_entry_command
          || current->type == ET_lineraw_command || current->cmd == CM_verb)
        string_info_nr = 2;
      for (i = 0; i < string_info_nr; i++)
        if (current->e.c->string_info[i])
          new->e.c->string_info[i] = strdup (current->e.c->string_info[i]);
    }

  copy_associated_info (&current->e.c->info_info, &new->e.c->info_info);
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
  result = k_copy->k.element;

  k_counter = lookup_extra_by_index (element, "_counter", -2);
  counter_ptr = &k_counter->k.integer;
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
      const KEY_PAIR *k_ref = &info->info[i];
      const char *key = k_ref->key;
      int j;

      if (k_ref->type == extra_deleted)
        continue;

      switch (k_ref->type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp (key, "_copy"))
            break;
          {
            ELEMENT *f = k_ref->k.element;
            KEY_PAIR *k;
            const KEY_PAIR *k_copy;
            k = lookup_associated_info (new_info, key);
            if (!k)
              {
                ELEMENT *e = get_copy_ref (f);
                k = get_associated_info_key (new_info, key,
                                             k_ref->type);
                k->k.element = e;
              }
            k_copy = lookup_extra_by_index (f, "_copy", -1);
            if (k_copy)
              copy_extra_info (f, k_copy->k.element);
            break;
          }
        case extra_contents:
        case extra_directions:
          {
            KEY_PAIR *k = lookup_associated_info (new_info, key);
            ELEMENT_LIST *new_extra_contents = k->k.list;
            for (j = 0; j < k_ref->k.list->number; j++)
              {
                KEY_PAIR *k_copy;
                ELEMENT *e = k_ref->k.list->list[j];
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
                      copy_extra_info (e, k_copy->k.element);
                  }
              }
            break;
          }
        case extra_container:
          {
            const ELEMENT *f = k_ref->k.element;
            KEY_PAIR *k = lookup_associated_info (new_info, key);
            ELEMENT *new_extra_element = k->k.element;
            for (j = 0; j < f->e.c->contents.number; j++)
              {
                KEY_PAIR *k_copy;
                ELEMENT *e = f->e.c->contents.list[j];
                ELEMENT *new_e = new_extra_element->e.c->contents.list[j];
                if (!new_e)
                  {
                    ELEMENT *new_ref = get_copy_ref (e);
                    new_extra_element->e.c->contents.list[j] = new_ref;
                  }

                k_copy = lookup_extra_by_index (e, "_copy", -1);
                if (k_copy)
                  copy_extra_info (e, k_copy->k.element);
              }
            break;
          }
        case extra_string:
          { /* A simple string. */
            char *value = k_ref->k.string;
            KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
            k->k.string = strdup (value);
            break;
          }
        case extra_integer:
          if (!strcmp (key, "_counter"))
            break;
          { /* A simple integer. */
            KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
            k->k.integer = k_ref->k.integer;
            break;
          }
        case extra_misc_args:
          {
          int j;
          KEY_PAIR *k = get_associated_info_key (new_info, key, k_ref->type);
          ELEMENT_LIST *new_extra_misc_args = new_list();
          k->k.list = new_extra_misc_args;
          for (j = 0; j < k_ref->k.list->number; j++)
            {
              const ELEMENT *e = k_ref->k.list->list[j];
              ELEMENT *new_e;
              if (e->type == ET_other_text)
                {
                  new_e = new_text_element (ET_other_text);
                  if (e->e.text->end > 0)
                    text_append_n (new_e->e.text, e->e.text->text,
                                   e->e.text->end);
                }
              else
                {
                  new_e = new_element (ET_NONE);
                  KEY_PAIR *k_integer = lookup_extra (e, "integer");
                  if (k_integer)
                    {
                      add_extra_integer (new_e, "integer", k_integer->k.integer);
                    }
                }
              add_to_element_list (new_extra_misc_args, new_e);
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

  if (! (type_data[current->type].flags & TF_text))
    {
      for (i = 0; i < current->e.c->args.number; i++)
        copy_extra_info (current->e.c->args.list[i],
                         new->e.c->args.list[i]);
      for (i = 0; i < current->e.c->contents.number; i++)
        copy_extra_info (current->e.c->contents.list[i],
                         new->e.c->contents.list[i]);

      if (type_data[current->type].elt_info_number > 0)
        {
          int j;
          for (j = 0; j < type_data[current->type].elt_info_number; j++)
            {
              if (current->elt_info[j])
                {
                  ELEMENT *f = current->elt_info[j];
                  const KEY_PAIR *k_copy;

                  if (!new->elt_info[j])
                    {
                      ELEMENT *e = get_copy_ref (f);
                      new->elt_info[j] = e;
                    }
                  k_copy = lookup_extra_by_index (f, "_copy", -1);
                  if (k_copy)
                    copy_extra_info (f, k_copy->k.element);
                }
            }
        }
      associate_info_references (&current->e.c->info_info, &new->e.c->info_info);

      /* text element have _copy and _counter only in extra, not to be copied */
      associate_info_references (&current->extra_info, &new->extra_info);
    }

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
  tmp->e.c->contents = element->e.c->contents;

  result = copy_tree (tmp);

  tmp->e.c->contents.list = 0;
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

/* In Texinfo::Common */
/* relocate SOURCE_MARKS source marks with position between
   BEGIN_POSITION and BEGIN_POSITION + LEN to be relative to BEGIN_POSITION,
   and move to element NEW_E.
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
          if (type_data[new_e->type].flags & TF_text)
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



/* In Texinfo::Common */
/* NODE->e.c->contents is the Texinfo for the specification of a node.  This
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
  int idx = 0; /* index into node->e.c->contents */

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
  if (node->e.c->contents.number > 0
      && node->e.c->contents.list[0]->type == ET_normal_text
      && node->e.c->contents.list[0]->e.text->end > 0
      && node->e.c->contents.list[0]->e.text->text[0] == '(')
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
      first = node->e.c->contents.list[0];
      if (first->e.text->end > 1)
        {
          if (modify_node)
            {
              opening_brace = new_text_element (ET_normal_text);
              text_append_n (opening_brace->e.text, "(", 1);
            }
          new_first = new_text_element (ET_normal_text);
          text_append_n (new_first->e.text, first->e.text->text +1,
                         first->e.text->end -1);
        }
      else
        {
          /* first element is "(", keep it */
          idx++;
        }

      for (; idx < node->e.c->contents.number; idx++)
        {
          ELEMENT *e;
          char *p, *q;

          if (idx == 0)
            e = new_first;
          else
            e = node->e.c->contents.list[idx];

          if (e->type != ET_normal_text)
            {
              /* Put this element in the manual contents. */
              add_to_contents_as_array (manual, e);
              continue;
            }
          p = e->e.text->text;
          while (p < e->e.text->text + e->e.text->end
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
                                   count_multibyte (opening_brace->e.text->text));
                          relocate_source_marks (&(first->source_mark_list),
                                                 new_first, current_position,
                                       count_multibyte (new_first->e.text->text));
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
              if (p > e->e.text->text)
                {
                  /* text before ), part of the manual name */
                  ELEMENT *last_manual_element
                                      = new_text_element (ET_normal_text);
                  text_append_n (last_manual_element->e.text, e->e.text->text,
                                 p - e->e.text->text);
                  add_to_contents_as_array (manual, last_manual_element);
                  if (modify_node)
                    {
                      insert_into_contents (node, last_manual_element, idx++);
                      current_position
                        = relocate_source_marks (&(e->source_mark_list),
                                                 last_manual_element,
                                                 current_position,
                            count_multibyte (last_manual_element->e.text->text));
                    }
                  else
                    result->out_of_tree_elements[1] = last_manual_element;
                }

              if (modify_node)
                {
                  ELEMENT *closing_brace = new_text_element (ET_normal_text);
                  text_append_n (closing_brace->e.text, ")", 1);
                  insert_into_contents (node, closing_brace, idx++);
                  current_position
                    = relocate_source_marks (&(e->source_mark_list),
                                             closing_brace,
                                             current_position,
                        count_multibyte (closing_brace->e.text->text));
                }

              /* Skip ')' and any following whitespace.
                 Note that we don't manage to skip any multibyte
                 UTF-8 space characters here. */
              p++;
              q = p + strspn (p, whitespace_chars);
              if (q > p && modify_node)
                {
                  ELEMENT *spaces_element = new_text_element (ET_normal_text);
                  text_append_n (spaces_element->e.text, p, q - p);
                  insert_into_contents (node, spaces_element, idx++);
                  current_position
                    = relocate_source_marks (&(e->source_mark_list),
                                             spaces_element,
                                             current_position,
                        count_multibyte (spaces_element->e.text->text));
                }

              p = q;
              if (*p)
                {
                  /* text after ), part of the node name. */
                  ELEMENT *leading_node_content
                      = new_text_element (ET_normal_text);
                  text_append_n (leading_node_content->e.text, p,
                                 e->e.text->text + e->e.text->end - p);
                  /* start node_content */
                  node_content = new_element (ET_NONE);
                  add_to_contents_as_array (node_content, leading_node_content);
                  if (modify_node)
                    {
                      insert_into_contents (node, leading_node_content, idx);
                      current_position
                        = relocate_source_marks (&(e->source_mark_list),
                                                 leading_node_content,
                                                 current_position,
                            count_multibyte (leading_node_content->e.text->text));
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
  if (idx < node->e.c->contents.number)
    {
      if (!node_content)
        node_content = new_element (ET_NONE);
      insert_slice_into_contents (node_content,
                                  node_content->e.c->contents.number,
                                  node, idx, node->e.c->contents.number);
    }

  if (node_content)
    result->node_content = node_content;

  return result;
}



ELEMENT *
modify_tree (ELEMENT *tree,
             ELEMENT_LIST *(*operation)(const char *type, ELEMENT *element, void* argument),
             void *argument)
{
  if (tree->e.c->args.number > 0)
    {
      int i;
      for (i = 0; i < tree->e.c->args.number; i++)
        {
          ELEMENT_LIST *new_args;
          ELEMENT *content = tree->e.c->args.list[i];
          new_args = (*operation) ("arg", content, argument);
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
          else if (! (type_data[content->type].flags & TF_text))
            modify_tree (content, operation, argument);
        }
    }
  if (tree->e.c->contents.number > 0)
    {
      int i;
      for (i = 0; i < tree->e.c->contents.number; i++)
        {
          ELEMENT *content = tree->e.c->contents.list[i];
          ELEMENT_LIST *new_contents;
          new_contents = (*operation) ("content", content, argument);
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
          else if (! (type_data[content->type].flags & TF_text))
            modify_tree (content, operation, argument);
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
  ELEMENT *new_command = new_command_element (ET_brace_command, CM_asis);
  ELEMENT *brace_container = new_element (ET_brace_container);
  ELEMENT *text_elt = new_text_element (type);
  new_command->parent = parent;
  add_to_element_args (new_command, brace_container);
  text_append (text_elt->e.text, text);
  add_to_element_contents (brace_container, text_elt);
  return new_command;
}

static ELEMENT_LIST *
protect_text (ELEMENT *current, const char *to_protect)
{
  /* we accept any non raw text as text to be protected, including whitespaces
     only text elements */
  if (type_data[current->type].flags & TF_text
      && current->e.text->end > 0 && !(current->type == ET_raw
                                    || current->type == ET_rawline_arg)
      && strpbrk (current->e.text->text, to_protect))
    {
      ELEMENT_LIST *container = new_list ();
      char *p = current->e.text->text;
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
          ELEMENT *text_elt = new_text_element (current->type);
          text_elt->parent = current->parent;
          if (leading_nr)
            {
              text_append_n (text_elt->e.text, p, leading_nr);
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
                      ELEMENT *comma
                       = new_command_element (ET_brace_noarg_command,
                                              CM_comma);
                      ELEMENT *brace_container
                           = new_element (ET_brace_container);
                      comma->parent = current->parent;
                      add_to_element_args (comma, brace_container);
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
                  new_command = new_asis_command_with_text (p, current->parent,
                                                            current->type);
                  add_to_element_list (container, new_command);
                  if (u8_text)
                    {
                      u8_len = u8_mbsnlen (u8_p, to_protect_nr);
                      u8_p += u8_len;

                      current_position
                       = relocate_source_marks (&current->source_mark_list,
                           new_command->e.c->args.list[0]->e.c->contents.list[0],
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

static ELEMENT_LIST *
protect_colon (const char *type, ELEMENT *current, void *argument)
{
  return protect_text (current, ":");
}

ELEMENT *
protect_colon_in_tree (ELEMENT *tree)
{
  return modify_tree (tree, &protect_colon, 0);
}

static ELEMENT_LIST *
protect_comma (const char *type, ELEMENT *current, void *argument)
{
  return protect_text (current, ",");
}

ELEMENT *
protect_comma_in_tree (ELEMENT *tree)
{
  return modify_tree (tree, &protect_comma, 0);
}

static ELEMENT_LIST *
protect_node_after_label (const char *type, ELEMENT *current, void *argument)
{
  return protect_text (current, ".\t,");
}

ELEMENT *
protect_node_after_label_in_tree (ELEMENT *tree)
{
  return modify_tree (tree, &protect_node_after_label, 0);
}



const char *
normalized_menu_entry_internal_node (const ELEMENT *entry)
{
  int i;
  for (i = 0; i < entry->e.c->contents.number; i++)
    {
      const ELEMENT *content = entry->e.c->contents.list[i];
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
          for (j = 0; j < menu->e.c->contents.number; j++)
            {
              ELEMENT *menu_content = menu->e.c->contents.list[j];
              if (menu_content->type == ET_menu_entry)
                {
                  int k;
                  ELEMENT *menu_node
                    = normalized_entry_associated_internal_node (menu_content,
                                                          identifiers_target);
                  /* an internal node */
                  if (menu_node)
                    return menu_node;

                  for (k = 0; menu_content->e.c->contents.number; k++)
                    {
                      ELEMENT *content = menu_content->e.c->contents.list[k];
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

