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
#include <stddef.h>

#include "global_commands_types.h"
#include "options_types.h"
#include "tree_types.h"
#include "tree.h"
#include "floats.h"
#include "errors.h"
#include "debug.h"
/* for delete_global_info and wipe_index */
#include "utils.h"
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
                   GLOBAL_COMMANDS *global_commands,
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
  /* this initializes the other fields */
  memset (document, 0, sizeof (DOCUMENT));
  document->descriptor = document_index +1;
  document->tree = root;
  document->index_names = index_names;
  document->floats = floats_list;
  document->internal_references = internal_references;
  document->labels_list = labels_list;
  document->identifiers_target = identifiers_target;
  document->global_info = global_info;
  document->global_commands = global_commands;
  document->small_strings = small_strings;
  document->error_messages = error_messages;

  document->listoffloats = float_list_to_listoffloats_list (floats_list);

  /*
  fprintf(stderr, "REGISTER %zu %p %p %p %p\n", document_index +1, document,
                       document->tree, document->index_names, document->options);
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
register_document_options (DOCUMENT *document, OPTIONS *options)
{
  document->options = options;
}

void
destroy_document_information_except_tree (DOCUMENT *document)
{
  if (document->tree)
    {
      delete_global_info (document->global_info);
      free (document->global_info);
      delete_global_commands (document->global_commands);
      free (document->global_commands);
      free (document->internal_references->list);
      free (document->internal_references);
      free (document->floats->float_types);
      free (document->floats);
      destroy_listoffloats_list (document->listoffloats);
      free (document->labels_list->list);
      free (document->labels_list);
      free (document->identifiers_target->list);
      free (document->identifiers_target);
      wipe_index_names (document->index_names);
      wipe_error_message_list (document->error_messages);
      free (document->error_messages);
      if (document->nodes_list)
        destroy_element (document->nodes_list);
      if (document->sections_list)
        destroy_element (document->sections_list);
      if (document->options)
        {
          free_options (document->options);
          free (document->options);
        }
    }
}

void
remove_document_descriptor (int document_descriptor)
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
      destroy_strings_list (document->small_strings);
    }
  document->tree = 0;
  /*
  fprintf(stderr, "REMOVE %d %p\n", document_descriptor, document);
   */
}

/* destroy everything except for the tree, and small strings
   and unregister the tree such that it won't ever be retrieved.
   Should be used when the tree becomes part of another document,
   for instance */
TREE_AND_STRINGS *
unregister_document_descriptor_tree (int document_descriptor)
{
  TREE_AND_STRINGS *tree_and_strings = 0;
  DOCUMENT *document = retrieve_document (document_descriptor);

  if (!document)
    return 0;

  tree_and_strings = malloc (sizeof (TREE_AND_STRINGS));

  destroy_document_information_except_tree (document);
  tree_and_strings->tree = document->tree;
  tree_and_strings->small_strings = document->small_strings;

  document->tree = 0;
  document->small_strings = 0;
  /*
  fprintf(stderr, "UNREGISTER %p\n", document);
   */
  return tree_and_strings;
}

void
clear_document_errors (int document_descriptor)
{
  DOCUMENT *document = retrieve_document (document_descriptor);
  if (document)
    wipe_error_message_list (document->error_messages);
}
