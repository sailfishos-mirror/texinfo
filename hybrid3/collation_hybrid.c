#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

/*
 * Hybrid Page Table + Trie for Unicode Collation Algorithm
 * 
 * Architecture:
 * - Level 1: Page table (256 codepoints per page)
 * - Level 2: Sparse pages (only allocated if needed)
 * - Level 3: Collation data pool
 * - Separate: Trie for multi-codepoint sequences
 */

#define PAGE_SIZE 256
#define NUM_PAGES 4352  /* 0x110000 / PAGE_SIZE */
#define MAX_COLLATION_ELEMENTS 16

/* Collation element: [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX] for variable weighting */
typedef struct {
    uint16_t primary;
    uint16_t secondary;
    uint16_t tertiary;
    uint8_t variable;  /* 1 if this is a variable weighting element (UTS #10) */
} CollationElement;

/* Collation data for a single codepoint or sequence */
typedef struct {
    uint8_t num_elements;
    CollationElement elements[MAX_COLLATION_ELEMENTS];
} CollationData;

/* Entry in a sparse page */
typedef struct {
    uint8_t offset;        /* Offset within page (0-255) */
    CollationData *data;   /* Pointer to collation data */
} SparsePageEntry;

/* Sparse page structure */
typedef struct {
    uint16_t count;                   /* Number of entries in this page (0-256) */
    SparsePageEntry *entries;         /* Sorted array of entries */
} SparsePage;

/* Page table entry */
typedef struct {
    SparsePage *page;   /* NULL if page not allocated */
} PageTableEntry;

/* Trie node for multi-codepoint sequences */
typedef struct TrieNode {
    uint32_t codepoint;           /* Codepoint at this level */
    CollationData *data;          /* NULL if intermediate node */
    struct TrieNode **children;   /* Array of child pointers */
    uint16_t num_children;        /* Number of children */
    uint16_t capacity;            /* Allocated capacity for children */
} TrieNode;

/* Main collation database structure */
typedef struct {
    PageTableEntry page_table[NUM_PAGES];
    TrieNode *sequence_trie;
    uint32_t num_singles;
    uint32_t num_sequences;
} CollationDB;

/* Binary file header */
typedef struct {
    char magic[8];           /* "UCAHYBR1" */
    uint32_t version;        /* UCA version */
    uint32_t num_singles;    /* Number of single codepoint entries */
    uint32_t num_sequences;  /* Number of multi-codepoint sequences */
} BinaryHeader;

/*
 * Create an empty collation database
 */
CollationDB* collation_db_create(void)
{
    CollationDB *db = calloc(1, sizeof(CollationDB));
    if (!db) return NULL;
    
    db->sequence_trie = calloc(1, sizeof(TrieNode));
    if (!db->sequence_trie) {
        free(db);
        return NULL;
    }
    
    return db;
}

/*
 * Binary search within a sparse page
 */
static CollationData* sparse_page_lookup(SparsePage *page, uint8_t offset)
{
    if (!page || page->count == 0) {
        return NULL;
    }
    
    /* Binary search */
    int left = 0;
    int right = page->count - 1;
    
    while (left <= right) {
        int mid = left + (right - left) / 2;
        
        if (page->entries[mid].offset == offset) {
            return page->entries[mid].data;
        } else if (page->entries[mid].offset < offset) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    return NULL;
}

/*
 * Insert into sparse page
 * Returns: 2 if new entry inserted, 1 if duplicate updated, 0 on failure
 */
static int sparse_page_insert(SparsePage *page, uint8_t offset, CollationData *data)
{
    /* Find insertion point */
    int pos = 0;
    while (pos < page->count && page->entries[pos].offset < offset) {
        pos++;
    }
    
    /* Check if already exists - this is a duplicate, replace it */
    if (pos < page->count && page->entries[pos].offset == offset) {
        /* Replace data (note: this leaks the old data, but duplicates should be rare) */
        page->entries[pos].data = data;
        return 1;  /* Duplicate updated */
    }
    
    /* Reallocate if needed */
    SparsePageEntry *new_entries = realloc(page->entries, 
                                           (page->count + 1) * sizeof(SparsePageEntry));
    if (!new_entries) {
        return 0;
    }
    page->entries = new_entries;
    
    /* Shift entries to make room */
    memmove(&page->entries[pos + 1], &page->entries[pos], 
            (page->count - pos) * sizeof(SparsePageEntry));
    
    /* Insert new entry */
    page->entries[pos].offset = offset;
    page->entries[pos].data = data;
    page->count++;
    
    return 2;  /* New entry inserted */
}

/*
 * Lookup a single codepoint
 */
CollationData* collation_lookup_codepoint(CollationDB *db, uint32_t codepoint)
{
    if (!db || codepoint >= 0x110000) {
        return NULL;
    }
    
    uint32_t page_num = codepoint >> 8;
    uint8_t offset = codepoint & 0xFF;
    
    PageTableEntry *pte = &db->page_table[page_num];
    if (!pte->page) {
        return NULL;
    }
    
    return sparse_page_lookup(pte->page, offset);
}

/*
 * Insert a single codepoint into the database
 */
int collation_insert_codepoint(CollationDB *db, uint32_t codepoint, CollationData *data)
{
    if (!db || codepoint >= 0x110000) {
        return 0;
    }
    
    uint32_t page_num = codepoint >> 8;
    uint8_t offset = codepoint & 0xFF;
    
    PageTableEntry *pte = &db->page_table[page_num];
    
    /* Allocate page if needed */
    if (!pte->page) {
        pte->page = calloc(1, sizeof(SparsePage));
        if (!pte->page) {
            return 0;
        }
    }
    
    int result = sparse_page_insert(pte->page, offset, data);
    if (result == 2) {
        /* New entry inserted */
        db->num_singles++;
        return 1;
    } else if (result == 1) {
        /* Duplicate updated */
        return 1;
    }
    
    /* Failed */
    return 0;
}

/*
 * Trie operations for sequences
 */

/* Find or create a child node */
static TrieNode* trie_find_or_create_child(TrieNode *node, uint32_t codepoint)
{
    /* Linear search through children */
    for (uint16_t i = 0; i < node->num_children; i++) {
        if (node->children[i]->codepoint == codepoint) {
            return node->children[i];
        }
    }
    
    /* Not found, create new child */
    if (node->num_children >= node->capacity) {
        uint16_t new_capacity = node->capacity == 0 ? 4 : node->capacity * 2;
        TrieNode **new_children = realloc(node->children, 
                                          new_capacity * sizeof(TrieNode*));
        if (!new_children) {
            return NULL;
        }
        node->children = new_children;
        node->capacity = new_capacity;
    }
    
    TrieNode *child = calloc(1, sizeof(TrieNode));
    if (!child) {
        return NULL;
    }
    
    child->codepoint = codepoint;
    node->children[node->num_children++] = child;
    
    return child;
}

/*
 * Insert a sequence into the trie
 */
int collation_insert_sequence(CollationDB *db, uint32_t *codepoints, size_t len, 
                               CollationData *data)
{
    if (!db || !codepoints || len == 0) {
        return 0;
    }
    
    TrieNode *node = db->sequence_trie;
    
    /* Traverse/create path through trie */
    for (size_t i = 0; i < len; i++) {
        node = trie_find_or_create_child(node, codepoints[i]);
        if (!node) {
            return 0;
        }
    }
    
    /* Attach data to final node */
    node->data = data;
    db->num_sequences++;
    
    return 1;
}

/*
 * Lookup a sequence in the trie
 */
CollationData* collation_lookup_sequence(CollationDB *db, uint32_t *codepoints, size_t len)
{
    if (!db || !codepoints || len == 0) {
        return NULL;
    }
    
    TrieNode *node = db->sequence_trie;
    
    /* Traverse trie */
    for (size_t i = 0; i < len; i++) {
        int found = 0;
        for (uint16_t j = 0; j < node->num_children; j++) {
            if (node->children[j]->codepoint == codepoints[i]) {
                node = node->children[j];
                found = 1;
                break;
            }
        }
        
        if (!found) {
            return NULL;
        }
    }
    
    return node->data;
}

/*
 * Free trie recursively
 */
static void trie_free(TrieNode *node)
{
    if (!node) return;
    
    for (uint16_t i = 0; i < node->num_children; i++) {
        trie_free(node->children[i]);
    }
    
    free(node->children);
    free(node);
}

/*
 * Free the entire database
 */
void collation_db_free(CollationDB *db)
{
    if (!db) return;
    
    /* Free page table */
    for (uint32_t i = 0; i < NUM_PAGES; i++) {
        if (db->page_table[i].page) {
            SparsePage *page = db->page_table[i].page;
            
            /* Free collation data */
            for (uint16_t j = 0; j < page->count; j++) {
                free(page->entries[j].data);
            }
            
            free(page->entries);
            free(page);
        }
    }
    
    /* Free trie */
    trie_free(db->sequence_trie);
    
    free(db);
}

/*
 * Print collation data
 */
void print_collation_data(CollationData *data)
{
    if (!data) {
        printf("(null)\n");
        return;
    }
    
    for (int i = 0; i < data->num_elements; i++) {
        if (data->elements[i].variable) {
            printf("[*%04X.%04X.%04X]",
                   data->elements[i].primary,
                   data->elements[i].secondary,
                   data->elements[i].tertiary);
        } else {
            printf("[.%04X.%04X.%04X]",
                   data->elements[i].primary,
                   data->elements[i].secondary,
                   data->elements[i].tertiary);
        }
    }
    printf("\n");
}

/*
 * Print database statistics
 */
void collation_db_print_stats(CollationDB *db)
{
    if (!db) return;
    
    printf("Collation Database Statistics:\n");
    printf("  Single codepoints: %u\n", db->num_singles);
    printf("  Sequences:         %u\n", db->num_sequences);
    
    /* Count allocated pages */
    uint32_t allocated_pages = 0;
    uint32_t total_entries = 0;
    
    for (uint32_t i = 0; i < NUM_PAGES; i++) {
        if (db->page_table[i].page) {
            allocated_pages++;
            total_entries += db->page_table[i].page->count;
        }
    }
    
    printf("  Allocated pages:   %u / %u\n", allocated_pages, NUM_PAGES);
    printf("  Total entries:     %u\n", total_entries);
    
    /* Estimate memory usage */
    size_t page_table_size = sizeof(PageTableEntry) * NUM_PAGES;
    size_t pages_size = allocated_pages * sizeof(SparsePage);
    size_t entries_size = total_entries * sizeof(SparsePageEntry);
    size_t data_size = total_entries * sizeof(CollationData);
    
    printf("\nMemory Usage Estimate:\n");
    printf("  Page table:        %zu bytes\n", page_table_size);
    printf("  Sparse pages:      %zu bytes\n", pages_size);
    printf("  Page entries:      %zu bytes\n", entries_size);
    printf("  Collation data:    %zu bytes\n", data_size);
    printf("  Total:             %zu bytes (%.2f MB)\n",
           page_table_size + pages_size + entries_size + data_size,
           (page_table_size + pages_size + entries_size + data_size) / (1024.0 * 1024.0));
}
