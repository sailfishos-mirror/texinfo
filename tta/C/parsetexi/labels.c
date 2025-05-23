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
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

#include "tree_types.h"
/* fatal */
#include "base_utils.h"
#include "tree.h"
#include "extra.h"
/* for element_command_name */
#include "builtin_commands.h"
#include "hashmap.h"
/* for whitespace_chars count_multibyte */
#include "utils.h"
/* for register_label_in_list */
#include "targets.h"
/* for parse_node_manual */
#include "manipulate_tree.h"
#include "convert_to_texinfo.h"
#include "node_name_normalization.h"
#include "errors_parser.h"
#include "source_marks.h"
/* for parsed_document */
#include "parser.h"
#include "labels.h"

/* Register a target element associated to a label that may be the target of
   a reference and must be unique in the document.  Corresponds to @node,
   @*anchor, and @float (float label corresponds to the second argument). */
void
check_register_target_element_label (ELEMENT *label_element,
                                     ELEMENT *target_element)
{
  char *normalized = 0;
  if (label_element && label_element->e.c->contents.number > 0)
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
          line_error_ext (MSG_error, 0, &target_element->e.c->source_info,
                          "empty node name after expansion `%s'",
                           label_texi);
          free (label_texi);
          free (normalized);
          normalized = 0;
        }
      else
        {
          add_extra_string (target_element, AI_key_normalized, normalized);
        }
    }

  register_label_in_list (&parsed_document->labels_list, target_element,
                          normalized);
}

/* called from parser */
/* sections numbers are taken into account to preemptively add
   buckets in case there are no nodes associated to sections and
   they are associated afterwards. */
void
set_labels_identifiers_target (const LABEL_LIST *labels, C_HASHMAP *hashmap,
                               size_t sections_number)
{
  size_t i;
  size_t labels_number = labels->number;

  if (labels_number + sections_number > 0)
    init_c_hashmap (hashmap, labels_number + sections_number);

  /* process labels */
  for (i = 0; i < labels_number; i++)
    {
      LABEL *l = &labels->list[i];
      const ELEMENT *found_element;
      int found;

      if (l->identifier == 0)
        continue;

      found_element = c_hashmap_value (hashmap, l->identifier, &found);

      if (found)
        {
          const ELEMENT *label_element = get_label_element (l->element);
          char *texi_str = convert_contents_to_texinfo (label_element);
          l->reference = found_element;

          line_error_ext (MSG_error, 0,
                          &l->element->e.c->source_info,
                          "@%s `%s' previously defined",
                          element_command_name (l->element),
                          texi_str);
          free (texi_str);
          line_error_ext (MSG_error, 1,
                          &found_element->e.c->source_info,
                          "here is the previous definition as @%s",
                          element_command_name (found_element));
        }
      else
        {
          l->element->flags |= EF_is_target;

          c_hashmap_register (hashmap, l->identifier, l->element);
        }
    }
}
