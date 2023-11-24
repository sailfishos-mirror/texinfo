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
#include "converter_types.h"
#include "utils.h"
#include "extra.h"
#include "unicode.h"
#include "indices_in_conversion.h"

/* corresponding perl code in Texinfo::Structuring */

MERGED_INDEX *
merge_indices (INDEX **index_names)
{
  size_t merged_indices_space = 4;
  size_t merged_indices_number = 0;
  INDEX **i, *idx;
  MERGED_INDEX *merged_indices
    = (MERGED_INDEX *) malloc (sizeof (MERGED_INDEX) * merged_indices_space);

  for (i = index_names; (idx = *i); i++)
    {
      if (idx->index_entries && idx->entries_number)
        {
          size_t j;
          INDEX *ultimate_idx;
          char *in_idx_name;
          MERGED_INDEX *merged_idx = 0;

          if (idx->merged_in)
            ultimate_idx = ultimate_index (idx);
          else
            ultimate_idx = idx;

          in_idx_name = ultimate_idx->name;

          for (j = 0; j < merged_indices_number; j++)
            {
              if (!strcmp (merged_indices[j].name, in_idx_name))
                {
                  merged_idx = &merged_indices[j];
                  break;
                }
            }
          if (!merged_idx)
            /* main index (possibly idx) not already setup, do it */
            {
              if (merged_indices_number == merged_indices_space)
                {
                  merged_indices_space += 5;
                  merged_indices
                   = realloc (merged_indices, merged_indices_space
                                                * sizeof (MERGED_INDEX));
                }
              merged_idx = &merged_indices[merged_indices_number];
              merged_idx->name = in_idx_name;
              merged_idx->entries_number = ultimate_idx->entries_number;
              merged_idx->index_entries
                = malloc (sizeof (INDEX_ENTRY) * merged_idx->entries_number);
              memcpy (merged_idx->index_entries, ultimate_idx->index_entries,
                        ultimate_idx->entries_number * sizeof (INDEX_ENTRY));
              merged_indices_number++;
            }

          if (idx->merged_in)
            {
              merged_idx->index_entries = realloc (merged_idx->index_entries,
                       (idx->entries_number + merged_idx->entries_number) *
                         sizeof (INDEX_ENTRY));
              memcpy (merged_idx->index_entries + merged_idx->entries_number,
                      idx->index_entries,
                            idx->entries_number * sizeof (INDEX_ENTRY));
              merged_idx->entries_number += idx->entries_number;
            }
        }
    }
  /* set to the final size, including a trailing MERGED_INDEX filled with 0 */
  merged_indices = realloc (merged_indices,
                            (merged_indices_number +1) * sizeof (MERGED_INDEX));
  memset (&merged_indices[merged_indices_number], 0, sizeof (MERGED_INDEX));
  return merged_indices;
}

void
destroy_merged_indices (MERGED_INDEX *merged_indices)
{
  MERGED_INDEX *index;

  for (index = merged_indices; index->name; index++)
    {
      free (index->index_entries);
    }
  free (merged_indices);
}

void
destroy_indices_sorted_by_letter (
         INDEX_SORTED_BY_LETTER *indices_entries_by_letter)
{
  INDEX_SORTED_BY_LETTER *index;

  for (index = indices_entries_by_letter; index->name; index++)
    {
      int i;
      free (index->name);
      for (i = 0; i < index->letter_number; i++)
        {
          LETTER_INDEX_ENTRIES *letter_entries = &index->letter_entries[i];
          free (letter_entries->letter);
          free (letter_entries->entries);
        }
      free (index->letter_entries);
    }
  free (indices_entries_by_letter);
}

/* corresponding perl code in Texinfo::Common */

ELEMENT *
index_content_element (const ELEMENT *element, int prefer_reference_element)
{
  const char *def_command = lookup_extra_string (element, "def_command");
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

