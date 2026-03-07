#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <getopt.h>

#include "allkeys_bin_loader.h"
#include "collation_key.h"

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

  char *line1 = NULL;
  size_t line1_size = 0;

  ssize_t nread;

  CollationKey sort_key1 = {0}, sort_key2 = {0};

  long int line_count = 0;
  long int fail_count = 0;

  while (1)
    {
      nread = getline (&line1, &line1_size, file);
      if (nread == -1)
        break;
      char *semicolon;
      if ((semicolon = strchr (line1, ';')))
        *semicolon = '\0';

      printf ("read line <%s>\n", line1);
      line_count++;

#define TEST_MAX_LENGTH 16

      char32_t codepoints[TEST_MAX_LENGTH];
      size_t length = 0;

      char *pline1 = line1;
      char *pline2;

      while (length < TEST_MAX_LENGTH)
        {
          unsigned long val = strtoul (pline1, &pline2, 16);
          if (pline2 == pline1)
            break;
          pline1 = pline2;

          if (val > 0x10FFFF)
            {
              fprintf (stderr, "Error: invalid codepoint\n");
              exit (1);
            }
          fprintf (stderr, "read codepoint %lx\n", val);

          codepoints[length++] = (char32_t) val;
        }
      if (length == TEST_MAX_LENGTH)
        {
          fprintf (stderr, "Max codepoint length exceeded!\n");
          exit (1);
        }

      sort_key2 = get_collation_key (codepoints, length);
      printf ("Sort key: ");
      for (unsigned char *p = sort_key2.key; p < sort_key2.key + sort_key2.length;
           p++)
        {
          printf ("%02x", p[0]);
        }
      printf ("\n");

      /* We expect that sort_key1 <= sort_key1. */
      if (memcmp (sort_key1.key, sort_key2.key,
                 sort_key1.length < sort_key2.length ? sort_key1.length
                                                     : sort_key2.length) > 0)
        {
          fprintf (stderr, "Test fail at line %ld\n", line_count);
          fail_count++;
        }

      free (sort_key1.key);

      sort_key1 = sort_key2;

    }
  if (fail_count == 0)
    exit (0);
  else
    {
      fprintf (stderr, "Total fails: %ld out of %ld\n", fail_count, line_count);
      exit (1);
    }
}
