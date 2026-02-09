#ifndef ALLKEYS_BIN_H
#define ALLKEYS_BIN_H

#include <stdint.h>
#include <stdbool.h>

/* Define data format for binary file. */

/* Maximum codepoints in a sequence (observed max is 18, using 32 for safety) */
#define MAX_SEQUENCE_LENGTH 32

/* Maximum collation elements per entry (observed max is ~10, using 16 for safety) */
#define MAX_COLLATION_ELEMENTS 16



/* Collation element - represents [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX]. */
typedef struct {
    uint16_t primary;
    uint16_t secondary;
    uint8_t tertiary;
    bool variable_weight_p;
} CollationElement;

/* Entry in the collation table */
typedef struct {
    uint8_t num_codepoints;      /* Number of codepoints in the sequence (1 for single) */
    uint8_t num_elements;        /* Number of collation elements */
    uint32_t codepoints[MAX_SEQUENCE_LENGTH];
    CollationElement elements[MAX_COLLATION_ELEMENTS];
} CollationEntry;

/* Binary file header */
typedef struct {
    char magic[8];               /* "UCABIN01" */
    uint32_t version;            /* UCA version (e.g., 170000 for 17.0.0) */
    uint32_t num_entries;        /* Total number of entries */
    uint32_t num_singles;        /* Number of single codepoint entries */
    uint32_t num_sequences;      /* Number of multi-codepoint sequences */
} BinaryHeader;

#endif /* ALLKEYS_BIN_H */
