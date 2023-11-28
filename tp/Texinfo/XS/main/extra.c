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

#include <config.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "tree_types.h"
/* for new_element */
#include "tree.h"
/* for fatal and directions_length */
#include "utils.h"
#include "debug.h"
#include "extra.h"

/* directly used in tree copy, but should not be directly used in general */
KEY_PAIR *
get_associated_info_key (ASSOCIATED_INFO *a, char *key, enum extra_type type)
{
  int i;
  for (i = 0; i < a->info_number; i++)
    {
      if (!strcmp (a->info[i].key, key))
        break;
    }
  if (i == a->info_number)
    {
      if (a->info_number == a->info_space)
        {
          a->info = realloc (a->info,
                              (a->info_space += 5) * sizeof (KEY_PAIR));
          if (!a->info)
            fatal ("realloc failed");
        }
      a->info_number++;
    }

  a->info[i].key = key;
  a->info[i].type = type;

  return &a->info[i];
}

/* Add an extra key that is a reference to another element (for example, 
   'associated_section' on a node command element. */
void
add_extra_element (ELEMENT *e, char *key, ELEMENT *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_element);
  k->element = value;
}

/* Add an extra key that is a reference to another element that is
   out-of-tree, i.e., not referenced anywhere in the tree.
   Unused in the parser in 2023, but used in other codes.
*/
void
add_extra_element_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_element_oot);
  k->element = value;
}

/* Add an extra key that is a reference to elements elsewhere in the tree,
   in general in the contents array of another element (for example,
   'node_content' on a node direction element contents).
   Similar to extra_contents, but passed to perl as an element with
   contents.
 */
void
add_extra_container (ELEMENT *e, char *key, ELEMENT *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_container);
  k->element = value;
}

void
add_info_element_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->info_info, key,
                                         extra_element_oot);
  k->element = value;
}

/* Add an extra key that is a reference to an array of other
   elements (for example, 'section_childs'). */
void
add_extra_contents (ELEMENT *e, char *key, ELEMENT_LIST *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_contents);
  k->list = value;
}

/* similar to extra_contents, but holds 3 elements corresponding to
   directions in enum directions.  Another difference, more
   generally with other elements, is that a pointer to the element
   in the list set to 0 is ok, it means that there is no such direction
   In other elements, in general, all the pointer elements are non
   NULL in contents for the first contents.number elements.
*/
void
add_extra_directions (ELEMENT *e, char *key, ELEMENT *value)
{
  element_set_empty_contents (value, directions_length);
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_directions);
  k->element = value;
}

void
add_extra_misc_args (ELEMENT *e, char *key, ELEMENT *value)
{
  if (!value) return;
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_misc_args);
  k->element = value;
}

void
add_extra_string (ELEMENT *e, char *key, char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_string);
  k->string = value;
}

void
add_info_string (ELEMENT *e, char *key, char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->info_info, key, extra_string);
  k->string = value;
}

void
add_extra_string_dup (ELEMENT *e, char *key, char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_string);
  k->string = strdup (value);
}

void
add_info_string_dup (ELEMENT *e, char *key, char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->info_info, key, extra_string);
  k->string = strdup (value);
}

void
add_associated_info_integer (ASSOCIATED_INFO *a, char *key, int value)
{
  KEY_PAIR *k = get_associated_info_key (a, key, extra_integer);
  k->integer = value;
}

void
add_extra_integer (ELEMENT *e, char *key, long value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_integer);
  k->integer = value;
}

KEY_PAIR *
lookup_associated_info (const ASSOCIATED_INFO *a, char *key)
{
  int i;
  for (i = 0; i < a->info_number; i++)
    {
      /* We could reuse extra_deleted slots by keeping the extra_deleted
         key and checking here the type, but in the current code the
         extra_deleted keys will never be set again */
      if (!strcmp (a->info[i].key, key))
        return &a->info[i];
    }
  return 0;
}

ELEMENT *
lookup_extra_element (const ELEMENT *e, char *key)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k)
    return 0;
  else if (k->type == extra_string || k->type == extra_integer
      || k->type == extra_contents)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_element: %s: %d",
                key, k->type);
      fatal (msg);
      free (msg);
    }
  return k->element;
}

char *
lookup_extra_string (const ELEMENT *e, char *key)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k)
    return 0;
  else
    {
      if (k->type != extra_string)
        {
          char *msg;
          xasprintf (&msg, "Bad type for lookup_extra_string: %s: %d",
                     key, k->type);
          fatal (msg);
          free (msg);
        }
      if (!k->string)
        return (0);
      return k->string;
    }
}

KEY_PAIR *
lookup_extra (const ELEMENT *e, char *key)
{
  return lookup_associated_info (&e->extra_info, key);
}

/* *ret is negative if not found or not an integer */
int
lookup_extra_integer (const ELEMENT *e, char *key, int *ret)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k)
    {
      *ret = -1;
      return 0;
    }
  if (k->type != extra_integer)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_integer: %s: %d",
                 key, k->type);
      fatal (msg);
      free (msg);
    }
  *ret = 0;
  return k->integer;
}

/* if CREATE is true, create an extra contents element if there is none */
ELEMENT_LIST *
lookup_extra_contents (ELEMENT *e, char *key, int create)
{
  ELEMENT_LIST *e_list = 0;
  KEY_PAIR *k = lookup_extra (e, key);
  if (k)
    {
      if (k->type != extra_contents)
        {
          char *msg;
          xasprintf (&msg, "Bad type for lookup_extra_contents: %s: %d",
                     key, k->type);
          fatal (msg);
          free (msg);
        }
      e_list = k->list;
    }
  else if (create)
    {
      e_list = new_list ();
      add_extra_contents (e, key, e_list);
    }
  return e_list;
}

/* if CREATE is true, create an extra directions element if there is none */
ELEMENT *
lookup_extra_directions (ELEMENT *e, char *key, int create)
{
  ELEMENT *contents_e;
  contents_e = lookup_extra_element (e, key);
  if (!contents_e && create)
    {
      contents_e = new_element (ET_NONE);
      add_extra_directions (e, key, contents_e);
    }
  return contents_e;
}

ELEMENT *
lookup_info_element (const ELEMENT *e, char *key)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->info_info, key);
  if (!k)
    return 0;
  return k->element;
}


KEY_PAIR *
lookup_info (const ELEMENT *e, char *key)
{
  return lookup_associated_info (&e->info_info, key);
}

char *
lookup_info_string (const ELEMENT *e, char *key)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->info_info, key);
  if (!k || !k->string)
    return 0;
  return k->string;
}

/* only called in tree copy to optimize for speed */
KEY_PAIR *
lookup_associated_info_by_index (const ASSOCIATED_INFO *a, char *key, int index)
{
  if (index < 0)
    index = a->info_number + index;

  if (index < 0 || index >= a->info_number)
    return 0;

  if (!strcmp (a->info[index].key, key))
    return &a->info[index];

  return 0;
}

KEY_PAIR *
lookup_extra_by_index (const ELEMENT *e, char *key, int index)
{
  return lookup_associated_info_by_index (&e->extra_info, key, index);
}
