#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

static uint8_t* load_file(const char *filename, size_t *size) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) return NULL;
    
    fseek(fp, 0, SEEK_END);
    *size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    
    uint8_t *data = malloc(*size);
    fread(data, 1, *size, fp);
    fclose(fp);
    return data;
}

static int lookup(uint8_t *data, uint32_t codepoint) {
    uint32_t page_table_offset;
    memcpy(&page_table_offset, data + 20, 4);
    
    uint32_t page_num = codepoint >> 8;
    uint8_t page_offset = codepoint & 0xFF;
    
    uint32_t page_data_offset;
    memcpy(&page_data_offset, data + page_table_offset + page_num * 4, 4);
    
    if (page_data_offset == 0) {
        printf("U+%04X: Page not allocated\n", codepoint);
        return 0;
    }
    
    uint16_t count;
    memcpy(&count, data + page_data_offset, 2);
    
    // Binary search
    int left = 0, right = count - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        uint32_t entry_pos = page_data_offset + 2 + mid * 5;
        
        uint8_t entry_offset;
        memcpy(&entry_offset, data + entry_pos, 1);
        
        if (entry_offset == page_offset) {
            uint32_t data_offset;
            memcpy(&data_offset, data + entry_pos + 1, 4);
            
            uint8_t num_elements;
            memcpy(&num_elements, data + data_offset, 1);
            
            printf("U+%04X: ", codepoint);
            for (int i = 0; i < num_elements; i++) {
                uint16_t p, s, t;
                uint8_t v;
                uint32_t off = data_offset + 1 + i * 7;
                memcpy(&p, data + off, 2);
                memcpy(&s, data + off + 2, 2);
                memcpy(&t, data + off + 4, 2);
                memcpy(&v, data + off + 6, 1);
                printf("[%c%04X.%04X.%04X]", v ? '*' : '.', p, s, t);
            }
            printf("\n");
            return 1;
        } else if (entry_offset < page_offset) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    printf("U+%04X: NOT FOUND\n", codepoint);
    return 0;
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <collation_data.bin>\n", argv[0]);
        return 1;
    }
    
    size_t size;
    uint8_t *data = load_file(argv[1], &size);
    if (!data) {
        perror("load_file");
        return 1;
    }
    
    printf("Testing binary search lookups:\n");
    
    // Test various codepoints
    lookup(data, 0x0000);  // NULL
    lookup(data, 0x0020);  // SPACE (variable weighting)
    lookup(data, 0x0041);  // A
    lookup(data, 0x0061);  // a
    lookup(data, 0x00E9);  // é
    lookup(data, 0x00FF);  // ÿ
    lookup(data, 0x0100);  // Different page
    
    free(data);
    return 0;
}
