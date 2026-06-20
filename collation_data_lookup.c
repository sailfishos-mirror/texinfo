#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>
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

/* Check for sequence at STRING, rearranging for a non-contiguous
   match if necessary. */
static int
check_sequence_rearranging (char32_t *const string,
                            const size_t length,
                            const struct trie_node **node_out)
{
  char32_t *pchar;
  char32_t *pre_non_starter = 0;
  int max_combining_class = 0;
  const struct trie_node *node = &collation_data.trie_array[0];

  size_t n_codepoints;

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
              /* For non-contiguous matches, we require each extra
                 character to lead to a sequence with collation data.
                 Hence 0FB2 0334 0F71 0F80 will not match with 0FB2 0F71 0F80,
                 unless there is data for 0FB2 0F71.
                 The UCA#10 document discusses this sequence for Tibetan but I
                 don't really understand it, e.g. why 0FB2 0F71 was missing.
                 See also documentation for Perl module Unicode::Collate.
                 */
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
          pre_non_starter++;

          break;
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
      *node_out = node;
      return n_codepoints;
    }

  return 0;
}

/* Much simplified version of 'check_sequence_rearranging'.
   Takes a const STRING as an argument and does not attempt
   to look for a non-contiguous match. */
static int
check_sequence_nonrearranging (const char32_t *const string,
                            const size_t length,
                            const struct trie_node **node_out)
{
  const char32_t *pchar;
  const struct trie_node *node = &collation_data.trie_array[0];

  size_t n_codepoints;

  /* Starting at the beginning of the string, try to match the longest
     sequence possible. */
  for (pchar = string, n_codepoints = 0;
       pchar < string + length && (*pchar) != 0;
       pchar++)
    {
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
              node = child;
              found = 1;
              n_codepoints++;
              break;
            }
          if (child_codepoint > *pchar)
            break;
        }

      if (!found)
        break;
    }

  if (n_codepoints >= 2)
    {
      *node_out = node;
      return n_codepoints;
    }

  return 0;
}

/* STRING or STRING_CONST points into a char32_t array.
   First check for sequence entry at STRING, then for individual codepoint entry.
   This function can reorder STRING, but not STRING_CONST.  Exactly one must
   be non-null.

   Output variables:
     N_CODEPOINTS_OUT: number of codepoints consumed to find match
     COLLATION_UNITS: pointer to data array
     N_COLLATION_UNITS: length of data array
     */
void
lookup_collation_data_at_char (char32_t *const string,
                               const char32_t *const string_const,
                               const size_t length,
                               int disable_sequences,
                               size_t *n_codepoints_out,
                               const struct collation_unit **collation_units,
                               size_t *n_collation_units)
{
  if (string && string_const || !string && !string_const)
    {
      /* bug */
      errno = EINVAL;
      (*n_codepoints_out) = 0;
      return;
    }
  if (!disable_sequences)
    {
      const struct trie_node *node = NULL;
      size_t n_codepoints_matched;

      if (string)
        n_codepoints_matched
          = check_sequence_rearranging (string, length, &node);
      else /* string_const */
        n_codepoints_matched
          = check_sequence_nonrearranging (string_const, length, &node);

      if (n_codepoints_matched > 0)
        {
          size_t data_index = node->data_index;
          if (data_index != 0)
            {
              (*n_codepoints_out) = n_codepoints_matched;
              *collation_units = &collation_data.collation_data[data_index];
              *n_collation_units = node->num_elements;
              return;
            }
        }
    }

  COLLATION_DATA data = lookup_codepoint_data
                          (string ? string[0] : string_const[0]);

  (*n_codepoints_out) = data.array ? 1 : 0;
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
