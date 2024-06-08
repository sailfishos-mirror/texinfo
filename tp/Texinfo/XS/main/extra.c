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
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "tree_types.h"
/* for new_list list_set_empty_contents */
#include "tree.h"
/* for fatal and directions_length */
#include "utils.h"
#include "debug.h"
#include "extra.h"

/* directly used in tree copy, but should not be directly used in general */
KEY_PAIR *
get_associated_info_key (ASSOCIATED_INFO *a, const char *key,
                         const enum extra_type type)
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
/* TODO would be good to have ELEMENT be const */
void
add_extra_element (ELEMENT *e, const char *key, ELEMENT *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_element);
  k->k.element = value;
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
  k->k.element = value;
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
  k->k.element = value;
}

/* Add an extra key that is a reference to an array of other
   elements (for example, 'section_childs').
   Check if it already exists, unless NO_LOOKUP is set
   if the caller knows that the array has not been set
   already.
*/
ELEMENT_LIST *
add_extra_contents (ELEMENT *e, const char *key, int no_lookup)
{
  ELEMENT_LIST *n_list;
  if (!no_lookup)
    {
      ELEMENT_LIST *e_list = lookup_extra_contents (e, key);
      if (e_list)
        return e_list;
    }

  n_list = new_list ();
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_contents);
  k->k.list = n_list;
  return n_list;
}

/* Holds 3 elements corresponding to directions in enum directions.
   A general difference other element lists, is that an element
   pointer set to 0 is ok, it means that there is no such direction
   In general, all the pointer elements are non NULL in element lists
   for the first number elements.
*/
const ELEMENT_LIST *
add_extra_directions (ELEMENT *e, const char *key)
{
  const ELEMENT_LIST *e_list = lookup_extra_directions (e, key);
  if (e_list)
    return e_list;
  else
    {
      ELEMENT_LIST *n_list = new_list ();
      list_set_empty_contents (n_list, directions_length);
      KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                             extra_directions);
      k->k.list = n_list;
      return n_list;
    }
}

void
add_extra_misc_args (ELEMENT *e, char *key, ELEMENT_LIST *value)
{
  if (!value) return;
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key,
                                         extra_misc_args);
  k->k.list = value;
}

void
add_extra_string (ELEMENT *e, const char *key, char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_string);
  k->k.string = value;
}

void
add_info_string (ELEMENT *e, char *key, char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->e.c->info_info, key, extra_string);
  k->k.string = value;
}

void
add_extra_string_dup (ELEMENT *e, const char *key, const char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_string);
  k->k.string = strdup (value);
}

void
add_info_string_dup (ELEMENT *e, const char *key, const char *value)
{
  KEY_PAIR *k = get_associated_info_key (&e->e.c->info_info, key, extra_string);
  k->k.string = strdup (value);
}

void
add_associated_info_integer (ASSOCIATED_INFO *a, const char *key, int value)
{
  KEY_PAIR *k = get_associated_info_key (a, key, extra_integer);
  k->k.integer = value;
}

void
add_associated_info_string_dup (ASSOCIATED_INFO *a, const char *key,
                                const char *value)
{
  KEY_PAIR *k = get_associated_info_key (a, key, extra_string);
  k->k.string = strdup (value);
}

void
add_extra_integer (ELEMENT *e, char *key, long value)
{
  KEY_PAIR *k = get_associated_info_key (&e->extra_info, key, extra_integer);
  k->k.integer = value;
}

KEY_PAIR *
lookup_associated_info (const ASSOCIATED_INFO *a, const char *key)
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
lookup_extra_element (const ELEMENT *e, const char *key)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k)
    return 0;
  else if (k->type == extra_string || k->type == extra_integer
           || k->type == extra_contents || k->type == extra_directions)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_element: %s: %d",
                key, k->type);
      fatal (msg);
      free (msg);
    }
  return k->k.element;
}

char *
lookup_extra_string (const ELEMENT *e, const char *key)
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
      if (!k->k.string)
        return (0);
      return k->k.string;
    }
}

KEY_PAIR *
lookup_extra (const ELEMENT *e, const char *key)
{
  return lookup_associated_info (&e->extra_info, key);
}

/* *ret is negative if not found or not an integer */
static int
lookup_key_pair_integer (const KEY_PAIR *k, const char *key, int *ret)
{
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
  return k->k.integer;
}

/* *ret is negative if not found or not an integer */
int
lookup_extra_integer (const ELEMENT *e, const char *key, int *ret)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  return lookup_key_pair_integer (k, key, ret);
}

ELEMENT_LIST *
lookup_extra_contents (const ELEMENT *e, const char *key)
{
  KEY_PAIR *k = lookup_extra (e, key);
  if (!k)
    return 0;
  else if (k->type != extra_contents)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_contents: %s: %d",
                 key, k->type);
      fatal (msg);
      free (msg);
    }
  return k->k.list;
}

const ELEMENT_LIST *
lookup_extra_directions (const ELEMENT *e, const char *key)
{
  KEY_PAIR *k = lookup_extra (e, key);
  if (!k)
    return 0;
  else if (k->type != extra_directions)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_directions: %s: %d",
                 key, k->type);
      fatal (msg);
      free (msg);
    }
  return k->k.list;
}

const ELEMENT_LIST *
lookup_extra_misc_args (const ELEMENT *e, const char *key)
{
  KEY_PAIR *k = lookup_extra (e, key);
  if (!k)
    return 0;
  else if (k->type != extra_misc_args)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_misc_args: %s: %d",
                 key, k->type);
      fatal (msg);
      free (msg);
    }
  return k->k.list;
}

KEY_PAIR *
lookup_info (const ELEMENT *e, const char *key)
{
  return lookup_associated_info (&e->e.c->info_info, key);
}

char *
lookup_info_string (const ELEMENT *e, const char *key)
{
  const KEY_PAIR *k;
  k = lookup_associated_info (&e->e.c->info_info, key);
  if (!k || !k->k.string)
    return 0;
  return k->k.string;
}

/* only called in tree copy to optimize for speed */
KEY_PAIR *
lookup_associated_info_by_index (const ASSOCIATED_INFO *a,
                                 const char *key, int index)
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
lookup_extra_by_index (const ELEMENT *e, const char *key, int index)
{
  return lookup_associated_info_by_index (&e->extra_info, key, index);
}
