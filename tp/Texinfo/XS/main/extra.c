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

/* used in tree copy, but should not be used in general */
void
add_associated_info_key (ASSOCIATED_INFO *a, char *key, intptr_t value,
                         enum extra_type type)
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
  a->info[i].value = value;
  a->info[i].type = type;
}

/* Add an extra key that is a reference to another element (for example, 
   'associated_section' on a node command element. */
void
add_extra_element (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (&e->extra_info, key,
                           (intptr_t) value, extra_element);
}

/* Add an extra key that is a reference to another element that is
   out-of-tree, i.e., not referenced anywhere in the tree.
   Unused in the parser in 2023, but used in other codes.
*/
void
add_extra_element_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (&e->extra_info,
                           key, (intptr_t) value, extra_element_oot);
}

void
add_info_element_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (&e->info_info,
                           key, (intptr_t) value, extra_element_oot);
}

/* Add an extra key that is a reference to the contents array of another
   element (for example, 'node_content' on a node command element). */
void
add_extra_contents (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (&e->extra_info,
                           key, (intptr_t) value, extra_contents);
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
  add_associated_info_key (&e->extra_info,
                           key, (intptr_t) value, extra_directions);
}

/* Add an extra key that is a reference to the text field of another
   element. */
/*
   Unused in 2023.
*/
void
add_extra_text (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (&e->extra_info, key, (intptr_t) value, extra_text);
}

void
add_extra_misc_args (ELEMENT *e, char *key, ELEMENT *value)
{
  if (!value) return;
  add_associated_info_key (&e->extra_info,
                           key, (intptr_t) value, extra_misc_args);
}

void
add_extra_string (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (&e->extra_info, key,
                           (intptr_t) value, extra_string);
}

void
add_info_string (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (&e->info_info, key, (intptr_t) value, extra_string);
}

void
add_extra_string_dup (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (&e->extra_info,
                           key, (intptr_t) strdup (value), extra_string);
}

void
add_info_string_dup (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (&e->info_info,
                           key, (intptr_t) strdup (value), extra_string);
}

void
add_extra_integer (ELEMENT *e, char *key, long value)
{
  add_associated_info_key (&e->extra_info,
                           key, (intptr_t) value, extra_integer);
}

KEY_PAIR *
lookup_associated_info (ASSOCIATED_INFO *a, char *key)
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
lookup_extra_element (ELEMENT *e, char *key)
{
  KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k)
    return 0;
  return (ELEMENT *) k->value;
}

char *
lookup_extra_string (ELEMENT *e, char *key)
{
  KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k || !k->value)
    return 0;
  return (char *) k->value;
}

KEY_PAIR *
lookup_extra (ELEMENT *e, char *key)
{
  return lookup_associated_info (&e->extra_info, key);
}

/* *ret is negative if not found or not an integer */
int
lookup_extra_integer (ELEMENT *e, char *key, int *ret)
{
  KEY_PAIR *k;
  k = lookup_associated_info (&e->extra_info, key);
  if (!k)
    {
      *ret = -1;
      return 0;
    }
  if (k->type != extra_integer)
    {
      *ret = -2;
      return 0;
    }
  *ret = 0;
  return (int)k->value;
}

/* if CREATE is true, create an extra contents element if there is none */
ELEMENT *
lookup_extra_contents (ELEMENT *e, char *key, int create)
{
  ELEMENT *contents_e;
  contents_e = lookup_extra_element (e, key);
  if (!contents_e && create)
    {
      contents_e = new_element (ET_NONE);
      add_extra_contents (e, key, contents_e);
    }
  return contents_e;
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
lookup_info_element (ELEMENT *e, char *key)
{
  KEY_PAIR *k;
  k = lookup_associated_info (&e->info_info, key);
  if (!k)
    return 0;
  return (ELEMENT *) k->value;
}


KEY_PAIR *
lookup_info (ELEMENT *e, char *key)
{
  return lookup_associated_info (&e->info_info, key);
}

/* only called in tree copy to optimize for speed */
KEY_PAIR *
lookup_associated_info_by_index (ASSOCIATED_INFO *a, char *key, int index)
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
lookup_extra_by_index (ELEMENT *e, char *key, int index)
{
  return lookup_associated_info_by_index (&e->extra_info, key, index);
}
