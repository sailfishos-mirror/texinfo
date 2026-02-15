#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "unictype.h"
#include "uninorm.h"

#include "allkeys_bin_loader.h"

/*
 * Lookup program for binary collation data
 * Reads from binary file
 */

/* Global data pointer */
static uint8_t *collation_data = NULL;
static size_t collation_data_size = 0;

static Header header;
void read_header(const uint8_t *data, Header *header);

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

    // Validate data
    if (collation_data_size < 28) {
        fprintf(stderr, "Error: Invalid collation data\n");
        return 1;
    }
    
    if (memcmp(collation_data, "UCADATA1", 8) != 0) {
        fprintf(stderr, "Error: Invalid magic number\n");
        return 1;
    }

    read_header(collation_data, &header);
    return 1;
}

/* Helper functions to read from byte array */
static uint8_t read_u8(const uint8_t *data, size_t offset) {
    return data[offset];
}

static uint16_t read_u16(const uint8_t *data, size_t offset) {
    uint16_t val;
    memcpy(&val, data + offset, 2);
    return val;
}

static uint32_t read_u32(const uint8_t *data, size_t offset) {
    uint32_t val;
    memcpy(&val, data + offset, 4);
    return val;
}

/* Read header */
void read_header(const uint8_t *data, Header *header) {
    memcpy(header->magic, data, 8);
    header->version = read_u32(data, 8);
    header->max_variable_weight = read_u16(data, 12);
    header->num_singles = read_u32(data, 14);
    header->num_sequences = read_u32(data, 18);
    header->page_table_offset = read_u32(data, 22);
    header->trie_offset = read_u32(data, 26);
}

/* Read collation data at offset */
static int read_collation_data(const uint8_t *data, size_t offset, 
                                CollationElement *elements, size_t *num_elements) {
    *num_elements = read_u8(data, offset);
    offset++;
    
    for (int i = 0; i < *num_elements && i < MAX_COLLATION_ELEMENTS; i++) {
        elements[i].primary = read_u16(data, offset);
        offset += 2;
        elements[i].secondary = read_u16(data, offset);
        offset += 2;
        elements[i].tertiary = read_u16(data, offset);
        offset += 2;
    }
    
    return 1;
}

/* Lookup single codepoint and return data offset */
COLLATION_DATA lookup_codepoint_data(char32_t codepoint) {
    if (codepoint >= 0x110000) return 0;
    
    uint32_t page_num = codepoint >> 8;
    uint8_t page_offset = codepoint & 0xFF;
    
    // Read page table entry
    uint32_t page_data_offset = read_u32(collation_data, header.page_table_offset + page_num * 4);
    if (page_data_offset == 0) return 0; // Page not allocated
    
    // Read page count
    uint16_t count = read_u16(collation_data, page_data_offset);
    uint32_t entries_offset = page_data_offset + 2;
    
    // Binary search within page
    int left = 0;
    int right = count - 1;
    
    while (left <= right) {
        int mid = left + (right - left) / 2;
        uint32_t entry_offset = entries_offset + mid * 5; // 1 byte offset + 4 byte data_offset
        uint8_t entry_page_offset = read_u8(collation_data, entry_offset);
        
        if (entry_page_offset == page_offset) {
            // Found it!
            uint32_t data_offset = read_u32(collation_data, entry_offset + 1);
            return (COLLATION_DATA) data_offset;
        } else if (entry_page_offset < page_offset) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    return 0; // Not found
}

/* STRING points into a char32_t array.  First check for sequence entry
   at STRING, then for individual codepoint entry. */
COLLATION_DATA lookup_collation_data_at_char(char32_t * const string,
                                  size_t *n_codepoints_out) {
    uint32_t node_offset = header.trie_offset;

    char32_t *pchar;

    /* similar to lookup_sequence but number of codepoints consumed
       is not known in advance */
    size_t n_codepoints;

    for (pchar = string, n_codepoints = 0;
         (*pchar) != 0;
         pchar++, n_codepoints++)
    {
        // Read node
        uint32_t node_codepoint = read_u32(collation_data, node_offset);
        uint32_t node_data_offset = read_u32(collation_data, node_offset + 4);
        uint16_t num_children = read_u16(collation_data, node_offset + 8);
        uint32_t children_offset = node_offset + 10;

        
        // Search for matching child
        int found = 0;
        for (uint16_t j = 0; j < num_children; j++) {
            uint32_t child_offset = read_u32(collation_data, children_offset + j * 4);
            uint32_t child_codepoint = read_u32(collation_data, child_offset);
            
            if (child_codepoint == *pchar) {
                node_offset = child_offset;
                found = 1;
                
                break;
            }
        }
        if (!found)
          break;
    }

    if (n_codepoints >= 2) {
        printf ("using codepoint entry of length %zd\n", n_codepoints);
        COLLATION_DATA data_offset = read_u32(collation_data, node_offset + 4);
        if (data_offset != 0) {
            (*n_codepoints_out) = n_codepoints;
            return data_offset;
        }
    }

    COLLATION_DATA data_offset = lookup_codepoint_data (string[0]);
    if (data_offset) {
      (*n_codepoints_out) = 1;
    }
    else {
      (*n_codepoints_out) = 0;
    }
    return data_offset;
}

int lookup_codepoint(char32_t codepoint, 
                     CollationElement *elements, size_t *num_elements) {
    COLLATION_DATA data_offset = lookup_codepoint_data(codepoint);
    if (data_offset) {
        return read_collation_data(collation_data, data_offset, elements, num_elements);
    }
    return 0; // Not found
}

uint8_t element_count_of_data_offset(COLLATION_DATA offset) {
    return read_u8(collation_data, offset);
}

/* Like lookup_codepoint, but takes a data_offset handle. */
int read_collation_data_offset(COLLATION_DATA data_offset,
                     CollationElement *elements, size_t *num_elements) {
      return read_collation_data(collation_data, data_offset, elements, num_elements);
}

/* Return implicitly determined weights. */
/* TODO: we should get these from allkeys.txt using the @implicitweights
   lines (except for CJK characters which aren't in that file at all). */
void get_implicit_weight (char32_t codepoint,
                          CollationElement *elements,
                          size_t *n_elements) {
    const uc_block_t *b = uc_block (codepoint);
    uint16_t AAAA = 0, BBBB = 0;

    if (     b->start == 0x17000 /* Tangut */
          || b->start == 0x18D00 /* Tangut Supplement */)
    {
        AAAA = 0xFB00;
        BBBB = (codepoint - 0x17000) | 0x8000;
    }
    else if (b->start == 0x18800 /* Tangut Components */
          || b->start == 0x18D80 /* Tangut Components Supplement */)
    {
        AAAA = 0xFB01;
        BBBB = (codepoint - 0x18800) | 0x8000;
    }
    else if (b->start == 0x1B170 /* Nushu */)
    {
        AAAA = 0xFB02;
        BBBB = (codepoint - 0x1B170) | 0x8000;
    }
    else if (b->start == 0x18B00 /* Khitan Small Script*/)
    {
        AAAA = 0xFB03;
        BBBB = (codepoint - 0x18B00) | 0x8000;
    }
    else if (uc_is_property_unified_ideograph (codepoint)) {
        if (   b->start == 0x4E00 /* CJK Unified Ideographs */
            || b->start == 0xF900 /* CJK Compatibility Ideographs */)
        {
            AAAA = 0xFB40 + (codepoint >> 15);
        } else {
            AAAA = 0xFB80 + (codepoint >> 15);
        }
        BBBB = (codepoint & 0x7FFF) | 0x8000;
    }
    else {
        AAAA = 0xFBC0 + (codepoint >> 15);
        BBBB = (codepoint & 0x7FFF) | 0x8000;
    }

    if (AAAA && BBBB) {
      CollationElement e1 = {AAAA, 0x0020, 0x0002};
      CollationElement e2 = {BBBB, 0x0000, 0x0000};
      elements[0] = e1;
      elements[1] = e2;
      (*n_elements) = 2;
    } else {
      (*n_elements) = 0;
    }
}

/* Lookup sequence */
int lookup_sequence(const uint32_t *codepoints, size_t len,
                    CollationElement *elements, size_t *num_elements) {
    if (len == 0) return 0;
    
    uint32_t node_offset = header.trie_offset;
    
    for (size_t i = 0; i < len; i++) {
        // Read node
        uint32_t node_codepoint = read_u32(collation_data, node_offset);
        uint32_t node_data_offset = read_u32(collation_data, node_offset + 4);
        uint16_t num_children = read_u16(collation_data, node_offset + 8);
        uint32_t children_offset = node_offset + 10;
        
        // Search for matching child
        int found = 0;
        for (uint16_t j = 0; j < num_children; j++) {
            uint32_t child_offset = read_u32(collation_data, children_offset + j * 4);
            char32_t child_codepoint = read_u32(collation_data, child_offset);
            
            if (child_codepoint == codepoints[i]) {
                node_offset = child_offset;
                found = 1;
                
                // If this is the last codepoint, check for collation_data
                if (i == len - 1) {
                    uint32_t data_offset = read_u32(collation_data, node_offset + 4);
                    if (data_offset != 0) {
                        return read_collation_data(collation_data, data_offset, elements, num_elements);
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
void print_collation(const CollationElement *elements, size_t num_elements) {
    for (size_t i = 0; i < num_elements; i++) {
        if (elements[i].primary != 0x0000
            && elements[i].primary <= header.max_variable_weight) {
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
