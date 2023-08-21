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

/* In sync with Texinfo::Structuring */

#include <config.h>
#include <string.h>
#include <stdlib.h>

#include "tree_types.h"
#include "tree.h"
#include "element_types.h"
#include "extra.h"
#include "errors.h"
#include "node_name_normalization.h"
#include "convert_to_texinfo.h"
#include "targets.h"
#include "builtin_commands.h"
/* for get_label_element */
#include "utils.h"
#include "structuring.h"

void
associate_internal_references (LABEL_LIST *identifiers_target,
                               ELEMENT_LIST *refs)
{
  int i;

  if (!refs || !refs->number)
    return;

  for (i = 0; i < refs->number; i++)
    {
      ELEMENT *ref = refs->list[i];
      ELEMENT *label_element;
      ELEMENT *label_node_content;

      if (ref->type == ET_menu_entry_node)
        label_element = ref;
      else
        label_element = ref->args.list[0];

      label_node_content
          = lookup_extra_element (label_element, "node_content");
      if (label_node_content)
        {
          char *normalized
            = convert_contents_to_identifier (label_node_content);
          if (normalized)
            {
              if (strlen (normalized))
                {
                  add_extra_string (label_element, "normalized",
                                    normalized);
                }
              else
                free (normalized);
            }
        }

      if (ref->type == ET_menu_entry_node)
        /* similar messages are output in check_menu_entry */
        continue;
      else
        {
          ELEMENT *node_target = 0;
          KEY_PAIR *k_normalized = lookup_extra (label_element, "normalized");
          if (k_normalized && k_normalized->value)
            {
              char *normalized = (char *)k_normalized->value;
              node_target
                = find_identifier_target(identifiers_target,
                                         normalized);
            }

          if (!node_target)
            {
              /*
        if (!$customization_information->get_conf('novalidate')) {
               */
               /* FIXME registrar */
              command_error (ref, "@%s reference to nonexistent node `%s'",
                             builtin_command_name (ref->cmd),
                             link_element_to_texi (label_element));
            }
          else
            {
              label_node_content = lookup_extra_element (label_element,
                                                         "node_content");
          /*
        if (!$customization_information->get_conf('novalidate')
          */
               /* FIXME registrar */
              if (!check_node_same_texinfo_code (node_target,
                                                 label_node_content))
                {
                  command_warn (ref,
                                "@%s to `%s', different from %s name `%s'",
                                builtin_command_name (ref->cmd),
                                link_element_to_texi (label_element),
                                builtin_command_name (node_target->cmd),
                                target_element_to_texi_label (node_target));
                }
            }
        }
    }
}

