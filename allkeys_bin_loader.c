#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

/* Load binary database */
CollationEntry* load_database(const char *filename, BinaryHeader *header) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) {
        perror("Failed to open binary file");
        return NULL;
    }
    
    /* Read header */
    if (fread(header, sizeof(BinaryHeader), 1, fp) != 1) {
        perror("Failed to read header");
        fclose(fp);
        return NULL;
    }
    
    /* Verify magic */
    if (memcmp(header->magic, "UCABIN01", 8) != 0) {
        fprintf(stderr, "Invalid binary file format\n");
        fclose(fp);
        return NULL;
    }
    
    /* Allocate entries */
    CollationEntry *entries = calloc(header->num_entries, sizeof(CollationEntry));
    if (!entries) {
        perror("Memory allocation failed");
        fclose(fp);
        return NULL;
    }
    
    /* Read entries */
    if (fread(entries, sizeof(CollationEntry), header->num_entries, fp) != header->num_entries) {
        perror("Failed to read entries");
        free(entries);
        fclose(fp);
        return NULL;
    }
    
    fclose(fp);
    return entries;
}

/* Lookup a single codepoint */
CollationEntry* lookup_codepoint(CollationEntry *entries, uint32_t num_entries, uint32_t codepoint) {
    for (uint32_t i = 0; i < num_entries; i++) {
        if (entries[i].num_codepoints == 1 && entries[i].codepoints[0] == codepoint) {
            return &entries[i];
        }
    }
    return NULL;
}

/* Lookup a sequence of codepoints */
CollationEntry* lookup_sequence(CollationEntry *entries, uint32_t num_entries, 
                                uint32_t *codepoints, size_t len) {
    for (uint32_t i = 0; i < num_entries; i++) {
        if (entries[i].num_codepoints == len) {
            int match = 1;
            for (size_t j = 0; j < len; j++) {
                if (entries[i].codepoints[j] != codepoints[j]) {
                    match = 0;
                    break;
                }
            }
            if (match) {
                return &entries[i];
            }
        }
    }
    return NULL;
}

/* Print collation entry */
void print_entry(CollationEntry *entry) {
    printf("Codepoints: ");
    for (int i = 0; i < entry->num_codepoints; i++) {
        printf("%04X", entry->codepoints[i]);
        if (i < entry->num_codepoints - 1) printf(" ");
    }
    printf("\n");
    
    printf("Collation:  ");
    for (int i = 0; i < entry->num_elements; i++) {
        printf("[.%04X.%04X.%04X]",
               entry->elements[i].primary,
               entry->elements[i].secondary,
               entry->elements[i].tertiary);
    }
    printf("\n");
}

/* Dump database info */
void dump_info(const char *filename) {
    BinaryHeader header;
    CollationEntry *entries = load_database(filename, &header);
    
    if (!entries) {
        return;
    }
    
    printf("Binary Database Information\n");
    printf("===========================\n");
    printf("Magic:           %.8s\n", header.magic);
    printf("UCA Version:     %u.%u.%u\n", 
           header.version / 10000,
           (header.version / 100) % 100,
           header.version % 100);
    printf("Total entries:   %u\n", header.num_entries);
    printf("Single entries:  %u\n", header.num_singles);
    printf("Sequences:       %u\n", header.num_sequences);
    printf("File size:       %zu bytes (%.2f MB)\n",
           sizeof(BinaryHeader) + header.num_entries * sizeof(CollationEntry),
           (sizeof(BinaryHeader) + header.num_entries * sizeof(CollationEntry)) / (1024.0 * 1024.0));
    
    free(entries);
}

/* Dump first N entries */
void dump_entries(const char *filename, int count) {
    BinaryHeader header;
    CollationEntry *entries = load_database(filename, &header);
    
    if (!entries) {
        return;
    }
    
    int n = count < 0 ? header.num_entries : (count < header.num_entries ? count : header.num_entries);
    
    printf("\nFirst %d entries:\n", n);
    printf("=================\n\n");
    
    for (int i = 0; i < n; i++) {
        printf("[%d] ", i);
        print_entry(&entries[i]);
        printf("\n");
    }
    
    free(entries);
}

/* Dump all sequences */
void dump_sequences(const char *filename) {
    BinaryHeader header;
    CollationEntry *entries = load_database(filename, &header);
    
    if (!entries) {
        return;
    }
    
    printf("\nAll multi-codepoint sequences:\n");
    printf("==============================\n\n");
    
    int count = 0;
    for (uint32_t i = 0; i < header.num_entries; i++) {
        if (entries[i].num_codepoints > 1) {
            printf("[%d] ", count++);
            print_entry(&entries[i]);
            printf("\n");
        }
    }
    
    printf("Total sequences: %d\n", count);
    
    free(entries);
}

/* Lookup and print result */
void do_lookup(const char *filename, uint32_t *codepoints, size_t len) {
    BinaryHeader header;
    CollationEntry *entries = load_database(filename, &header);
    
    if (!entries) {
        return;
    }
    
    printf("Looking up: ");
    for (size_t i = 0; i < len; i++) {
        printf("U+%04X ", codepoints[i]);
    }
    printf("\n\n");
    
    CollationEntry *result;
    if (len == 1) {
        result = lookup_codepoint(entries, header.num_entries, codepoints[0]);
    } else {
        result = lookup_sequence(entries, header.num_entries, codepoints, len);
    }
    
    if (result) {
        printf("Found:\n");
        print_entry(result);
    } else {
        printf("Not found in database.\n");
    }
    
    free(entries);
}

