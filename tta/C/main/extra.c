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

#include <config.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "tree_types.h"
/* for new_list */
#include "tree.h"
/* for fatal */
#include "base_utils.h"
/* for directions_length */
#include "utils.h"
#include "debug.h"
#include "extra.h"

KEY_PAIR *
get_associated_info_key (ASSOCIATED_INFO *a, enum ai_key_name key)
{
  size_t i;
  for (i = 0; i < a->info_number; i++)
    {
      if (a->info[i].key == key)
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

      a->info[i].key = key;
    }

  return &a->info[i];
}

/* Add an extra key that is a reference to another element (for example,
   'associated_section' on a node command element. */
/* The extra element is marked as const because, as a general rule, an
   extra element should not be modified when accessed through
   lookup_extra_element as it refers to another part of the tree.
   In addition, tree elements should not be modified in converters.
   Having the element registered here as const and lookup_extra_element
   return const helps guarding against errors.

   However, during the structuring/tree transformation phase, an element
   obtained through lookup_extra_element could need to be modified (addition
   of menus, for example).  The element could also be modified when a
   reference to Perl is needed when building to Perl.  When the tree is
   copied, the source tree elements are temporarily modified.  For those
   cases, a cast should be (and is) used to remove the const.
 */
void
add_extra_element (ELEMENT *e, enum ai_key_name key, const ELEMENT *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_element)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_element: %s: %d",
                ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.const_element = value;
    }
}

/* Add an extra key that is a reference to another element that is
   out-of-tree, i.e., not referenced anywhere in the tree.
*/
void
add_extra_element_oot (ELEMENT *e, enum ai_key_name key, ELEMENT *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_element_oot)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_element_oot: %s: %d",
                ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.element = value;
    }
}

/* Add an extra key that is a reference to elements elsewhere in the tree,
   in general in the contents array of another element (for example,
   'node_content' on a node direction element contents).
   Similar to extra_contents, but passed to Perl as an element with
   contents.
 */
void
add_extra_container (ELEMENT *e, enum ai_key_name key, ELEMENT *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_container)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_container: %s: %d",
                ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.element = value;
    }
}

/* Add an extra key that is a reference to an array of other
   elements (for example, 'section_childs').
   Check if it already exists, unless NO_LOOKUP is set
   if the caller knows that the array has not been set
   already.

   A list of const elements is used as the extra contents
   contain elements from elsewhere in the tree.  See the comment
   before add_extra_element for more on that subject and on casting
   the elements from the list to remove const if needed.
*/
CONST_ELEMENT_LIST *
add_extra_contents (ELEMENT *e, enum ai_key_name key, int no_lookup)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_contents)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_contents: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      CONST_ELEMENT_LIST *n_list;
      if (!no_lookup)
        {
          CONST_ELEMENT_LIST *e_list = lookup_extra_contents (e, key);
          if (e_list)
            return e_list;
        }

      n_list = new_const_element_list ();
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.const_list = n_list;
      return n_list;
    }

  return 0;
}

/* Holds 3 elements corresponding to directions in enum directions.

  The elements are set const because directions are set after the tree is
  done and, as a rule, the elements should not be modified when accessed
  from directions.  When the element need to be modified, the const is removed
  with a cast.  This happens when associating to a reference on a Perl
  object when building the Perl tree, and when copying the tree, as the
  element is temporarily modified in that case.
*/
const ELEMENT **
add_extra_directions (ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_directions)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_directions: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      const ELEMENT **e_list = lookup_extra_directions (e, key);
      if (e_list)
        return e_list;
      else
        {
          const ELEMENT **n_list = new_directions ();
          KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
          k->k.directions = n_list;
          return n_list;
        }
    }

  return 0;
}

void
add_extra_misc_args (ELEMENT *e, enum ai_key_name key, STRING_LIST *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (!value) return;
  if (k_type != extra_misc_args)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_misc_args: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.strings_list = value;
    }
}

void
add_extra_index_entry (ELEMENT *e, enum ai_key_name key,
                       INDEX_ENTRY_LOCATION *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (!value) return;

  if (k_type != extra_index_entry)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_index_entry: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.index_entry = value;
    }
}

void
add_extra_string (ELEMENT *e, enum ai_key_name key, char *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_string)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_string: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.string = value;
    }
}

void
add_extra_string_dup (ELEMENT *e, enum ai_key_name key, const char *value)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_string)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_string: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.string = strdup (value);
    }
}

void
add_extra_integer (ELEMENT *e, enum ai_key_name key, int value)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_integer)
    {
      char *msg;
      xasprintf (&msg, "Bad type for add_extra_integer: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = get_associated_info_key (&e->e.c->extra_info, key);
      k->k.integer = value;
    }
}

KEY_PAIR *
lookup_associated_info (const ASSOCIATED_INFO *a, enum ai_key_name key)
{
  size_t i;
  for (i = 0; i < a->info_number; i++)
    {
      /* We could reuse extra_deleted slots by keeping the extra_deleted
         key and checking here the type, but in the current code the
         extra_deleted keys will never be set again */
      if (a->info[i].key == key)
        return &a->info[i];
    }
  return 0;
}

const ELEMENT *
lookup_extra_element (const ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_element)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_element: %s: %d",
                ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      const KEY_PAIR *k = lookup_associated_info (&e->e.c->extra_info, key);
      if (k)
        return k->k.element;
    }
  return 0;
}

ELEMENT *
lookup_extra_element_oot (const ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_element_oot)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_element_oot: %s: %d",
                ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      const KEY_PAIR *k = lookup_associated_info (&e->e.c->extra_info, key);
      if (k)
        return k->k.element;
    }
  return 0;
}

ELEMENT *
lookup_extra_container (const ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_container)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_container: %s: %d",
                ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      const KEY_PAIR *k = lookup_associated_info (&e->e.c->extra_info, key);
      if (k)
        return k->k.element;
    }
  return 0;
}

char *
lookup_extra_string (const ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_string)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_string: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      const KEY_PAIR *k = lookup_associated_info (&e->e.c->extra_info, key);
      if (k)
        return k->k.string;
    }
  return 0;
}

KEY_PAIR *
lookup_extra (const ELEMENT *e, enum ai_key_name key)
{
  return lookup_associated_info (&e->e.c->extra_info, key);
}

/* *ret is negative if not found or not an integer */
int
lookup_extra_integer (const ELEMENT *e, enum ai_key_name key, int *ret)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_integer)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_integer: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
      *ret = -2;
    }
  else
    {
      const KEY_PAIR *k = lookup_associated_info (&e->e.c->extra_info, key);
      if (!k)
        {
          *ret = -1;
          return 0;
        }
      *ret = 0;
      return k->k.integer;
    }
  return 0;
}

CONST_ELEMENT_LIST *
lookup_extra_contents (const ELEMENT *e, enum ai_key_name key)
{
  KEY_PAIR *k = lookup_extra (e, key);
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_contents)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_contents: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      if (k)
        return k->k.const_list;
    }

  return 0;
}

const ELEMENT **
lookup_extra_directions (const ELEMENT *e, enum ai_key_name key)
{
  KEY_PAIR *k = lookup_extra (e, key);
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_directions)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_directions: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      if (k)
        return k->k.directions;
    }
  return 0;
}

const STRING_LIST *
lookup_extra_misc_args (const ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_misc_args)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_misc_args: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = lookup_extra (e, key);
      if (k)
        return k->k.strings_list;
    }
  return 0;
}

const INDEX_ENTRY_LOCATION *
lookup_extra_index_entry (const ELEMENT *e, enum ai_key_name key)
{
  enum extra_type k_type = ai_key_types[key];

  if (k_type != extra_index_entry)
    {
      char *msg;
      xasprintf (&msg, "Bad type for lookup_extra_index_entry: %s: %d",
                 ai_key_names[key], k_type);
      fatal (msg);
      free (msg);
    }
  else
    {
      KEY_PAIR *k = lookup_extra (e, key);
      if (k)
        return k->k.index_entry;
    }
  return 0;
}

/* called in tree copy to optimize for speed in the past, not used
   for now */
KEY_PAIR *
lookup_associated_info_by_index (const ASSOCIATED_INFO *a,
                                 enum ai_key_name key, size_t index)
{
  if (index >= a->info_number)
    return 0;

  if (a->info[index].key == key)
    return &a->info[index];

  return 0;
}

KEY_PAIR *
lookup_extra_by_index (const ELEMENT *e, enum ai_key_name key, int index)
{
  return lookup_associated_info_by_index (&e->e.c->extra_info, key, index);
}
