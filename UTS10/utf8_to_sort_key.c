#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <getopt.h>

#include "unistr.h"

#include "allkeys_bin_loader.h"
#include "collation_key.h"


/* UTF-8 validation and conversion result */
typedef struct
{
  char32_t *codepoints;
  size_t length;
} UTF8Result;

/* Free the result structure */
void
free_result (UTF8Result *result)
{
  if (result && result->codepoints)
    {
      free (result->codepoints);
      result->codepoints = NULL;
    }
}

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
print_collation_key (UTF8Result result)
{
  if (!load_data_file ())
    return 0;

  CollationKey sort_key =
    get_collation_key (result.codepoints, result.length);
  printf ("Sort key: ");
  for (unsigned char *p = sort_key.key; p < sort_key.key + sort_key.length;
       p += 2)
    {
      printf ("%02x%02x ", p[0], p[1]);
    }
  printf ("\n");

  free (sort_key.key);

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

  /* Validate and convert UTF-8 to codepoints */
  UTF8Result result = {0};

  result.codepoints = u8_to_u32 (utf8_string, strlen (utf8_string),
                                 result.codepoints, &result.length);

  printf ("Codepoints:\n");
  for (size_t i = 0; i < result.length; i++)
    {
      printf ("  [%zu] %u (U+%04X)", i, result.codepoints[i],
              result.codepoints[i]);

      if (result.codepoints[i] >= 32)
        {
          if (result.codepoints[i] < 128)
            printf (" '%c'",  (char) result.codepoints[i]);
        }
      printf ("\n");

    }
  /* Load collation data and print collation key. */
  print_collation_key (result);

  /* Clean up */
  free_result (&result);

  return 0;
}
