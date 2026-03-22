#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "unictype.h"
#include "uninorm.h"

#include "allkeys_bin_loader.h"

#include "allkeys_bin.c"

void
print_header_info (void)
{
  printf ("\nUnicode Collation Lookup\n");
  printf ("========================\n");

  printf ("  Version: %u.%u.%u\n",
          collation_data.version / 10000,
          (collation_data.version / 100) % 100, collation_data.version % 100);
  printf ("  Singles: %u\n", collation_data.num_singles);
  printf ("  Sequences: %u\n", collation_data.num_sequences);
  printf ("  Variable element limit: 0x%04x\n", collation_data.max_variable_weight);
  printf ("  Binary size: %zu bytes (%.3f MB)\n\n",
          sizeof (collation_data), sizeof (collation_data) / 1e6);

}

/* Read collation data at offset */
int
read_collation_data (COLLATION_DATA data,
                     CollationElement *elements)
{
  uint32_t index = data.data_index;
  for (int i = 0; i < data.num_elements; i++)
    {
      elements[i].primary = collation_data.collation_data[index + i].primary;
      elements[i].secondary = collation_data.collation_data[index + i].secondary;
      elements[i].tertiary = collation_data.collation_data[index + i].tertiary;;

      if (elements[i].secondary != 0x00)
        {
          /* matches allkeys_to_binary.c:write_collation_data. */
          elements[i].secondary += 0x1f;
        }
    }

  return 1;
}

/* Lookup single codepoint and return data offset */
COLLATION_DATA
lookup_codepoint_data (char32_t codepoint)
{
  if (codepoint >= 0x110000)
    return (COLLATION_DATA) {0};

  int plane = codepoint >> 16;
  if (collation_data.planes[plane] < 0)
    return (COLLATION_DATA) {0};

  uint32_t page = codepoint >> 8;

  uint32_t page_num
    = collation_data.planes[plane] * 0x100 /* 256 pages per plane */
      + (page & 0xff);

  uint8_t point_index = codepoint & 0xFF;

  // Read page table entry
  int page_index = collation_data.pages[page_num];
  if (page_index < 0)
    return (COLLATION_DATA) {0}; /* no data for page */

  const struct block256_data *page_data = &collation_data.pages_data[page_index];

  COLLATION_DATA data;
  data.num_elements = page_data->num_elements[point_index];
  data.data_index = page_data->data_index[point_index];
  return data;
}

#define check_sequences 1

/* STRING points into a char32_t array.  First check for sequence entry
   at STRING, then for individual codepoint entry.  This function can
   reorder STRING. */
COLLATION_DATA
lookup_collation_data_at_char (char32_t *const string,
                               size_t length,
                               size_t *n_codepoints_out)
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

      uint32_t node_codepoint = node->codepoint;
      uint32_t node_data_index = node->data_index;
      uint8_t num_elements = node->num_elements;
      uint16_t num_children = node->num_children;
      uint32_t first_child = node->first_child;


      // Search for matching child
      int found = 0;
      for (uint16_t j = 0; j < num_children; j++)
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

      if (found && pre_non_starter)
        {
          /* This is part of a non-contiguous match.  Move matched
             character right after the contiguous part of the match. */
          char32_t tmp = pre_non_starter[1];
          pre_non_starter[1] = *pchar;
          *pchar = tmp;

          pchar = &pre_non_starter[1];
          pre_non_starter = NULL;
          max_combining_class = 0;
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
      data.data_index = node->data_index;
      data.num_elements = node->num_elements;
      if (data.data_index != 0)
        {
          (*n_codepoints_out) = n_codepoints;
          return data;
        }
    }

#endif

  COLLATION_DATA data = lookup_codepoint_data (string[0]);
  if (data.data_index)
    {
      (*n_codepoints_out) = 1;
    }
  else
    {
      (*n_codepoints_out) = 0;
    }
  return data;
}

int
lookup_codepoint (char32_t codepoint,
                  CollationElement *elements, size_t *num_elements)
{
  COLLATION_DATA data = lookup_codepoint_data (codepoint);
  if (data.data_index)
    {
      (*num_elements) = data.num_elements;
      return read_collation_data (data, elements);
    }
  return 0;
}

/* Return implicitly determined weights. */
void
get_implicit_weight (char32_t codepoint,
                     CollationElement *elements, size_t *n_elements)
{
  if (codepoint == 0x0000)
    {
      (*n_elements) = 0;
      return;
    }

  const uc_block_t *b = uc_block (codepoint);
  uint16_t AAAA = 0, BBBB = 0;

  if (!b)
    {
      /* possibly an invalid codepoint */
      AAAA = 0xFBC0 + (codepoint >> 15);
      BBBB = (codepoint & 0x7FFF) | 0x8000;
    }
  else
    {
      int i;
      for (i = 0; i < NUM_IMPLICIT_BLOCKS; i++)
        {
          if (b->start == collation_data.implicit_blocks[i].low)
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
    }

  if (!AAAA && uc_is_property_unified_ideograph (codepoint))
    {
      if (b->start == 0x4E00    /* CJK Unified Ideographs */
          || b->start == 0xF900 /* CJK Compatibility Ideographs */ )
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
      AAAA = 0xFBC0 + (codepoint >> 15);
      BBBB = (codepoint & 0x7FFF) | 0x8000;
    }

  if (AAAA && BBBB)
    {
      CollationElement e1 = { AAAA, 0x0020, 0x0002 };

      /* Limit maximum primary weight by using an extra collation element
         if necessary.  Same transformation in
         allkeys_bin_dumper.c:write_collation_data */
      if (BBBB >= 0xFE00)
        {
          CollationElement e2 = { 0xFE00, 0x0000, 0x0000 };
          CollationElement e3 = { BBBB - 0xFE00 + 1, 0x0000, 0x0000 };

          elements[0] = e1;
          elements[1] = e2;
          elements[2] = e3;
          (*n_elements) = 3;
        }
      else
        {
          CollationElement e2 = { BBBB, 0x0000, 0x0000 };
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

/* Lookup sequence */
int
lookup_sequence (const uint32_t *codepoints, size_t len,
                 CollationElement *elements, size_t *num_elements)
{
  if (len == 0)
    return 0;

  uint32_t node_offset = 0;
  const struct trie_node *node = &collation_data.trie_array[0];

  for (size_t i = 0; i < len; i++)
    {
      // Read node
      uint32_t node_codepoint = node->codepoint;
      uint32_t node_data_index = node->data_index;
      uint8_t node_num_elements = node->num_elements;
      uint16_t num_children = node->num_children;
      uint32_t first_child = node->first_child;

      // Search for matching child
      int found = 0;
      for (uint16_t j = 0; j < num_children; j++)
        {
          const struct trie_node *child
            = &collation_data.trie_array[first_child + j];
          char32_t child_codepoint = child->codepoint;

          if (child_codepoint == codepoints[i])
            {
              node = child;
              found = 1;

              // If this is the last codepoint, check for collation_data
              if (i == len - 1)
                {
                  COLLATION_DATA data;
                  data.data_index = node->data_index;
                  data.num_elements = node->num_elements;
                  if (data.data_index != 0)
                    {
                      *num_elements = data.num_elements;
                      return read_collation_data (data, elements);
                    }
                }
              break;
            }
        }

      if (!found)
        return 0;
    }

  return 0; /* sequence not found */
}

/* Print collation elements */
void
print_collation (FILE *stream,
                 const CollationElement *elements, size_t num_elements)
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
