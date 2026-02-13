#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "allkeys_bin2.h"

/*
 * Lookup program for binary collation data
 * Reads from binary file
 */

/* Global data pointer */
uint8_t *collation_data = NULL;
uint32_t collation_data_size = 0;

/* Load binary data from file */
int load_data_file(const char *filename) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) {
        perror("Failed to open data file");
        return 0;
    }
    
    // Get file size
    fseek(fp, 0, SEEK_END);
    collation_data_size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    
    // Allocate and read
    collation_data = malloc(collation_data_size);
    if (!collation_data) {
        fclose(fp);
        return 0;
    }
    
    if (fread(collation_data, 1, collation_data_size, fp) != collation_data_size) {
        free(collation_data);
        fclose(fp);
        return 0;
    }
    
    fclose(fp);
    return 1;
}

/* Helper functions to read from byte array */
static uint8_t read_u8(const uint8_t *data, uint32_t offset) {
    return data[offset];
}

static uint16_t read_u16(const uint8_t *data, uint32_t offset) {
    uint16_t val;
    memcpy(&val, data + offset, 2);
    return val;
}

static uint32_t read_u32(const uint8_t *data, uint32_t offset) {
    uint32_t val;
    memcpy(&val, data + offset, 4);
    return val;
}

/* Read header */
void read_header(const uint8_t *data, Header *header) {
    memcpy(header->magic, data, 8);
    header->version = read_u32(data, 8);
    header->num_singles = read_u32(data, 12);
    header->num_sequences = read_u32(data, 16);
    header->page_table_offset = read_u32(data, 20);
    header->trie_offset = read_u32(data, 24);
}

/* Read collation data at offset */
static int read_collation_data(const uint8_t *data, uint32_t offset, 
                                CollationElement *elements, uint8_t *num_elements) {
    *num_elements = read_u8(data, offset);
    offset++;
    
    for (int i = 0; i < *num_elements && i < MAX_COLLATION_ELEMENTS; i++) {
        elements[i].primary = read_u16(data, offset);
        offset += 2;
        elements[i].secondary = read_u16(data, offset);
        offset += 2;
        elements[i].tertiary = read_u16(data, offset);
        offset += 2;
        elements[i].variable = read_u8(data, offset);
        offset++;
    }
    
    return 1;
}

/* Lookup single codepoint */
int lookup_codepoint(const uint8_t *data, const Header *header,
                     uint32_t codepoint, 
                     CollationElement *elements, uint8_t *num_elements) {
    if (codepoint >= 0x110000) return 0;
    
    uint32_t page_num = codepoint >> 8;
    uint8_t page_offset = codepoint & 0xFF;
    
    // Read page table entry
    uint32_t page_data_offset = read_u32(data, header->page_table_offset + page_num * 4);
    if (page_data_offset == 0) return 0; // Page not allocated
    
    // Read page count
    uint16_t count = read_u16(data, page_data_offset);
    uint32_t entries_offset = page_data_offset + 2;
    
    // Binary search within page
    int left = 0;
    int right = count - 1;
    
    while (left <= right) {
        int mid = left + (right - left) / 2;
        uint32_t entry_offset = entries_offset + mid * 5; // 1 byte offset + 4 byte data_offset
        uint8_t entry_page_offset = read_u8(data, entry_offset);
        
        if (entry_page_offset == page_offset) {
            // Found it!
            uint32_t data_offset = read_u32(data, entry_offset + 1);
            return read_collation_data(data, data_offset, elements, num_elements);
        } else if (entry_page_offset < page_offset) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    return 0; // Not found
}

/* Lookup sequence */
int lookup_sequence(const uint8_t *data, const Header *header,
                    const uint32_t *codepoints, size_t len,
                    CollationElement *elements, uint8_t *num_elements) {
    if (len == 0) return 0;
    
    uint32_t node_offset = header->trie_offset;
    
    for (size_t i = 0; i < len; i++) {
        // Read node
        uint32_t node_codepoint = read_u32(data, node_offset);
        uint32_t node_data_offset = read_u32(data, node_offset + 4);
        uint16_t num_children = read_u16(data, node_offset + 8);
        uint32_t children_offset = node_offset + 10;
        
        // Search for matching child
        int found = 0;
        for (uint16_t j = 0; j < num_children; j++) {
            uint32_t child_offset = read_u32(data, children_offset + j * 4);
            uint32_t child_codepoint = read_u32(data, child_offset);
            
            if (child_codepoint == codepoints[i]) {
                node_offset = child_offset;
                found = 1;
                
                // If this is the last codepoint, check for data
                if (i == len - 1) {
                    uint32_t data_offset = read_u32(data, node_offset + 4);
                    if (data_offset != 0) {
                        return read_collation_data(data, data_offset, elements, num_elements);
                    }
                }
                break;
            }
        }
        
        if (!found) return 0;
    }
    
    return 0; // Sequence not found
}

/* Print collation elements */
void print_collation(const CollationElement *elements, uint8_t num_elements) {
    for (int i = 0; i < num_elements; i++) {
        if (elements[i].variable) {
            printf("[*%04X.%04X.%04X]",
                   elements[i].primary,
                   elements[i].secondary,
                   elements[i].tertiary);
        } else {
            printf("[.%04X.%04X.%04X]",
                   elements[i].primary,
                   elements[i].secondary,
                   elements[i].tertiary);
        }
    }
    printf("\n");
}

#if 0
/* Test function */
static void run_tests(const uint8_t *data) {
    fprintf(stderr, "DEBUG: run_tests entry\n");
    Header header;
    fprintf(stderr, "DEBUG: About to read_header\n");
    read_header(data, &header);
    fprintf(stderr, "DEBUG: Header read OK\n");
    fprintf(stderr, "DEBUG: version=%u\n", header.version);
    fprintf(stderr, "DEBUG: num_singles=%u\n", header.num_singles);
    fprintf(stderr, "DEBUG: About to print title\n");
    
    printf("\nUnicode Collation Lookup\n");
    fprintf(stderr, "DEBUG: Printed title 1\n");
    printf("========================\n\n");
    fprintf(stderr, "DEBUG: Printed title 2\n");
    
    fprintf(stderr, "DEBUG: About to print data info\n");
    printf("Data info:\n");
    fprintf(stderr, "DEBUG: After 'Data info'\n");
    fprintf(stderr, "DEBUG: collation_data_size = %u\n", collation_data_size);
    fprintf(stderr, "DEBUG: header.version = %u\n", header.version);
    fprintf(stderr, "DEBUG: About to print version\n");
    printf("  Version: %u.%u.%u\n",
           header.version / 10000,
           (header.version / 100) % 100,
           header.version % 100);
    fprintf(stderr, "DEBUG: Printed version\n");
    printf("  Singles: %u\n", header.num_singles);
    printf("  Sequences: %u\n", header.num_sequences);
    printf("  Binary size: %u bytes (%.2f MB)\n\n",
           collation_data_size,
           collation_data_size / (1024.0 * 1024.0));
    
    printf("Testing single codepoint lookups:\n");
    
    struct {
        uint32_t cp;
        const char *name;
    } tests[] = {
        {0x0000, "NULL"},
        {0x0020, "SPACE"},
        {0x0041, "LATIN CAPITAL LETTER A"},
        {0x0061, "LATIN SMALL LETTER A"},
        {0x00E9, "LATIN SMALL LETTER E WITH ACUTE"},
        {0x4E16, "CJK UNIFIED IDEOGRAPH (世)"},
    };
    
    CollationElement elements[MAX_COLLATION_ELEMENTS];
    uint8_t num_elements;
    
    for (size_t i = 0; i < sizeof(tests) / sizeof(tests[0]); i++) {
        printf("  U+%04X (%s): ", tests[i].cp, tests[i].name);
        if (lookup_codepoint(data, &header, tests[i].cp, elements, &num_elements)) {
            print_collation(elements, num_elements);
        } else {
            printf("NOT FOUND\n");
        }
    }
    
    printf("\nTesting sequence lookup:\n");
    printf("  U+006C U+00B7 (l·): ");
    uint32_t seq[] = {0x006C, 0x00B7};
    if (lookup_sequence(data, &header, seq, 2, elements, &num_elements)) {
        print_collation(elements, num_elements);
    } else {
        printf("NOT FOUND\n");
    }
}
#endif

#if 0
/* Interactive mode */
static void interactive_mode(const uint8_t *data) {
    Header header;
    read_header(data, &header);
    
    CollationElement elements[MAX_COLLATION_ELEMENTS];
    uint8_t num_elements;
    
    printf("\nInteractive mode (enter 'quit' to exit)\n");
    printf("Commands:\n");
    printf("  <hex>           Lookup single codepoint (e.g., 0041)\n");
    printf("  <hex> <hex> ... Lookup sequence (e.g., 006C 00B7)\n");
    printf("  quit            Exit\n\n");
    
    char line[256];
    while (1) {
        printf("> ");
        fflush(stdout);
        
        if (!fgets(line, sizeof(line), stdin)) break;
        
        // Trim newline
        line[strcspn(line, "\n")] = 0;
        
        if (strcmp(line, "quit") == 0) break;
        
        // Parse codepoints
        uint32_t codepoints[32];
        size_t num_codepoints = 0;
        
        char *p = line;
        while (*p && num_codepoints < 32) {
            while (*p && (*p == ' ' || *p == '\t')) p++;
            if (!*p) break;
            
            char *end;
            unsigned long cp = strtoul(p, &end, 16);
            if (end == p || cp > 0x10FFFF) {
                printf("Invalid codepoint\n");
                num_codepoints = 0;
                break;
            }
            
            codepoints[num_codepoints++] = (uint32_t)cp;
            p = end;
        }
        
        if (num_codepoints == 0) continue;
        
        // Display what we're looking up
        for (size_t i = 0; i < num_codepoints; i++) {
            if (i > 0) printf(" ");
            printf("U+%04X", codepoints[i]);
        }
        printf(": ");
        
        // Lookup
        int found = 0;
        if (num_codepoints == 1) {
            found = lookup_codepoint(data, &header, codepoints[0], elements, &num_elements);
        } else {
            found = lookup_sequence(data, &header, codepoints, num_codepoints, elements, &num_elements);
        }
        
        if (found) {
            print_collation(elements, num_elements);
        } else {
            printf("NOT FOUND\n");
        }
    }
}
#endif

#if 0
int main(int argc, char *argv[]) {
    fprintf(stderr, "DEBUG: main() started, argc=%d\n", argc);
    
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <collation_data.bin> [-i]\n", argv[0]);
        return 1;
    }
    
    const char *data_file = argv[1];
    fprintf(stderr, "DEBUG: Loading from %s\n", data_file);
    
    printf("Loading collation data from %s...\n", data_file);
    if (!load_data_file(data_file)) {
        fprintf(stderr, "Failed to load data file\n");
        return 1;
    }
    
    fprintf(stderr, "DEBUG: Loaded successfully\n");
    printf("Loaded %u bytes\n", collation_data_size);
    
    fprintf(stderr, "DEBUG: About to validate\n");
    
    // Validate data
    if (collation_data_size < 28) {
        fprintf(stderr, "Error: Invalid collation data\n");
        return 1;
    }
    
    fprintf(stderr, "DEBUG: Size OK, checking magic\n");
    
    if (memcmp(collation_data, "UCADATA1", 8) != 0) {
        fprintf(stderr, "Error: Invalid magic number\n");
        return 1;
    }
    
    fprintf(stderr, "DEBUG: Magic OK\n");
    
    if (argc > 2 && strcmp(argv[2], "-i") == 0) {
        fprintf(stderr, "DEBUG: Starting interactive mode\n");
        interactive_mode(collation_data);
    } else {
        fprintf(stderr, "DEBUG: Starting run_tests\n");
        run_tests(collation_data);
    }
    
    free(collation_data);
    
    return 0;
}

#endif
