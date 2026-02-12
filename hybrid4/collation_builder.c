#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <time.h>

/*
 * Binary Format Specification:
 * 
 * Header (28 bytes):
 *   char magic[8]        "UCADATA1"
 *   uint32_t version     UCA version (e.g., 170000)
 *   uint32_t num_singles Number of single codepoint entries
 *   uint32_t num_sequences Number of multi-codepoint sequences
 *   uint32_t page_table_offset Offset to page table
 *   uint32_t trie_offset Offset to sequence trie
 * 
 * Page Table (NUM_PAGES * 4 bytes):
 *   For each page (4352 pages):
 *     uint32_t page_offset  Offset to page data (0 if not allocated)
 * 
 * Page Data (variable size per page):
 *   uint16_t count        Number of entries in page
 *   For each entry:
 *     uint8_t offset      Offset within page (0-255)
 *     uint32_t data_offset Offset to collation data
 * 
 * Collation Data (variable size):
 *   uint8_t num_elements
 *   For each element:
 *     uint16_t primary
 *     uint16_t secondary
 *     uint16_t tertiary
 *     uint8_t variable
 * 
 * Sequence Trie (variable size):
 *   uint32_t codepoint
 *   uint32_t data_offset  (0 if intermediate node)
 *   uint16_t num_children
 *   For each child:
 *     uint32_t child_offset
 */

#define PAGE_SIZE 256
#define NUM_PAGES 4352
#define MAX_COLLATION_ELEMENTS 16
#define MAX_SEQUENCE_LENGTH 32

typedef struct {
    uint16_t primary;
    uint16_t secondary;
    uint16_t tertiary;
    uint8_t variable;
} CollationElement;

typedef struct {
    uint8_t num_elements;
    CollationElement elements[MAX_COLLATION_ELEMENTS];
} CollationData;

typedef struct {
    uint8_t offset;
    CollationData *data;
} PageEntry;

typedef struct {
    uint16_t count;
    PageEntry *entries;
} Page;

typedef struct TrieNode {
    uint32_t codepoint;
    CollationData *data;
    struct TrieNode **children;
    uint16_t num_children;
} TrieNode;

typedef struct {
    Page *pages[NUM_PAGES];
    TrieNode *trie_root;
    uint32_t num_singles;
    uint32_t num_sequences;
    uint32_t version;
} Database;

/* Dynamic byte buffer for building binary data */
typedef struct {
    uint8_t *data;
    size_t size;
    size_t capacity;
} ByteBuffer;

static ByteBuffer* buffer_create(void) {
    ByteBuffer *buf = calloc(1, sizeof(ByteBuffer));
    buf->capacity = 1024 * 1024; // Start with 1MB
    buf->data = malloc(buf->capacity);
    return buf;
}

static void buffer_ensure_space(ByteBuffer *buf, size_t needed) {
    while (buf->size + needed > buf->capacity) {
        buf->capacity *= 2;
        buf->data = realloc(buf->data, buf->capacity);
    }
}

static uint32_t buffer_write_bytes(ByteBuffer *buf, const void *data, size_t len) {
    buffer_ensure_space(buf, len);
    uint32_t offset = buf->size;
    memcpy(buf->data + buf->size, data, len);
    buf->size += len;
    return offset;
}

static uint32_t buffer_write_u8(ByteBuffer *buf, uint8_t val) {
    return buffer_write_bytes(buf, &val, 1);
}

static uint32_t buffer_write_u16(ByteBuffer *buf, uint16_t val) {
    return buffer_write_bytes(buf, &val, 2);
}

static uint32_t buffer_write_u32(ByteBuffer *buf, uint32_t val) {
    return buffer_write_bytes(buf, &val, 4);
}

static void buffer_write_u32_at(ByteBuffer *buf, uint32_t offset, uint32_t val) {
    memcpy(buf->data + offset, &val, 4);
}

/* Parser functions */
static int parse_hex(const char *str, uint32_t *value) {
    char *endptr;
    unsigned long val = strtoul(str, &endptr, 16);
    if (endptr == str || val > 0x10FFFF) return 0;
    *value = (uint32_t)val;
    return 1;
}

static int parse_collation_element(const char **str, CollationElement *elem) {
    const char *s = *str;
    while (*s && isspace(*s)) s++;
    if (*s != '[') return 0;
    s++;
    
    if (*s == '*') {
        elem->variable = 1;
        s++;
    } else if (*s == '.') {
        elem->variable = 0;
        s++;
    } else {
        return 0;
    }
    
    char hex[5] = {0};
    for (int i = 0; i < 4 && isxdigit(*s); i++, s++) hex[i] = *s;
    elem->primary = (uint16_t)strtoul(hex, NULL, 16);
    if (*s != '.') return 0;
    s++;
    
    memset(hex, 0, sizeof(hex));
    for (int i = 0; i < 4 && isxdigit(*s); i++, s++) hex[i] = *s;
    elem->secondary = (uint16_t)strtoul(hex, NULL, 16);
    if (*s != '.') return 0;
    s++;
    
    memset(hex, 0, sizeof(hex));
    for (int i = 0; i < 4 && isxdigit(*s); i++, s++) hex[i] = *s;
    elem->tertiary = (uint16_t)strtoul(hex, NULL, 16);
    if (*s != ']') return 0;
    s++;
    
    *str = s;
    return 1;
}

static uint32_t parse_version(const char *line) {
    unsigned int major = 0, minor = 0, patch = 0;
    if (sscanf(line, "@version %u.%u.%u", &major, &minor, &patch) == 3) {
        return major * 10000 + minor * 100 + patch;
    }
    return 0;
}

/* Build database from allkeys.txt */
static Database* build_database(const char *filename) {
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        perror("Failed to open input file");
        return NULL;
    }
    
    Database *db = calloc(1, sizeof(Database));
    db->trie_root = calloc(1, sizeof(TrieNode));
    
    char line[4096];
    size_t line_num = 0;
    
    printf("Parsing %s...\n", filename);
    
    while (fgets(line, sizeof(line), fp)) {
        line_num++;
        const char *p = line;
        
        while (*p && isspace(*p)) p++;
        if (*p == '#' || *p == '\0') continue;
        
        if (*p == '@') {
            if (strncmp(line, "@version", 8) == 0) {
                db->version = parse_version(line);
            }
            continue;
        }
        
        // Parse codepoints
        uint32_t codepoints[MAX_SEQUENCE_LENGTH];
        size_t num_codepoints = 0;
        
        while (*p && isxdigit(*p)) {
            char hex[7] = {0};
            int i = 0;
            while (isxdigit(*p) && i < 6) hex[i++] = *p++;
            if (!parse_hex(hex, &codepoints[num_codepoints])) break;
            num_codepoints++;
            if (num_codepoints >= MAX_SEQUENCE_LENGTH) break;
            while (*p && isspace(*p) && *p != ';') p++;
        }
        
        if (num_codepoints == 0) continue;
        
        while (*p && *p != ';') p++;
        if (*p != ';') continue;
        p++;
        
        // Parse collation elements
        CollationData *data = calloc(1, sizeof(CollationData));
        while (*p && *p != '#') {
            if (*p == '[') {
                CollationElement elem;
                if (parse_collation_element(&p, &elem)) {
                    if (data->num_elements < MAX_COLLATION_ELEMENTS) {
                        data->elements[data->num_elements++] = elem;
                    }
                }
            } else {
                p++;
            }
        }
        
        if (data->num_elements == 0) {
            free(data);
            continue;
        }
        
        // Insert into database
        if (num_codepoints == 1) {
            uint32_t page_num = codepoints[0] >> 8;
            uint8_t offset = codepoints[0] & 0xFF;
            
            if (!db->pages[page_num]) {
                db->pages[page_num] = calloc(1, sizeof(Page));
            }
            
            Page *page = db->pages[page_num];
            page->entries = realloc(page->entries, (page->count + 1) * sizeof(PageEntry));
            page->entries[page->count].offset = offset;
            page->entries[page->count].data = data;
            page->count++;
            db->num_singles++;
        } else {
            // Insert into trie
            TrieNode *node = db->trie_root;
            for (size_t i = 0; i < num_codepoints; i++) {
                TrieNode *child = NULL;
                for (uint16_t j = 0; j < node->num_children; j++) {
                    if (node->children[j]->codepoint == codepoints[i]) {
                        child = node->children[j];
                        break;
                    }
                }
                if (!child) {
                    child = calloc(1, sizeof(TrieNode));
                    child->codepoint = codepoints[i];
                    node->children = realloc(node->children, (node->num_children + 1) * sizeof(TrieNode*));
                    node->children[node->num_children++] = child;
                }
                node = child;
            }
            node->data = data;
            db->num_sequences++;
        }
        
        if (line_num % 5000 == 0) {
            printf("  Processed %zu lines...\r", line_num);
            fflush(stdout);
        }
    }
    
    fclose(fp);
    printf("\nParsing complete: %u singles, %u sequences\n", 
           db->num_singles, db->num_sequences);
    
    return db;
}

/* Write collation data and return its offset */
static uint32_t write_collation_data(ByteBuffer *buf, CollationData *data) {
    uint32_t offset = buffer_write_u8(buf, data->num_elements);
    for (int i = 0; i < data->num_elements; i++) {
        buffer_write_u16(buf, data->elements[i].primary);
        buffer_write_u16(buf, data->elements[i].secondary);
        buffer_write_u16(buf, data->elements[i].tertiary);
        buffer_write_u8(buf, data->elements[i].variable);
    }
    return offset;
}

/* Write trie recursively and return its offset */
static uint32_t write_trie_node(ByteBuffer *buf, TrieNode *node) {
    uint32_t offset = buf->size;
    
    buffer_write_u32(buf, node->codepoint);
    uint32_t data_offset = node->data ? write_collation_data(buf, node->data) : 0;
    buffer_write_u32(buf, data_offset);
    buffer_write_u16(buf, node->num_children);
    
    // Reserve space for child offsets
    uint32_t children_offset_pos = buf->size;
    for (uint16_t i = 0; i < node->num_children; i++) {
        buffer_write_u32(buf, 0); // Placeholder
    }
    
    // Write children and update offsets
    for (uint16_t i = 0; i < node->num_children; i++) {
        uint32_t child_offset = write_trie_node(buf, node->children[i]);
        buffer_write_u32_at(buf, children_offset_pos + i * 4, child_offset);
    }
    
    return offset;
}

/* Convert database to binary format */
static ByteBuffer* serialize_database(Database *db) {
    ByteBuffer *buf = buffer_create();
    
    printf("\nSerializing to binary format...\n");
    
    // Write header (we'll fill in offsets later)
    buffer_write_bytes(buf, "UCADATA1", 8);
    buffer_write_u32(buf, db->version);
    buffer_write_u32(buf, db->num_singles);
    buffer_write_u32(buf, db->num_sequences);
    uint32_t page_table_offset_pos = buf->size;
    buffer_write_u32(buf, 0); // Placeholder for page_table_offset
    uint32_t trie_offset_pos = buf->size;
    buffer_write_u32(buf, 0); // Placeholder for trie_offset
    
    // Write page table
    uint32_t page_table_offset = buf->size;
    buffer_write_u32_at(buf, page_table_offset_pos, page_table_offset);
    
    uint32_t page_offset_positions[NUM_PAGES];
    for (uint32_t i = 0; i < NUM_PAGES; i++) {
        page_offset_positions[i] = buf->size;
        buffer_write_u32(buf, 0); // Placeholder
    }
    
    // Write page data
    for (uint32_t i = 0; i < NUM_PAGES; i++) {
        if (!db->pages[i]) continue;
        
        Page *page = db->pages[i];
        uint32_t page_offset = buf->size;
        buffer_write_u32_at(buf, page_offset_positions[i], page_offset);
        
        buffer_write_u16(buf, page->count);
        
        // Write entries
        /************** This looks wrong.  Collation entries and character entries
        are all mixed together. 
        We should leave the collation data offsets null on a first pass until we
        know how much space all the page entries take up.
        Or we could intersperse the page data and the collation data, as long
        as we get correct offsets.
        ******************/
        for (uint16_t j = 0; j < page->count; j++) {
            buffer_write_u8(buf, page->entries[j].offset);
            uint32_t data_offset = write_collation_data(buf, page->entries[j].data);
            buffer_write_u32(buf, data_offset);
        }
    }
    
    // Write trie
    uint32_t trie_offset = write_trie_node(buf, db->trie_root);
    buffer_write_u32_at(buf, trie_offset_pos, trie_offset);
    
    printf("Binary size: %zu bytes (%.2f MB)\n", buf->size, buf->size / (1024.0 * 1024.0));
    
    return buf;
}

/* Write as C source file */
static void write_c_source(ByteBuffer *buf, const char *output_file) {
    FILE *fp = fopen(output_file, "w");
    if (!fp) {
        perror("Failed to open output file");
        return;
    }
    
    printf("Writing C source file: %s\n", output_file);
    
    fprintf(fp, "/*\n");
    fprintf(fp, " * Auto-generated Unicode Collation Data\n");
    fprintf(fp, " * Generated from allkeys.txt\n");
    fprintf(fp, " * Size: %zu bytes\n", buf->size);
    fprintf(fp, " */\n\n");
    
    fprintf(fp, "#include <stdint.h>\n\n");
    
    fprintf(fp, "const uint32_t collation_data_size = %zuU;\n\n", buf->size);
    
    fprintf(fp, "const uint8_t collation_data[] = {\n");
    
    for (size_t i = 0; i < buf->size; i++) {
        if (i % 16 == 0) {
            if (i > 0) fprintf(fp, "\n");
            fprintf(fp, "    ");
        }
        fprintf(fp, "0x%02X", buf->data[i]);
        if (i < buf->size - 1) fprintf(fp, ",");
        if (i % 16 != 15 && i < buf->size - 1) fprintf(fp, " ");
    }
    
    fprintf(fp, "\n};\n");
    
    fclose(fp);
    printf("Done!\n");
}

/* Write as binary file */
static void write_binary_file(ByteBuffer *buf, const char *output_file) {
    FILE *fp = fopen(output_file, "wb");
    if (!fp) {
        perror("Failed to open output file");
        return;
    }
    
    printf("Writing binary file: %s\n", output_file);
    
    fwrite(buf->data, 1, buf->size, fp);
    fclose(fp);
    
    printf("Done!\n");
}

int main(int argc, char *argv[]) {
    if (argc < 2 || argc > 4) {
        fprintf(stderr, "Usage: %s <allkeys.txt> [output.bin] [output.c]\n", argv[0]);
        return 1;
    }
    
    const char *input_file = argv[1];
    const char *binary_file = argc >= 3 ? argv[2] : "collation_data.bin";
    const char *c_file = argc >= 4 ? argv[3] : NULL;
    
    clock_t start = clock();
    
    Database *db = build_database(input_file);
    if (!db) return 1;
    
    ByteBuffer *buf = serialize_database(db);
    
    // Always write binary file
    write_binary_file(buf, binary_file);
    
    // Optionally write C source
    if (c_file) {
        write_c_source(buf, c_file);
    }
    
    clock_t end = clock();
    double elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    
    printf("\nTotal time: %.2f seconds\n", elapsed);
    printf("\nTo use this data:\n");
    printf("  gcc -o collation_lookup collation_lookup.c\n");
    printf("  ./collation_lookup %s\n", binary_file);
    
    return 0;
}
