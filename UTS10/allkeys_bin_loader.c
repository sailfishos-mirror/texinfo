#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "unictype.h"
#include "uninorm.h"

#include "allkeys_bin_loader.h"

/*
 * Lookup program for binary collation data
 * Reads from binary file
 */
 

#define EMBED_DATA 1

#if EMBED_DATA
#include "allkeys_bin.c"
#else
/* Global data pointer */
static uint8_t *collation_data = NULL;
static size_t collation_data_size = 0;
#endif

static Header header;
static void read_header (void);

/* Load binary data from file */
int
load_data_file (const char *filename)
{
#if EMBED_DATA
  read_header ();
  return 1;
#else

  if (header.version != 0)
    return 1;                   /* already loaded */

  FILE *fp = fopen (filename, "rb");
  if (!fp)
    {
      perror ("Failed to open data file");
      return 0;
    }

  // Get file size
  fseek (fp, 0, SEEK_END);
  collation_data_size = ftell (fp);
  fseek (fp, 0, SEEK_SET);

  // Allocate and read
  collation_data = malloc (collation_data_size);
  if (!collation_data)
    {
      fclose (fp);
      return 0;
    }

  if (fread (collation_data, 1, collation_data_size, fp) !=
      collation_data_size)
    {
      free (collation_data);
      fclose (fp);
      return 0;
    }

  fclose (fp);

  // Validate data
  if (collation_data_size < 28)
    {
      fprintf (stderr, "Error: Invalid collation data\n");
      return 1;
    }

  if (memcmp (collation_data, "UCADATA1", 8) != 0)
    {
      fprintf (stderr, "Error: Invalid magic number\n");
      return 1;
    }

  read_header ();
  return 1;
#endif
}

/* Helper functions to read from byte array */
static uint8_t
read_u8 (size_t offset)
{
  return collation_data[offset];
}

static uint16_t
read_u16 (size_t offset)
{
  uint16_t val;
  memcpy (&val, collation_data + offset, 2);
  return val;
}

static uint32_t
read_u32 (size_t offset)
{
  uint32_t val;
  memcpy (&val, collation_data + offset, 4);
  return val;
}

/* Read header */
void
read_header (void)
{
  memcpy (header.magic, collation_data, 8);
  header.version = read_u32 (8);
  header.max_variable_weight = read_u16 (12);
  header.num_singles = read_u32 (14);
  header.num_sequences = read_u32 (18);
  header.page_table_offset = read_u32 (22);
  header.trie_offset = read_u32 (26);
}

void
print_header_info (void)
{
  printf ("\nUnicode Collation Lookup\n");
  printf ("========================\n");

  printf ("  Version: %u.%u.%u\n",
          header.version / 10000,
          (header.version / 100) % 100, header.version % 100);
  printf ("  Singles: %u\n", header.num_singles);
  printf ("  Sequences: %u\n", header.num_sequences);
  printf ("  Variable element limit: 0x%04x\n", header.max_variable_weight);
  printf ("  Binary size: %zu bytes (%.3f MB)\n\n",
          collation_data_size, collation_data_size / 1e6);

}

/* Read collation data at offset */
int
read_collation_data (COLLATION_DATA data,
                     CollationElement *elements)
{
  uint32_t offset = data.data_offset;
  for (int i = 0; i < data.num_elements; i++)
    {
      elements[i].primary = read_u16 (offset);
      offset += 2;
      elements[i].secondary = read_u8 (offset);
      offset += 1;
      if (elements[i].secondary != 0x00)
        {
          /* matches allkeys_to_binary.c:write_collation_data. */
          elements[i].secondary += 0x1f;
        }
      elements[i].tertiary = read_u8 (offset);
      offset += 1;
    }

  return 1;
}

/* Lookup single codepoint and return data offset */
COLLATION_DATA
lookup_codepoint_data (char32_t codepoint)
{
  if (codepoint >= 0x110000)
    return (COLLATION_DATA) {0};

  uint32_t page_num = codepoint >> 8;
  uint8_t page_index = codepoint & 0xFF;

  // Read page table entry
  uint32_t page_data_offset =
    read_u32 (header.page_table_offset + page_num * 4);
  if (page_data_offset == 0)
    return (COLLATION_DATA) {0};       // Page not allocated

  // Read page count
  uint16_t count = read_u16 (page_data_offset);
  uint32_t entries_offset = page_data_offset + 2;

  // Binary search within page
  int left = 0;
  int right = count - 1;

  while (left <= right)
    {
      int mid = left + (right - left) / 2;
      uint32_t entry_offset = entries_offset + mid * 6;
      /* 1 byte offset + 1 byte element count + 4 byte offset */
      uint8_t entry_page_index = read_u8 (entry_offset);

      if (entry_page_index == page_index)
        {
          COLLATION_DATA data;
          data.num_elements = read_u8 (entry_offset + 1);
          data.data_offset = read_u32 (entry_offset + 2);
          return data;
        }
      else if (entry_page_index < page_index)
        {
          left = mid + 1;
        }
      else
        {
          right = mid - 1;
        }
    }

  return (COLLATION_DATA) {0}; /* not found */
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
  uint32_t node_offset = header.trie_offset;

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

      // Read node
      uint32_t node_codepoint = read_u32 (node_offset);
      uint32_t node_data_offset = read_u32 (node_offset + 4);
      uint8_t num_elements = read_u8 (node_offset + 8);
      uint16_t num_children = read_u16 (node_offset + 9);
      uint32_t children_offset = node_offset + 11;


      // Search for matching child
      int found = 0;
      for (uint16_t j = 0; j < num_children; j++)
        {
          uint32_t child_offset = read_u32 (children_offset + j * 4);
          uint32_t child_codepoint = read_u32 (child_offset);

          if (child_codepoint == *pchar)
            {
              node_offset = child_offset;
              found = 1;
              n_codepoints++;
              break;
            }
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
      data.data_offset = read_u32 (node_offset + 4);
      data.num_elements = read_u8 (node_offset + 8);
      if (data.data_offset != 0)
        {
          (*n_codepoints_out) = n_codepoints;
          return data;
        }
    }

#endif

  COLLATION_DATA data = lookup_codepoint_data (string[0]);
  if (data.data_offset)
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
  if (data.data_offset)
    {
      (*num_elements) = data.num_elements;
      return read_collation_data (data, elements);
    }
  return 0;
}

/* Return implicitly determined weights. */
/* TODO: we should get these from allkeys.txt using the @implicitweights
   lines (except for CJK characters which aren't in that file at all). */
void
get_implicit_weight (char32_t codepoint,
                     CollationElement *elements, size_t *n_elements)
{
  const uc_block_t *b = uc_block (codepoint);
  uint16_t AAAA = 0, BBBB = 0;

  if (!b)
    {
      /* possibly an invalid codepoint */
      AAAA = 0xFBC0 + (codepoint >> 15);
      BBBB = (codepoint & 0x7FFF) | 0x8000;
    }
  else if (b->start == 0x17000       /* Tangut */
      || b->start == 0x18D00 /* Tangut Supplement */ )
    {
      AAAA = 0xFB00;
      BBBB = (codepoint - 0x17000) | 0x8000;
    }
  else if (b->start == 0x18800  /* Tangut Components */
           || b->start == 0x18D80 /* Tangut Components Supplement */ )
    {
      AAAA = 0xFB01;
      BBBB = (codepoint - 0x18800) | 0x8000;
    }
  else if (b->start == 0x1B170 /* Nushu */ )
    {
      AAAA = 0xFB02;
      BBBB = (codepoint - 0x1B170) | 0x8000;
    }
  else if (b->start == 0x18B00 /* Khitan Small Script */ )
    {
      AAAA = 0xFB03;
      BBBB = (codepoint - 0x18B00) | 0x8000;
    }
  else if (uc_is_property_unified_ideograph (codepoint))
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
  else
    {
      AAAA = 0xFBC0 + (codepoint >> 15);
      BBBB = (codepoint & 0x7FFF) | 0x8000;
    }

  if (AAAA && BBBB)
    {
      CollationElement e1 = { AAAA, 0x0020, 0x0002 };
      CollationElement e2 = { BBBB, 0x0000, 0x0000 };
      elements[0] = e1;
      elements[1] = e2;
      (*n_elements) = 2;
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

  uint32_t node_offset = header.trie_offset;

  for (size_t i = 0; i < len; i++)
    {
      // Read node
      uint32_t node_codepoint = read_u32 (node_offset);
      uint32_t node_data_offset = read_u32 (node_offset + 4);
      uint8_t node_num_elements = read_u32 (node_offset + 8);
      uint16_t num_children = read_u16 (node_offset + 9);
      uint32_t children_offset = node_offset + 11;

      // Search for matching child
      int found = 0;
      for (uint16_t j = 0; j < num_children; j++)
        {
          uint32_t child_offset = read_u32 (children_offset + j * 4);
          char32_t child_codepoint = read_u32 (child_offset);

          if (child_codepoint == codepoints[i])
            {
              node_offset = child_offset;
              found = 1;

              // If this is the last codepoint, check for collation_data
              if (i == len - 1)
                {
                  COLLATION_DATA data;
                  data.data_offset = read_u32 (node_offset + 4);
                  data.num_elements = read_u8 (node_offset + 8);
                  if (data.data_offset != 0)
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
          && elements[i].primary <= header.max_variable_weight)
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
