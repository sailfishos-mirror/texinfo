#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "uninorm.h"

#include "allkeys_bin_loader.h"
#include "collation_key.h"

CollationKey get_collation_key(char32_t *codepoints_in, size_t length_in) {
    char32_t *codepoints;
    size_t length;

    codepoints = u32_normalize (UNINORM_NFKD, codepoints_in, length_in, NULL, &length);

    /* get array of collation entries */
    struct collation_info {
        size_t string_index;
        COLLATION_DATA data_offset;
    };

    /* Maximum one collation_info per character.  Less if there are
       multi-character sequences.  */
    struct collation_info *entry_array
    = malloc (sizeof (*entry_array) * length);

    size_t n_entries = 0;

    for (size_t i = 0; i < length; ) {
        size_t n_consumed;
        COLLATION_DATA data_offset
        = lookup_collation_data_at_char(&codepoints[i], &n_consumed);
        if (n_consumed > 0) {
            entry_array[n_entries].data_offset = data_offset;
            entry_array[n_entries++].string_index = i;
            i += n_consumed;
        } else {
            entry_array[n_entries].data_offset = 0;
            entry_array[n_entries++].string_index = i;
            i++;
            //printf("Not found in database.\n");
        }
    }

    int num_elements = 0;
    for (size_t i = 0; i < n_entries; i++) {
      if (entry_array[i].data_offset)
        {
          size_t n = element_count_of_data_offset
                     (entry_array[i].data_offset);
          num_elements += n;
        }
      else
        num_elements += 2; /* implicitly determined weights? */
    }

    CollationElement *elements = calloc (num_elements, sizeof (*elements));
    size_t elements_count = 0;
    for (size_t i = 0; i < n_entries; i++) {
        if (entry_array[i].data_offset) {
            size_t num_entry_elements;
            read_collation_data_offset(entry_array[i].data_offset,
                                       &elements[elements_count],
                                       &num_entry_elements);
            elements_count += num_entry_elements;
        } else {
            size_t num_entry_elements;
            get_implicit_weight
                (codepoints[entry_array[i].string_index],
                &elements[elements_count],
                &num_entry_elements);
            elements_count += num_entry_elements;
        }
    }
    free (entry_array);

    unsigned char *sort_key;
    unsigned char *psort_key;
    size_t sort_key_alloc;

    /* Three levels (primary/secondary/tertiary).  Two bytes per
       collation element at each of three levels,
       "\x00\x00" between levels and one final null. */
    sort_key_alloc = num_elements * 6 + 4 + 1;

    psort_key = sort_key;

    sort_key = calloc (sort_key_alloc, 1);
    psort_key = sort_key;

    /* Primary */
    for (size_t i = 0; i < elements_count; i++) {
        uint16_t weight = elements[i].primary;
        if (weight)
          {
            *psort_key++ = weight >> 8;   /* More significant byte.*/
            *psort_key++ = weight & 0xFF; /* Less significant byte.*/
          }
    }

    *psort_key++ = '\x00';
    *psort_key++ = '\x00';

    /* Secondary */
    for (size_t i = 0; i < elements_count; i++) {
        uint16_t weight = elements[i].secondary;
        if (weight)
          {
            *psort_key++ = weight >> 8;   /* More significant byte.*/
            *psort_key++ = weight & 0xFF; /* Less significant byte.*/
          }
    }

    *psort_key++ = '\x00';
    *psort_key++ = '\x00';

    /* Tertiary */
    for (size_t i = 0; i < elements_count; i++) {
        uint16_t weight = elements[i].tertiary;
        if (weight)
          {
            *psort_key++ = weight >> 8;   /* More significant byte.*/
            *psort_key++ = weight & 0xFF; /* Less significant byte.*/
          }
    }

  free (elements);

  free (codepoints);

  CollationKey ret;
  ret.key = sort_key;
  ret.length = psort_key - sort_key;
  return ret;
}

