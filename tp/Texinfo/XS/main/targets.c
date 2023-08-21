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
/* for get_label_element */
#include "utils.h"
#include "errors.h"
#include "debug.h"
#include "builtin_commands.h"
#include "extra.h"
#include "convert_to_texinfo.h"
#include "targets.h"

int
compare_targets (const void *a, const void *b)
{
  const LABEL *label_a = (const LABEL *) a;
  const LABEL *label_b = (const LABEL *) b;

  return strcmp (label_a->identifier, label_b->identifier);
}

ELEMENT *
find_identifier_target (LABEL_LIST *identifiers_target,
                        char *normalized)
{
  static LABEL target_key;
  LABEL *result;
  target_key.identifier = normalized;
  result = (LABEL *)bsearch (&target_key, identifiers_target->list,
                             identifiers_target->number, sizeof(LABEL),
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

  memcpy (targets, list_of_labels, labels_number * sizeof(LABEL));
  qsort (targets, labels_number, sizeof(LABEL), compare_labels);

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
                                  element_command_name (targets[n].element),
                                  texi_str);
                  free (texi_str);
                  line_error_ext (error, 1, &targets[i].element->source_info,
                                 "here is the previous definition as @%s",
                                  element_command_name (targets[i].element));

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

  result->list = targets;
  result->number = targets_number;
  result->space = labels_number;
  return result;
}

