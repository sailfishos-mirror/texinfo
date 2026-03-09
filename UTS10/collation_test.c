#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <getopt.h>

#include "allkeys_bin_loader.h"
#include "collation_key.h"

static void
print_collation_key (CollationKey key)
{
      for (unsigned char *p = key.key; p < key.key + key.length;
           p += 2)
        {
          printf ("%02x%02x ", p[0], p[1]);
        }
      printf ("\n");
}

static void
string_save (char **buf, size_t *buf_size, const char *string)
{
  size_t len = strlen (string);
  if (*buf_size < len)
    {
      *buf = realloc (*buf, len + 1);
      *buf_size = len + 1;
    }
    
  memmove (*buf, string, len + 1);
}

int
main (int argc, char *argv[])
{
  if (argc != 2)
    {
      fprintf (stderr, "usage: %s CollationTest_NON_IGNORABLE.txt\n",
               argv[0]);
      exit (1);
    }
  const char *filename = argv[1];
  FILE *file = fopen (filename, "r");
  if (!file)
    {
      fprintf (stderr, "could not open %s\n", filename);
      exit (1);
    }

  /* Initialise collation data structures. */
  load_data_file (NULL);

  char *line1 = NULL, *line2 = NULL;
  size_t line1_size = 0, line2_size = 0;

  ssize_t nread;

  CollationKey sort_key1 = {0}, sort_key2 = {0};

  long int line_count = 0;
  long int fail_count = 0;
  long int skip_count = 0;

  while (1)
    {
    next_line:
      nread = getline (&line2, &line2_size, file);
      if (nread == -1)
        break;
      char *semicolon;
      if ((semicolon = strchr (line2, ';')))
        *semicolon = '\0';

      printf ("read line <%s>\n", line2);
      line_count++;

#define TEST_MAX_LENGTH 16

      char32_t codepoints[TEST_MAX_LENGTH];
      size_t length = 0;

      char *pline = line2;
      char *qline;

      while (length < TEST_MAX_LENGTH)
        {
          unsigned long val = strtoul (pline, &qline, 16);
          if (qline == pline)
            break;
          pline = qline;

          if (val > 0x10FFFF)
            {
              fprintf (stderr, "Error: invalid codepoint\n");
              exit (1);
            }
          if (val >= 0xD800 && val <= 0xDFFF)
            {
              /* UTF-16 surrogate codepoint.  Skip this line. */
              printf ("skip test of surrogate codepoint\n");
              skip_count++;
              goto next_line;
            }

          /* fprintf (stderr, "read codepoint %lx\n", val); */

          codepoints[length++] = (char32_t) val;
        }
      if (length == TEST_MAX_LENGTH)
        {
          fprintf (stderr, "Max codepoint length exceeded!\n");
          exit (1);
        }

      sort_key2 = get_collation_key_ext (codepoints, length, 1);

      /* We expect that sort_key1 <= sort_key1. */
      if (memcmp (sort_key1.key, sort_key2.key,
                 sort_key1.length < sort_key2.length ? sort_key1.length
                                                     : sort_key2.length) > 0)
        {
          printf ("Test fail at line %ld\n", line_count);
          printf ("line 1: %s\n", line1);
          printf ("line 2: %s\n", line2);

          printf ("Sort key 1: ");
          print_collation_key (sort_key1);

          printf ("Sort key 2: ");
          print_collation_key (sort_key2);
          printf ("\n");

          fail_count++;
        }

      free (sort_key1.key);

      sort_key1 = sort_key2;
      string_save (&line1, &line1_size, line2);
    }
  if (fail_count == 0)
    {
      printf ("All tests passed\n");
      printf ("(Skipped %ld)\n", skip_count);

      exit (0);
    }
  else
    {
      printf ("Total fails: %ld out of %ld\n", fail_count, line_count);
      printf ("(Skipped %ld)\n", skip_count);
      exit (1);
    }
}
