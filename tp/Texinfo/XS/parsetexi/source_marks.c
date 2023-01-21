/* Copyright 2023 Free Software Foundation, Inc.

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

#include <string.h>

#include "source_marks.h"
#include "tree.h"
#include "errors.h"

int include_counter = 0;
int setfilename_counter = 0;

SOURCE_MARK *
new_source_mark (enum source_mark_type type)
{
  SOURCE_MARK *source_mark = malloc (sizeof (SOURCE_MARK));

  /* Zero all elements */
  memset (source_mark, 0, sizeof (*source_mark));

  source_mark->type = type;
  source_mark->status = SM_status_none;
  source_mark->counter = -1;
  return source_mark;
}

void
add_source_mark (SOURCE_MARK *source_mark, ELEMENT *e)
{
  SOURCE_MARK_LIST *s_mark_list = &(e->source_mark_list);
  if (s_mark_list->number == s_mark_list->space)
    {
      s_mark_list->space++;  s_mark_list->space *= 1.5;
      s_mark_list->list = realloc (s_mark_list->list,
                          s_mark_list->space * sizeof (SOURCE_MARK));
      if (!s_mark_list->list)
        fatal ("realloc failed");
    }
  s_mark_list->list[s_mark_list->number] = source_mark;
  s_mark_list->number++;
}

void
add_source_marks (SOURCE_MARK_LIST *source_mark_list, ELEMENT *e)
{
  if (source_mark_list->number)
    {
      int i;
      for (i = 0; i < source_mark_list->number; i++)
        add_source_mark (source_mark_list->list[i], e);
    }
}

/* ELEMENT should be the parent container.
   The source mark is put in the last content if it is text
   or registered in the parent container. */
void
register_source_mark (ELEMENT *e, SOURCE_MARK *source_mark)
{
  ELEMENT *mark_element;
  SOURCE_MARK_LIST *s_mark_list;

  if (source_mark->counter == -1)
    {
      if (source_mark->type == SM_type_include)
        {
          include_counter++;
          source_mark->counter = include_counter;
        }
      else if (source_mark->type == SM_type_setfilename)
        {
          setfilename_counter++;
          source_mark->counter = setfilename_counter;
        }
    }

  if (e->contents.number > 0)
    {
      ELEMENT *last_child = last_contents_child (e);
      if (last_child->text.end > 0)
        {
          mark_element = last_child;
          source_mark->location = source_mark_location_text;
          source_mark->position = last_child->text.end;
        }
      else
        {
          mark_element = e;
          source_mark->location = source_mark_location_content;
          source_mark->position = e->contents.number;
        }
    }
  else
    {
      mark_element = e;
      source_mark->location = source_mark_location_content;
      source_mark->position = 0;
    }

  add_source_mark (source_mark, mark_element);
}

void
source_marks_reset_counters (void)
{
  include_counter = 0;
  setfilename_counter = 0;
}
