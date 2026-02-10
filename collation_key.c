#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "uninorm.h"

#include "allkeys_bin_loader.h"
#include "collation_key.h"

CollationKey get_collation_key(CollationEntry *entries, uint32_t num_entries, uint32_t *codepoints_in, size_t length_in) {
    uint32_t *codepoints;
    size_t length;

    codepoints = u32_normalize (UNINORM_NFKD, codepoints_in, length_in, NULL, &length);

    /* get array of collation entries */
    CollationEntry **entry_array = malloc (sizeof (*entry_array)
                                          * length);

    /* only look for single codepoint collation entries */
    CollationEntry *entry;

    for (size_t i = 0; i < length; i++) {
        entry = lookup_codepoint(entries, num_entries,
                                 codepoints[i]);
        if (entry) {
            entry_array[i] = entry;
        } else {
            entry_array[i] = 0;
            printf("Not found in database.\n");
        }
    }

    int num_elements = 0;
    for (size_t i = 0; i < length; i++) {
      if (entry_array[i])
        num_elements += entry_array[i]->num_elements;
    }

    unsigned char *sort_key;
    unsigned char *psort_key;
    size_t sort_key_alloc;

    /* Three levels (primary/secondary/tertiary).  Two bytes per
       collation element at first two levels, one byte at tertiary.
       "\x00\x00" between levels and one final null. */
    sort_key_alloc = num_elements * 5 + 4 + 1;

    psort_key = sort_key;

    sort_key = calloc (sort_key_alloc, 1);
    psort_key = sort_key;

    /* Primary */
    for (size_t i = 0; i < length; i++) {
      if (!entry_array[i])
        continue;
      for (size_t j = 0; j < entry_array[i]->num_elements; j++)
        {
          uint16_t weight = entry_array[i]->elements[j].primary;
          if (weight)
            {
              *psort_key++ = weight >> 8;   /* More significant byte.*/
              *psort_key++ = weight & 0xFF; /* Less significant byte.*/
            }
        }
    }

    *psort_key++ = '\x00';
    *psort_key++ = '\x00';

    /* Secondary */
    for (size_t i = 0; i < length; i++) {
      if (!entry_array[i])
        continue;
      for (size_t j = 0; j < entry_array[i]->num_elements; j++)
        {
          uint16_t weight = entry_array[i]->elements[j].secondary;
          if (weight)
            {
              *psort_key++ = weight >> 8;   /* More significant byte.*/
              *psort_key++ = weight & 0xFF; /* Less significant byte.*/
            }
        }
    }

    *psort_key++ = '\x00';
    *psort_key++ = '\x00';

    /* Tertiary */
    for (size_t i = 0; i < length; i++) {
      if (!entry_array[i])
        continue;
      for (size_t j = 0; j < entry_array[i]->num_elements; j++)
        {
          uint8_t weight = entry_array[i]->elements[j].tertiary;
          if (weight)
            {
              *psort_key++ = weight;
            }
        }
    }

  free (codepoints);

  CollationKey ret;
  ret.key = sort_key;
  ret.length = psort_key - sort_key;
  return ret;
}

