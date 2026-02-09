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
        do_lookup (DATAFILE, &result.codepoints[i], 1);

    }
    
    /* Clean up */
    free_result(&result);
    
    return 0;
}
