#ifndef ALLKEYS_BIN_H
#define ALLKEYS_BIN_H

#include <config.h>
#include <stdint.h>
#include <stdbool.h>
#include <uchar.h>

/* Maximum codepoints in a sequence (observed max is 18, using 32 for safety) */
#define MAX_SEQUENCE_LENGTH 32

#define NUM_PAGES 4352

#define MAX_COLLATION_ELEMENTS 18

/* Collation element - represents [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX]. */
typedef struct
{
  uint16_t primary;
  uint16_t secondary;
  uint8_t tertiary;
} CollationElement;






#endif /* ALLKEYS_BIN_H */
