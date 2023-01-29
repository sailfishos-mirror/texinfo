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
/* for debugging only */
#include "parser.h"

int include_counter = 0;
int setfilename_counter = 0;
int delcomment_counter = 0;
int defline_continuation_counter = 0;
int macro_expansion_counter = 0;

SOURCE_MARK *
new_source_mark (enum source_mark_type type)
{
  SOURCE_MARK *source_mark = malloc (sizeof (SOURCE_MARK));

  /* Zero all elements */
  memset (source_mark, 0, sizeof (*source_mark));

  source_mark->type = type;
  source_mark->counter = -1;
  source_mark->status = SM_status_none;
  source_mark->location = source_mark_location_none;
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
      else if (source_mark->type == SM_type_delcomment)
        {
          delcomment_counter++;
          source_mark->counter = delcomment_counter;
        }
      else if (source_mark->type == SM_type_defline_continuation)
        {
          defline_continuation_counter++;
          source_mark->counter = defline_continuation_counter;
        }
      else if (source_mark->type == SM_type_macro_expansion)
        {
          macro_expansion_counter++;
          source_mark->counter = macro_expansion_counter;
        }
    }

  if (e->contents.number > 0)
    {
      ELEMENT *last_child = last_contents_child (e);
      mark_element = last_child;
      /* use last_child->text.space and not last_child->text.end
         to associate to element text when the test string is set
         but empty.
         FIXME this looks like a wrong way to do it */
      if (last_child->text.space > 0)
        {
          source_mark->location = source_mark_location_text;
          source_mark->position = last_child->text.end;
        }
    }
  else
    {
      /* add an empty element only used for source marks */
      mark_element = new_element(ET_NONE);
      add_to_element_contents (e, mark_element);
    }

  debug_nonl ("MARKS: %d c: %d, %d %d ", source_mark->type,
              source_mark->counter, source_mark->location,
              source_mark->status);
  debug_print_element_short (mark_element, 1);
  debug("");
  add_source_mark (source_mark, mark_element);
}

void
source_marks_reset_counters (void)
{
  include_counter = 0;
  setfilename_counter = 0;
  delcomment_counter = 0;
  defline_continuation_counter = 0;
  macro_expansion_counter = 0;
}
