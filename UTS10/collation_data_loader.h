#include <config.h>
#include <stdint.h>
#include <stdio.h>
#include <uchar.h>


/* Collation element - represents [.XXXX.XXXX.XXXX] or [*XXXX.XXXX.XXXX]. */
struct collation_unit {
  uint16_t primary;
  uint8_t secondary;
  uint8_t tertiary;
};

int collation_element_is_variable (struct collation_unit *element);

struct collation_data_ref {
  const struct collation_unit *array;
  uint8_t num_elements;
};
typedef struct collation_data_ref COLLATION_DATA;

int lookup_codepoint (char32_t codepoint,
                      struct collation_unit *elements, size_t elements_size,
                      size_t *num_elements);

COLLATION_DATA lookup_collation_data_at_char (char32_t *const string,
                                              size_t length,
                                              size_t *n_codepoints_out);

int lookup_sequence (const char32_t *codepoints, size_t len,
                     struct collation_unit *elements, size_t elements_size,
                     size_t *num_elements);

void get_implicit_weight (uint32_t codepoint, struct collation_unit *elements,
                          size_t *n_elements);

void print_collation (FILE *stream, const struct collation_unit *elements,
                      size_t num_elements);
