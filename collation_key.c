#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "unictype.h"
#include "uninorm.h"

#include "allkeys_bin_loader.h"
#include "collation_key.h"

void get_implicit_weight (uint32_t codepoint,
                          CollationElement *elements,
                          uint8_t *n_elements) {
    uint32_t AAAA = 0, BBBB = 0;

    if (uc_is_property_unified_ideograph (codepoint)) {
        const uc_block_t *b = uc_block (codepoint);
        if (   b->start == 0x4E00 /* CJK Unified Ideographs */
            || b->start == 0xF900 /* CJK Compatibility Ideographs */)
        {
            AAAA = 0xFB40 + (codepoint >> 15);
        } else {
            AAAA = 0xFB80 + (codepoint >> 15);
        }
        BBBB = (codepoint & 0x7FFF) | 0x8000;
    }
    if (AAAA && BBBB) {
      CollationElement e1 = {AAAA, 0x0020, 0x0002};
      CollationElement e2 = {BBBB, 0x0000, 0x0000};
      elements[0] = e1;
      elements[1] = e2;
      (*n_elements) = 2;
    }
}

CollationKey get_collation_key(uint32_t *codepoints_in, size_t length_in) {
    uint32_t *codepoints;
    size_t length;

    codepoints = u32_normalize (UNINORM_NFKD, codepoints_in, length_in, NULL, &length);

    /* get array of collation entries */
    uint32_t *entry_array = malloc (sizeof (*entry_array)
                                          * length);


    for (size_t i = 0; i < length; i++) {
        /* currently we only look for single codepoint collation entries */
        CODEPOINT_DATA data_offset = lookup_codepoint_data(codepoints[i]);
        if (data_offset) {
            entry_array[i] = data_offset;
        } else {
            entry_array[i] = 0;
            printf("Not found in database.\n");
        }
    }

    int num_elements = 0;
    for (size_t i = 0; i < length; i++) {
      if (entry_array[i])
        num_elements += element_count_of_data_offset(entry_array[i]);
      else
        num_elements += 2; /* implicitly determined weights? */
    }

    CollationElement *elements = calloc (num_elements, sizeof (*elements));
    size_t elements_count = 0;
    for (size_t i = 0; i < length; i++) {
        if (entry_array[i]) {
            uint8_t num_entry_elements;
            read_collation_data_offset(entry_array[i],
                                       &elements[elements_count],
                                       &num_entry_elements);
            elements_count += num_entry_elements;
        } else {
            uint8_t num_entry_elements;
            get_implicit_weight(codepoints[i],
                                &elements[elements_count],
                                &num_entry_elements);
            elements_count += num_entry_elements;
        }
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

