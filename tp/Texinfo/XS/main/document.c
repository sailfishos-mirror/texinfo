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
#include <stdlib.h>
#include <string.h>

#include "tree_types.h"
#include "tree.h"
/* for delete_global_info */
#include "utils.h"
#include "errors.h"
#include "debug.h"
/* for forget_index and wipe_index */
#include "indices.h"
#include "document.h"

static DOCUMENT *document_list;
static size_t document_number;
static size_t document_space;

DOCUMENT *
retrieve_document (int document_descriptor)
{
  if (document_descriptor <= document_number
      && document_list[document_descriptor -1].tree != 0)
    return &document_list[document_descriptor -1];
  return 0;
}

/* descriptor starts at 1, 0 is an error */
size_t
register_document (ELEMENT *root, INDEX **index_names,
                   FLOAT_RECORD_LIST *floats_list,
                   ELEMENT_LIST *internal_references,
                   LABEL_LIST *labels_list,
                   LABEL_LIST *identifiers_target,
                   GLOBAL_INFO *global_info,
                   STRING_LIST *small_strings,
                   ERROR_MESSAGE_LIST *error_messages)
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
  /* this initializes nodes_list and sections_list */
  memset (document, 0, sizeof (DOCUMENT));
  document->descriptor = document_index +1;
  document->tree = root;
  document->index_names = index_names;
  document->floats = floats_list;
  document->internal_references = internal_references;
  document->labels_list = labels_list;
  document->identifiers_target = identifiers_target;
  document->global_info = global_info;
  document->small_strings = small_strings;
  document->error_messages = error_messages;

  document->listoffloats = float_list_to_listoffloats_list (floats_list);

  /*
  fprintf(stderr, "REGISTER %d %p %p\n", document_index +1,
                       document->tree, document->index_names);
   */
  return document_index +1;
}

void
register_document_nodes_list (DOCUMENT *document, ELEMENT *nodes_list)
{
  document->nodes_list = nodes_list;
}

void
register_document_sections_list (DOCUMENT *document, ELEMENT *sections_list)
{
  document->sections_list = sections_list;
}

void
destroy_document_information_except_tree (DOCUMENT *document)
{
  if (document->tree)
    {
      INDEX **i, *idx;
      int j;

      delete_global_info (document->global_info);
      free (document->global_info);
      free (document->internal_references->list);
      free (document->internal_references);
      free (document->floats->float_types);
      free (document->floats);
      destroy_listoffloats_list (document->listoffloats);
      free (document->labels_list->list);
      free (document->labels_list);
      free (document->identifiers_target->list);
      free (document->identifiers_target);
      for (i = document->index_names; (idx = *i); i++)
        {
          wipe_index (idx);
          free (idx);
        }
      free (document->index_names);
      /* same as errors.c wipe_errors */
      for (j = 0; j < document->error_messages->number; j++)
        free (document->error_messages->list[j].message);
      free (document->error_messages->list);
      free (document->error_messages);
    }
}

void
remove_document (int document_descriptor)
{
  DOCUMENT *document = 0;

  /* error? */
  if (document_descriptor > document_number)
    return;

  document = &document_list[document_descriptor -1];

  destroy_document_information_except_tree (document);

  if (document->tree)
    {
      destroy_element_and_children (document->tree);
      free_strings_list (document->small_strings);
    }
  document->tree = 0;
  /*
  fprintf(stderr, "REMOVE %d\n", document_descriptor);
   */
}

/* destroy everything except for the tree, and unregister the
   tree such that it won't ever be retrieved.  Should be used
   when the tree becomes part of another document */
/* FIXME cannot unregister the tree as there are associated
   small_strings */
ELEMENT *
unregister_tree (DOCUMENT *document)
{
  ELEMENT *tree;

  destroy_document_information_except_tree (document);
  tree = document->tree;
  /*
  document->tree = 0;
   */
  return tree;
}

