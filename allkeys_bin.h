#ifndef ALLKEYS_BIN_H
#define ALLKEYS_BIN_H

#include <config.h>
#include <stdint.h>
#include <stdbool.h>
#include <uchar.h>

/* Define data format for binary file. */

/*
 * Binary Format Specification:
 * 
 * Header (28 bytes):
 *   char magic[8]        "UCADATA1"
 *   uint32_t version     UCA version (e.g., 170000)
 *   uint16_t max_variable_weight Maximum primary weight for Variable elements
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
 * 
 * Sequence Trie (variable size):
 *   uint32_t codepoint
 *   uint32_t data_offset  (0 if intermediate node)
 *   uint16_t num_children
 *   For each child:
 *     uint32_t child_offset
 */


/* Maximum codepoints in a sequence (observed max is 18, using 32 for safety) */
#define MAX_SEQUENCE_LENGTH 32

#define NUM_PAGES 4352

#define MAX_COLLATION_ELEMENTS 18

/* Binary file header */
typedef struct {
    char magic[8];
    uint32_t version;
    uint16_t max_variable_weight;
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
} CollationElement;






#endif /* ALLKEYS_BIN_H */
