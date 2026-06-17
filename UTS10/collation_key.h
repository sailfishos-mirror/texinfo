#include <config.h>
#include <stdint.h>
#include <stddef.h>
#include <uchar.h>

#define UNICOLL_VARIABLE_NONIGNORABLE 0x01
#define UNICOLL_VARIABLE_BLANKED 0x2
#define UNICOLL_VARIABLE_SHIFTED 0x3
/* #undef  UNICOLL_VARIABLE_SHIFT_TRIMMED */

#define UNICOLL_VARIABLE_MASK 0x3
#define UNICOLL_NORMALIZATION_MASK 0x4
#define UNICOLL_CONTRACTIONS_MASK 0x8

typedef uint_fast32_t Collation_choice;

Collation_choice unicoll_default (void);
Collation_choice unicoll_set_variable (Collation_choice collation,
                                       int variable);
Collation_choice unicoll_set_normalization (Collation_choice collation,
                                            int normalization_on);
Collation_choice unicoll_set_contractions (Collation_choice collation,
                                            int use_contractions);


char *u8_make_collation_key (Collation_choice collation,
                             const uint8_t *codepoints, size_t length,
                             char *resultbuf, size_t *lengthp);
char *u32_make_collation_key (Collation_choice collation,
                              const uint32_t *codepoints, size_t length,
                              char *resultbuf, size_t *lengthp);
