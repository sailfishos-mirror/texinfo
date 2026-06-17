#include <config.h>
#include <stdint.h>
#include <stddef.h>
#include <uchar.h>

#define UNICOLL_VARIABLE_NONIGNORABLE 0x01
#define UNICOLL_VARIABLE_BLANKED 0x10
#define UNICOLL_VARIABLE_SHIFTED 0x11
/* #undef  UNICOLL_VARIABLE_SHIFT_TRIMMED */

#define UNICOLL_VARIABLE_MASK 0x11

typedef uint_fast32_t Collation_choice;

Collation_choice unicoll_default (void);
Collation_choice unicoll_set_variable (Collation_choice collation,
                                       int variable);


char *u8_make_collation_key (Collation_choice collation,
                             const uint8_t *codepoints, size_t length,
                             char *resultbuf, size_t *lengthp);
char *u32_make_collation_key (Collation_choice collation,
                              const uint32_t *codepoints, size_t length,
                              char *resultbuf, size_t *lengthp);
