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

#include <stdlib.h>
#include <string.h>
#include <stddef.h>
 
#include "tree_types.h"
#include "base_utils.h"

NODE_STRUCTURE *
new_node_structure (ELEMENT *element)
{
  NODE_STRUCTURE *node = (NODE_STRUCTURE *) malloc (sizeof (NODE_STRUCTURE));
  memset (node, 0, sizeof (NODE_STRUCTURE));
  node->element = element;
  return node;
}

SECTION_STRUCTURE *
new_section_structure (ELEMENT *element)
{
  SECTION_STRUCTURE *section
    = (SECTION_STRUCTURE *) malloc (sizeof (SECTION_STRUCTURE));
  memset (section, 0, sizeof (SECTION_STRUCTURE));
  section->element = element;
  return section;
}

HEADING_STRUCTURE *
new_heading_structure (ELEMENT *element)
{
  HEADING_STRUCTURE *heading
    = (HEADING_STRUCTURE *) malloc (sizeof (HEADING_STRUCTURE));
  memset (heading, 0, sizeof (HEADING_STRUCTURE));
  heading->element = element;
  return heading;
}

/* Make sure there is space for at least one more element. */
#define setup_reallocate_structure_list(name, type) \
static void \
reallocate_##name##_structure_list (type##_STRUCTURE_LIST *list) \
{ \
  if (list->number + 1 >= list->space) \
    { \
      list->space += 10; \
      list->list = realloc (list->list, \
                            list->space * sizeof (type##_STRUCTURE *)); \
      if (!list->list) \
        fatal ("realloc failed"); \
    } \
}

setup_reallocate_structure_list(node,NODE)
setup_reallocate_structure_list(section,SECTION)
setup_reallocate_structure_list(heading,HEADING)

void
add_to_node_structure_list (NODE_STRUCTURE_LIST *list, ELEMENT *e)
{
  NODE_STRUCTURE *node = new_node_structure (e);
  /* NOTE there could be theoretically an overflow if
     list->number + 1 > SIZE_MAX.  The numbers are big, this is unlikely
     to happen */
  reallocate_node_structure_list (list);
 
  list->list[list->number++] = node;
}

void
add_to_section_structure_list (SECTION_STRUCTURE_LIST *list, ELEMENT *e)
{
  SECTION_STRUCTURE *section = new_section_structure (e);
  reallocate_section_structure_list (list);
 
  list->list[list->number++] = section;
}
 
void
add_to_heading_structure_list (HEADING_STRUCTURE_LIST *list, ELEMENT *e)
{
  HEADING_STRUCTURE *heading = new_heading_structure (e);
  reallocate_heading_structure_list (list);
 
  list->list[list->number++] = heading;
}
 
/* Add the element E into the LIST at index WHERE. */
void
insert_into_node_structure_list (NODE_STRUCTURE_LIST *list,
                                 ELEMENT *e, size_t where)
{
  NODE_STRUCTURE *node = new_node_structure (e);
  reallocate_node_structure_list (list);
 
  if (where > list->number)
    fatal ("elements list index out of bounds");
 
  memmove (&list->list[where + 1], &list->list[where],
           (list->number - where) * sizeof (NODE_STRUCTURE *));
  list->list[where] = node;
  list->number++;
}
