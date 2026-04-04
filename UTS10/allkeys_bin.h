#ifndef ALLKEYS_BIN_H
#define ALLKEYS_BIN_H

#include <config.h>
#include <stdint.h>
#include <stdbool.h>
#include <uchar.h>

/* Used as maximum number of codepoints in a sequence (observed max is 
   about 18 for Arabic ligatures) */
#define MAX_SEQUENCE_LENGTH 32

/* Used as maximum number of collation elements in a sequence (observed max is 
   about 18). */
#define MAX_COLLATION_ELEMENTS 32

#endif /* ALLKEYS_BIN_H */
