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
/* for get_label_element and delete_global_info */
#include "utils.h"
#include "errors.h"
#include "debug.h"
#include "builtin_commands.h"
#include "extra.h"
#include "convert_to_texinfo.h"
/* for wipe_index */
#include "indices.h"
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
register_document (ELEMENT *root, INDEX **index_names,
                   FLOAT_RECORD_LIST *floats_list,
                   ELEMENT_LIST *internal_references,
                   LABEL_LIST *labels_list,
                   LABEL_LIST *identifiers_target,
                   GLOBAL_INFO *global_info)
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
  document->index_names = index_names;
  document->floats = floats_list;
  document->internal_references = internal_references;
  document->labels_list = labels_list;
  document->identifiers_target = identifiers_target;
  document->global_info = global_info;
  return document_index +1;
}

void
destroy_document_information_except_tree (DOCUMENT *document)
{
  if (document->tree)
    {
      INDEX **i, *idx;

      delete_global_info (document->global_info);
      free (document->global_info);
      free (document->internal_references->list);
      free (document->internal_references);
      free (document->floats->float_types);
      free (document->floats);
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
    destroy_element_and_children (document->tree);
  document->tree = 0;
}

/* destroy everything except for the tree, and unregister the
   tree such that it won't ever be retrieved.  Should be used
   when the tree becomes part of another document */
ELEMENT *
unregister_tree (DOCUMENT *document)
{
  ELEMENT *tree;

  destroy_document_information_except_tree (document);
  tree = document->tree;
  document->tree = 0;
  return tree;
}

int
compare_labels (const void *a, const void *b)
{
  const LABEL *label_a = (const LABEL *) a;
  const LABEL *label_b = (const LABEL *) b;

  if (label_a->identifier != 0 && label_b->identifier != 0)
    {
      int result = strcmp (label_a->identifier, label_b->identifier);
      if (result != 0)
        return result;
    }
  else if (label_a->identifier)
    return -1;
  else if (label_b->identifier)
    return 1;

  if (label_a->label_number < label_b->label_number)
    return -1;
  else
    return 1;
/*
  return (*da > *db) - (*da < *db);
*/
}

/*
some_fun (LABEL_LIST *labels_list)
{
  LABEL *list_of_labels = labels_list->list;
  set_labels_identifiers_target (list_of_labels, labels_list->number);
}
 */

/* returns a LABEL_LIST that is sorted with unique identifiers such that
   elements are easy to find */
LABEL_LIST *
set_labels_identifiers_target (LABEL *list_of_labels, size_t labels_number)
{
  LABEL *targets = malloc (labels_number * sizeof(LABEL));
  LABEL_LIST *result = malloc (sizeof(LABEL_LIST));
  size_t targets_number = labels_number;

  int i;

  /*
  for (i = 0; i < labels_number; i++)
    fprintf(stderr, "LL %d %p '%s' %d\n", i, &list_of_labels[i], list_of_labels[i].identifier, list_of_labels[i].label_number);
   */
  memcpy (targets, list_of_labels, labels_number * sizeof(LABEL));
  qsort (targets, labels_number, sizeof(LABEL), compare_labels);
  /*
  for (i = 0; i < labels_number; i++)
    fprintf(stderr, "TT %d %p '%s' %d\n", i, &targets[i], targets[i].identifier, targets[i].label_number);
   */
  i = 0;
  while (i < targets_number)
    {
      /* reached the end of the labels with identifiers */
      if (targets[i].identifier == 0)
        {
          targets_number = i;
          break;
        }
      add_extra_integer (targets[i].element, "is_target", 1);
      if (i < targets_number - 1)
        {
          /* find redundant labels with the same identifiers and
             eliminate them */
          size_t j = i;
          while (j < targets_number - 1 && targets[j+1].identifier
                 && !strcmp (targets[i].identifier, targets[j+1].identifier))
            {
              j++;
            }
          if (j > i)
            {
              size_t n;
              for (n = i+1; n < j + 1; n++)
                {
                  ELEMENT *label_element
                     = get_label_element (targets[n].element);
                  char *texi_str = convert_contents_to_texinfo (label_element);
                  line_error_ext (error, 0, &targets[n].element->source_info,
                                  "@%s `%s' previously defined",
                                  command_name (targets[n].element->cmd),
                                  texi_str);
                  free (texi_str);
                  line_error_ext (error, 1, &targets[i].element->source_info,
                                 "here is the previous definition as @%s",
                                  command_name (targets[i].element->cmd));

                }
              if (j < targets_number - 1)
                {
                  memmove (&targets[i+1], &targets[j+1],
                         (targets_number - (j + 1))* sizeof(LABEL));
                }
              targets_number -= (j - i);
              if (j >= targets_number)
                break;
            }
          i++;
        }
      else
        break;
    }
  /*
  for (i = 0; i < targets_number; i++)
    fprintf (stderr, "RR %d %p '%s' %d\n", i, &targets[i], targets[i].identifier, targets[i].label_number);
   */
  result->list = targets;
  result->number = targets_number;
  result->space = labels_number;
  return result;
}

