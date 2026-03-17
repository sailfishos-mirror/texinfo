#include <config.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include "uninorm.h"
#include "unictype.h"

#include "allkeys_bin.h"

typedef struct
{
  uint8_t num_elements;
  CollationElement elements[MAX_COLLATION_ELEMENTS];
} CollationData;

typedef struct
{
  uint8_t index;
  CollationData *data;
} PageEntry;

typedef struct
{
  uint16_t count;
  PageEntry *entries;
} Page;

typedef struct TrieNode
{
  char32_t codepoint;
  CollationData *data;
  struct TrieNode **children;
  uint16_t num_children;
} TrieNode;

typedef struct
{
  Page *pages[NUM_PAGES];
  TrieNode *trie_root;
  uint16_t max_variable_weight;
  uint32_t num_singles;
  uint32_t num_sequences;
  long version;
  uint32_t trie_offset;
} Database;

typedef struct
{
  CollationElement element;
  bool variable_weight;
} CollationElementParsed;

/* Dynamic byte buffer for building binary data */
typedef struct
{
  uint8_t *data;
  size_t size;
  size_t capacity;
} ByteBuffer;

static ByteBuffer *
buffer_create (void)
{
  ByteBuffer *buf = calloc (1, sizeof (ByteBuffer));
  buf->capacity = 1024 * 1024;
  buf->data = malloc (buf->capacity);
  return buf;
}

static void
buffer_ensure_space (ByteBuffer *buf, size_t needed)
{
  while (buf->size + needed > buf->capacity)
    {
      buf->capacity *= 2;
      buf->data = realloc (buf->data, buf->capacity);
    }
}

static uint32_t
buffer_write_bytes (ByteBuffer *buf, const void *data, size_t len)
{
  buffer_ensure_space (buf, len);
  uint32_t offset = buf->size;
  memcpy (buf->data + buf->size, data, len);
  buf->size += len;
  return offset;
}

static uint32_t
buffer_write_u8 (ByteBuffer *buf, uint8_t val)
{
  return buffer_write_bytes (buf, &val, 1);
}

static void
buffer_write_u8_at (ByteBuffer *buf, uint32_t offset, uint8_t val)
{
  memcpy (buf->data + offset, &val, 1);
}

static uint32_t
buffer_write_u16 (ByteBuffer *buf, uint16_t val)
{
  return buffer_write_bytes (buf, &val, 2);
}

static uint32_t
buffer_write_u32 (ByteBuffer *buf, uint32_t val)
{
  return buffer_write_bytes (buf, &val, 4);
}

static void
buffer_write_u32_at (ByteBuffer *buf, uint32_t offset, uint32_t val)
{
  memcpy (buf->data + offset, &val, 4);
}

static void
buffer_align (ByteBuffer *buf, int alignment)
{
  while (buf->size % alignment)
    buffer_write_u8 (buf, 0);
}

/* Parser functions */
static int
parse_hex (const char *str, uint32_t *value)
{
  char *endptr;
  unsigned long val = strtoul (str, &endptr, 16);
  if (endptr == str || val > 0x10FFFF)
    return 0;
  *value = (uint32_t) val;
  return 1;
}

static int
parse_collation_element (const char **str, CollationElementParsed *elem)
{
  const char *s = *str;
  while (*s && isspace (*s))
    s++;
  if (*s != '[')
    return 0;
  s++;

  if (*s == '*')
    {
      elem->variable_weight = 1;
      s++;
    }
  else if (*s == '.')
    {
      elem->variable_weight = 0;
      s++;
    }
  else
    {
      return 0;
    }

  char hex[5] = { 0 };
  for (int i = 0; i < 4 && isxdigit (*s); i++, s++)
    hex[i] = *s;
  elem->element.primary = (uint16_t) strtoul (hex, NULL, 16);
  if (*s != '.')
    return 0;
  s++;

  memset (hex, 0, sizeof (hex));
  for (int i = 0; i < 4 && isxdigit (*s); i++, s++)
    hex[i] = *s;
  elem->element.secondary = (uint16_t) strtoul (hex, NULL, 16);
  if (*s != '.')
    return 0;
  s++;

  memset (hex, 0, sizeof (hex));
  for (int i = 0; i < 4 && isxdigit (*s); i++, s++)
    hex[i] = *s;
  elem->element.tertiary = (uint8_t) strtoul (hex, NULL, 16);
  if (*s != ']')
    return 0;
  s++;

  *str = s;
  return 1;
}

static long
parse_version (const char *line)
{
  unsigned int major = 0, minor = 0, patch = 0;
  if (sscanf (line, "@version %u.%u.%u", &major, &minor, &patch) == 3)
    {
      return major * 10000 + minor * 100 + patch;
    }
  return 0;
}

/* Used to skip decomposable sequences. */
int
check_codepoint_nondecomposable (char32_t codepoint)
{
  size_t length;
  char32_t *normalized;

  normalized =
    u32_normalize (UNINORM_NFD, &codepoint, 1, NULL, &length);

  free (normalized);

  if (length > 1)
    return 0;
  return 1;
}

/* Build database from allkeys.txt */
static Database *
build_database (const char *filename)
{
  FILE *fp = fopen (filename, "r");
  if (!fp)
    {
      perror ("Failed to open input file");
      return NULL;
    }

  Database *db = calloc (1, sizeof (Database));
  db->trie_root = calloc (1, sizeof (TrieNode));

  char line[4096];
  size_t line_num = 0;

  printf ("Parsing %s...\n", filename);

  while (fgets (line, sizeof (line), fp))
    {
      line_num++;
      const char *p = line;

      while (*p && isspace (*p))
        p++;
      if (*p == '#' || *p == '\0')
        continue;

      if (*p == '@')
        {
          if (strncmp (line, "@version", 8) == 0)
            {
              db->version = parse_version (line);
            }
          continue;
        }

      /* Parse codepoints */
      char32_t codepoints[MAX_SEQUENCE_LENGTH];
      size_t num_codepoints = 0;

      while (*p && isxdigit (*p))
        {
          char hex[7] = { 0 };
          int i = 0;
          while (isxdigit (*p) && i < 6)
            hex[i++] = *p++;
          if (!parse_hex (hex, &codepoints[num_codepoints]))
            break;
          num_codepoints++;
          if (num_codepoints >= MAX_SEQUENCE_LENGTH)
            break;
          while (*p && isspace (*p) && *p != ';')
            p++;
        }

      if (num_codepoints == 0)
        continue;

      if (num_codepoints == 1)
        {
          if (!check_codepoint_nondecomposable (codepoints[0]))
            continue;
          if (uc_is_property_unified_ideograph (codepoints[0]))
            continue;
        }


      while (*p && *p != ';')
        p++;
      if (*p != ';')
        continue;
      p++;

      /* Parse collation elements */
      CollationData *data = calloc (1, sizeof (CollationData));
      while (*p && *p != '#')
        {
          if (*p == '[')
            {
              CollationElementParsed elem;
              if (parse_collation_element (&p, &elem))
                {
                  if (data->num_elements < MAX_COLLATION_ELEMENTS)
                    {
                      data->elements[data->num_elements++] = elem.element;
                    }
                  else
                    {
                      printf
                        ("parse error: maximum collation element sequence length exceeded\n");
                    }
                  if (elem.variable_weight)
                    {
                      if (elem.element.primary > db->max_variable_weight)
                        db->max_variable_weight = elem.element.primary;
                    }
                }
            }
          else
            {
              p++;
            }
        }

      if (data->num_elements == 0)
        {
          free (data);
          continue;
        }

      /* Insert into database. */
      if (num_codepoints == 1)
        {
          uint32_t page_num = codepoints[0] >> 8;
          uint8_t index = codepoints[0] & 0xFF;

          if (!db->pages[page_num])
            {
              db->pages[page_num] = calloc (1, sizeof (Page));
            }

          Page *page = db->pages[page_num];
          page->entries =
            realloc (page->entries, (page->count + 1) * sizeof (PageEntry));
          page->entries[page->count].index = index;
          page->entries[page->count].data = data;
          page->count++;
          db->num_singles++;
        }
      else
        {
          /* Insert into trie. */
          TrieNode *node = db->trie_root;
          for (size_t i = 0; i < num_codepoints; i++)
            {
              TrieNode *child = NULL;
              for (uint16_t j = 0; j < node->num_children; j++)
                {
                  if (node->children[j]->codepoint == codepoints[i])
                    {
                      child = node->children[j];
                      break;
                    }
                }
              if (!child)
                {
                  child = calloc (1, sizeof (TrieNode));
                  child->codepoint = codepoints[i];
                  node->children =
                    realloc (node->children,
                             (node->num_children + 1) * sizeof (TrieNode *));
                  node->children[node->num_children++] = child;
                }
              node = child;
            }
          node->data = data;
          db->num_sequences++;
        }

      if (line_num % 5000 == 0)
        {
          printf ("  Processed %zu lines...\r", line_num);
          fflush (stdout);
        }
    }

  fclose (fp);
  printf ("\nParsing complete: %u singles, %u sequences\n",
          db->num_singles, db->num_sequences);

  return db;
}

/* Write collation data and return its offset */
static uint32_t
write_collation_data (ByteBuffer *buf, CollationData *data,
                      uint32_t element_count_offset)
{
  uint8_t num_elements = data->num_elements;
  uint32_t offset = buf->size;

  uint32_t primary_extension = 0;
  uint16_t secondary_extension = 0;

  for (int i = 0; i < data->num_elements; i++)
    {
      uint16_t primary = data->elements[i].primary;
      uint16_t primary_write;
      if (primary < 0xFE00)
        {
          primary_write = primary;
        }
      else
        {
          /* For very high primary weights, output an additional
             collation element.  Same transformation in
             allkeys_bin_loader.c:get_implicit_weight. */

          primary_write = 0xFE00;

          primary_extension = primary - 0xFE00 + 1;
        }

      buffer_write_u16 (buf, primary_write);

      uint16_t secondary = data->elements[i].secondary;
      uint8_t secondary_write;

      /* Fit secondary weight in a single byte for 255 possible
         secondary weights (0x0000 and 0x0020 - 0x011D) */

      if (secondary == 0x00)
        secondary_write = secondary;
      else if (secondary <= 0x011D)
        secondary_write = secondary - 0x1f;
      else if (secondary <= 0x0127)
        {
          /* For larger weights, output an extra collation element. */
          secondary_write = 0xff;
          secondary_extension = secondary - 0x0100;
        }
      else
        {
          fprintf (stderr, "secondary weight too big: %4x\n", secondary);
          exit (1);
        }

      buffer_write_u8 (buf, secondary_write);
      buffer_write_u8 (buf, data->elements[i].tertiary);

      if (primary_extension || secondary_extension)
        {

          buffer_write_u16 (buf, primary_extension);
          buffer_write_u8 (buf, secondary_extension);
          buffer_write_u8 (buf, 0x00); /* tertiary weight */

          buffer_write_u8_at (buf, element_count_offset, ++num_elements);

          primary_extension = 0;
          secondary_extension = 0;
        }

    }
  return offset;
}

/* Function for qsort.  Return negative if the first argument is "less"
   than the second, zero if they are "equal", and positive if the first
   argument is "greater". */
int
compare_trie_node_children (const void *a, const void *b)
{
  TrieNode *node1 = *(TrieNode **) a;
  TrieNode *node2 = *(TrieNode **) b;

  return (node1->codepoint > node2->codepoint)
       - (node1->codepoint < node2->codepoint);
}

/* Write trie recursively and return its offset.  In the process,
   sort the children of each node. */
static uint32_t
write_trie_node (ByteBuffer *buf, TrieNode *node)
{
  uint32_t offset = buf->size;

  buffer_write_u32 (buf, node->codepoint);

  /* Reserve space for codepoint data. */
  uint32_t data_offset_pos = buf->size;
  buffer_write_u32 (buf, 0);

  /* Number of collation elements in the record. */
  uint32_t element_count_offset
    = buffer_write_u8 (buf, node->data ? node->data->num_elements : 0);

  buffer_write_u16 (buf, node->num_children);

  qsort (node->children, node->num_children, sizeof(node->children[0]),
         compare_trie_node_children);

  /* Reserve space for child offsets */
  uint32_t children_offset_pos = buf->size;
  for (uint16_t i = 0; i < node->num_children; i++)
    {
      buffer_write_u32 (buf, 0); /* Placeholder */
    }

  /* Write children and update offsets */
  for (uint16_t i = 0; i < node->num_children; i++)
    {
      uint32_t child_offset = write_trie_node (buf, node->children[i]);
      buffer_write_u32_at (buf, children_offset_pos + i * 4, child_offset);
    }

  /* Write collation data and update offset. */
  if (node->data)
    {
      uint32_t data_offset = write_collation_data (buf, node->data,
                                                   element_count_offset);
      buffer_write_u32_at (buf, data_offset_pos, data_offset);
    }

  return offset;
}

/* Compare function for sorting page entries by offset */
static int
compare_page_entries (const void *a, const void *b)
{
  const PageEntry *ea = (const PageEntry *) a;
  const PageEntry *eb = (const PageEntry *) b;
  return (int) ea->index - (int) eb->index;
}

/* Location in dump of each page data */
static uint32_t page_offset_positions[NUM_PAGES];

static void
serialize_page_table (Database *db, ByteBuffer *buf)
{
  /* Write page data (entries only, no collation data yet).
     We'll track where to write collation data offsets. */
  typedef struct
  {
    uint32_t offset_position;   /* Where to write the data_offset. */
    uint32_t element_count_offset;
    CollationData *data;        /* The data to write later. */
  } PendingData;

  PendingData *pending = malloc (db->num_singles * sizeof (PendingData));
  uint32_t pending_count = 0;

  for (uint32_t i = 0; i < NUM_PAGES; i++)
    {
      if (!db->pages[i])
        {
          //fprintf (stderr, "EMPTY PAGE (%3x..)\n", i);
          continue;
        }

      Page *page = db->pages[i];
      page_offset_positions[i] = buf->size;

      /* For pages which are mostly full, output a full table of 256 collation
         data.  This allows lookup with a simple array index, rather than
         binary search.  It also allows fitting the count in a single byte
         (257 possible values from 0 to 256).
         Read by allkeys_bin_loader:lookup_codepoint_data. */
      uint8_t page_count_write;
      if (page->count >= 0xc0)
        page_count_write = 0xff;
      else
        page_count_write = page->count;

      buffer_write_u8 (buf, page_count_write);

      //fprintf (stderr, "%3d PAGE COUNT (%3x..)\n", page->count, i);

      if (page_count_write != 0xff)
        {
          /* Write entries with placeholder data offsets. */
          for (uint16_t j = 0; j < page->count; j++)
            {
              buffer_write_u8 (buf, page->entries[j].index);

              /* Number of collation elements in the record, if any. */
              pending[pending_count].element_count_offset
                = buffer_write_u8 (buf, page->entries[j].data->num_elements);

              /* Remember where we need to write the data offset. */
              pending[pending_count].offset_position = buf->size;
              pending[pending_count].data = page->entries[j].data;
              pending_count++;

              buffer_write_u32 (buf, 0); /* Placeholder for data_offset. */
            }
        }
      else
        {
          uint16_t k = 0;
          int16_t next_data = page->entries[k].index;

          for (uint16_t j = 0; j < 256; j++)
            {
              if (j == next_data)
                {
                  /* Number of collation elements in the record, if any. */
                  pending[pending_count].element_count_offset
                    = buffer_write_u8 (buf,
                                       page->entries[k].data->num_elements);

                  /* Remember where we need to write the data offset. */
                  pending[pending_count].offset_position = buf->size;
                  pending[pending_count].data = page->entries[k].data;
                  pending_count++;

                  buffer_write_u32 (buf, 0); /* Placeholder for data_offset. */

                  if (++k == page->count)
                    next_data = -1;
                  else
                    next_data = page->entries[k].index;
                }
              else
                {
                  /* Write a zero entry. */

                  buffer_write_u8 (buf, 0); /* number of collation units */
                  buffer_write_u32 (buf, 0); /* collation data pointer */
                }
            }
        }
    }
  buffer_align (buf, 4);

  /* Now write all collation data and backfill offsets. */
  for (uint32_t i = 0; i < pending_count; i++)
    {
      uint32_t data_offset = write_collation_data (buf,
                               pending[i].data,
                               pending[i].element_count_offset);
      buffer_write_u32_at (buf, pending[i].offset_position, data_offset);
    }

  free (pending);
}


/* Convert database to binary format */
static ByteBuffer *
serialize_database (Database *db)
{
  ByteBuffer *buf = buffer_create ();

  printf ("\nSerializing to binary format...\n");

  // Sort all pages by offset to enable binary search
  printf ("Sorting page entries...\n");
  for (uint32_t i = 0; i < NUM_PAGES; i++)
    {
      if (db->pages[i] && db->pages[i]->count > 0)
        {
          qsort (db->pages[i]->entries, db->pages[i]->count,
                 sizeof (PageEntry), compare_page_entries);
        }
    }

  /* Write page table. */
  /* Waste four bytes so no real data appears at offset 0. */
  buffer_write_u32 (buf, 0xFFFFFFFF);

  serialize_page_table (db, buf);

  /* Write trie. */
  db->trie_offset = write_trie_node (buf, db->trie_root);

  printf ("Binary size: %zu bytes (%.2f MB)\n", buf->size,
          buf->size / 1e6);

  return buf;
}

/* Write as C source file */
static void
write_c_source (ByteBuffer *buf, const char *output_file,
                Database *db)
{
  FILE *fp = fopen (output_file, "w");
  if (!fp)
    {
      perror ("Failed to open output file");
      return;
    }

  printf ("Writing C source file: %s\n", output_file);

  fprintf (fp, "/* DO NOT EDIT:\n");
  fprintf (fp, " * Automatically generated from allkeys.txt\n");
  fprintf (fp, " */\n\n");

  fprintf (fp, "#include <stdint.h>\n\n");

  fprintf (fp, "#define COLLATION_DATA_SIZE %zuU\n\n", buf->size);
  fprintf (fp,
    "static const size_t collation_data_size = COLLATION_DATA_SIZE;\n\n");


  fprintf (fp, "static const\nstruct\n  {\n");
  fprintf (fp, "    uint32_t version;\n");
  fprintf (fp, "    uint16_t max_variable_weight;\n");
  fprintf (fp, "    uint32_t num_singles;\n");
  fprintf (fp, "    uint32_t num_sequences;\n");
  fprintf (fp, "    uint32_t trie_offset;\n");
  fprintf (fp, "    uint32_t pages[NUM_PAGES];\n");
  fprintf (fp, "    uint8_t array[COLLATION_DATA_SIZE];\n");
  fprintf (fp, "  }\n");
  fprintf (fp, "collation_data = {\n");

  fprintf (fp, "  %ld,\n", db->version);
  fprintf (fp, "  0x%04X,\n", db->max_variable_weight);
  fprintf (fp, "  %d,\n", db->num_singles);
  fprintf (fp, "  %d,\n", db->num_sequences);
  fprintf (fp, "  0x%04X,\n", db->trie_offset);
  fprintf (fp, "  {\n");

  for (uint32_t i = 0; i < NUM_PAGES; i++)
    {
      fprintf (fp, "  0x%04X%s\n", page_offset_positions[i],
                   i == NUM_PAGES - 1 ? "" : ",");
    }


  fprintf (fp, "  },\n");

  fprintf (fp, "  {\n");
  for (size_t i = 0; i < buf->size; i++)
    {
      if (i % 16 == 0)
        {
          if (i > 0)
            fprintf (fp, "\n");
          fprintf (fp, "    ");
        }
      fprintf (fp, "0x%02X", buf->data[i]);
      if (i < buf->size - 1)
        fprintf (fp, ",");
      if (i % 16 != 15 && i < buf->size - 1)
        fprintf (fp, " ");
    }

  fprintf (fp, "\n  }\n");
  fprintf (fp, "};\n");

  fclose (fp);
}

/* Write as binary file */
static void
write_binary_file (ByteBuffer *buf, const char *output_file)
{
  FILE *fp = fopen (output_file, "wb");
  if (!fp)
    {
      perror ("Failed to open output file");
      return;
    }

  printf ("Writing binary file: %s\n", output_file);

  fwrite (buf->data, 1, buf->size, fp);
  fclose (fp);
}

int
main (int argc, char *argv[])
{
  if (argc != 3)
    {
      fprintf (stderr, "Usage: %s <allkeys.txt> [output.c]\n",
               argv[0]);
      return 1;
    }

  const char *input_file = argv[1];
  const char *c_file = argc >= 3 ? argv[2] : NULL;

  Database *db = build_database (input_file);
  if (!db)
    return 1;

  ByteBuffer *buf = serialize_database (db);

  if (c_file)
    {
      write_c_source (buf, c_file, db);
    }

  return 0;
}
