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

void lookup_collation_data_at_char (char32_t *const string,
                              size_t length,
                              size_t *n_codepoints_out,
                              const struct collation_unit **collation_units,
                              size_t *n_collation_units,
                              int disable_sequences);

void get_implicit_weight (uint32_t codepoint, struct collation_unit *elements,
                          size_t *n_elements);

void print_collation_unit (FILE *stream, const struct collation_unit *elements,
                           size_t num_elements);
