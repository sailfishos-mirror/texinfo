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

#include <config.h>
#include <stdio.h>

#include "tree.h"
#include "errors.h"
#include "debug.h"
#include "document.h"

static DOCUMENT *document_list;
static size_t document_number;
static size_t document_space;

DOCUMENT *
retrieve_document (int document_descriptor)
{
  if (document_descriptor <= document_number)
    return &document_list[document_descriptor -1];
  return 0;
}

/* descriptor starts at 1, 0 is an error */
size_t
register_document (ELEMENT *root)
{
  size_t document_index;
  int slot_found = 0;
  DOCUMENT *document = 0;
  int i;

  /* error? */
  if (root == 0)
    return 0;

  for (i = 0; i < document_number; i++)
    {
      if (document_list[i].tree == 0)
        {
          slot_found = 1;
          document_index = i;
        }
    }
  if (!slot_found)
    {
      if (document_number == document_space)
        {
          document_list = realloc (document_list,
                              (document_space += 5) * sizeof (DOCUMENT));
          if (!document_list)
            fatal ("realloc failed");
        }
      document_index = document_number;
      document_number++;
    }
  document = &document_list[document_index];
  document->tree = root;
  return document_index +1;
}

void
remove_document (int document_descriptor)
{
  DOCUMENT *document = 0;

  /* error? */
  if (document_descriptor > document_number)
    return;

  document = &document_list[document_descriptor -1];
  if (document->tree)
    destroy_element_and_children (document->tree);
  document->tree = 0;
}
