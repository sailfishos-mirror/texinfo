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
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

/* TODO obstack is not used as it requires any code adding element to
 be able to access the struct obstack.  The struct obstack could
 be allocated on the heap and be available in the parser.  It could
 also be passed to the parsed document but it seems complicated to
 make it available to alloc_element outside of the parser (more
 precisely after parse_texi has returned), in code related to
 tree modification and conversion.

 If obstack is used again, in addition to the obvious changes,
 code following
   freed in reset_obstacks
 should be commented out.


#include "obstack.h"

static struct obstack obs_element;
static int *obs_element_first = 0;

#define obstack_chunk_alloc malloc
#define obstack_chunk_free free
 */

#include "tree_types.h"
#include "types_data.h"
/* for fatal */
#include "utils.h"
/* for debug
#include "debug.h"
 */
#include "api_to_perl.h"
#include "tree.h"

void
reset_obstacks (void)
{
  /* obstacks not used

  if (obs_element_first)
    obstack_free (&obs_element, obs_element_first);
  else
    obstack_init (&obs_element);

  obs_element_first = obstack_alloc (&obs_element, sizeof (int));
   */
}

static ELEMENT *alloc_element (void)
{
  ELEMENT *e;
  /*
  e = (ELEMENT *) obstack_alloc (&obs_element, sizeof (ELEMENT));
   */
  e = (ELEMENT *) malloc (sizeof (ELEMENT));
  memset (e, 0, sizeof (ELEMENT));
  return e;
}

ELEMENT *
new_element (enum element_type type)
{
  ELEMENT *e;

  /* alloc_element zeroes *e.  We assume null pointers have bit
     representation of all zeroes. */
  e = alloc_element ();
  e->type = type;

  e->c = (CONTAINER *) malloc (sizeof (CONTAINER));
  memset (e->c, 0, sizeof (CONTAINER));

  return e;
}

ELEMENT *
new_command_element (enum element_type type, enum command_id cmd)
{
  ELEMENT *e = new_element (type);
  e->cmd = cmd;

  return e;
}

ELEMENT *
new_text_element (enum element_type type)
{
  ELEMENT *e;
  e = alloc_element ();
  e->type = type;

  e->text = (TEXT *) malloc (sizeof (TEXT));
  text_init (e->text);
  text_append (e->text, "");

  return e;
}

ELEMENT_LIST *
new_list (void)
{
  ELEMENT_LIST *list = (ELEMENT_LIST *) malloc (sizeof (ELEMENT_LIST));
  memset (list, 0, sizeof (ELEMENT_LIST));
  return list;
}

void
destroy_list (ELEMENT_LIST * list)
{
  free (list->list);
  free (list);
}

void
destroy_associated_info (ASSOCIATED_INFO *a)
{
  int i;

  for (i = 0; i < a->info_number; i++)
    {
      KEY_PAIR *k_pair = &a->info[i];
      switch (k_pair->type)
        {
        case extra_string:
          free (k_pair->k.string);
          break;
        case extra_element_oot:
          destroy_element_and_children (k_pair->k.element);
          break;
        case extra_contents:
        case extra_directions:
          destroy_list (k_pair->k.list);
          break;
        case extra_container:
          if (k_pair->k.element)
            destroy_element (k_pair->k.element);
          break;
        case extra_misc_args:
          {
          int j;
          ELEMENT_LIST *l = k_pair->k.list;
          for (j = 0; j < l->number; j++)
            destroy_element (l->list[j]);
          destroy_list (k_pair->k.list);
          }
          break;

        default:
          break;
        }
    }
  free (a->info);
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
  unregister_perl_tree_element (e);

  destroy_source_mark_list (&e->source_mark_list);

  destroy_associated_info (&e->extra_info);

  if (type_data[e->type].flags & TF_text)
    {
      free (e->text->text);
      free (e->text);
    }
  else
    {
      destroy_associated_info (&e->c->info_info);
  /* Note the pointers in these lists are not themselves freed. */
      free (e->c->contents.list);
      free (e->c->args.list);

      free (e->c);
    }

  free (e);
}

/* Recursively destroy this element and all data in its descendants. */
void
destroy_element_and_children (ELEMENT *e)
{
  int i;

  if (! type_data[e->type].flags & TF_text)
    {
      for (i = 0; i < e->c->contents.number; i++)
        destroy_element_and_children (e->c->contents.list[i]);
      for (i = 0; i < e->c->args.number; i++)
        destroy_element_and_children (e->c->args.list[i]);
    }

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

/* directly used for output units, which has a contents_list, not for
   tree elements */
void
add_to_element_list (ELEMENT_LIST *list, ELEMENT *e)
{
  reallocate_list (list);

  list->list[list->number++] = e;
}

void
add_to_element_contents (ELEMENT *parent, ELEMENT *e)
{
  ELEMENT_LIST *list = &parent->c->contents;
  add_to_element_list (list, e);
  e->parent = parent;
}

/* Special purpose function for when we are only using PARENT as an
   array, and we don't want to overwrite E->parent. */
void
add_to_contents_as_array (ELEMENT *parent, ELEMENT *e)
{
  ELEMENT_LIST *list = &parent->c->contents;
  add_to_element_list (list, e);
}

void
add_to_element_args (ELEMENT *parent, ELEMENT *e)
{
  ELEMENT_LIST *list = &parent->c->args;
  add_to_element_list (list, e);
  e->parent = parent;
}

/* Add the element E into the LIST at index WHERE. */
void
insert_into_element_list (ELEMENT_LIST *list, ELEMENT *e, int where)
{
  reallocate_list (list);

  if (where < 0)
    where = list->number + where;

  if (where < 0 || where > list->number)
    fatal ("elements list index out of bounds");

  memmove (&list->list[where + 1], &list->list[where],
           (list->number - where) * sizeof (ELEMENT *));
  list->list[where] = e;
  list->number++;
}

/* Add the element E into the contents of PARENT at index WHERE. */
void
insert_into_contents (ELEMENT *parent, ELEMENT *e, int where)
{
  ELEMENT_LIST *list = &parent->c->contents;
  insert_into_element_list (list, e, where);
  e->parent = parent;
}

/* Add the element E into the arguments of PARENT at index WHERE. */
void
insert_into_args (ELEMENT *parent, ELEMENT *e, int where)
{
  ELEMENT_LIST *list = &parent->c->args;
  insert_into_element_list (list, e, where);
  e->parent = parent;
}

/* Insert elements to TO at position WHERE from FROM from START inclusive
   to END exclusive. */
void
insert_list_slice_into_list (ELEMENT_LIST *to, int where, const ELEMENT_LIST *from,
                             int start, int end)
{
  int num = end - start;
  reallocate_list_for (num, to);

  memmove (&to->list[where + num],
           &to->list[where],
           (to->number - where) * sizeof (ELEMENT *));
  memmove (&to->list[where],
           &from->list[start],
           num * sizeof (ELEMENT *));

  to->number += num;
}

/* Insert elements to the contents of TO at position WHERE from FROM contents
   from START inclusive to END exclusive.  Do not set the parent fields. */
void
insert_slice_into_contents (ELEMENT *to, int where, const ELEMENT *from,
                            int start, int end)
{
  insert_list_slice_into_list (&to->c->contents, where, &from->c->contents,
                               start, end);
}

/* Insert elements to the args of TO at position WHERE from FROM
   from START inclusive to END exclusive. */
void
insert_list_slice_into_args (ELEMENT *to, int where, ELEMENT_LIST *from,
                             int start, int end)
{
  insert_list_slice_into_list (&to->c->args, where, from, start, end);
}

/* Insert elements to the contents of TO at position WHERE from FROM
   from START inclusive to END exclusive. */
void
insert_list_slice_into_contents (ELEMENT *to, int where, ELEMENT_LIST *from,
                                 int start, int end)
{
  insert_list_slice_into_list (&to->c->contents, where, from, start, end);
}

/* ensure that there are n slots, and void them */
void
list_set_empty_contents (ELEMENT_LIST *e_list, int n)
{
  int i;
  if (n <= 0)
    return;

  if (e_list->number < n)
    {
      reallocate_list_for (n - e_list->number, e_list);
      e_list->number = n;
    }
  for (i = 0; i < n; i++)
    e_list->list[i] = 0;
}

ELEMENT *
remove_from_element_list (ELEMENT_LIST *list, int where)
{
  ELEMENT *removed;

  if (where < 0)
    where = list->number + where;

  if (where < 0 || where > list->number -1)
    fatal ("element list index out of bounds");

  removed = list->list[where];
  if (where < list->number - 1)
    memmove (&list->list[where], &list->list[where + 1],
             (list->number - (where+1)) * sizeof (ELEMENT *));
  list->number--;
  return removed;
}

ELEMENT *
remove_from_contents (ELEMENT *parent, int where)
{
  ELEMENT_LIST *list = &parent->c->contents;
  return remove_from_element_list (list, where);
}

ELEMENT *
remove_from_args (ELEMENT *parent, int where)
{
  ELEMENT_LIST *list = &parent->c->args;
  return remove_from_element_list (list, where);
}

ELEMENT *
remove_element_from_list (ELEMENT_LIST *list, const ELEMENT *e)
{
  int i;
  int index = -1;
  for (i = 0; i < list->number; i++)
    {
      if (list->list[i] == e)
        {
          index = i;
          break;
        }
    }
  if (index >= 0)
    return remove_from_element_list (list, index);

  return 0;
}

void
add_element_if_not_in_list (ELEMENT_LIST *list, ELEMENT *e)
{
  int i;
  for (i = 0; i < list->number; i++)
    {
      if (list->list[i] == e)
        {
          return;
        }
    }
  add_to_element_list (list, e);
}

/* Remove elements from START inclusive to END exclusive.  Do not
   free any of them. */
void
remove_slice_from_contents (ELEMENT *parent, int start, int end)
{
  memmove (&parent->c->contents.list[start],
           &parent->c->contents.list[end],
           (parent->c->contents.number - end) * sizeof (ELEMENT *));

  parent->c->contents.number -= (end - start);
}


ELEMENT *
pop_element_from_args (ELEMENT *parent)
{
  ELEMENT_LIST *list = &parent->c->args;

  return list->list[--list->number];
}

ELEMENT *
pop_element_from_contents (ELEMENT *parent)
{
  ELEMENT_LIST *list = &parent->c->contents;
  ELEMENT *popped_element = list->list[list->number -1];

  list->number--;

  return popped_element;
}

ELEMENT *
last_args_child (const ELEMENT *current)
{
  if (current->c->args.number == 0)
    return 0;

  return current->c->args.list[current->c->args.number - 1];
}

ELEMENT *
last_contents_child (const ELEMENT *current)
{
  if (current->c->contents.number == 0)
    return 0;

  return current->c->contents.list[current->c->contents.number - 1];
}

ELEMENT *
contents_child_by_index (const ELEMENT *e, int index)
{
  if (index < 0)
    index = e->c->contents.number + index;

  if (index < 0 || index >= e->c->contents.number)
    return 0;

  return e->c->contents.list[index];
}

ELEMENT *
args_child_by_index (const ELEMENT *e, int index)
{
  if (index < 0)
    index = e->c->args.number + index;

  if (index < 0 || index >= e->c->args.number)
    return 0;

  return e->c->args.list[index];
}

int replace_element_in_list (ELEMENT_LIST *list, ELEMENT *removed,
                             ELEMENT *added)
{
  int i;

  if (!list || !list->number)
    return 0;

  for (i = 0; i < list->number; i++)
    {
      ELEMENT *content = list->list[i];
      if (content == removed)
        {
          list->list[i] = added;
          return 1;
        }
    }
  return 0;
}

/* do not set parent as it can be used to replace in a container element */
int
replace_element_in_contents (ELEMENT *parent, ELEMENT *removed, ELEMENT *added)
{
  return replace_element_in_list (&parent->c->contents, removed, added);
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
      free (nse->out_of_tree_elements);
    }
  if (nse->manual_content)
    destroy_element (nse->manual_content);
  if (nse->node_content)
    destroy_element (nse->node_content);
  free (nse);
}
