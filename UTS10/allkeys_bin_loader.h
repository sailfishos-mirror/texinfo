#include <config.h>
#include <uchar.h>
#include "allkeys_bin.h"

struct collation_data {
  uint32_t data_offset;
  uint8_t num_elements;
};
typedef struct collation_data COLLATION_DATA;

int load_data_file (const char *filename);
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

void print_header_info (void);
