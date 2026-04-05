#include <config.h>
#include <stdint.h>
#include <stddef.h>
#include <uchar.h>

char *u32_make_collation_key (uint32_t * codepoints, size_t length,
                              char *resultbuf, size_t *lengthp);
char *u32_make_collation_key_ext (uint32_t * codepoints, size_t length, int debug,
                                  char *resultbuf, size_t *lengthp);
