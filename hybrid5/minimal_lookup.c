#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <collation_data.bin>\n", argv[0]);
        return 1;
    }
    
    // Load file
    FILE *fp = fopen(argv[1], "rb");
    if (!fp) {
        perror("fopen");
        return 1;
    }
    
    fseek(fp, 0, SEEK_END);
    size_t size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    
    uint8_t *data = malloc(size);
    fread(data, 1, size, fp);
    fclose(fp);
    
    printf("Loaded %zu bytes\n", size);
    
    // Read header
    if (memcmp(data, "UCADATA1", 8) != 0) {
        fprintf(stderr, "Invalid magic\n");
        return 1;
    }
    
    uint32_t version, num_singles, num_sequences;
    uint32_t page_table_offset, trie_offset;
    
    memcpy(&version, data + 8, 4);
    memcpy(&num_singles, data + 12, 4);
    memcpy(&num_sequences, data + 16, 4);
    memcpy(&page_table_offset, data + 20, 4);
    memcpy(&trie_offset, data + 24, 4);
    
    printf("Version: %u.%u.%u\n", version/10000, (version/100)%100, version%100);
    printf("Singles: %u\n", num_singles);
    printf("Sequences: %u\n", num_sequences);
    
    // Test lookup of U+0041 ('A')
    uint32_t codepoint = 0x0041;
    uint32_t page_num = codepoint >> 8;
    uint8_t page_offset = codepoint & 0xFF;
    
    printf("\nLooking up U+%04X:\n", codepoint);
    printf("  Page: %u, Offset: %u\n", page_num, page_offset);
    
    // Read page table entry
    uint32_t page_data_offset;
    memcpy(&page_data_offset, data + page_table_offset + page_num * 4, 4);
    
    if (page_data_offset == 0) {
        printf("  Page not allocated\n");
        free(data);
        return 0;
    }
    
    printf("  Page data at offset: %u\n", page_data_offset);
    
    // Read page count
    uint16_t count;
    memcpy(&count, data + page_data_offset, 2);
    printf("  Page has %u entries\n", count);
    
    // Search for our offset
    uint32_t entries_offset = page_data_offset + 2;
    for (uint16_t i = 0; i < count; i++) {
        uint8_t entry_offset;
        uint32_t entry_data_offset;
        
        memcpy(&entry_offset, data + entries_offset + i * 5, 1);
        memcpy(&entry_data_offset, data + entries_offset + i * 5 + 1, 4);
        
        if (entry_offset == page_offset) {
            printf("  Found at entry %u, data offset: %u\n", i, entry_data_offset);
            
            // Read collation data
            uint8_t num_elements;
            memcpy(&num_elements, data + entry_data_offset, 1);
            printf("  Collation: %u elements\n", num_elements);
            
            for (int j = 0; j < num_elements; j++) {
                uint16_t primary, secondary, tertiary;
                uint8_t variable;
                uint32_t off = entry_data_offset + 1 + j * 7;
                
                memcpy(&primary, data + off, 2);
                memcpy(&secondary, data + off + 2, 2);
                memcpy(&tertiary, data + off + 4, 2);
                memcpy(&variable, data + off + 6, 1);
                
                printf("    [%c%04X.%04X.%04X]\n", 
                       variable ? '*' : '.', primary, secondary, tertiary);
            }
            
            free(data);
            return 0;
        }
    }
    
    printf("  Not found\n");
    free(data);
    return 0;
}
