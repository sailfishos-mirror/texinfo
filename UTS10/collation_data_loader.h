#include <config.h>
#include <stdint.h>
#include <stdio.h>
#include <uchar.h>


/* Collation element - represents [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX]. */
typedef struct
{
  uint16_t primary;
  uint16_t secondary;
  uint8_t tertiary;
} CollationElement;

struct collation_data_ref {
  uint32_t data_index;
  uint8_t num_elements;
};
typedef struct collation_data_ref COLLATION_DATA;

int lookup_codepoint (char32_t codepoint,
                      CollationElement *elements, size_t *num_elements);

COLLATION_DATA lookup_collation_data_at_char (char32_t *const string,
                                              size_t length,
                                              size_t *n_codepoints_out);

int lookup_sequence (const char32_t *codepoints, size_t len,
                     CollationElement *elements, size_t *num_elements);

int read_collation_data (COLLATION_DATA data_offset,
                         CollationElement *elements);

void get_implicit_weight (uint32_t codepoint, CollationElement *elements,
                          size_t *n_elements);

void print_collation (FILE *stream, const CollationElement *elements,
                      size_t num_elements);
