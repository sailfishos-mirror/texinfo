#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

#include "allkeys_bin.h"
#include "allkeys_bin_loader.h"

void
print_usage (const char *prog)
{
  printf ("Usage: %s <command> <binary_file> [options]\n\n", prog);
  printf ("Commands:\n");
  //printf("  info                     Show database information\n");
  //printf("  dump <n>                 Dump first n entries\n");
  //printf("  sequences                Dump all multi-codepoint sequences\n");
  printf
    ("  lookup <codepoint>...    Lookup codepoint(s) (hex, e.g., 0041 or 006C 00B7)\n\n");
  printf ("Examples:\n");
  printf ("  %s lookup 0041\n", prog);
  printf ("  %s lookup 006C 00B7\n", prog);
}

int
main (int argc, char *argv[])
{
  if (argc < 3)
    {
      print_usage (argv[0]);
      return 1;
    }

  const char *command = argv[1];

  print_header_info ();

  if (strcmp (command, "lookup") == 0)
    {
      if (argc < 3)
        {
          fprintf (stderr, "Error: lookup requires at least one codepoint\n");
          return 1;
        }

      char32_t codepoints[MAX_SEQUENCE_LENGTH];
      size_t len = 0;

      for (int i = 2; i < argc && len < MAX_SEQUENCE_LENGTH; i++)
        {
          unsigned long val = strtoul (argv[i], NULL, 16);
          if (val > 0x10FFFF)
            {
              fprintf (stderr, "Error: invalid codepoint %s\n", argv[i]);
              return 1;
            }
          codepoints[len++] = (char32_t) val;
        }

      /* Lookup in binary data format */
      CollationElement elements[MAX_COLLATION_ELEMENTS];
      size_t num_elements;

      int found = 0;
      if (len == 1)
        {
          found = lookup_codepoint (codepoints[0], elements, &num_elements);
        }
      else
        {
          found = lookup_sequence (codepoints, len, elements, &num_elements);
        }

      if (found)
        {
          print_collation (stdout, elements, num_elements);
        }
      else
        {
          printf ("NOT FOUND\n");
        }
    }
  else
    {
      fprintf (stderr, "Unknown command: %s\n\n", command);
      print_usage (argv[0]);
      return 1;
    }

  return 0;
}
