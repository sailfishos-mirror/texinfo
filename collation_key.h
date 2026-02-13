#include <config.h>
#include <stdint.h>
#include <stddef.h>

typedef struct {
  unsigned char *key;
  size_t length;
} CollationKey;

CollationKey get_collation_key(uint32_t *codepoints, size_t length);
