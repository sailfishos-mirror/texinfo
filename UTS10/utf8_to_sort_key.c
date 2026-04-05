#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <getopt.h>

#include "collation_data_loader.h"
#include "collation_key.h"


/* Print usage information */
void
print_usage (const char *program_name)
{
  printf ("Usage: %s [OPTIONS] <utf8-string>\n", program_name);
  printf ("\nOptions:\n");
  printf ("  -h, --help     Show this help message\n");
  printf ("\nExample:\n");
  printf ("  %s \"Hello, 世界! 🌍\"\n", program_name);
}

int
print_collation_key (const char8_t *string)
{
  size_t sort_key_len;
  char *sort_key =
    u8_make_collation_key (string, strlen (string), NULL, &sort_key_len);

  printf ("Sort key: ");
  for (unsigned char *p = sort_key; p < sort_key + sort_key_len; p += 2)
    {
      printf ("%02x%02x ", p[0], p[1]);
    }
  printf ("\n");

  free (sort_key);

  return 1;
}


int
main (int argc, char *argv[])
{
  int opt;

  struct option long_options[] = {
    {"help", no_argument, 0, 'h'},
    {0, 0, 0, 0}
  };

  /* Parse command-line options */
  while ((opt = getopt_long (argc, argv, "h", long_options, NULL)) != -1)
    {
      switch (opt)
        {
        case 'h':
          print_usage (argv[0]);
          return 0;
        default:
          print_usage (argv[0]);
          return 1;
        }
    }

  /* Check for UTF-8 string argument */
  if (optind >= argc)
    {
      fprintf (stderr, "Error: No UTF-8 string provided\n\n");
      print_usage (argv[0]);
      return 1;
    }

  const char *utf8_string = argv[optind];

  /* Make and print collation key. */
  print_collation_key (utf8_string);

  return 0;
}
