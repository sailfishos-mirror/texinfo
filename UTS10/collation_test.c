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
      fprintf (stderr, "%02x%02x ", p[0], p[1]);
    }
  fprintf (stderr, "\n");
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

static int trace;

static void
print_usage (void)
{
  fprintf (stderr,
    "usage: collation_test [--trace] CollationTest_NON_IGNORABLE.txt\n");
}

#define no_nulls_in_key 1


int
main (int argc, char *argv[])
{
  struct option long_options[] = {
    {"trace", no_argument, 0, 't'},
    {"help", no_argument, 0, '?'},
    {0, 0, 0, 0}
  };

  int opt;
  while ((opt = getopt_long (argc, argv, "t", long_options, NULL)) != -1)
    {
      switch (opt)
        {
        case 't':
          trace = 1;
          break;
        case '?':
          print_usage ();
          exit (0);
        default:
          print_usage ();
          exit (1);
        }
    }

  if (optind != argc - 1)
    {
      print_usage ();
      exit (1);
    }

  const char *filename = argv[optind];
  FILE *file = fopen (filename, "r");
  if (!file)
    {
      fprintf (stderr, "could not open %s\n", filename);
      exit (1);
    }

  /* Initialise collation data structures. */
  load_data_file ();

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

      if (trace)
        fprintf (stderr, "read line <%s>\n", line2);
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
              fprintf (stderr, "Error: invalid codepoint %lx\n", val);
              exit (1);
            }
          if (val >= 0xD800 && val <= 0xDFFF)
            {
              /* UTF-16 surrogate codepoint.  Skip this line. */
              if (trace)
                printf ("skip test of surrogate codepoint\n");
              skip_count++;
              goto next_line;
            }

          codepoints[length++] = (char32_t) val;
        }
      if (length == TEST_MAX_LENGTH)
        {
          fprintf (stderr, "Max codepoint length exceeded!\n");
          exit (1);
        }

      sort_key2 = get_collation_key_ext (codepoints, length, trace);

      /* We expect that sort_key1 <= sort_key1. */
#if no_nulls_in_key
      if (sort_key1.key && sort_key2.key
          && strcmp (sort_key1.key, sort_key2.key) > 0)
#else
      if (memcmp (sort_key1.key, sort_key2.key,
                 sort_key1.length < sort_key2.length ? sort_key1.length
                                                     : sort_key2.length) > 0)
#endif
        {
          fprintf (stderr, "Test fail at line %ld\n", line_count);
          fprintf (stderr, "line 1: %s\n", line1);
          fprintf (stderr, "line 2: %s\n", line2);

          fprintf (stderr, "Sort key 1: ");
          print_collation_key (sort_key1);

          fprintf (stderr, "Sort key 2: ");
          print_collation_key (sort_key2);
          fprintf (stderr, "\n");

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
