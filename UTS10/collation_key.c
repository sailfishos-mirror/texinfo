#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "unistr.h"
#include "uninorm.h"

#include "collation_data_loader.h"
#include "collation_key.h"

#define no_nulls_in_key 1

char *
u32_make_collation_key_ext (const char32_t *codepoints_in, size_t length_in,
                            int variable, int debug,
                            char *resultbuf, size_t *lengthp)
{
  if (variable != UNICOLL_VARIABLE_NONIGNORABLE
      && variable != UNICOLL_VARIABLE_SHIFTED)
    {
      fprintf (stderr, "only Non-ignorable or Shifted settings for variable "
                       "collation elements is implemented\n");
      exit (1);
    }

  int variable_shifted = (variable == UNICOLL_VARIABLE_SHIFTED);

  char32_t *codepoints;
  size_t length;

  if (resultbuf)
    {
      fprintf (stderr, "u32_make_collation_key with non-null resultbuf "
                        "not implemented\n");
      exit (1);
    }

  codepoints =
    u32_normalize (UNINORM_NFD, codepoints_in, length_in, NULL, &length);

  if (debug)
    {
      printf ("Normalised string:\n");
      for (size_t i = 0; i < length; i++)
        {
          printf ("  [%zu] %u (U+%04X)", i, codepoints[i],
                  codepoints[i]);

          if (codepoints[i] >= 32 && codepoints[i] < 128)
            printf (" '%c'",  (char) codepoints[i]);
          printf ("\n");

        }
    }
 

  /* get array of collation entries */
  struct collation_info
  {
    size_t string_index;
    COLLATION_DATA data;
  };

  /* Maximum one collation_info per character.  Less if there are
     multi-character sequences.  */
  struct collation_info *entry_array
    = malloc (sizeof (*entry_array) * length);

  size_t n_entries = 0;

  for (size_t i = 0; i < length;)
    {
      size_t n_consumed;
      COLLATION_DATA data
        = lookup_collation_data_at_char (&codepoints[i], length - i,
                                         &n_consumed);
      if (n_consumed > 0)
        {
          entry_array[n_entries].data = data;
          entry_array[n_entries++].string_index = i;
          i += n_consumed;
        }
      else
        {
          entry_array[n_entries].data = (COLLATION_DATA) {0};
          entry_array[n_entries++].string_index = i;
          i++;
        }
    }

  int num_elements = 0;
  for (size_t i = 0; i < n_entries; i++)
    {
      if (entry_array[i].data.data_index)
        {
          num_elements += entry_array[i].data.num_elements;
        }
      else
        num_elements += 3;      /* implicitly determined weights? */
    }

  CollationElement *elements = calloc (num_elements, sizeof (*elements));
  size_t elements_count = 0;
  for (size_t i = 0; i < n_entries; i++)
    {
      if (debug)
        fprintf (stderr, "Collation info for U+%04X: ",
          codepoints[entry_array[i].string_index]);

      if (entry_array[i].data.data_index)
        {
          size_t num_entry_elements = entry_array[i].data.num_elements;
          read_collation_data (entry_array[i].data, &elements[elements_count]);
          if (debug)
            print_collation (stderr, &elements[elements_count], num_entry_elements);
          elements_count += entry_array[i].data.num_elements;
        }
      else
        {
          size_t num_entry_elements;
          if (debug)
            fprintf (stderr, "unknown/implicit: ");
          get_implicit_weight
            (codepoints[entry_array[i].string_index],
             &elements[elements_count], &num_entry_elements);
          if (debug)
            print_collation (stderr, &elements[elements_count], num_entry_elements);
          elements_count += num_entry_elements;

        }
    }
  free (entry_array);

  unsigned char *sort_key;
  unsigned char *psort_key;
  size_t sort_key_alloc;

  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary, one byte at secondary, one byte
     at tertiary.  "\x01\x01" between primary and secondary level
     and "\x01" between secondary and tertiary level. */
  sort_key_alloc = num_elements * 4 + 3;

  /* Add space for quaternary level if necessary. */
  if (variable_shifted)
    sort_key_alloc += 1 + num_elements * 2;

  /* Always include a terminating null byte. */
  sort_key = malloc (sort_key_alloc + 1);
  psort_key = sort_key;

  /* Output collation key without any null bytes.
     See UTS#10 s.9.4 "Avoiding Zero Bytes". */

  /* Primary */
  for (size_t i = 0; i < elements_count; i++)
    {
      uint16_t weight = elements[i].primary;

      if (variable_shifted && elements[i].variable)
        {
          /* Skip at primary level. */
          continue;
        }

      if (weight)
        {
          if (weight > 0xFE00)
            {
              fprintf (stderr, "primary weight too high\n");
              exit (1);
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
      if (variable_shifted && elements[i].variable)
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
              fprintf (stderr, "secondary weight too high\n");
              exit (1);
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
      if (variable_shifted && elements[i].variable)
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
              fprintf (stderr, "tertiary weight too high\n");
              exit (1);
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
          else if (elements[i].variable)
            {
              uint16_t weight = elements[i].primary;
              if (weight > 0xFE00)
                {
                  fprintf (stderr, "shifted primary weight too high\n");
                  exit (1);
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
          else if (elements[i].primary && !elements[i].variable)
            {
              /* This needs to be greater than any shifted weights. */
              *psort_key++ = 0xFF;
              *psort_key++ = 0xFF;
            }
          last_was_variable = elements[i].variable;
        }
    }

  *psort_key = '\0';

  free (elements);
  free (codepoints);

  *lengthp = psort_key - sort_key;
  return sort_key;
}

char *
u32_make_collation_key (const char32_t *codepoints_in, size_t length_in,
                        int variable, char *resultbuf, size_t *lengthp)
{
  return u32_make_collation_key_ext (codepoints_in, length_in, 0, variable,
                                     resultbuf, lengthp);
}

char *
u8_make_collation_key_ext (const uint8_t *u8_str, size_t length_in,
                   int variable, int debug, char *resultbuf, size_t *lengthp)
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

  char *key = u32_make_collation_key_ext (u32_str, u32_len, variable,
                                          debug, resultbuf, lengthp);
  return key;
}

char *
u8_make_collation_key (const uint8_t *u8_str, size_t length_in,
                       int variable, char *resultbuf, size_t *lengthp)
{
  return u8_make_collation_key_ext (u8_str, length_in, variable,
                                  0, resultbuf, lengthp);
}
