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
                            int debug,
                            char *resultbuf, size_t *lengthp)
{
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
  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary, one byte at secondary, one byte
     at tertiary.  "\x01\x01" between primary and secondary level
     and "\x01" between secondary and tertiary level. */
  sort_key_alloc = num_elements * 4 + 3;
#else
  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary/secondary, one byte at tertiary.
     "\x00\x00" between levels. */
  sort_key_alloc = num_elements * 5 + 4;
#endif

  /* Always include a terminating null byte. */
  sort_key = malloc (sort_key_alloc + 1);
  psort_key = sort_key;

#if no_nulls_in_key
  /* Output collation key without any null bytes.
     See UTS#10 s.9.4 "Avoiding Zero Bytes". */

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
          if (weight == 0xFF)
            {
              fprintf (stderr, "secondary weight too high\n");
              exit (1);
            }
          *psort_key++ = weight + 1;
        }
    }

  /* As we only use a single byte per unit at secondary and tertiary levels,
     a single byte suffices as a level separator. */
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
  *psort_key = '\0';

#else
  /* Output key that can include nulls.  This is more similar to
     the keys as decribed by the UTS #10 document. */

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
  *psort_key = '\0';

#endif

  free (elements);
  free (codepoints);

  *lengthp = psort_key - sort_key;
  return sort_key;
}

char *
u32_make_collation_key (const char32_t *codepoints_in, size_t length_in,
                        char *resultbuf, size_t *lengthp)
{
  return u32_make_collation_key_ext (codepoints_in, length_in, 0,
                                     resultbuf, lengthp);
}

char *
u8_make_collation_key (const uint8_t *u8_str, size_t length_in,
                        char *resultbuf, size_t *lengthp)
{
  char32_t *u32_str;
  size_t u32_len;

  u32_str = u8_to_u32 (u8_str, length_in, NULL, &u32_len);

  char *key = u32_make_collation_key_ext (u32_str, u32_len, 0,
                                     resultbuf, lengthp);
  free (u32_str);
  return key;
}
