#ifndef ALLKEYS_BIN_H
#define ALLKEYS_BIN_H

#include <config.h>
#include <stdint.h>
#include <stdbool.h>

/* Define data format for binary file. */

/* Maximum codepoints in a sequence (observed max is 18, using 32 for safety) */
#define MAX_SEQUENCE_LENGTH 32

#define NUM_PAGES 4352

/* Maximum collation elements per entry (observed max is ~10, using 16 for safety) */
#define MAX_COLLATION_ELEMENTS 16

/* Binary file header */
typedef struct {
    char magic[8];
    uint32_t version;
    uint32_t num_singles;
    uint32_t num_sequences;
    uint32_t page_table_offset;
    uint32_t trie_offset;
} Header;

/* Collation element - represents [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX]. */
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





#endif /* ALLKEYS_BIN_H */
