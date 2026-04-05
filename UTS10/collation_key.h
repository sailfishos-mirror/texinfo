#include <config.h>
#include <stdint.h>
#include <stddef.h>
#include <uchar.h>

enum {
  UNICOLL_VARIABLE_NONIGNORABLE,
  UNICOLL_VARIABLE_BLANKED,
  UNICOLL_VARIABLE_SHIFTED,
  UNICOLL_VARIABLE_SHIFT_TRIMMED
};

char *u8_make_collation_key (const uint8_t *codepoints, size_t length,
                             int variable,
                              char *resultbuf, size_t *lengthp);
char *u32_make_collation_key (const uint32_t *codepoints, size_t length,
                             int variable,
                              char *resultbuf, size_t *lengthp);
char *u32_make_collation_key_ext (const uint32_t *codepoints, size_t length,
                                  int variable, int debug,
                                  char *resultbuf, size_t *lengthp);
