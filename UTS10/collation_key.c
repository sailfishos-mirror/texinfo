#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "uninorm.h"

#include "allkeys_bin_loader.h"
#include "collation_key.h"

#define no_nulls_in_key 1

CollationKey
get_collation_key_ext (char32_t *codepoints_in, size_t length_in, int debug)
{
  char32_t *codepoints;
  size_t length;

  codepoints =
    u32_normalize (UNINORM_NFD, codepoints_in, length_in, NULL, &length);

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

#if no_nulls_in_key
  /* Output collation key without any null bytes.
     See UTS#10 s.9.4 "Avoiding Zero Bytes". */

  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary/secondary, one byte at tertiary.
     "\x01\x01" between levels and one final null. */
  sort_key_alloc = num_elements * 5 + 4 + 1;

  psort_key = sort_key;

  sort_key = calloc (sort_key_alloc, 1);
  psort_key = sort_key;

  /* Primary */
  for (size_t i = 0; i < elements_count; i++)
    {
      uint16_t weight = elements[i].primary;
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
  for (size_t i = 0; i < elements_count; i++)
    {
      uint16_t weight = elements[i].secondary;
      if (weight)
        {
          if (weight > 0xFE00)
            {
              fprintf (stderr, "secondary weight too high\n");
              exit (1);
            }
          *psort_key++ = (weight / 0xFF) + 1;
          *psort_key++ = (weight % 0xFF) + 1;
        }
    }

  *psort_key++ = '\x01';
  *psort_key++ = '\x01';

  /* Tertiary */
  for (size_t i = 0; i < elements_count; i++)
    {
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

#else

  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary/secondary, one byte at tertiary.
     "\x00\x00" between levels and one final null. */
  sort_key_alloc = num_elements * 5 + 4 + 1;

  psort_key = sort_key;

  sort_key = calloc (sort_key_alloc, 1);
  psort_key = sort_key;

  /* Primary */
  for (size_t i = 0; i < elements_count; i++)
    {
      uint16_t weight = elements[i].primary;
      if (weight)
        {
          *psort_key++ = weight >> 8;   /* More significant byte. */
          *psort_key++ = weight & 0xFF; /* Less significant byte. */
        }
    }

  *psort_key++ = '\x00';
  *psort_key++ = '\x00';

  /* Secondary */
  for (size_t i = 0; i < elements_count; i++)
    {
      uint16_t weight = elements[i].secondary;
      if (weight)
        {
          *psort_key++ = weight >> 8;   /* More significant byte. */
          *psort_key++ = weight & 0xFF; /* Less significant byte. */
        }
    }

  *psort_key++ = '\x00';
  *psort_key++ = '\x00';

  /* Tertiary */
  for (size_t i = 0; i < elements_count; i++)
    {
      uint8_t weight = elements[i].tertiary;
      if (weight)
        {
          *psort_key++ = weight;
        }
    }

#endif

  free (elements);

  free (codepoints);

  CollationKey ret;
  ret.key = sort_key;
  ret.length = psort_key - sort_key;
  return ret;
}

CollationKey
get_collation_key (char32_t *codepoints_in, size_t length_in)
{
  return get_collation_key_ext (codepoints_in, length_in, 0);
}

