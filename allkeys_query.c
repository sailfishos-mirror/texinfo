#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

#include "allkeys_bin2.h"
#include "allkeys_bin_loader2.h"

void print_usage(const char *prog) {
    printf("Usage: %s <command> <binary_file> [options]\n\n", prog);
    printf("Commands:\n");
    //printf("  info                     Show database information\n");
    //printf("  dump <n>                 Dump first n entries\n");
    //printf("  sequences                Dump all multi-codepoint sequences\n");
    printf("  lookup <codepoint>...    Lookup codepoint(s) (hex, e.g., 0041 or 006C 00B7)\n\n");
    printf("Examples:\n");
    //printf("  %s info allkeys.bin\n", prog);
    //printf("  %s dump allkeys.bin 20\n", prog);
    //printf("  %s sequences allkeys.bin\n", prog);
    printf("  %s lookup allkeys.bin 0041\n", prog);
    printf("  %s lookup allkeys.bin 006C 00B7\n", prog);
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        print_usage(argv[0]);
        return 1;
    }
    
    const char *command = argv[1];
    const char *binary_file = argv[2];

    printf("Loading collation data from %s...\n", binary_file);
    if (!load_data_file(binary_file)) {
        fprintf(stderr, "Failed to load data file\n");
        return 1;
    }
    /* FIXME: data file summary */

#if 0
    if (strcmp(command, "info") == 0) {
        dump_info(binary_file);
    }
    else if (strcmp(command, "dump") == 0) {
        int count = argc > 3 ? atoi(argv[3]) : 10;
        dump_entries(binary_file, count);
    }
    else if (strcmp(command, "sequences") == 0) {
        dump_sequences(binary_file);
    } else
#endif
    if (strcmp(command, "lookup") == 0) {
        if (argc < 4) {
            fprintf(stderr, "Error: lookup requires at least one codepoint\n");
            return 1;
        }
        
        uint32_t codepoints[MAX_SEQUENCE_LENGTH];
        size_t len = 0;
        
        for (int i = 3; i < argc && len < MAX_SEQUENCE_LENGTH; i++) {
            unsigned long val = strtoul(argv[i], NULL, 16);
            if (val > 0x10FFFF) {
                fprintf(stderr, "Error: invalid codepoint %s\n", argv[i]);
                return 1;
            }
            codepoints[len++] = (uint32_t)val;
        }

        /* Lookup in binary data format */
        Header header;
        read_header(collation_data, &header);

        CollationElement elements[MAX_COLLATION_ELEMENTS];
        uint8_t num_elements;
   
        int found = 0;
        if (len == 1) {
            found = lookup_codepoint(collation_data, &header, codepoints[0], elements, &num_elements);
        } else {
            found = lookup_sequence(collation_data, &header, codepoints, len, elements, &num_elements);
        }
        
        if (found) {
            print_collation(elements, num_elements);
        } else {
            printf("NOT FOUND\n");
        }
    }
    else {
        fprintf(stderr, "Unknown command: %s\n\n", command);
        print_usage(argv[0]);
        return 1;
    }
    
    return 0;
}
