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

/* in Texinfo::Common */

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

/* This is unfinished, because sorting letters requires a collation
   in C.
   converter would be used to find index entries based on index name and number */
INDEX_SORTED_BY_LETTER **
sort_indices_by_letter (CONVERTER *converter,
                        INDEX_SORTABLE_ENTRIES **sortable_entries)
{
  INDEX_SORTED_BY_LETTER **result;
  INDEX_SORTABLE_ENTRIES **i;
  INDEX_SORTABLE_ENTRIES *ise;
  int index_nr = 0;

  if (!sortable_entries)
    return 0;

  for (i = sortable_entries; (ise = *i); i++)
    index_nr++;

   result = (INDEX_SORTED_BY_LETTER **)
     malloc ((index_nr+1) * sizeof (INDEX_SORTED_BY_LETTER *));
   result[index_nr] = 0;

  for (i = sortable_entries; (ise = *i); i++)
    {
      int j;
      LETTER_SORTABLE_ENTRIES_LIST *letter_sortable_entries_list
       = (LETTER_SORTABLE_ENTRIES_LIST *)
        malloc (sizeof (LETTER_SORTABLE_ENTRIES_LIST));
      memset (letter_sortable_entries_list, 0,
              sizeof (LETTER_SORTABLE_ENTRIES_LIST));
      INDEX_SORTED_BY_LETTER *idx_sorted = (INDEX_SORTED_BY_LETTER *)
         malloc (sizeof (INDEX_SORTED_BY_LETTER));
      idx_sorted->name = strdup (ise->name);
      for (j = 0; j < ise->number; j++)
        {
          SORTABLE_ENTRY *sortable_entry = &ise->sortable_entries[j];
          if (sortable_entry->keys_number)
            {
              char *letter = 0;
              int alpha = 0;
              char *entry_key = sortable_entry->entry_keys[0];
              char *uc_entry_key = to_upper_or_lower_multibyte (entry_key, 1);
              char *normalized = normalize_NFKD (uc_entry_key);
              uint32_t *encoded_u32;
              free (uc_entry_key);
              encoded_u32 = u32_strconv_from_encoding (normalized,
                                           "UTF-8", iconveh_question_mark);
              const uint32_t *next = encoded_u32;
              while (1)
                {
                  ucs4_t first_char;
                  next = u32_next (&first_char, next);
                  if (!uc_is_general_category (first_char, UC_CATEGORY_Mn))
                    {
                      uint8_t *first_char_u8 = malloc (7 * sizeof(uint8_t));
                      int first_char_len
                          = u8_uctomb (first_char_u8, first_char, 6);
                      if (first_char_len < 0)
                        fatal ("u8_uctomb returns negative value");
                      letter
                        = u8_strconv_to_encoding (first_char_u8, "UTF-8",
                                                  iconveh_question_mark);
                      free (first_char_u8);
                      if (uc_is_general_category (first_char, UC_CATEGORY_L))
                        alpha = 1;
                      break;
                    }
                  else if (next)
                    continue;
                  else
                    break;
                }
              free (encoded_u32);
              if (letter)
                {
                  int l;
                  LETTER_SORTABLE_ENTRIES *letter_sortable_entries = 0;
                  for (l = 0; l < letter_sortable_entries_list->number; l++)
                    {
                      LETTER_SORTABLE_ENTRIES *current
                       = &letter_sortable_entries_list->list[l];
                      if (!strcmp (letter, current->letter))
                        {
                          letter_sortable_entries = current;
                          break;
                        }
                    }
                  if (!letter_sortable_entries)
                    {
                      if (letter_sortable_entries_list->number
                           == letter_sortable_entries_list->space)
                        {
                          letter_sortable_entries_list->list
                           = realloc (letter_sortable_entries_list->list,
                                      (letter_sortable_entries_list->space += 5)
                                      * sizeof (LETTER_SORTABLE_ENTRIES));
                        }
                      letter_sortable_entries
                        = &letter_sortable_entries_list->list[
                                            letter_sortable_entries_list->number];
                      letter_sortable_entries_list->number++;
                      letter_sortable_entries->letter = strdup (letter);
                      letter_sortable_entries->alpha = alpha;
                      letter_sortable_entries->number = 0;
                      letter_sortable_entries->space = 0;
                      letter_sortable_entries->sortable_entries = 0;
                    }

                  if (letter_sortable_entries->number
                      == letter_sortable_entries->space)
                    {
                      letter_sortable_entries->sortable_entries
                       = realloc (letter_sortable_entries->sortable_entries,
                                  (letter_sortable_entries->space += 5)
                                  * sizeof (SORTABLE_ENTRY));
                    }
                  letter_sortable_entries->sortable_entries[
                    letter_sortable_entries->number] = sortable_entry;
                  letter_sortable_entries->number++;
                }
            }
        }
      /* TODO continue here, by sorting
        letter_sortable_entries_list->list
       */
    }
  return result;
}
