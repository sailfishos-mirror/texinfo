#include <config.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <uchar.h>

#include "uninorm.h"
#include "unictype.h"

/* Used as maximum number of codepoints in a sequence. */
#define MAX_SEQUENCE_LENGTH 32

/* Used as maximum number of collation elements in a sequence (observed max is 
   about 18). */
#define MAX_COLLATION_ELEMENTS 20


/* Collation element - represents [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX]. */
struct collation_element
{
  uint16_t primary;
  uint16_t secondary;
  uint8_t tertiary;
};

struct collation_data
{
  uint8_t num_elements;
  struct collation_element elements[MAX_COLLATION_ELEMENTS];
};

struct single_codepoint_data
{
  uint32_t codepoint;
  struct collation_data data;
};

struct collation_entry_list
{
  struct single_codepoint_data *entries;
  size_t count;
  size_t alloc;
};

struct trie_node
{
  char32_t codepoint;
  struct collation_data data;
  struct trie_node **children;
  int num_children;
  size_t trie_index; /* used for serialization */
};

struct implicit_block
{
  char32_t low;
  char32_t high;
  uint32_t primary;
  char32_t low_base;
};

#define MAX_IMPLICIT_BLOCKS 16

/* Data read from allkeys.txt */
struct allkeys_info
{
  struct collation_entry_list singles;
  struct trie_node *trie_root;
  uint16_t max_variable_weight;
  size_t num_records;
  int max_collation_elements;
  int max_sequence_length;
  struct implicit_block implicit_blocks[MAX_IMPLICIT_BLOCKS];
  int num_implicit_blocks;
};

static struct allkeys_info info;


/***********************/
/* Error reporting     */
/***********************/

static const char *program_name = "gen-collation-table";

void
fatal (char *message)
{
  fprintf (stderr, "%s: %s\n", program_name, message);
  exit (1);
}


/***********************/
/* Reading allkeys.txt */
/***********************/

static int
parse_collation_element (const char **str,
                         struct collation_element *elem,
                         int *variable_weight)
{
  char variable_weight_indicator;
  int result;
  int read;

  const char *s = *str;
  result = sscanf (s, " [ %c"
                      "%" SCNx16
                      ".%" SCNx16
                      ".%" SCNx8 " ] %n",
                   &variable_weight_indicator,
                   &elem->primary,
                   &elem->secondary,
                   &elem->tertiary,
                   &read);
  if (result != 4)
    return 0;
  *variable_weight = (variable_weight_indicator == '*') ? 1 : 0;
  *str = s + read;
  return 1;
}

#if 0
static long
parse_version (const char *line)
{
  unsigned int major = 0, minor = 0, patch = 0;
  if (sscanf (line, "@version %u.%u.%u", &major, &minor, &patch) == 3)
    {
      /* result not used */
      return 1;
    }
  return 0;
}
#endif

static void
parse_implicitweight (const char *line)
{
  char32_t low, high;
  uint32_t primary;
  if (sscanf (line, "@implicitweights %x..%x; %x", &low, &high, &primary) == 3)
    
    {
      if (info.num_implicit_blocks == MAX_IMPLICIT_BLOCKS)
        fatal ("too many implicit blocks");

      info.implicit_blocks[info.num_implicit_blocks++]
        = (struct implicit_block) {low, high, primary};
    }
}

/* Used to skip decomposable sequences. */
int
check_codepoint_nondecomposable (char32_t codepoint)
{
  size_t length;
  char32_t *normalized;

  normalized = u32_normalize (UNINORM_NFD, &codepoint, 1, NULL, &length);
  free (normalized);

  if (length > 1)
    return 0;
  return 1;
}

/* Read allkeys.txt.  Return 0 on failure. */
static int
build_allkeys_info (const char *filename)
{
  FILE *fp = fopen (filename, "r");
  if (!fp)
    fatal ("failed to open input file");

  info.singles.alloc = 1000;
  info.singles.count = 0;
  info.singles.entries
    = malloc (info.singles.alloc * sizeof (struct single_codepoint_data));

  info.trie_root = calloc (1, sizeof (struct trie_node));

  char line[4096];
  size_t line_num = 0;

  while (fgets (line, sizeof (line), fp))
    {
      line_num++;
      const char *p = line;

      p += strspn (p, " \t");
      if (*p == '#' || *p == '\0')
        continue;

      if (*p == '@')
        {
          if (strncmp (line, "@version", strlen ("@version")) == 0)
            {
              /* not used */
              /* parse_version (line); */
            }
          else if (strncmp (line, "@implicitweights",
                            strlen ("@implicitweights")) == 0)
            {
              parse_implicitweight (line);
            }
          continue;
        }

      /* Parse codepoints */
      char32_t codepoints[MAX_SEQUENCE_LENGTH];
      size_t num_codepoints = 0;

      while (1)
        {
          int read = 0;
          if (sscanf (p, " %" SCNx32 "%n",
                     &codepoints[num_codepoints],
                     &read) != 1 || read == 0)
            break;
          p += read;
          if (codepoints[num_codepoints] > 0x10FFFF)
            fatal ("codepoint too high");
          num_codepoints++;
          if (num_codepoints >= MAX_SEQUENCE_LENGTH)
            break;
        }

      if (num_codepoints == 0)
        continue;

      if (num_codepoints == 1)
        {
          /* We could omit codepoints with canonical decompositions
             from the lookup table, which would save space.  However, this
             would mean that normalization of the input string would be
             required in more cases to get correct results.  We want to
             avoid normalization where possible as it takes significant
             time. */
          /*
          if (!check_codepoint_nondecomposable (codepoints[0]))
            continue;
          */
          if (uc_is_property_unified_ideograph (codepoints[0]))
            continue;
        }

      if (num_codepoints > info.max_sequence_length)
        info.max_sequence_length = num_codepoints;

      while (*p && *p != ';')
        p++;
      if (*p != ';')
        continue;
      p++;

      /* Parse collation elements */
      struct collation_data data = { 0 };
      while (*p && *p != '#')
        {
          if (*p == '[')
            {
              struct collation_element elem;
              int variable_weight;
              if (parse_collation_element (&p, &elem, &variable_weight))
                {
                  if (data.num_elements < MAX_COLLATION_ELEMENTS)
                    data.elements[data.num_elements++] = elem;
                  else
                    fatal
                      ("maximum collation element sequence length exceeded");
                  if (variable_weight)
                    {
                      if (elem.primary > info.max_variable_weight)
                        info.max_variable_weight = elem.primary;
                    }
                }
              else
                fatal ("parse_collation_element error");
            }
          else
            {
              p++;
            }
        }

      if (info.max_collation_elements < data.num_elements)
        info.max_collation_elements = data.num_elements;

      if (data.num_elements == 0)
        continue;

      if (num_codepoints == 1)
        {
          if (info.singles.count == info.singles.alloc)
            {
              /* Increase allocation by roughly 50%. */
              info.singles.alloc += (info.singles.alloc >> 1) + 1,
              info.singles.entries =
                realloc (info.singles.entries,
                         info.singles.alloc
                           * sizeof (struct single_codepoint_data));
            }

          info.singles.entries[info.singles.count].codepoint = codepoints[0];
          info.singles.entries[info.singles.count].data = data;
          info.singles.count++;
          info.num_records++;
        }
      else
        {
          /* Insert into trie. */
          struct trie_node *node = info.trie_root;
          for (size_t i = 0; i < num_codepoints; i++)
            {
              struct trie_node *child = NULL;
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
                  child = calloc (1, sizeof (struct trie_node));
                  child->codepoint = codepoints[i];
                  node->children =
                    realloc (node->children,
                             (node->num_children + 1)
                               * sizeof (struct trie_node *));
                  node->children[node->num_children++] = child;
                }
              node = child;
            }
          node->data = data;
          info.num_records++;
        }
    }

  fclose (fp);

  return 1;
}

/***********************/
/*     Output          */
/***********************/

/*---------------------*/
/*   Collation units   */
/*---------------------*/

/* Convert collation units into to the form they will be written as. */
static void
expand_collation_sequence (struct collation_data *data)
{
  if (!data)
    return;
  struct collation_data new;
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
             collation_data_lookup.c:get_implicit_weight. */
          primary_write = 0xFE00;
          primary_extension = primary - 0xFE00 + 1;
          /* If these numbers are too small, they look like variable weights. */
          primary_extension += 0x8000;
        }

      uint16_t secondary = data->elements[i].secondary;
      uint8_t secondary_write;

      /* Fit secondary weight in a single byte for 254 possible
         secondary weights (0x0000 and 0x0020 - 0x011C) */

      if (secondary == 0x00)
        secondary_write = secondary;
      else if (secondary <= 0x011C)
        {
          /* same in collation_data_lookup.c:get_implicit_weight */
          secondary_write = secondary - 0x1f;
        }
      else if (secondary <= 0x0127)
        {
          /* For larger weights, output an extra collation element. */
          secondary_write = 0xFE;
          secondary_extension = secondary - 0x0100;
        }
      else
        {
          fprintf (stderr, "secondary weight too big: %4x\n", secondary);
          exit (1);
        }

      uint8_t tertiary_write = data->elements[i].tertiary;

      new.elements[new.num_elements++]
        = (struct collation_element) { primary_write, secondary_write, tertiary_write };

      if (new.num_elements == MAX_COLLATION_ELEMENTS)
        fatal ("too many collation units in record");

      if (primary_extension || secondary_extension)
        {
          new.elements[new.num_elements++]
            = (struct collation_element) { primary_extension, secondary_extension, 0 };

          if (new.num_elements == MAX_COLLATION_ELEMENTS)
            fatal ("too many collation units in record");

          primary_extension = 0;
          secondary_extension = 0;
        }

    }

  *data = new;
}

typedef struct collation_data * PendingCollationData;

/* The data to write later. */
static PendingCollationData *collation_records;
static uint32_t collation_records_count;

/* Running count of number of collation units to be output, used
   for index into collation unit data array. */
static long collation_units_written;

/*---------------------*/
/*   Trie              */
/*---------------------*/

/* Function for qsort.  Return negative if the first argument is "less"
   than the second, zero if they are "equal", and positive if the first
   argument is "greater". */
static int
compare_trie_node_children (const void *a, const void *b)
{
  struct trie_node *node1 = *(struct trie_node **) a;
  struct trie_node *node2 = *(struct trie_node **) b;

  return (node1->codepoint > node2->codepoint)
       - (node1->codepoint < node2->codepoint);
}

static size_t trie_node_index;

static void
sort_trie_node_children (struct trie_node *node)
{
  qsort (node->children, node->num_children, sizeof(node->children[0]),
         compare_trie_node_children);
}

/* Used to check if there are sequences beginning with a given codepoint. */
int
codepoint_initial_in_trie (struct trie_node *root, char32_t codepoint)
{
  struct trie_node dummy, *pdummy;
  memset (&dummy, 0, sizeof (dummy));
  dummy.codepoint = codepoint;
  pdummy = &dummy;

  struct trie_node *found = bsearch (&pdummy,
                                     root->children, root->num_children,
                                     sizeof(root->children[0]),
                                     compare_trie_node_children);
  return found ? 1 : 0;
}


/* Traverse tree rooted at NODE, assigning 'index' on each node.  Assign
   contiguous indices to children of each node.  This is neither depth-
   or breadth-first traversal:

            A
          /   \
         B     C
        /\     /\
       D  E   F  G
      /\  /\ /\  /\
     H I J K L M N O

   Our order:     A B C D E H I J K F G L M N O
   Breadth-first: A B C D E F G H I J K L M N O
   Depth-first:   A B D H I E J K C F L M G N O

   This allows storing trie as array of fixed-size structures.  We store
   the index of the first child and number of children for each node.
*/
static void
assign_trie_node_indices (struct trie_node *node)
{
  sort_trie_node_children (node);

  for (uint16_t i = 0; i < node->num_children; i++)
    node->children[i]->trie_index = trie_node_index++;

  for (uint16_t i = 0; i < node->num_children; i++)
    assign_trie_node_indices (node->children[i]);
}

/* Write contents of a trie node, but not any of its children */
static void
write_trie_node_only (FILE *fp, struct trie_node *node)
{
  uint32_t data_index = 0;
  if (node->data.num_elements > 0)
    {
      data_index = collation_units_written;
      expand_collation_sequence (&node->data);
      collation_units_written += node->data.num_elements;
      collation_records[collation_records_count] = &node->data;
      collation_records_count++;
    }

  fprintf (fp, "{ 0x%X, %d, 0x%08X, %d, %zu },\n",
           node->codepoint,
           (int) node->data.num_elements,
           data_index,
           (int) node->num_children,
           node->num_children > 0
             ? node->children[0]->trie_index
             : 0);
}

/* Write trie recursively. */
static void
write_trie_node_children (FILE *fp, struct trie_node *node)
{
  for (uint16_t i = 0; i < node->num_children; i++)
    write_trie_node_only (fp, node->children[i]);

  for (uint16_t i = 0; i < node->num_children; i++)
    write_trie_node_children (fp, node->children[i]);
}

static int
count_trie_node_collation_units (struct trie_node *node)
{
  int count = 0;

  if (node->data.num_elements > 0)
    count += node->data.num_elements;

  count += node->num_children;
  for (int i = 0; i < node->num_children; i++)
    count += count_trie_node_collation_units (node->children[i]);
  return count;
}

/*------------------------*/
/* Single codepoint table */
/*------------------------*/

/* Compare function for sorting page entries by offset */
static int
compare_codepoint_entries (const void *a, const void *b)
{
  const struct single_codepoint_data *ea, *eb;

  ea = (const struct single_codepoint_data *) a;
  eb = (const struct single_codepoint_data *) b;
  return (int64_t) ea->codepoint - (int64_t) eb->codepoint;
}

#define NUM_PLANES 17

/* level1 stores is indexed by Unicode plane (each plane containing 2**16
   possible codepoint positions). */
static int level1[NUM_PLANES];
static int n_used_planes = 0;
static int n_used_level2 = 0;

/* Each entry in level2 array represents 256 codepoints (U+XXXX??).
   Maximum Unicode codepoint is U+10FFFF. */
#define MAX_LEVEL2_SIZE 0x1100

/* Index in level3 of data about a block of 256 codepoints. */
static int level2[MAX_LEVEL2_SIZE];

/* Preprocess collation unit data for writing and
   build the LEVEL1 and LEVEL2 arrays. */
static void
process_singles (void)
{
  /* Sort single codepoint data.  Probably unnecessary but do it
     just in case. */
  qsort (info.singles.entries, info.singles.count,
         sizeof (struct single_codepoint_data), compare_codepoint_entries);

  size_t i;

  for (i = 0; i < info.singles.count; i++)
    {
      expand_collation_sequence (&info.singles.entries[i].data);
      collation_records[collation_records_count++]
        = &info.singles.entries[i].data;
    }

  for (i = 0; i < NUM_PLANES; i++)
    level1[i] = -1;

  for (i = 0; i < MAX_LEVEL2_SIZE; i++)
    level2[i] = -1;

  for (i = 0; i < info.singles.count; i++)
    {
      uint32_t codepoint = info.singles.entries[i].codepoint;
      int index1 = info.singles.entries[i].codepoint >> 16;

      if (level1[index1] == -1)
        level1[index1] = n_used_planes++;

      uint32_t index2 = (level1[index1] << 8)
                         + ((codepoint >> 8) & 0xff);

      if (level2[index2] == -1)
        level2[index2] = n_used_level2++;
    }
}

/*---------------------*/
/*   Implicit blocks   */
/*---------------------*/

/* Set 'low_base' to least value of 'low' for all blocks that
   share the same value of 'primary'. */
static void
process_implicit_blocks (void)
{
  int i;
  for (i = 0; i < info.num_implicit_blocks; i++)
    {
      info.implicit_blocks[i].low_base = info.implicit_blocks[i].low;
      int j;
      for (j = 0; j < info.num_implicit_blocks; j++)
        {
           if (info.implicit_blocks[j].primary
                 == info.implicit_blocks[i].primary)
             {
               if (info.implicit_blocks[j].low
                     < info.implicit_blocks[i].low_base)
                 {
                   info.implicit_blocks[i].low_base
                     = info.implicit_blocks[j].low;
                 }
             }
        }
    }
}


/***********************/
/*  C code generation  */
/***********************/


/* Write collation data as part of C initialiser. */
static void
write_collation_data (FILE *fp, struct collation_data *data)
{
  for (int i = 0; i < data->num_elements; i++)
    {
      struct collation_element unit = data->elements[i];
      fprintf (fp, "{ 0x%04x, 0x%02x, 0x%02x },\n",
               unit.primary, unit.secondary, unit.tertiary);
    }
}

/* Write as C source file */
static void
write_c_source (const char *output_file)
{
  FILE *fp = fopen (output_file, "w");
  if (!fp)
    fatal ("failed to open output file");

  /* prepare trie for use of codepoint_initial_in_trie */
  sort_trie_node_children (info.trie_root);

  long i;

  long n_collation_units = 0;
  for (i = 0; i < collation_records_count; i++)
    {
      n_collation_units += collation_records[i]->num_elements;
    }
  /* Trie data is not in collation_records yet. */
  n_collation_units += count_trie_node_collation_units (info.trie_root);

  fprintf (fp, "/* DO NOT EDIT:\n");
  fprintf (fp, " * Automatically generated from allkeys.txt\n");
  fprintf (fp, " */\n\n");

  fprintf (fp, "#include <stdint.h>\n\n");

  fprintf (fp, "struct block256_data {\n");
  fprintf (fp, "  uint8_t num_elements[256];\n");
  fprintf (fp, "  uint32_t data_index[256];\n");
  fprintf (fp, "};\n");
  fprintf (fp, "struct trie_node {\n");
  fprintf (fp, "  char32_t codepoint;\n");
  fprintf (fp, "  uint8_t num_elements;\n");
  fprintf (fp, "  uint32_t data_index;\n");
  fprintf (fp, "  int num_children;\n");
  fprintf (fp, "  uint32_t first_child;\n");
  fprintf (fp, "};\n");
  fprintf (fp, "struct implicit_block {\n");
  fprintf (fp, "  char32_t low;\n");
  fprintf (fp, "  char32_t high;\n");
  fprintf (fp, "  uint32_t primary;\n");
  fprintf (fp, "  char32_t low_base;\n");
  fprintf (fp, "};\n");

  fprintf (fp, "#define NUM_PLANES %d\n", NUM_PLANES);
  fprintf (fp, "#define NUM_TRIE_NODES %d\n", (int) trie_node_index);
  fprintf (fp, "#define NUM_COLLATION_UNITS %ld\n\n", n_collation_units);
  fprintf (fp, "#define NUM_IMPLICIT_BLOCKS %d\n\n", info.num_implicit_blocks);

  fprintf (fp, "#define MAX_SEQUENCE_LENGTH %d\n", info.max_sequence_length);
  fprintf (fp, "#define MAX_COLLATION_ELEMENTS %d\n\n", info.max_collation_elements);

  fprintf (fp, "static const\nstruct\n  {\n");
  fprintf (fp, "    uint16_t max_variable_weight;\n");
  fprintf (fp, "    int level1[NUM_PLANES];\n");
  fprintf (fp, "    int level2[%d << 8];\n", n_used_planes);
  fprintf (fp, "    struct block256_data level3[%d];\n", n_used_level2);
  fprintf (fp, "    struct trie_node trie_array[NUM_TRIE_NODES];\n");
  fprintf (fp, "    struct collation_unit collation_data[NUM_COLLATION_UNITS];\n");
  fprintf (fp, "    struct implicit_block implicit_blocks[NUM_IMPLICIT_BLOCKS];\n");
  fprintf (fp, "  }\n");
  fprintf (fp, "collation_data = {\n");

  fprintf (fp, "  0x%04X,\n", info.max_variable_weight);

  fprintf (fp, "  { /* .level1 */\n");

  for (i = 0; i < NUM_PLANES; i++)
    fprintf (fp, "    %d,\n", level1[i]);

  fprintf (fp, "  },\n");
  fprintf (fp, "  { /* .level2 */\n");

  /* collation_data.level2 */
  for (int j = 0; j < (n_used_planes << 8); j++)
    {
      if (level2[j] >= 0)
        fprintf (fp, "  0x%04X,%s", level2[j],
                 (j % 4) == 3 ? "\n" : "");
      else
        fprintf (fp, "      -1,%s", (j % 4) == 3 ? "\n" : "");
    }
  fprintf (fp, "  },\n");
  fprintf (fp, "  { /* .level3 */\n");

  /* collation_data.level3 */
  int first_point = 0;

  for (int i = 0; i < NUM_PLANES; i++)
    {
      if (level1[i] == -1)
        continue;

      for (int j = 0; j < 256; j++)
        {
          uint32_t index2 = (level1[i] << 8) + j;
          if (level2[index2] == -1)
            continue;

          /* Data exists for a codepoint somewhere in this block of 256.
             Output struct block256_data.  */

          int cur_page = (i << 8) + j;

          fprintf (fp, "  {\n");

          fprintf (fp, "    {\n");

          /* Output num_elements[256] */
          uint32_t point_count = first_point;
          uint32_t next_data = info.singles.entries[point_count].codepoint;
          for (int j = 0; j < 256; j++)
            {
              if (j == (next_data & 0xff) && next_data != -1)
                {
#define CHECK_SEQUENCE_BIT 0x80
                  /* We encode whether there is a sequence beginning with this
                     codepoint by setting a high bit in length data. That
                     way we only need to try to lookup a sequence if this bit
                     is set. */
                  int sequence_exists
                    = codepoint_initial_in_trie (info.trie_root, next_data);
                  int num_elements_write
                    = info.singles.entries[point_count].data.num_elements;
                  if (sequence_exists)
                     num_elements_write |= CHECK_SEQUENCE_BIT;

                  fprintf (fp, "  %3d,%s",
                           num_elements_write,
                           (j % 8) == 7 ? "\n" : "");

                  if (++point_count == info.singles.count)
                    next_data = -1;
                  else
                    {
                      next_data = info.singles.entries[point_count].codepoint;
                      if ((next_data >> 8) > cur_page)
                        next_data = -1;
                    }
                }
              else
                {
                  fprintf (fp, "    0,%s", (j % 8) == 7 ? "\n" : "");
                }
            }

          fprintf (fp, "    },\n");
          fprintf (fp, "    {\n");

          /* Output data_index[256] */
          point_count = first_point;
          next_data = info.singles.entries[point_count].codepoint;

          for (int j = 0; j < 256; j++)
            {
              if (j == (next_data & 0xff) && next_data != -1)
                {
                  fprintf (fp, "    0x%08lx,%s", collation_units_written,
                           (j % 4) == 3 ? "\n" : "");
                  collation_units_written
                    += info.singles.entries[point_count].data.num_elements;

                  if (++point_count == info.singles.count)
                    next_data = -1;
                  else
                    {
                      next_data = info.singles.entries[point_count].codepoint;
                      if ((next_data >> 8) > cur_page)
                        next_data = -1;
                    }
                }
              else
                {
                  fprintf (fp, "    0x00000000,%s",
                           (j % 4) == 3 ? "\n" : "");
                }
            }
          fprintf (fp, "    }\n");
          fprintf (fp, "  },\n");

          first_point = point_count;
          if (point_count == info.singles.count)
            break;

        }
    }

  fprintf (fp, "  },\n");
  fprintf (fp, "  { /* .trie_array */\n");

  write_trie_node_only (fp, info.trie_root);
  write_trie_node_children (fp, info.trie_root);

  fprintf (fp, "\n  },\n");
  fprintf (fp, "\n  { /* .collation_data */\n");

  for (uint32_t i = 0; i < collation_records_count; i++)
    write_collation_data (fp, collation_records[i]);

  free (collation_records);
  fprintf (fp, "  },\n");
  fprintf (fp, "\n  { /* .implicitweights */\n");
  for (int i = 0; i < info.num_implicit_blocks; i++)
    {
      struct implicit_block *block = &info.implicit_blocks[i];
      fprintf (fp, "{ 0x%04x, 0x%04x, 0x%04x, 0x%04x },\n",
               block->low, block->high, block->primary,
               block->low_base);
    }
  fprintf (fp, "  }\n");
  fprintf (fp, "};\n");

  fclose (fp);
}

/***********************/
/*  Main entry point   */
/***********************/

int
main (int argc, char *argv[])
{
  if (argc != 3)
    {
      fprintf (stderr, "Usage: %s <allkeys.txt> <output.c>\n",
               argv[0]);
      return 1;
    }

  const char *input_file = argv[1];
  const char *c_file = argv[2];

  if (!build_allkeys_info (input_file))
    return 1;

  /* keep running count of collation units which will be written to
     the collation units array so we can output indices into that array. */
  collation_units_written = 0;
  collation_records = malloc ((info.num_records + 1)
                    * sizeof (PendingCollationData));
  collation_records_count = 0;

  /* Output dummy entry at index 0. */
  collation_records[0] = malloc (sizeof (struct collation_data));
  collation_records[0]->num_elements = 1;
  collation_records[0]->elements[0] = (struct collation_element) {0, 0, 0};
  collation_records_count++;
  collation_units_written++;

  process_singles ();

  trie_node_index = 0;
  info.trie_root->trie_index = trie_node_index++;
  assign_trie_node_indices (info.trie_root);

  process_implicit_blocks ();

  write_c_source (c_file);

  return 0;
}
