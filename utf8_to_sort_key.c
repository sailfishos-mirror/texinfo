#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <getopt.h>

#include "allkeys_bin_loader.h"


/* UTF-8 validation and conversion result */
typedef struct {
    uint32_t *codepoints;
    size_t length;
    int valid;
    const char *error_msg;
} UTF8Result;

/* Free the result structure */
void free_result(UTF8Result *result) {
    if (result && result->codepoints) {
        free(result->codepoints);
        result->codepoints = NULL;
    }
}

/* Validate and decode a single UTF-8 sequence
 * Returns the number of bytes consumed (1-4), or -1 on error
 */
int decode_utf8_char(const unsigned char *str, size_t len, uint32_t *codepoint) {
    if (len == 0) {
        return -1;
    }
    
    unsigned char byte1 = str[0];
    
    /* 1-byte sequence (0xxxxxxx) */
    if ((byte1 & 0x80) == 0x00) {
        *codepoint = byte1;
        return 1;
    }
    
    /* 2-byte sequence (110xxxxx 10xxxxxx) */
    if ((byte1 & 0xE0) == 0xC0) {
        if (len < 2) return -1;
        if ((str[1] & 0xC0) != 0x80) return -1;
        
        *codepoint = ((byte1 & 0x1F) << 6) | (str[1] & 0x3F);
        
        /* Check for overlong encoding */
        if (*codepoint < 0x80) return -1;
        
        return 2;
    }
    
    /* 3-byte sequence (1110xxxx 10xxxxxx 10xxxxxx) */
    if ((byte1 & 0xF0) == 0xE0) {
        if (len < 3) return -1;
        if ((str[1] & 0xC0) != 0x80) return -1;
        if ((str[2] & 0xC0) != 0x80) return -1;
        
        *codepoint = ((byte1 & 0x0F) << 12) | 
                     ((str[1] & 0x3F) << 6) | 
                     (str[2] & 0x3F);
        
        /* Check for overlong encoding */
        if (*codepoint < 0x800) return -1;
        
        /* Check for UTF-16 surrogates (U+D800 to U+DFFF) */
        if (*codepoint >= 0xD800 && *codepoint <= 0xDFFF) return -1;
        
        return 3;
    }
    
    /* 4-byte sequence (11110xxx 10xxxxxx 10xxxxxx 10xxxxxx) */
    if ((byte1 & 0xF8) == 0xF0) {
        if (len < 4) return -1;
        if ((str[1] & 0xC0) != 0x80) return -1;
        if ((str[2] & 0xC0) != 0x80) return -1;
        if ((str[3] & 0xC0) != 0x80) return -1;
        
        *codepoint = ((byte1 & 0x07) << 18) | 
                     ((str[1] & 0x3F) << 12) | 
                     ((str[2] & 0x3F) << 6) | 
                     (str[3] & 0x3F);
        
        /* Check for overlong encoding */
        if (*codepoint < 0x10000) return -1;
        
        /* Check for valid Unicode range (U+0000 to U+10FFFF) */
        if (*codepoint > 0x10FFFF) return -1;
        
        return 4;
    }
    
    /* Invalid UTF-8 start byte */
    return -1;
}

/* Validate UTF-8 string and convert to codepoints array */
UTF8Result utf8_to_codepoints(const char *utf8_str) {
    UTF8Result result = {NULL, 0, 0, NULL};
    
    if (!utf8_str) {
        result.error_msg = "NULL input string";
        return result;
    }
    
    size_t byte_len = strlen(utf8_str);
    const unsigned char *str = (const unsigned char *)utf8_str;
    
    /* First pass: count valid codepoints */
    size_t num_codepoints = 0;
    size_t pos = 0;
    
    while (pos < byte_len) {
        uint32_t codepoint;
        int bytes = decode_utf8_char(str + pos, byte_len - pos, &codepoint);
        
        if (bytes < 0) {
            result.error_msg = "Invalid UTF-8 sequence";
            return result;
        }
        
        num_codepoints++;
        pos += bytes;
    }
    
    /* Allocate array for codepoints */
    result.codepoints = (uint32_t *)malloc(num_codepoints * sizeof(uint32_t));
    if (!result.codepoints) {
        result.error_msg = "Memory allocation failed";
        return result;
    }
    
    /* Second pass: fill codepoints array */
    pos = 0;
    size_t idx = 0;
    
    while (pos < byte_len) {
        uint32_t codepoint;
        int bytes = decode_utf8_char(str + pos, byte_len - pos, &codepoint);
        result.codepoints[idx++] = codepoint;
        pos += bytes;
    }
    
    result.length = num_codepoints;
    result.valid = 1;
    return result;
}

/* Print usage information */
void print_usage(const char *program_name) {
    printf("Usage: %s [OPTIONS] <utf8-string>\n", program_name);
    printf("\nOptions:\n");
    printf("  -h, --help     Show this help message\n");
    printf("  -x, --hex      Display codepoints in hexadecimal format\n");
    printf("  -v, --verbose  Show detailed output\n");
    printf("\nExample:\n");
    printf("  %s \"Hello, 世界! 🌍\"\n", program_name);
}

#define DATAFILE "./allkeys.bin"

int
print_collation_key (UTF8Result result)
{
    BinaryHeader header;
    CollationEntry *entries = load_database(DATAFILE, &header);
    
    if (!entries) {
        return 0;
    }

    /* get array of collation entries */
    CollationEntry **entry_array = malloc (sizeof (*entry_array)
                                          * result.length);

    /* only look for single codepoint collation entries */
    CollationEntry *entry;

    for (size_t i = 0; i < result.length; i++) {
        entry = lookup_codepoint(entries, header.num_entries,
                                 result.codepoints[i]);
        if (entry) {
            entry_array[i] = entry;
        } else {
            entry_array[i] = 0;
            printf("Not found in database.\n");
        }
    }

    int num_elements = 0;
    for (size_t i = 0; i < result.length; i++) {
      if (entry_array[i])
        num_elements += entry_array[i]->num_elements;
    }

    unsigned char *sort_key;
    unsigned char *psort_key;
    size_t sort_key_alloc;

    /* Three levels (primary/secondary/tertiary).  Two bytes per
       collation element at first two levels, one byte at tertiary.
       "\x00\x00" between levels and one final null. */
    sort_key_alloc = num_elements * 5 + 4 + 1;

    psort_key = sort_key;

    sort_key = calloc (sort_key_alloc, 1);
    psort_key = sort_key;

    /* Primary */
    for (size_t i = 0; i < result.length; i++) {
      if (!entry_array[i])
        continue;
      for (size_t j = 0; j < entry_array[i]->num_elements; j++)
        {
          uint16_t weight = entry_array[i]->elements[j].primary;
          if (weight)
            {
              *psort_key++ = weight >> 8;   /* More significant byte.*/
              *psort_key++ = weight & 0xFF; /* Less significant byte.*/
            }
        }
    }

    *psort_key++ = '\x00';
    *psort_key++ = '\x00';

    /* Secondary */
    for (size_t i = 0; i < result.length; i++) {
      if (!entry_array[i])
        continue;
      for (size_t j = 0; j < entry_array[i]->num_elements; j++)
        {
          uint16_t weight = entry_array[i]->elements[j].secondary;
          if (weight)
            {
              *psort_key++ = weight >> 8;   /* More significant byte.*/
              *psort_key++ = weight & 0xFF; /* Less significant byte.*/
            }
        }
    }

    *psort_key++ = '\x00';
    *psort_key++ = '\x00';

    /* Tertiary */
    for (size_t i = 0; i < result.length; i++) {
      if (!entry_array[i])
        continue;
      for (size_t j = 0; j < entry_array[i]->num_elements; j++)
        {
          uint8_t weight = entry_array[i]->elements[j].tertiary;
          if (weight)
            {
              *psort_key++ = weight;
            }
        }
    }

    printf ("Sort key: ");
    for (unsigned char *p = sort_key; p < psort_key; p += 2)
      {
        printf ("%02x%02x ", p[0], p[1]);
      }
    printf ("\n");
    /* This might print trailing 00 as we only use one byte for
       tertiary weight. */
    
    free(entries);
    return 1;
}


int main(int argc, char *argv[]) {
    int opt;
    int hex_output = 0;
    int verbose = 0;
    
    struct option long_options[] = {
        {"help",    no_argument, 0, 'h'},
        {"hex",     no_argument, 0, 'x'},
        {"verbose", no_argument, 0, 'v'},
        {0, 0, 0, 0}
    };
    
    /* Parse command-line options */
    while ((opt = getopt_long(argc, argv, "hxv", long_options, NULL)) != -1) {
        switch (opt) {
            case 'h':
                print_usage(argv[0]);
                return 0;
            case 'x':
                hex_output = 1;
                break;
            case 'v':
                verbose = 1;
                break;
            default:
                print_usage(argv[0]);
                return 1;
        }
    }
    
    /* Check for UTF-8 string argument */
    if (optind >= argc) {
        fprintf(stderr, "Error: No UTF-8 string provided\n\n");
        print_usage(argv[0]);
        return 1;
    }
    
    const char *utf8_string = argv[optind];
    
    if (verbose) {
        printf("Input string: \"%s\"\n", utf8_string);
        printf("Byte length: %zu\n\n", strlen(utf8_string));
    }
    
    /* Validate and convert UTF-8 to codepoints */
    UTF8Result result = utf8_to_codepoints(utf8_string);
    
    if (!result.valid) {
        fprintf(stderr, "Error: %s\n", result.error_msg);
        free_result(&result);
        return 1;
    }
    
    /* Print results */
    if (verbose) {
        printf("✓ Valid UTF-8 string\n");
        printf("Number of codepoints: %zu\n\n", result.length);
    }
    
    printf("Codepoints:\n");
    for (size_t i = 0; i < result.length; i++) {
        if (hex_output) {
            printf("  [%zu] U+%04X", i, result.codepoints[i]);
        } else {
            printf("  [%zu] %u (U+%04X)", i, result.codepoints[i], result.codepoints[i]);
        }
        
        /* Print character representation if printable */
        if (result.codepoints[i] >= 32 && result.codepoints[i] != 127) {
            printf(" '%c'", (result.codepoints[i] < 128) ? (char)result.codepoints[i] : '?');
        }
        printf("\n");

    }

    /* Show collation data for each codepoint */
    if (1) {
        BinaryHeader header;
        CollationEntry *entries = load_database(DATAFILE, &header);
        
        if (!entries) {
            return 0;
        }

        /* only look for single codepoint collation entries */

        CollationEntry *entry;

        for (size_t i = 0; i < result.length; i++) {
            printf("Looking up: ");
            printf("U+%04X ", result.codepoints[i]);
            printf("\n");
            
            entry = lookup_codepoint(entries, header.num_entries,
                                      result.codepoints[i]);
            
            if (entry) {
                print_entry(entry);
            } else {
                printf("Not found in database.\n");
            }
        }
        free(entries);
    }

    /* Load collation data and print collation key. */
    print_collation_key (result);


    /* Clean up */
    free_result(&result);

    return 0;
}
