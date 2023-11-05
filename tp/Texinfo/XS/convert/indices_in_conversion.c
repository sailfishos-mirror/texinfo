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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
        
#include <config.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "uniconv.h"
#include "unictype.h"
#include "unistr.h"

#include "tree_types.h"
#include "utils.h"
#include "extra.h"
#include "unicode.h"
#include "indices_in_conversion.h"

/* corresponding perl code in Texinfo::Structuring */

MERGED_INDEX **
merge_indices (INDEX **index_names)
{
  size_t merged_indices_space = 4;
  size_t merged_indices_number = 0;
  INDEX **i, *idx;
  MERGED_INDEX **merged_indices
    = (MERGED_INDEX **) malloc (sizeof (MERGED_INDEX *) * merged_indices_space);
  memset (merged_indices, 0, sizeof (MERGED_INDEX *) * merged_indices_space);

  for (i = index_names; (idx = *i); i++)
    {
      if (idx->index_entries && idx->index_number)
        {
          if (idx->merged_in)
            {
              INDEX *ultimate_idx = ultimate_index (idx);
              char *in_idx_name = ultimate_idx->name;
              MERGED_INDEX **mi, *merged_idx;
              for (mi = merged_indices; (merged_idx = *mi); mi++)
                {
                  if (! strcmp (merged_idx->name, in_idx_name))
                    {
                      break;
                    }
                }
              if (!merged_idx)
                {
                  merged_idx = (MERGED_INDEX *) malloc (sizeof (MERGED_INDEX));
                  merged_idx->name = in_idx_name;
                  merged_idx->index_number = ultimate_idx->index_number;
                  merged_idx->index_entries
                    = malloc (sizeof (INDEX_ENTRY) * merged_idx->index_number);
                  memcpy (merged_idx->index_entries, ultimate_idx->index_entries,
                                 ultimate_idx->index_number * sizeof (INDEX_ENTRY));

                  if (merged_indices_number+1 == merged_indices_space)
                    {
                      merged_indices_space += 5;
                      merged_indices = realloc (merged_indices, merged_indices_space
                                         * sizeof (MERGED_INDEX *));
                    }
                  merged_indices[merged_indices_number] = merged_idx;
                  merged_indices_number++;
                  merged_indices[merged_indices_number] = 0;
                }
              
              merged_idx->index_entries = realloc (merged_idx->index_entries,
                       (idx->index_number + merged_idx->index_number) *
                         sizeof (INDEX_ENTRY));
              memcpy (merged_idx->index_entries + merged_idx->index_number,
                      idx->index_entries,
                                 idx->index_number * sizeof (INDEX_ENTRY));
              merged_idx->index_number += idx->index_number;
            }
        }
    }
  return merged_indices;
}

/* corresponding perl code in Texinfo::Common */

ELEMENT *
index_content_element (ELEMENT *element, int prefer_reference_element)
{
  ELEMENT *def_command = lookup_extra_element (element, "def_command");
  if (def_command)
   {
     ELEMENT *def_index_element;
     if (prefer_reference_element)
       {
         ELEMENT *def_index_ref_element
           = lookup_extra_element (element, "def_index_ref_element");
         if (def_index_ref_element)
           return def_index_ref_element;
       }
     def_index_element = lookup_extra_element (element, "def_index_element");
     return def_index_element;
   }
  else
   {
     return element->args.list[0];
   }
}

