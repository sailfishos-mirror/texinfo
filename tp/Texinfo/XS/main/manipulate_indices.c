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
#include <locale.h>
#include "uniconv.h"
#include "unictype.h"
#include "unistr.h"

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "tree.h"
#include "utils.h"
#include "extra.h"
#include "errors.h"
#include "debug.h"
#include "document.h"
#include "unicode.h"
#include "convert_to_text.h"
#include "convert_to_texinfo.h"
#include "manipulate_indices.h"

/* corresponding perl code in Texinfo::Indices */

MERGED_INDICES *
merge_indices (INDEX **index_names)
{
  size_t merged_indices_space = 4;
  size_t merged_indices_number = 0;
  INDEX **i, *idx;

  if (!index_names)
    return 0;

  MERGED_INDEX *merged_indices_list
    = (MERGED_INDEX *) malloc (sizeof (MERGED_INDEX) * merged_indices_space);

  MERGED_INDICES *merged_indices
    = (MERGED_INDICES *) malloc (sizeof (MERGED_INDICES));

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
              if (!strcmp (merged_indices_list[j].name, in_idx_name))
                {
                  merged_idx = &merged_indices_list[j];
                  break;
                }
            }
          if (!merged_idx)
            /* main index (possibly idx) not already setup, do it */
            {
              if (merged_indices_number == merged_indices_space)
                {
                  merged_indices_space += 5;
                  merged_indices_list
                   = realloc (merged_indices_list, merged_indices_space
                                                * sizeof (MERGED_INDEX));
                }
              merged_idx = &merged_indices_list[merged_indices_number];
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
  merged_indices_list = realloc (merged_indices_list,
                            (merged_indices_number +1) * sizeof (MERGED_INDEX));
  memset (&merged_indices_list[merged_indices_number], 0,
          sizeof (MERGED_INDEX));

  merged_indices->indices = merged_indices_list;
  merged_indices->number = merged_indices_number;

  return merged_indices;
}

void
destroy_merged_indices (MERGED_INDICES *merged_indices)
{
  size_t i;

  for (i = 0; i < merged_indices->number; i++)
    {
      free (merged_indices->indices[i].index_entries);
    }
  free (merged_indices->indices);
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

static char *
strip_index_ignore_chars (const char *string, const char *index_ignore_chars)
{
  TEXT result_text;
  const char *p = string;
  text_init (&result_text);
  /* in particular to be consistent with convert_to_text, which returned
     variable is never NUL */
  text_append (&result_text, "");

  while (*p)
    {
      int n = strspn (p, index_ignore_chars);
      if (n)
        {
          p += n;
        }
      if (*p)
        {
          /* store a character */
          int char_len = 1;
          while ((p[char_len] & 0xC0) == 0x80)
            char_len++;
          text_append_n (&result_text, p, char_len);
          p += char_len;
        }
    }
  return result_text.text;
}

char *
index_entry_element_sort_string (const INDEX_ENTRY *main_entry,
                                 const ELEMENT *index_entry_element,
                                 TEXT_OPTIONS *options, int in_code,
                                 int prefer_reference_element)
{
  char *sort_string;
  char *index_ignore_chars;
  ELEMENT *entry_tree_element;

  if (!index_entry_element)
    {
      fatal ("index_entry_element_sort_string: NUL element");
    }

  char *sortas = lookup_extra_string (index_entry_element, "sortas");
  if (sortas)
    return strdup (sortas);

  entry_tree_element = index_content_element (index_entry_element,
                                          prefer_reference_element);

  if (in_code)
    options->code_state++;
  sort_string = convert_to_text (entry_tree_element, options);
  if (in_code)
    options->code_state--;

  index_ignore_chars = lookup_extra_string (main_entry->entry_element,
                                            "index_ignore_chars");
  if (index_ignore_chars)
    {
      char *sort_string_text = strip_index_ignore_chars (sort_string,
                                                     index_ignore_chars);
      free (sort_string);
      sort_string = sort_string_text;
    }
  return sort_string;
}

static void
set_sort_key (locale_t collation_locale, const char *input_string,
              char **result_key)
{
  if (collation_locale)
    {
  #ifdef HAVE_STRXFRM_L
      size_t len = strxfrm_l (0, input_string, 0, collation_locale);
      size_t check_len;

      *result_key
        = (char *) malloc ((len +1) * sizeof (char));
      check_len = strxfrm_l (*result_key, input_string, len+1,
                             collation_locale);
      if (check_len != len)
        fatal ("strxfrm_l returns a different length");
  #endif
    }
  else
    *result_key = strdup (input_string);
}

typedef struct INDEX_SORT_STRING_KEY {
    char *sort_string;
    char *sort_key;
} INDEX_SORT_STRING_KEY;

static INDEX_SORT_STRING_KEY *
index_entry_element_sort_string_key (const INDEX_ENTRY *main_entry,
                                     const ELEMENT *index_entry_element,
                                     TEXT_OPTIONS *options, int in_code,
                                     locale_t collation_locale,
                                     int prefer_reference_element)
{
  INDEX_SORT_STRING_KEY *sort_string_key = (INDEX_SORT_STRING_KEY *)
    malloc (sizeof (INDEX_SORT_STRING_KEY));
  sort_string_key->sort_string = index_entry_element_sort_string (main_entry,
                                     index_entry_element, options, in_code,
                                     prefer_reference_element);
  set_sort_key (collation_locale, sort_string_key->sort_string,
                &sort_string_key->sort_key);

  return sort_string_key;
}

INDICES_SORTABLE_ENTRIES *
setup_sortable_index_entries (ERROR_MESSAGE_LIST *error_messages,
                      OPTIONS *options, const MERGED_INDICES *merged_indices,
                      INDEX **indices_information,
                      locale_t *collation_locale)
{
  size_t i;

  /* convert index entries to sort string using unicode when possible
     independently of input and output encodings */
  TEXT_OPTIONS *convert_text_options = new_text_options ();
  convert_text_options->encoding = strdup ("utf-8");
  /*  It could be possible to set INCLUDE_DIRECTORIES, but there is no
      point doing so, as it is only useful for @verbatiminclude, which
      cannot appear in index entries.
  copy_strings (&convert_text_options->include_directories,
                options->INCLUDE_DIRECTORIES.strlist);
   */

  /* similar to using Unicode::Collate in Perl */
  *collation_locale = 0;

  #ifdef HAVE_STRXFRM_L
  #ifdef HAVE_NEWLOCALE
  if (!options->USE_UNICODE_COLLATION.integer == 0)
    *collation_locale = newlocale (LC_COLLATE_MASK, "en_US.utf-8", 0);
  #endif
  #endif

  if (merged_indices->number <= 0)
    return 0;

  INDICES_SORTABLE_ENTRIES *indices_sortable_entries
    = (INDICES_SORTABLE_ENTRIES *) malloc (sizeof (INDICES_SORTABLE_ENTRIES));

  indices_sortable_entries->number = merged_indices->number;
  indices_sortable_entries->indices = (INDEX_SORTABLE_ENTRIES *)
    malloc (merged_indices->number * sizeof (INDEX_SORTABLE_ENTRIES));
  memset (indices_sortable_entries->indices, 0,
          merged_indices->number * sizeof (INDEX_SORTABLE_ENTRIES));

  for (i = 0; i < merged_indices->number; i++)
    {
      MERGED_INDEX *index = &merged_indices->indices[i];
      INDEX_SORTABLE_ENTRIES *sortable_index_entries
        = &indices_sortable_entries->indices[i];
      if (index->entries_number > 0)
        {
          size_t j;

          sortable_index_entries->index = index;
          sortable_index_entries->number = index->entries_number;
          sortable_index_entries->sortable_entries = (SORTABLE_INDEX_ENTRY *)
            malloc (index->entries_number * sizeof (SORTABLE_INDEX_ENTRY));

          for (j = 0; j < index->entries_number; j++)
            {
              int non_empty_index_subentries = 0;
              SORTABLE_INDEX_SUBENTRY *sortable_subentry;
              INDEX_ENTRY *index_entry = &index->index_entries[j];

              ELEMENT *main_entry_element = index_entry->entry_element;
              ELEMENT *subentry = main_entry_element;

              INDEX *entry_index
                = indices_info_index_by_name (indices_information,
                                              index_entry->index_name);

              INDEX_SORT_STRING_KEY *sort_string_key
                = index_entry_element_sort_string_key (index_entry,
                            main_entry_element, convert_text_options,
                            entry_index->in_code, *collation_locale, 0);

              SORTABLE_INDEX_ENTRY *sortable_entry
                = &sortable_index_entries->sortable_entries[j];

              sortable_entry->entry = index_entry;
              sortable_entry->subentries_number = 1;
              sortable_entry->sortable_subentries = (SORTABLE_INDEX_SUBENTRY *)
                malloc (sizeof (SORTABLE_INDEX_SUBENTRY));

              sortable_subentry = &sortable_entry->sortable_subentries[0];

              if (sort_string_key->sort_string[strspn
                   (sort_string_key->sort_string, whitespace_chars)] == '\0')
                {
                  const char *entry_cmdname;

                  sortable_subentry->sort_string = strdup("");
                  sortable_subentry->sort_key = strdup("");
                  free (sort_string_key->sort_string);
                  free (sort_string_key->sort_key);

                  entry_cmdname = element_command_name (main_entry_element);
                  if (!entry_cmdname)
                    {
                      entry_cmdname = lookup_extra_string (main_entry_element,
                                                      "original_def_cmdname");
                    }

                  message_list_command_warn (error_messages, options,
                                             main_entry_element,
                                      "empty index key in @%s", entry_cmdname);
                }
              else
                {
                  sortable_subentry->sort_string
                     = sort_string_key->sort_string;
                  sortable_subentry->sort_key = sort_string_key->sort_key;
                  non_empty_index_subentries++;
                }
              free (sort_string_key);

              while (1)
                {
                  ELEMENT *next_subentry = lookup_extra_element (subentry,
                                                               "subentry");
                  if (!next_subentry)
                    break;

                  subentry = next_subentry;
                  sortable_entry->subentries_number++;

                  sortable_entry->sortable_subentries
                   = (SORTABLE_INDEX_SUBENTRY *)
                    realloc (sortable_entry->sortable_subentries,
                        sizeof (SORTABLE_INDEX_SUBENTRY)
                           * sortable_entry->subentries_number);
                  if (!sortable_entry->sortable_subentries)
                    fatal ("realloc failed");

                  sortable_subentry
                   = &sortable_entry->sortable_subentries[
                          sortable_entry->subentries_number -1];

                  sort_string_key
                    = index_entry_element_sort_string_key (index_entry,
                            subentry, convert_text_options,
                            entry_index->in_code, *collation_locale, 0);

                  if (sort_string_key->sort_string[strspn
                     (sort_string_key->sort_string, whitespace_chars)] == '\0')
                    {
                      const char *entry_cmdname;

                      sortable_subentry->sort_string = strdup("");
                      sortable_subentry->sort_key = strdup("");
                      free (sort_string_key->sort_string);
                      free (sort_string_key->sort_key);

                      entry_cmdname = element_command_name (main_entry_element);
                      if (!entry_cmdname)
                        {
                          entry_cmdname
                             = lookup_extra_string (main_entry_element,
                                                 "original_def_cmdname");
                        }

                      message_list_command_warn (error_messages, options,
                                             main_entry_element,
                               "empty index sub entry %zu key in @%s",
                               sortable_entry->subentries_number -1,
                                entry_cmdname);
                    }
                  else
                    {
                      sortable_subentry->sort_string
                         = sort_string_key->sort_string;
                      sortable_subentry->sort_key = sort_string_key->sort_key;
                      non_empty_index_subentries++;
                    }
                  free (sort_string_key);
                }
              if (non_empty_index_subentries > 0)
                {
                  int k;
                  for (k = 0; k < sortable_entry->subentries_number; k++)
                    {
                      uint8_t *encoded_u8;
                      ucs4_t next_char;
                      int new_len;

                      sortable_subentry
                        = &sortable_entry->sortable_subentries[k];
             /* TODO quite inefficient, only need the first character */
                      encoded_u8
                       = u8_strconv_from_encoding (
                                         sortable_subentry->sort_string,
                                         "UTF-8", iconveh_question_mark);
                      new_len = u8_strmbtouc (&next_char, encoded_u8);
                      if (new_len > 0
                          && uc_is_property (next_char, UC_PROPERTY_ALPHABETIC))
                        sortable_subentry->alpha = 1;
                      else
                        sortable_subentry->alpha = 0;

                      free (encoded_u8);
                    }
                }
            }
        }
    }
  return indices_sortable_entries;
}

typedef struct LETTER_SORTABLE_ENTRIES {
    char *letter;
    char *letter_sort_key;
    size_t space;
    size_t number;
    SORTABLE_INDEX_ENTRY **sortable_entries;
} LETTER_SORTABLE_ENTRIES;

typedef struct INDEX_LETTERS_SORTABLE_ENTRIES {
    size_t letter_number;
    size_t space;
    LETTER_SORTABLE_ENTRIES *letter_entries;
} INDEX_LETTERS_SORTABLE_ENTRIES;

static int
compare_index_letter (const void *a, const void *b)
{
  const LETTER_SORTABLE_ENTRIES *lse_a = (const LETTER_SORTABLE_ENTRIES *) a;
  const LETTER_SORTABLE_ENTRIES *lse_b = (const LETTER_SORTABLE_ENTRIES *) b;

  return strcmp (lse_a->letter_sort_key, lse_b->letter_sort_key);
}

static int
compare_sortable_subentry_keys (const void *a, const void *b)
{
  const SORTABLE_INDEX_SUBENTRY *sis_a = (const SORTABLE_INDEX_SUBENTRY *) a;
  const SORTABLE_INDEX_SUBENTRY *sis_b = (const SORTABLE_INDEX_SUBENTRY *) b;

  if (sis_a->alpha == sis_b->alpha)
    return strcmp (sis_a->sort_key, sis_b->sort_key);

  return (sis_a->alpha > sis_b->alpha) - (sis_a->alpha < sis_b->alpha);
}

static int
compare_sortable_index_entry (const void *a, const void *b)
{
  const SORTABLE_INDEX_ENTRY **psie_a = (const SORTABLE_INDEX_ENTRY **) a;
  const SORTABLE_INDEX_ENTRY **psie_b = (const SORTABLE_INDEX_ENTRY **) b;
  const SORTABLE_INDEX_ENTRY *sie_a = *psie_a;
  const SORTABLE_INDEX_ENTRY *sie_b = *psie_b;

  size_t i;
  int res;

  /* corresponds to the main entry and subentries */
  for (i = 0; i < sie_a->subentries_number; i++)
    {
      SORTABLE_INDEX_SUBENTRY *sub_key_a = &sie_a->sortable_subentries[i];
      SORTABLE_INDEX_SUBENTRY *sub_key_b = &sie_b->sortable_subentries[i];

      res = compare_sortable_subentry_keys (sub_key_a, sub_key_b);

      if (res != 0)
        return res;

      if (i + 1 >= sie_b->subentries_number)
        break;
    }
  res = (sie_a->subentries_number > sie_b->subentries_number)
           - (sie_a->subentries_number < sie_b->subentries_number);

  if (res != 0)
    return res;

  res = (sie_a->entry->number > sie_b->entry->number)
           - (sie_a->entry->number < sie_b->entry->number);

  if (res != 0)
    return res;

  /* This may happen if 2 indices are merged as the number is per
     index name. */

  return strcmp (sie_a->entry->index_name, sie_b->entry->index_name);
}

INDEX_SORTED_BY_LETTER *
sort_indices_by_letter (ERROR_MESSAGE_LIST *error_messages,
                        OPTIONS *options, const MERGED_INDICES *merged_indices,
                        INDEX **indices_information)
{
  size_t i;
  int index_nr = 0;
  locale_t collation_locale = 0;
  static INDEX_LETTERS_SORTABLE_ENTRIES index_letters_sortable_entries;

  INDICES_SORTABLE_ENTRIES *indices_sortable_entries
    = setup_sortable_index_entries (error_messages, options, merged_indices,
                                    indices_information, &collation_locale);

  if (!indices_sortable_entries || indices_sortable_entries->number <= 0)
    return 0;

  INDEX_SORTED_BY_LETTER *sorted_index_entries
   = (INDEX_SORTED_BY_LETTER *) malloc
    ((indices_sortable_entries->number +1) * sizeof (INDEX_SORTED_BY_LETTER));

  for (i = 0; i < indices_sortable_entries->number; i++)
    {
      size_t j;
      INDEX_SORTABLE_ENTRIES *sortable_index_entries
        = &indices_sortable_entries->indices[i];
      INDEX_SORTED_BY_LETTER *index_sorted;

      if (sortable_index_entries->number <= 0)
        continue;

      index_sorted = &sorted_index_entries[index_nr];
      index_sorted->name = strdup (sortable_index_entries->index->name);

      for (j = 0; j < sortable_index_entries->number; j++)
        {
          int len = 0;
          SORTABLE_INDEX_ENTRY *sortable_entry
            = &sortable_index_entries->sortable_entries[j];
          char *sort_string
            = sortable_entry->sortable_subentries[0].sort_string;
          uint8_t *encoded_u8 = u8_strconv_from_encoding (sort_string, "UTF-8",
                                                  iconveh_question_mark);
          uint8_t *current_u8 = encoded_u8;
          char *letter_string;
          char *upper_letter_string;
          char *norm_letter_string;
          TEXT letter_text;
          char *letter_sort_key;
          int letter_added = 0;

          LETTER_SORTABLE_ENTRIES *letter_sortable_entries = 0;

          while (1)
            {
              ucs4_t next_char;
              int new_len = u8_strmbtouc (&next_char, current_u8);
              if (!new_len)
                break;

              len += new_len;
              /* UC_NON_SPACING_MARK is the same as UC_CATEGORY_Mn */
              if (uc_is_general_category (next_char, UC_NON_SPACING_MARK))
                {
                  current_u8 += new_len;
                }
              else
                {
                  break;
                }
            }
          free (encoded_u8);

          letter_string = strndup (sort_string, len);
          upper_letter_string = to_upper_or_lower_multibyte (letter_string, 1);
          free (letter_string);
          norm_letter_string = normalize_NFKD (upper_letter_string);
          free (upper_letter_string);
          encoded_u8 = u8_strconv_from_encoding (norm_letter_string, "UTF-8",
                                                  iconveh_question_mark);
          current_u8 = encoded_u8;

          text_init (&letter_text);
          /* we want an empty string if the input string is empty */
          text_append (&letter_text, "");

          while (1)
            {
              ucs4_t next_char;
              int new_len = u8_strmbtouc (&next_char, current_u8);
              if (!new_len)
                break;

              if (!uc_is_general_category (next_char, UC_NON_SPACING_MARK))
                {
                  char *first_char_text;
                  uint8_t *first_char_u8 = malloc (7 * sizeof(uint8_t));
                  int first_char_len = u8_uctomb (first_char_u8, next_char, 6);
                  if (first_char_len < 0)
                    fatal ("u8_uctomb returns negative value");
                  first_char_u8[first_char_len] = 0;
                  first_char_text = u8_strconv_to_encoding (first_char_u8,
                                               "UTF-8", iconveh_question_mark);
                  free (first_char_u8);
                  text_append (&letter_text, first_char_text);
                  free (first_char_text);
                }
              current_u8 += new_len;
            }
          free (encoded_u8);

          set_sort_key (collation_locale, letter_text.text,
                        &letter_sort_key);

          if (index_letters_sortable_entries.letter_number > 0)
            {
              /* used to find an existing letter */
              static LETTER_SORTABLE_ENTRIES compared_letter_sortable;

              compared_letter_sortable.letter_sort_key = letter_sort_key;

              letter_sortable_entries = (LETTER_SORTABLE_ENTRIES *)
                bsearch (&compared_letter_sortable,
                     index_letters_sortable_entries.letter_entries,
                     index_letters_sortable_entries.letter_number,
                     sizeof (LETTER_SORTABLE_ENTRIES),
                     compare_index_letter);
            }

          if (!letter_sortable_entries)
            {
              if (index_letters_sortable_entries.letter_number
                   >= index_letters_sortable_entries.space)
                {
                  index_letters_sortable_entries.letter_entries
                    = realloc (index_letters_sortable_entries.letter_entries,
                          (index_letters_sortable_entries.space += 5)
                            * sizeof (LETTER_SORTABLE_ENTRIES));
                  if (!index_letters_sortable_entries.letter_entries)
                    fatal ("realloc failed");
                }
              letter_sortable_entries
                = &index_letters_sortable_entries.letter_entries[
                              index_letters_sortable_entries.letter_number];

              letter_sortable_entries->space = 0;
              letter_sortable_entries->number = 0;
              letter_sortable_entries->sortable_entries = 0;
              letter_sortable_entries->letter = letter_text.text;
              letter_sortable_entries->letter_sort_key = letter_sort_key;

              index_letters_sortable_entries.letter_number++;

              letter_added = 1;
            }
          else
            {
              free (letter_text.text);
              free (letter_sort_key);
            }

          /* now add the sortable entry to the letter sortable entries */
          if (letter_sortable_entries->number
                  >= letter_sortable_entries->space)
            {
              letter_sortable_entries->sortable_entries
               = realloc (letter_sortable_entries->sortable_entries,
                   (letter_sortable_entries->space += 5)
                            * sizeof (SORTABLE_INDEX_ENTRY));
                  if (!letter_sortable_entries->sortable_entries)
                    fatal ("realloc failed");
            }
          letter_sortable_entries->sortable_entries[
                        letter_sortable_entries->number] = sortable_entry;

          letter_sortable_entries->number++;
          /* sort after using letter_sortable_entries, as its address may be
             changed by the sort */
          if (index_letters_sortable_entries.letter_number > 1
              && letter_added)
            {
              /* re-sort letters with the new letter added */
              if (index_letters_sortable_entries.letter_number > 1)
                qsort (index_letters_sortable_entries.letter_entries,
                       index_letters_sortable_entries.letter_number,
                       sizeof (LETTER_SORTABLE_ENTRIES),
                       compare_index_letter);
            }
        }

      /* sort the index entries by letter */
      /* also reset for the next index */

      if (index_letters_sortable_entries.letter_number > 0)
        {
          index_sorted->letter_number
            = index_letters_sortable_entries.letter_number;
          index_sorted->letter_entries = (LETTER_INDEX_ENTRIES *) malloc
            (index_sorted->letter_number * sizeof (LETTER_INDEX_ENTRIES));

          for (j = 0; j < index_letters_sortable_entries.letter_number; j++)
            {
              size_t k;
              LETTER_SORTABLE_ENTRIES *letter_sortable_entries
               = &index_letters_sortable_entries.letter_entries[j];
              LETTER_INDEX_ENTRIES *letter_index_entries
               = &index_sorted->letter_entries[j];

              qsort (letter_sortable_entries->sortable_entries,
                   letter_sortable_entries->number,
                   sizeof (SORTABLE_INDEX_ENTRY *),
                   compare_sortable_index_entry);

              letter_index_entries->letter = letter_sortable_entries->letter;
              letter_index_entries->entries = (INDEX_ENTRY **) malloc
                (letter_sortable_entries->number * sizeof (INDEX_ENTRY *));
              letter_index_entries->entries_number
                   = letter_sortable_entries->number;

              /* set index entries in the sorted order */
              for (k = 0; k < letter_sortable_entries->number; k++)
                {
                  letter_index_entries->entries[k]
                    = letter_sortable_entries->sortable_entries[k]->entry;
                }

              /* TODO should we reuse the letters instead? */
              free (letter_sortable_entries->letter_sort_key);
              free (letter_sortable_entries->sortable_entries);
            }
          /* TODO should we reuse the letters instead? */
          index_letters_sortable_entries.letter_number = 0;
        }
      index_nr++;
    }

  memset (&sorted_index_entries[index_nr], 0, sizeof (INDEX_SORTED_BY_LETTER));
  if (index_nr < indices_sortable_entries->number)
    sorted_index_entries = realloc (sorted_index_entries,
                     (index_nr+1) * sizeof (INDEX_SORTED_BY_LETTER));

  return sorted_index_entries;
}

static INDEX_ENTRY_TEXT_OR_COMMAND *
new_index_entry_text_or_command (const char *text, ELEMENT *command)
{
  INDEX_ENTRY_TEXT_OR_COMMAND *result = (INDEX_ENTRY_TEXT_OR_COMMAND *)
     malloc (sizeof (INDEX_ENTRY_TEXT_OR_COMMAND));

  if (text)
    result->text = strdup (text);
  else
    result->text = 0;
  result->command = command;

  return result;
}



/* Return the first non empty text or textual @-command.
   To be freed by caller.
   NOTE quotes and dash are not handled especially and it is not known
   if the text was in code or not. */
static INDEX_ENTRY_TEXT_OR_COMMAND *
idx_leading_text_or_command (ELEMENT *tree, const char *ignore_chars)
{
  size_t i;

  if (tree->contents.number <= 0)
    return new_index_entry_text_or_command (0, 0);

  for (i = 0; i < tree->contents.number; i++)
    {
      ELEMENT *content = tree->contents.list[i];

      if (content->cmd)
        {
          enum command_id data_cmd = element_builtin_data_cmd (content);

          if (builtin_command_data[data_cmd].other_flags & CF_formatted_nobrace)
            {
              if (ignore_chars && data_cmd == CM_AT_SIGN
                  && strchr (ignore_chars, '@'))
                continue;
              return new_index_entry_text_or_command (0, content);
            }
          else
            {
              if (builtin_command_data[data_cmd].flags & CF_brace)
                {
                  int brace_command_type = builtin_command_data[data_cmd].data;

                  if ((builtin_command_data[data_cmd].other_flags
                       & CF_non_formatted_brace)
                      || data_cmd == CM_footnote
                      || data_cmd == CM_dmn
                      || data_cmd == CM_value
                      || (builtin_command_data[data_cmd].other_flags
                          & CF_in_index))
                    continue;
                  else if (brace_command_type == BRACE_accent
                           || brace_command_type == BRACE_noarg
                           || data_cmd == CM_U)
                    {
                      return new_index_entry_text_or_command (0, content);
                    }
                  else if (brace_command_type != BRACE_inline)
                    {
                      if (content->args.number > 0)
                        {
                          return idx_leading_text_or_command (
                                                   content->args.list[0],
                                                              ignore_chars);
                        }
                    }
                  else
                    {
                      int status;
                      int expand_index
                       = lookup_extra_integer (content, "expand_index", &status);
                      if (expand_index > 0)
                        return idx_leading_text_or_command (
                                         content->args.list[expand_index],
                                                            ignore_chars);

                    }
                }
              else if ((builtin_command_data[data_cmd].other_flags
                        & CF_formatted_line)
                       && data_cmd != CM_page
                       && content->args.number > 0)
                {
                   return idx_leading_text_or_command (
                                                   content->args.list[0],
                                                              ignore_chars);
                }
            }
        }
      else if (content->text.end > 0
               && content->text.text[strspn (content->text.text,
                                             whitespace_chars)] != '\0')
        {
          char *p = content->text.text;
          p += strspn (p, whitespace_chars);
          if (ignore_chars)
            {
              char *text = strip_index_ignore_chars (p, ignore_chars);
              INDEX_ENTRY_TEXT_OR_COMMAND *result = 0;

              if (text[strspn (text, whitespace_chars)] != '\0')
                result = new_index_entry_text_or_command (text, 0);

              free (text);

              if (result)
                return result;
            }
          else
            return new_index_entry_text_or_command (p, 0);
        }
      else if (content->contents.number > 0)
        return idx_leading_text_or_command (content, ignore_chars);
    }
  return new_index_entry_text_or_command (0, 0);
}

/* Return the leading text or textual command that could be used
   for sorting.
   To be freed by caller.
*/
INDEX_ENTRY_TEXT_OR_COMMAND *
index_entry_first_letter_text_or_command (INDEX_ENTRY *index_entry)
{
  ELEMENT *index_entry_element = index_entry->entry_element;
  char *sortas = lookup_extra_string (index_entry_element, "sortas");

  INDEX_ENTRY_TEXT_OR_COMMAND *result;

  if (sortas)
    {
      return new_index_entry_text_or_command (sortas, 0);
    }
  else
    {
      ELEMENT *entry_tree_element
         = index_content_element (index_entry_element, 0);
      char *index_ignore_chars = lookup_extra_string (index_entry_element,
                                                      "index_ignore_chars");
      ELEMENT *parsed_element;

      if (entry_tree_element->contents.number <= 0)
        {
          parsed_element = new_element (ET_NONE);
          add_to_contents_as_array (parsed_element, index_entry_element);
        }
      else
        parsed_element = entry_tree_element;

      result = idx_leading_text_or_command(parsed_element, index_ignore_chars);
      if (parsed_element != entry_tree_element)
        destroy_element (parsed_element);

      return result;
    }
}
