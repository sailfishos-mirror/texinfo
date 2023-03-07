/* Copyright 2010-2019 Free Software Foundation, Inc.

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
#include <stdlib.h>
#include <string.h>

#include "errors.h"
#include "tree.h"
#include "source_marks.h"
/* for debug */
#include "parser.h"

//int element_counter;

ASSOCIATED_INFO *
new_associated_info (void)
{
  ASSOCIATED_INFO *info = malloc (sizeof (ASSOCIATED_INFO));

  info->info_number = 0;
  info->info_space = 0;
  info->info = 0;
  return info;
}

ELEMENT *
new_element (enum element_type type)
{
  ELEMENT *e = malloc (sizeof (ELEMENT));

  //element_counter++;

  /* Zero all elements */
  memset (e, 0, sizeof (*e));

  e->type = type;
  e->cmd = CM_NONE;
  e->args.list = 0;
  e->args.space = 0;
  e->args.number = 0;
  e->contents.list = 0;
  e->contents.space = 0;
  e->contents.number = 0;
  e->parent = 0;

  e->extra_info = new_associated_info();
  e->info_info = new_associated_info();

  e->source_mark_list.space = 0;
  e->source_mark_list.number = 0;

  return e;
}

void
destroy_associated_info (ASSOCIATED_INFO *a)
{
  int i;

  for (i = 0; i < a->info_number; i++)
    {
      switch (a->info[i].type)
        {
        case extra_string:
          free (a->info[i].value);
          break;
        case extra_element_oot:
          destroy_element_and_children (a->info[i].value);
          break;
        case extra_contents:
          if (a->info[i].value)
            destroy_element ((ELEMENT *) a->info[i].value);
          break;
        case extra_misc_args:
          destroy_element_and_children (a->info[i].value);
          break;

        default:
          break;
        }
    }
  free (a->info);

  free (a);
}

void
destroy_source_mark (SOURCE_MARK *source_mark)
{
  if (source_mark->element)
    destroy_element_and_children (source_mark->element);
  if (source_mark->line)
    free (source_mark->line);
  free (source_mark);
}

void
destroy_source_mark_list (SOURCE_MARK_LIST *source_mark_list)
{
  int i;
  for (i = 0; i < source_mark_list->number; i++)
    destroy_source_mark (source_mark_list->list[i]);

  source_mark_list->number = 0;
  free (source_mark_list->list);
  source_mark_list->space = 0;
}

void
destroy_element (ELEMENT *e)
{
  int i;
  free (e->text.text);

  /* Note the pointers in these lists are not themselves freed. */
  free (e->contents.list);
  free (e->args.list);

  destroy_associated_info (e->extra_info);
  destroy_associated_info (e->info_info);

  destroy_source_mark_list (&(e->source_mark_list));

  free (e);
}

/* Recursively destroy this element and all data in its descendants. */
void
destroy_element_and_children (ELEMENT *e)
{
  int i;

  for (i = 0; i < e->contents.number; i++)
    destroy_element_and_children (e->contents.list[i]);
  for (i = 0; i < e->args.number; i++)
    destroy_element_and_children (e->args.list[i]);

  destroy_element (e);
}

/* Make sure there is space for at least one more element. */
static void
reallocate_list (ELEMENT_LIST *list)
{
  if (list->number + 1 >= list->space)
    {
      list->space += 10;
      list->list = realloc (list->list, list->space * sizeof (ELEMENT *));
      if (!list->list)
        fatal ("realloc failed");
    }
}

/* Make sure there is space for at least N more elements. */
static void
reallocate_list_for (int n, ELEMENT_LIST *list)
{
  if (list->number + n >= list->space)
    {
      list->space += n + 1;
      list->list = realloc (list->list, list->space * sizeof (ELEMENT *));
      if (!list->list)
        fatal ("realloc failed");
    }
}

void
add_to_element_contents (ELEMENT *parent, ELEMENT *e)
{
  ELEMENT_LIST *list = &parent->contents;
  reallocate_list (list);

  list->list[list->number++] = e;
  e->parent = parent;
}

/* Special purpose function for when we are only using PARENT as an
   array, and we don't want to overwrite E->parent. */
void
add_to_contents_as_array (ELEMENT *parent, ELEMENT *e)
{
  ELEMENT_LIST *list = &parent->contents;
  reallocate_list (list);

  list->list[list->number++] = e;
}

void
add_to_element_args (ELEMENT *parent, ELEMENT *e)
{
  ELEMENT_LIST *list = &parent->args;
  reallocate_list (list);

  list->list[list->number++] = e;
  e->parent = parent;
}

/* Add the element E into the contents of PARENT at index WHERE. */
void
insert_into_contents (ELEMENT *parent, ELEMENT *e, int where)
{
  ELEMENT_LIST *list = &parent->contents;
  reallocate_list (list);

  if (where < 0)
    where = list->number + where;

  if (where < 0 || where > list->number)
    fatal ("contents index out of bounds");

  memmove (&list->list[where + 1], &list->list[where],
           (list->number - where) * sizeof (ELEMENT *));
  list->list[where] = e;
  e->parent = parent;
  list->number++;
}

/* Add the element E into the arguments of PARENT at index WHERE. */
void
insert_into_args (ELEMENT *parent, ELEMENT *e, int where)
{
  ELEMENT_LIST *list = &parent->args;
  reallocate_list (list);

  if (where < 0)
    where = list->number + where;

  if (where < 0 || where > list->number)
    fatal ("arguments index out of bounds");

  memmove (&list->list[where + 1], &list->list[where],
           (list->number - where) * sizeof (ELEMENT *));
  list->list[where] = e;
  e->parent = parent;
  list->number++;
}

/* Insert elements to the contents of TO at position WHERE from FROM
   from START inclusive to END exclusive.  Do not set the parent fields. */
void
insert_slice_into_contents (ELEMENT *to, int where, ELEMENT *from,
                            int start, int end)
{
  int num = end - start;
  reallocate_list_for (num, &to->contents);

  memmove (&to->contents.list[where + num],
           &to->contents.list[where],
           (to->contents.number - where) * sizeof (ELEMENT *));
  memmove (&to->contents.list[where],
           &from->contents.list[start],
           num * sizeof (ELEMENT *));

  to->contents.number += num;
}

ELEMENT *
remove_from_contents (ELEMENT *parent, int where)
{
  ELEMENT_LIST *list = &parent->contents;
  ELEMENT *removed;

  if (where < 0)
    where = list->number + where;

  if (where < 0 || where > list->number)
    fatal ("contents index out of bounds");

  removed = list->list[where];
  memmove (&list->list[where], &list->list[where + 1],
           (list->number - (where+1)) * sizeof (ELEMENT *));
  list->number--;
  return removed;
}

/* Remove elements from START inclusive to END exclusive.  Do not
   free any of them. */
void
remove_slice_from_contents (ELEMENT *parent, int start, int end)
{
  memmove (&parent->contents.list[start],
           &parent->contents.list[end],
           (parent->contents.number - end) * sizeof (ELEMENT *));

  parent->contents.number -= (end - start);
}


ELEMENT *
pop_element_from_args (ELEMENT *parent)
{
  ELEMENT_LIST *list = &parent->args;

  return list->list[--list->number];
}

ELEMENT *
pop_element_from_contents (ELEMENT *parent)
{
  ELEMENT_LIST *list = &parent->contents;
  ELEMENT *popped_element = list->list[list->number -1];

  list->number--;

  return popped_element;
}

ELEMENT *
last_args_child (ELEMENT *current)
{
  if (current->args.number == 0)
    return 0;

  return current->args.list[current->args.number - 1];
}

ELEMENT *
last_contents_child (ELEMENT *current)
{
  if (current->contents.number == 0)
    return 0;

  return current->contents.list[current->contents.number - 1];
}

ELEMENT *
contents_child_by_index (ELEMENT *e, int index)
{
  if (index < 0)
    index = e->contents.number + index;

  if (index < 0 || index >= e->contents.number)
    return 0;

  return e->contents.list[index];
}

ELEMENT *
args_child_by_index (ELEMENT *e, int index)
{
  if (index < 0)
    index = e->args.number + index;

  if (index < 0 || index >= e->args.number)
    return 0;

  return e->args.list[index];
}

/* should only be used if the nse->manual_content
   and nse->node_content are not already in the tree,
   in practice when the node spec was created by
   parse_node_manual (., 0); */
void
destroy_node_spec (NODE_SPEC_EXTRA *nse)
{
  if (nse->out_of_tree_elements)
    {
      int i;
      for (i = 0; i < 3; i++)
        if (nse->out_of_tree_elements[i])
          destroy_element (nse->out_of_tree_elements[i]);
    }
  if (nse->manual_content)
    destroy_element (nse->manual_content);
  if (nse->node_content)
    destroy_element (nse->node_content);
  free (nse);
}
