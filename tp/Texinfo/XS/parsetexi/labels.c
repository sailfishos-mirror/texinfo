/* Copyright 2010-2023 Free Software Foundation, Inc.

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
#include <stdio.h>
#include <stdlib.h>

/* definitions of labels_list, labels_number and identifiers_target
   as extern are in parser.h */
#include "parser.h"
#include "tree_types.h"
#include "tree.h"
#include "errors_parser.h"
/* for whitespace_chars and count_multibyte */
#include "utils.h"
/* for parse_node_manual */
#include "manipulate_tree.h"
#include "convert_to_texinfo.h"
#include "node_name_normalization.h"
#include "source_marks.h"
#include "extra.h"
#include "labels.h"

/* Array of recorded elements with labels space. */
LABEL *labels_list = 0;
size_t labels_number = 0;
static size_t labels_space = 0;

/* Array of target elements with unique identifiers, sorted by identifier */
LABEL_LIST *identifiers_target = 0;

/* Register a target element associated to a label that may be the target of
   a reference and must be unique in the document.  Corresponds to @node,
   @anchor, and @float (float label corresponds to the second argument). */
void
register_label (ELEMENT *target_element, char *normalized)
{
  /* register the element in the list. */
  if (labels_number == labels_space)
    {
      labels_space += 1;
      labels_space *= 1.5;
      labels_list = realloc (labels_list,
                             labels_space * sizeof (LABEL));
      if (!labels_list)
        fatal ("realloc failed");
    }
  labels_list[labels_number].element = target_element;
  labels_list[labels_number].label_number = labels_number;
  labels_list[labels_number].identifier = normalized;
  labels_number++;
}

/* not used */
void
reset_labels (void)
{
  labels_number = 0;
}

void
forget_labels (void)
{
  labels_number = 0;
  labels_space = 0;
  labels_list = 0;
}

void
check_register_target_element_label (ELEMENT *label_element,
                                     ELEMENT *target_element)
{
  char *normalized = 0;
  if (label_element && label_element->contents.number > 0)
    {
      char *non_hyphen_char;
      /* check that the label used as an anchor for link target has no
         external manual part */
      NODE_SPEC_EXTRA *label_info = parse_node_manual (label_element, 0);
      if (label_info && label_info->manual_content)
        {
          /* show contents only to avoid leading/trailing spaces */
          char *texi = convert_contents_to_texinfo (label_element);
          line_error ("syntax for an external node used for `%s'", texi);
          free (texi);
        }
      destroy_node_spec (label_info);
      normalized = convert_to_identifier (label_element);
      non_hyphen_char = normalized + strspn (normalized, "-");
      if (!*non_hyphen_char)
        {
          char *label_texi = convert_contents_to_texinfo (label_element);
          line_error_ext (MSG_error, 0, &target_element->source_info,
                          "empty node name after expansion `%s'",
                           label_texi);
          free (label_texi);
          free (normalized);
          normalized = 0;
        }
      else
        {
          add_extra_string (target_element, "normalized", normalized);
        }
    }
  register_label (target_element, normalized);
}

void
wipe_identifiers_target (void)
{
  if (identifiers_target != 0)
    {
      free (identifiers_target->list);
      free (identifiers_target);
      identifiers_target = 0;
    }
}



ELEMENT_LIST internal_xref_list = {0, 0, 0};

void
remember_internal_xref (ELEMENT *element)
{
  add_to_element_list (&internal_xref_list, element);
}

/* not used */
void
reset_internal_xrefs (void)
{
  internal_xref_list.number = 0;
}

void
forget_internal_xrefs (void)
{
  internal_xref_list.number = 0;
  internal_xref_list.space = 0;
  internal_xref_list.list = 0;
}

