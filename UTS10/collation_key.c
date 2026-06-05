#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>

#include "unistr.h"
#include "uninorm.h"

#include "collation_data_lookup.h"
#include "collation_key.h"

char *
u32_make_collation_key (const char32_t *codepoints_in, size_t length_in,
                        int variable, char *resultbuf, size_t *lengthp)
{
  if (variable != UNICOLL_VARIABLE_NONIGNORABLE
      && variable != UNICOLL_VARIABLE_SHIFTED
      && variable != UNICOLL_VARIABLE_BLANKED)
    {
      errno = EINVAL;
      return 0;
    }

  int variable_shifted = (variable == UNICOLL_VARIABLE_SHIFTED);
  int variable_shifted_or_blanked = (variable == UNICOLL_VARIABLE_SHIFTED
                                  || variable == UNICOLL_VARIABLE_BLANKED);

  char32_t *codepoints;
  size_t length;

  codepoints =
    u32_normalize (UNINORM_NFD, codepoints_in, length_in, NULL, &length);

  /* get array of collation entries */
  struct collation_info
  {
    size_t string_index;
    const struct collation_unit *array;
    size_t num_elements;
  };

  /* Maximum one collation_info per character.  Less if there are
     multi-character sequences.  */
  struct collation_info *entry_array
    = malloc (sizeof (*entry_array) * length);
  if (!entry_array)
    {
      errno = ENOMEM;
      return 0;
    }

  size_t n_entries = 0;

  for (size_t i = 0; i < length;)
    {
      size_t n_consumed;
      const struct collation_unit *data_array;
      size_t data_num_elements;

      lookup_collation_data_at_char (&codepoints[i], length - i,
                                     &n_consumed,
                                     &data_array,
                                     &data_num_elements);
      if (n_consumed > 0)
        {
          entry_array[n_entries].array = data_array;
          entry_array[n_entries].num_elements = data_num_elements;
          entry_array[n_entries++].string_index = i;
          i += n_consumed;
        }
      else
        {
          entry_array[n_entries].array = 0;
          entry_array[n_entries].num_elements = 0;
          entry_array[n_entries++].string_index = i;
          i++;
        }
    }

  int num_elements = 0;
  for (size_t i = 0; i < n_entries; i++)
    {
      if (entry_array[i].array)
        num_elements += entry_array[i].num_elements;
      else
        num_elements += 3;      /* implicitly determined weights? */
    }

  struct collation_unit *elements = calloc (num_elements, sizeof (*elements));
  if (!elements)
    {
      errno = ENOMEM;
      return 0;
    }
  size_t elements_count = 0;
  for (size_t i = 0; i < n_entries; i++)
    {
      if (entry_array[i].array)
        {
          size_t num_entry_elements = entry_array[i].num_elements;
          memcpy (&elements[elements_count],
                  entry_array[i].array,
                  num_entry_elements * sizeof (struct collation_unit));
          elements_count += num_entry_elements;
        }
      else
        {
          size_t num_entry_elements;
          get_implicit_weight
            (codepoints[entry_array[i].string_index],
             &elements[elements_count], &num_entry_elements);
          elements_count += num_entry_elements;

        }
    }
  free (entry_array);

  char *sort_key;
  char *psort_key;
  size_t sort_key_alloc;

  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary, one byte at secondary, one byte
     at tertiary.  "\x01\x01" between primary and secondary level
     and "\x01" between secondary and tertiary level.  Not all of
     these bytes are used if there are null weights. */
  sort_key_alloc = num_elements * 4 + 3;

  /* Add space for quaternary level if necessary. */
  if (variable_shifted)
    sort_key_alloc += 1 + num_elements * 2;

  /* Terminating null. */
  sort_key_alloc++;

  if (resultbuf && sort_key_alloc < *lengthp)
    sort_key = resultbuf;
  else
    {
      sort_key = malloc (sort_key_alloc);
      if (!sort_key)
        {
          errno = ENOMEM;
          return 0;
        }
    }

  psort_key = sort_key;

  /* Output collation key without any null bytes.
     See UTS#10 s.9.4 "Avoiding Zero Bytes". */

  /* Primary */
  for (size_t i = 0; i < elements_count; i++)
    {
      uint16_t weight = elements[i].primary;

      if (variable_shifted_or_blanked
          && collation_element_is_variable (&elements[i]))
        {
          /* Skip at primary level. */
          continue;
        }

      if (weight)
        {
          if (weight > 0xFE00)
            {
              /* bug: primary weight too high */
              errno = EINVAL;
              return 0;
            }
          *psort_key++ = (weight / 0xFF) + 1;
          *psort_key++ = (weight % 0xFF) + 1;
        }
    }

  *psort_key++ = '\x01';
  *psort_key++ = '\x01';

  /* Secondary */
  int last_was_variable = 0;
  for (size_t i = 0; i < elements_count; i++)
    {
      if (variable_shifted_or_blanked
          && collation_element_is_variable (&elements[i]))
        {
          /* Skip at secondary level. */
          last_was_variable = 1;
          continue;
        }

      if (last_was_variable)
        {
          /* Ignore completely - e.g. combining grave following a space. */
          if (!elements[i].primary && elements[i].tertiary)
            continue;

          /* This could be a continuation element for a high secondary
             weight. */
          if (!elements[i].primary && elements[i].secondary)
            continue;
        }
      uint16_t weight = elements[i].secondary;

      if (weight)
        {
          if (weight == 0xFF)
            {
              /* bug: secondary weight too high */
              errno = EINVAL;
              return 0;
            }
          *psort_key++ = weight + 1;
        }
      last_was_variable = 0;
    }

  /* As we only use a single byte per unit at secondary and tertiary levels,
     a single byte suffices as a level separator. */
  *psort_key++ = '\x01';

  /* Tertiary */
  last_was_variable = 0;
  for (size_t i = 0; i < elements_count; i++)
    {
      if (variable_shifted_or_blanked
          && collation_element_is_variable (&elements[i]))
        {
          /* Skip at tertiary level. */
          last_was_variable = 1;
          continue;
        }

      if (last_was_variable)
        {
          /* Ignore completely - e.g. combining grave following a space. */
          if (!elements[i].primary && elements[i].tertiary)
            continue;

          /* This could be a continuation element for a high secondary
             weight. */
          if (!elements[i].primary && elements[i].secondary)
            continue;
        }

      uint8_t weight = elements[i].tertiary;
      if (weight)
        {
          if (weight == 0xFF)
            {
              /* bug: tertiary weight too high */
              errno = EINVAL;
              return 0;
            }
          *psort_key++ = weight + 1;
        }
    }

  if (variable_shifted)
    {
      /* See UTS #10 c.4 "Variable Weighting". */

      /* Quaternary level.  Only significant if sort keys are identical
         up to this point.  As we only use single bytes at tertiary level,
         a single byte separator should suffice. */
      *psort_key++ = '\x01';

      last_was_variable = 0;
      for (size_t i = 0; i < elements_count; i++)
        {
          int variable_element = collation_element_is_variable (&elements[i]);
          if (!elements[i].primary && !elements[i].secondary
              && !elements[i].tertiary)
            {
              /* Completely ignorable element. */
              continue;
            }
          else if (!elements[i].primary
                   && (elements[i].secondary || elements[i].tertiary)
                   && last_was_variable)
            {
              /* E.g. combining grave following a space.  Ignore. */
              continue;
            }
          else if (variable_element)
            {
              uint16_t weight = elements[i].primary;
              if (weight > 0xFE00)
                {
                  /* bug: shifted primary weight too high */
                  errno = EINVAL;
                  return 0;
                }
              *psort_key++ = (weight / 0xFF) + 1;
              *psort_key++ = (weight % 0xFF) + 1;
            }
          else if (!elements[i].primary
                   && (elements[i].secondary || elements[i].tertiary)
                   && !last_was_variable)
            {
              /* This needs to be greater than any shifted weights. */
              *psort_key++ = 0xFF;
              *psort_key++ = 0xFF;
            }
          else if (elements[i].primary && !variable_element)
            {
              /* This needs to be greater than any shifted weights. */
              *psort_key++ = 0xFF;
              *psort_key++ = 0xFF;
            }
          last_was_variable = variable_element;
        }
    }

  *psort_key = '\0';
  *lengthp = psort_key - sort_key;

  free (elements);
  free (codepoints);

  return sort_key;
}

char *
u8_make_collation_key (const uint8_t *u8_str, size_t length_in,
                   int variable, char *resultbuf, size_t *lengthp)
{
  static char32_t *u32_str;
  static size_t u32_len;

  static char32_t *ret;

  ret = u8_to_u32 (u8_str, length_in, u32_str, &u32_len);
  if (ret != u32_str)
    {
      free (u32_str);
      u32_str = ret;
    }

  char *key = u32_make_collation_key (u32_str, u32_len, variable,
                                          resultbuf, lengthp);
  return key;
}
