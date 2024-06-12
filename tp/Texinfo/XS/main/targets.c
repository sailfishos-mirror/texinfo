/* Copyright 2023-2024 Free Software Foundation, Inc.

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
#include "document_types.h"
#include "tree.h"
#include "errors.h"
/* FIXME for line_error_ext */
#include "errors_parser.h"
#include "debug.h"
#include "builtin_commands.h"
/* for get_label_element and fatal */
#include "extra.h"
#include "utils.h"
#include "convert_to_texinfo.h"
#include "document.h"
#include "targets.h"

void
destroy_label_list (LABEL_LIST *label_list)
{
  if (label_list->space > 0)
    free (label_list->list);
  free (label_list);
}

int
compare_targets (const void *a, const void *b)
{
  const LABEL *label_a = (const LABEL *) a;
  const LABEL *label_b = (const LABEL *) b;

  return strcmp (label_a->identifier, label_b->identifier);
}

ELEMENT *
find_identifier_target (const LABEL_LIST *identifiers_target,
                        const char *normalized)
{
  static LABEL target_key;
  LABEL *result;
  target_key.identifier = (char *) normalized;
  result = (LABEL *)bsearch (&target_key, identifiers_target->list,
                             identifiers_target->number, sizeof (LABEL),
                             compare_targets);
  if (result)
    return result->element;
  else
    return 0;
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

/* fill a LABEL_LIST that is sorted with unique identifiers such that
   elements are easy to find.
   Called from parser */
void
set_labels_identifiers_target (const LABEL_LIST *labels,
                               LABEL_LIST *result)
{
  size_t labels_number = labels->number;
  LABEL *targets = malloc (labels_number * sizeof (LABEL));
  size_t targets_number = labels_number;
  size_t i;

  memcpy (targets, labels->list, labels_number * sizeof (LABEL));
  qsort (targets, labels_number, sizeof (LABEL), compare_labels);

  i = 0;
  while (i < targets_number)
    {
      /* reached the end of the labels with identifiers */
      if (targets[i].identifier == 0)
        {
          targets_number = i;
          break;
        }
      targets[i].element->flags |= EF_is_target;
      if (i < targets_number - 1)
        {
          /* find redundant labels with the same identifiers and
             eliminate them */
          size_t j = i;
          while (j < targets_number - 1 && targets[j+1].identifier
                 && !strcmp (targets[i].identifier, targets[j+1].identifier))
            {
              labels->list[targets[j+1].label_number].reference
                                   = targets[i].element;
              j++;
            }
          if (j > i)
            {
              size_t n;
              for (n = i+1; n < j + 1; n++)
                {
                  const ELEMENT *label_element
                     = get_label_element (targets[n].element);
                  char *texi_str = convert_contents_to_texinfo (label_element);
                  line_error_ext (MSG_error, 0,
                                  &targets[n].element->e.c->source_info,
                                  "@%s `%s' previously defined",
                                  element_command_name (targets[n].element),
                                  texi_str);
                  free (texi_str);
                  line_error_ext (MSG_error, 1,
                                  &targets[i].element->e.c->source_info,
                                  "here is the previous definition as @%s",
                                  element_command_name (targets[i].element));

                }
              if (j < targets_number - 1)
                {
                  memmove (&targets[i+1], &targets[j+1],
                         (targets_number - (j + 1))* sizeof (LABEL));
                }
              targets_number -= (j - i);
            }
          i++;
        }
      else
        break;
    }

  result->list = targets;
  result->number = targets_number;
  result->space = labels_number;
}

static LABEL *
sort_labels_identifiers_target (const LABEL *list_of_labels,
                                size_t labels_number)
{
  LABEL *targets = malloc (labels_number * sizeof (LABEL));

  memcpy (targets, list_of_labels, labels_number * sizeof (LABEL));
  qsort (targets, labels_number, sizeof (LABEL), compare_labels);

  return targets;
}


void
register_label_in_list (LABEL_LIST *labels_list, ELEMENT *element,
                        char *normalized)
{
  size_t labels_number = labels_list->number;
  if (labels_number == labels_list->space)
   {
      labels_list->space += 1;
      labels_list->space *= 1.5;
      labels_list->list = realloc (labels_list->list,
                             labels_list->space * sizeof (LABEL));
      if (!labels_list->list)
        fatal ("realloc failed");
    }
  labels_list->list[labels_number].element = element;
  labels_list->list[labels_number].label_number = labels_number;
  labels_list->list[labels_number].identifier = normalized;
  labels_list->number++;
}

/* *STATUS 0 means success, 1 or 2 means error */
char *
add_element_to_identifiers_target (DOCUMENT *document, ELEMENT *element,
                                   int *status)
{
  char *normalized = lookup_extra_string (element, AI_key_normalized);
  *status = 2;
  if (normalized)
    {
      LABEL_LIST *identifiers_target = &document->identifiers_target;
      ELEMENT *target = find_identifier_target (identifiers_target,
                                                normalized);
      if (!target)
        {
          LABEL *sorted_identifiers_target;

          element->flags |= EF_is_target;
          register_label_in_list (identifiers_target, element,
                                  normalized);
          sorted_identifiers_target
            = sort_labels_identifiers_target (identifiers_target->list,
                                              identifiers_target->number);
          free (identifiers_target->list);
          identifiers_target->list = sorted_identifiers_target;
          /* knowing that space is the same as number requires looking at
             sort_labels_identifiers_target to figure out the total space
             allocated for sorted_identifiers_target */
          identifiers_target->space = identifiers_target->number;
          *status = 0;
          document->modified_information |= F_DOCM_labels_list
                                   | F_DOCM_identifiers_target;
          return normalized;
        }
      *status = 1;
    }
  return normalized;
}

/* NOTE this function cannot currently be called as the code calling
   register_label_element makes sure that there is no preexisting
   target element with the same normalized identifier.
   */
static void
existing_label_error (DOCUMENT* document, ELEMENT *element, char *normalized,
                      ERROR_MESSAGE_LIST *error_messages)
{
  if (normalized && error_messages)
    {
      ELEMENT *existing_target
        = find_identifier_target (&document->identifiers_target, normalized);
      const ELEMENT *label_element = get_label_element (element);
      char *label_element_texi = convert_contents_to_texinfo (label_element);
      message_list_command_error (error_messages, document->options,
                     element, "@%s `%s' previously defined",
                     builtin_command_name (element->cmd),
                     label_element_texi);
      message_list_line_error_ext (error_messages, document->options,
                      MSG_error, 1, &existing_target->e.c->source_info,
                      "here is the previous definition as @%s",
                      builtin_command_name (existing_target->cmd));
      free (label_element_texi);
    }
}

/* return value is 1 for success, 0 for failure */
int
register_label_element (int document_descriptor, ELEMENT *element,
                        ERROR_MESSAGE_LIST *error_messages)
{
  int status;
  DOCUMENT *document = retrieve_document (document_descriptor);

  char *normalized = add_element_to_identifiers_target (document, element,
                                                        &status);
  if (status)
    {
      existing_label_error (document, element, normalized, error_messages);
    }
  register_label_in_list (&document->labels_list, element,
                          normalized);
  return !status;
}
