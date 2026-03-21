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
} Allkeys_Info;

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

/* Read allkeys.txt */
static Allkeys_Info *
build_allkeys_info (const char *filename)
{
  FILE *fp = fopen (filename, "r");
  if (!fp)
    {
      perror ("Failed to open input file");
      return NULL;
    }

  Allkeys_Info *info = calloc (1, sizeof (Allkeys_Info));
  info->trie_root = calloc (1, sizeof (TrieNode));

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
              info->version = parse_version (line);
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
                      if (elem.element.primary > info->max_variable_weight)
                        info->max_variable_weight = elem.element.primary;
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

      if (num_codepoints == 1)
        {
          uint32_t page_num = codepoints[0] >> 8;
          uint8_t index = codepoints[0] & 0xFF;

          if (!info->pages[page_num])
            {
              info->pages[page_num] = calloc (1, sizeof (Page));
            }

          Page *page = info->pages[page_num];
          page->entries =
            realloc (page->entries, (page->count + 1) * sizeof (PageEntry));
          page->entries[page->count].index = index;
          page->entries[page->count].data = data;
          page->count++;
          info->num_singles++;
        }
      else
        {
          /* Insert into trie. */
          TrieNode *node = info->trie_root;
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
          info->num_sequences++;
        }

      if (line_num % 5000 == 0)
        {
          printf ("  Processed %zu lines...\r", line_num);
          fflush (stdout);
        }
    }

  fclose (fp);
  printf ("\nParsing complete: %u singles, %u sequences\n",
          info->num_singles, info->num_sequences);

  return info;
}

/* Convert collation units into to the form they will be written as. */
static void
expand_collation_sequence (CollationData *data)
{
  if (!data)
    return;
  CollationData new;
  new.num_elements = 0;

  uint16_t primary_extension = 0;
  uint8_t secondary_extension = 0;

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

      uint8_t tertiary_write = data->elements[i].tertiary;

      new.elements[new.num_elements++]
        = (CollationElement) { primary_write, secondary_write, tertiary_write };

      if (new.num_elements == MAX_COLLATION_ELEMENTS)
        {
          fprintf (stderr, "too many collation units in record\n");
          exit (1);
        }


      if (primary_extension || secondary_extension)
        {
          new.elements[new.num_elements++]
            = (CollationElement) { primary_extension, secondary_extension, 0 };

          if (new.num_elements == MAX_COLLATION_ELEMENTS)
            {
              fprintf (stderr, "too many collation units in record\n");
              exit (1);
            }

          primary_extension = 0;
          secondary_extension = 0;
        }

    }

  *data = new;
}

/* Write collation data. */
static void
write_collation_data (FILE *fp, ByteBuffer *buf, CollationData *data)
{
  uint8_t num_elements;

  for (int i = 0; i < data->num_elements; i++)
    {
      CollationElement unit = data->elements[i];
      fprintf (fp, "{ 0x%04x, 0x%02x, 0x%02x },\n",
               unit.primary, unit.secondary, unit.tertiary);
    }
}

typedef struct
{
  CollationData *data;           /* The data to write later. */
} PendingCollationData;

static PendingCollationData *collation_records;
static uint32_t collation_records_count;

/* Running count of number of collation units to be output, used
   for index into collation unit data array. */
static long collation_units_written;


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

  if (node->data)
    {
      buffer_write_u32 (buf, collation_units_written);
      expand_collation_sequence (node->data);
      collation_units_written += node->data->num_elements;

      /* Save collation data to be written later. */
      collation_records[collation_records_count].data = node->data;
      collation_records_count++;
    }
  else
    buffer_write_u32 (buf, 0x0000);


  /* Number of collation elements in the record. */
  buffer_write_u8 (buf, node->data ? node->data->num_elements : 0);

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
static int page_offset_positions[NUM_PAGES];

static int n_used_pages;

static int used_planes[17];

/* Check which planes (U+XX....) were used, record the indices of
   each page that was used, and preprocess collation unit data for
   writing. */
static void
serialize_page_table (Allkeys_Info *info, ByteBuffer *buf)
{
  for (uint32_t i = 0; i < NUM_PAGES; i++)
    {
      if (info->pages[i])
        {
          fprintf (stderr, "used plane %x\n", i >> 8);
          used_planes[i >> 8] = 1;
          i = ((i >> 8) + 1) << 8;
          i--;
        }
    }

  n_used_pages = 0;
  for (uint32_t i = 0; i < NUM_PAGES; i++)
    {
      if (!info->pages[i])
        {
          page_offset_positions[i] = -1;
          //fprintf (stderr, "EMPTY PAGE (%3x..)\n", i);
          continue;
        }
      Page *page = info->pages[i];
      page_offset_positions[i] = n_used_pages;
      n_used_pages++;

      //fprintf (stderr, "%3d PAGE COUNT (%3x..)\n", page->count, i);

      uint16_t k = 0;
      for (uint16_t k = 0; k < page->count; k++)
        {
          expand_collation_sequence (page->entries[k].data);
          collation_records[collation_records_count].data
            = page->entries[k].data;
          collation_records_count++;
        }
    }
}


/* Convert trie to binary format.  Save collation units
   to be output in mallocated COLLATION_UNITS. */
static ByteBuffer *
serialize_allkeys_info (Allkeys_Info *info)
{
  ByteBuffer *buf = buffer_create ();

  printf ("\nSerializing to binary format...\n");

  /* Sort all pages by offset. */
  printf ("Sorting page entries...\n");
  for (uint32_t i = 0; i < NUM_PAGES; i++)
    {
      if (info->pages[i] && info->pages[i]->count > 0)
        {
          qsort (info->pages[i]->entries, info->pages[i]->count,
                 sizeof (PageEntry), compare_page_entries);
        }
    }

  /* keep running count of collation units which will be written to
     the collation units array so we can output indices into that array. */
  collation_units_written = 0;
  collation_records = malloc ((info->num_singles + info->num_sequences + 1)
                    * sizeof (PendingCollationData));
  collation_records_count = 0;

  /* Output dummy entry at index 0. */
  collation_records[0].data = malloc (sizeof (CollationData));
  collation_records[0].data->num_elements = 1;
  collation_records[0].data->elements[0] = (CollationElement) {0, 0, 0};
  collation_records_count++;
  collation_units_written++;

  (void) write_trie_node (buf, info->trie_root);

  return buf;
}

/* Write as C source file */
static void
write_c_source (ByteBuffer *buf, const char *output_file,
                Allkeys_Info *info)
{
  FILE *fp = fopen (output_file, "w");
  if (!fp)
    {
      perror ("Failed to open output file");
      return;
    }

  serialize_page_table (info, buf);

  int n_used_planes = 0;
  long i;
  for (i = 0; i < 17; i++)
    {
      if (used_planes[i])
        n_used_planes++;
    }

  long n_collation_units = 0;
  for (i = 0; i < collation_records_count; i++)
    {
      n_collation_units += collation_records[i].data->num_elements;
    }

  printf ("Writing C source file: %s\n", output_file);

  fprintf (fp, "/* DO NOT EDIT:\n");
  fprintf (fp, " * Automatically generated from allkeys.txt\n");
  fprintf (fp, " */\n\n");

  fprintf (fp, "#include <stdint.h>\n\n");

  fprintf (fp, "struct collation_data {\n");
  fprintf (fp, "  uint16_t primary;\n");
  fprintf (fp, "  uint8_t secondary;\n");
  fprintf (fp, "  uint8_t tertiary;\n");
  fprintf (fp, "};\n");
  fprintf (fp, "struct block256_data {\n");
  fprintf (fp, "  uint8_t num_elements[256];\n");
  fprintf (fp, "  uint32_t data_index[256];\n");
  fprintf (fp, "};\n");

  fprintf (fp, "#define NUM_COLLATION_UNITS %ld\n\n", n_collation_units);

  fprintf (fp, "#define COLLATION_DATA_SIZE %zu\n\n", buf->size);
  fprintf (fp, "#define NUM_PLANES 0x%x\n\n", 17);
  fprintf (fp,
    "static const size_t collation_data_size = COLLATION_DATA_SIZE;\n\n");


  fprintf (fp, "static const\nstruct\n  {\n");
  fprintf (fp, "    uint32_t version;\n");
  fprintf (fp, "    uint16_t max_variable_weight;\n");
  fprintf (fp, "    uint32_t num_singles;\n");
  fprintf (fp, "    uint32_t num_sequences;\n");
  fprintf (fp, "    int planes[NUM_PLANES];\n");
  fprintf (fp, "    int pages[0x%x];\n", n_used_planes * 0x100);
  fprintf (fp, "    struct block256_data pages_data[0x%x];\n", n_used_pages);
  fprintf (fp, "    uint8_t trie_array[COLLATION_DATA_SIZE];\n");
  fprintf (fp, "    struct collation_data collation_data[NUM_COLLATION_UNITS+1];\n");
  fprintf (fp, "  }\n");
  fprintf (fp, "collation_data = {\n");

  fprintf (fp, "  %ld,\n", info->version);
  fprintf (fp, "  0x%04X,\n", info->max_variable_weight);
  fprintf (fp, "  %d,\n", info->num_singles);
  fprintf (fp, "  %d,\n", info->num_sequences);
  fprintf (fp, "  { /* .planes */\n");

  int page_idx = 0;
  for (i = 0; i < 17; i++)
    {
      fprintf (fp, "    %d,\n", used_planes[i] ? page_idx++ : -1);
    }
  fprintf (fp, "  },\n");

  fprintf (fp, "  { /* .pages */ \n");

  /* collation_data.pages */
  for (i = 0; i < 17; i++)
    {
      if (used_planes[i])
        {
          int j;
          for (j = (i << 8); j < (i+1) << 8; j++)
            {
              if (page_offset_positions[j] >= 0)
                fprintf (fp, "  0x%04X,%s", page_offset_positions[j],
                         (j % 4) == 3 ? "\n" : "");
              else
                fprintf (fp, "      -1,%s", (j % 4) == 3 ? "\n" : "");
            }
        }
    }
  fprintf (fp, "  },\n");

  fprintf (fp, "  { /* .pages_data */\n");

  /* collation_data.pages_data */
  for (i = 0; i < NUM_PAGES; i++)
    {
      if (!info->pages[i])
        continue;

      fprintf (fp, "  {\n");

      Page *page = info->pages[i];
      /* Output struct block256_data.  */
      fprintf (fp, "    {\n");

      /* Output num_elements[256] */
      int point_count = 0;
      int next_data = page->entries[point_count].index;
      for (int j = 0; j < 256; j++)
        {
          if (j == next_data)
            {
              fprintf (fp, "    %d,%s",
                           page->entries[point_count].data->num_elements,
                           (j % 8) == 7 ? "\n" : "");
              if (++point_count == page->count)
                next_data = -1;
              else
                next_data = page->entries[point_count].index;
            }
          else
            {
              fprintf (fp, "    0,%s", (j % 8) == 7 ? "\n" : "");
            }
        }

      fprintf (fp, "    },\n");
      fprintf (fp, "    {\n");

      /* Output data_index[256] */
      point_count = 0;
      next_data = page->entries[point_count].index;

      for (int j = 0; j < 256; j++)
        {
          if (j == next_data)
            {
              fprintf (fp, "    0x%08lx,%s", collation_units_written,
                       (j % 4) == 3 ? "\n" : "");
              collation_units_written += page->entries[point_count].data->num_elements;

              if (++point_count == page->count)
                next_data = -1;
              else
                next_data = page->entries[point_count].index;
            }
          else
            {
              fprintf (fp, "    0x00000000,%s",
                       (j % 4) == 3 ? "\n" : "");
            }
        }
      fprintf (fp, "    }\n");
      fprintf (fp, "  },\n");
    }
  fprintf (fp, "  },\n");

  fprintf (fp, "  { /* .trie_array */\n");
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

  fprintf (fp, "\n  },\n");

  fprintf (fp, "\n  { /* .collation_data */\n");

  for (uint32_t i = 0; i < collation_records_count; i++)
    {
      write_collation_data (fp, buf, collation_records[i].data);
    }

  free (collation_records);
  fprintf (fp, "\n  },\n");

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

  Allkeys_Info *info = build_allkeys_info (input_file);
  if (!info)
    return 1;

  ByteBuffer *buf = serialize_allkeys_info (info);

  if (c_file)
    {
      write_c_source (buf, c_file, info);
    }

  return 0;
}
