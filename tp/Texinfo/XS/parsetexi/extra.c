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
#include <string.h>

#include "parser.h"

static void
add_associated_info_key (ASSOCIATED_INFO *a, char *key, ELEMENT *value,
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
  add_associated_info_key (e->extra_info, key, value, extra_element);
}

/* Add an extra key that is a reference to another element that is
   out-of-tree, i.e., not referenced anywhere in the tree. */
void
add_extra_element_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (e->extra_info, key, value, extra_element_oot);
}

void
add_info_element_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (e->info_info, key, value, extra_element_oot);
}

/* Add an extra key that is a reference to the contents array of another
   element (for example, 'node_content' on a node command element). */
void
add_extra_contents (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (e->extra_info, key, value, extra_contents);
}

/* Like add_extra_contents but all of the contents are out-of-tree. */
void
add_extra_contents_oot (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (e->extra_info, key, value, extra_contents_oot);
}

/* An array of content arrays. */
void
add_extra_contents_array (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (e->extra_info, key, value, extra_contents_array);
}

/* Add an extra key that is a reference to the text field of another
   element. */
void
add_extra_text (ELEMENT *e, char *key, ELEMENT *value)
{
  add_associated_info_key (e->extra_info, key, value, extra_text);
}

#if 0
/* Function not used */
void
add_extra_index_entry (ELEMENT *e, char *key, INDEX_ENTRY_REF *value)
{
  add_associated_info_key (e->extra_info, key, (ELEMENT *) value,
                           extra_index_entry);
}
#endif

void
add_extra_misc_args (ELEMENT *e, char *key, ELEMENT *value)
{
  if (!value) return;
  add_associated_info_key (e->extra_info, key, value, extra_misc_args);
}

void
add_extra_def_info (ELEMENT *e, char *key, DEF_INFO *value)
{
  add_associated_info_key (e->extra_info, key, (ELEMENT *) value,
                           extra_def_info);
}

void
add_extra_string (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (e->extra_info, key, (ELEMENT *) value, extra_string);
}

void
add_info_string (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (e->info_info, key, (ELEMENT *) value, extra_string);
}

void
add_extra_string_dup (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (e->extra_info, key, (ELEMENT *) strdup (value),
                           extra_string);
}

void
add_info_string_dup (ELEMENT *e, char *key, char *value)
{
  add_associated_info_key (e->info_info, key, (ELEMENT *) strdup (value),
                           extra_string);
}

void
add_extra_integer (ELEMENT *e, char *key, long value)
{
  add_associated_info_key (e->extra_info, key, (ELEMENT *) value, extra_integer);
}

KEY_PAIR *
lookup_associated_info (ASSOCIATED_INFO *a, char *key)
{
  int i;
  for (i = 0; i < a->info_number; i++)
    {
      if (!strcmp (a->info[i].key, key))
        return &a->info[i];
    }
  return 0;
}

KEY_PAIR *
lookup_extra (ELEMENT *e, char *key)
{
  return lookup_associated_info (e->extra_info, key);
}

KEY_PAIR *
lookup_info (ELEMENT *e, char *key)
{
  return lookup_associated_info (e->info_info, key);
}

