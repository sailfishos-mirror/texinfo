#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "unictype.h"
#include "uninorm.h"

#include "collation_data_lookup.h"

#include "collation-table.c"

struct collation_data_ref {
  const struct collation_unit *array;
  uint8_t num_elements;
};
typedef struct collation_data_ref COLLATION_DATA;


int
collation_element_is_variable (struct collation_unit *element)
{
  return (element->primary
            && element->primary <= collation_data.max_variable_weight);
}


/* Lookup collation information for a single codepoint. */
static COLLATION_DATA
lookup_codepoint_data (char32_t codepoint)
{
  if (codepoint >= 0x110000)
    return (COLLATION_DATA) {0};

  int index1 = codepoint >> 16; /* Unicode plane */
  if (collation_data.level1[index1] < 0)
    return (COLLATION_DATA) {0};

  uint32_t index2 = (collation_data.level1[index1] << 8)
                     + ((codepoint >> 8) & 0xff);

  int index3 = collation_data.level2[index2];
  if (index3 < 0)
    return (COLLATION_DATA) {0};

  const struct block256_data *block256 = &collation_data.level3[index3];

  uint8_t index4 = codepoint & 0xFF;

  COLLATION_DATA data;
  data.num_elements = block256->num_elements[index4];
  size_t data_index = block256->data_index[index4];
  if (data_index)
    data.array = &collation_data.collation_data[data_index];
  else
    data.array = 0;

  return data;
}

#define check_sequences 1

/* STRING points into a char32_t array.  First check for sequence entry
   at STRING, then for individual codepoint entry.  This function can
   reorder STRING. */
void
lookup_collation_data_at_char (char32_t *const string,
                               size_t length,
                               size_t *n_codepoints_out,
                               const struct collation_unit **collation_units,
                               size_t *n_collation_units)
{
  const struct trie_node *node = &collation_data.trie_array[0];

  char32_t *pchar;
  char32_t *pre_non_starter = 0;
  int max_combining_class = 0;

  /* similar to lookup_sequence but number of codepoints consumed
     is not known in advance */
  size_t n_codepoints;

#if check_sequences

  /* Starting at the beginning of the string, try to match the longest
     sequence possible. */
  for (pchar = string, n_codepoints = 0;
       pchar < string + length && (*pchar) != 0;
       pchar++)
    {
      int combining_class;
      if (pre_non_starter)
        {
          /* We are trying to find a non-continguous match. */

          combining_class = uc_combining_class (*pchar);
          if (combining_class == UC_CCC_NR) /* UC_CCC_NR == 0 */
            {
              /* This codepoint cannot be part of a non-contiguous match,
                 and blocks a non-contiguous match with any later codepoints. */
              break;
            }

          if (combining_class <= max_combining_class)
            {
              /* This codepoint is blocked from being part of a non-contiguous
                 match by earlier non-starters. */
              continue;
            }

          max_combining_class = combining_class;
        }

      int num_children = node->num_children;
      uint32_t first_child = node->first_child;

      /* Search for matching child. */
      int found = 0;
      for (int j = 0; j < num_children; j++)
        {
          const struct trie_node *child
            = &collation_data.trie_array[first_child + j];

          uint32_t child_codepoint = child->codepoint;

          if (child_codepoint == *pchar)
            {
              /* For non-contiguous matches, we should only absorb
                 one extra character, so require node to be terminal. */
              if (!pre_non_starter || child->data_index)
                {
                  node = child;
                  found = 1;
                  n_codepoints++;
                }
              break;
            }
          if (child_codepoint > *pchar)
            break;
        }

      if (found && pre_non_starter)
        {
          /* This is part of a non-contiguous match.  Move matched
             character right after the contiguous part of the match. */
          char32_t tmp = *pchar;
          memmove (&pre_non_starter[2], &pre_non_starter[1],
                   (pchar - &pre_non_starter[1]) * sizeof (char32_t));
          pre_non_starter[1] = tmp;

          break;

          /* Note: we can only absorb one extra character for non-contiguous
             matches.  Hence 0FB2 0334 0F71 0F80 matches with
             0FB2 0F80 TIBETAN VOWEL SIGN VOCALIC R, not with
             0FB2 0F71 0F80 TIBETAN VOWEL SIGN VOCALIC RR */
        }
      else if (!found)
        {
          if (!pre_non_starter && pchar > string)
            {
              /* Start looking for a non-contiguous match. */
              pchar--;
              pre_non_starter = pchar;
              continue;
            }
          else if (pre_non_starter)
            {
              /* Continue looking for a non-contiguous match. */
              continue;
            }
          else
            {
              /* Cannot extend a match. */
              break;
            }
        }
    }

  if (n_codepoints >= 2)
    {
      COLLATION_DATA data;
      size_t data_index = node->data_index;
      data.num_elements = node->num_elements;
      if (data_index != 0)
        {
          data.array = &collation_data.collation_data[data_index];
          (*n_codepoints_out) = n_codepoints;

          *collation_units = data.array;
          *n_collation_units = data.num_elements;
          return;
        }
    }

#endif

  COLLATION_DATA data = lookup_codepoint_data (string[0]);
  if (data.array)
    {
      (*n_codepoints_out) = 1;
    }
  else
    {
      (*n_codepoints_out) = 0;
    }
  *collation_units = data.array;
  *n_collation_units = data.num_elements;
  return;
}

/* Return implicitly determined weights. */
void
get_implicit_weight (char32_t codepoint,
                     struct collation_unit *elements, size_t *n_elements)
{
  if (codepoint == 0x0000)
    {
      (*n_elements) = 0;
      return;
    }

  uint16_t AAAA = 0, BBBB = 0;

  int i;
  for (i = 0; i < NUM_IMPLICIT_BLOCKS; i++)
    {
      if (codepoint >= collation_data.implicit_blocks[i].low
          && codepoint <= collation_data.implicit_blocks[i].high)
        {
          AAAA = collation_data.implicit_blocks[i].primary;

          /* Use 'low_base' which stores the lowest codepoint of all
             blocks that share the same primary.
             E.g., Tangut 17000-187FF and Tangut Supplement 18D00-18D7F
             both have primary=FB00, so low_base here is 17000 for both
             blocks. */

          BBBB = (codepoint - collation_data.implicit_blocks[i].low_base)
                 | 0x8000;
        }
    }

  if (!AAAA && uc_is_property_unified_ideograph (codepoint))
    {
      /* Check if in blocks "CJK Unified Ideographs" or "CJK Compatibility
         Ideographs" */
      if ((codepoint >= 0x4E00 && codepoint <= 0x9FFF)
          || (codepoint >= 0xF900 && codepoint <= 0xFAFF))
        {
          AAAA = 0xFB40 + (codepoint >> 15);
        }
      else
        {
          AAAA = 0xFB80 + (codepoint >> 15);
        }
      BBBB = (codepoint & 0x7FFF) | 0x8000;
    }

  if (!AAAA)
    {
      /* possibly an invalid codepoint */
      AAAA = 0xFBC0 + (codepoint >> 15);
      BBBB = (codepoint & 0x7FFF) | 0x8000;
    }

  if (AAAA && BBBB)
    {
      struct collation_unit e1 = { AAAA, 0x0020, 0x0002 };
      /* same in gen-collation-table.c:expand_collation_sequence to
         fit secondary weight in a single byte. */
      e1.secondary -= 0x1f;

      /* Limit maximum primary weight by using an extra collation element
         if necessary.  Same transformation in
         gen-collation_table.c:write_collation_data */
      if (BBBB >= 0xFE00)
        {
          struct collation_unit e2 = { 0xFE00, 0x0000, 0x0000 };
          struct collation_unit e3 = { BBBB - 0xFE00 + 0x8000 + 1, 0x0000, 0x0000 };

          elements[0] = e1;
          elements[1] = e2;
          elements[2] = e3;
          (*n_elements) = 3;
        }
      else
        {
          struct collation_unit e2 = { BBBB, 0x0000, 0x0000 };
          elements[0] = e1;
          elements[1] = e2;
          (*n_elements) = 2;
        }
    }
  else
    {
      (*n_elements) = 0;
    }
}

void
print_collation_unit (FILE *stream,
                      const struct collation_unit *elements, size_t num_elements)
{
  for (size_t i = 0; i < num_elements; i++)
    {
      if (elements[i].primary != 0x0000
          && elements[i].primary <= collation_data.max_variable_weight)
        {
          fprintf (stream,
                   "[*%04X.%04X.%04X]",
                   elements[i].primary,
                   elements[i].secondary, elements[i].tertiary);
        }
      else
        {
          fprintf (stream,
                   "[.%04X.%04X.%04X]",
                   elements[i].primary,
                   elements[i].secondary, elements[i].tertiary);
        }
    }
  fprintf (stderr, "\n");
}
