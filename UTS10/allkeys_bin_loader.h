#include <config.h>
#include <uchar.h>
#include "allkeys_bin.h"

typedef uint32_t COLLATION_DATA;

int load_data_file (const char *filename);
int lookup_codepoint (char32_t codepoint,
		      CollationElement *elements, size_t *num_elements);

COLLATION_DATA lookup_codepoint_data (char32_t codepoint);

COLLATION_DATA lookup_collation_data_at_char (char32_t * const string,
					      size_t *n_codepoints_out);

int lookup_sequence (const char32_t * codepoints, size_t len,
		     CollationElement *elements, size_t *num_elements);

uint8_t element_count_of_data_offset (COLLATION_DATA offset);

int read_collation_data_offset (COLLATION_DATA data_offset,
				CollationElement *elements,
				size_t *num_elements);

void get_implicit_weight (uint32_t codepoint, CollationElement *elements,
			  size_t *n_elements);

void print_collation (const CollationElement *elements, size_t num_elements);

void print_header_info (void);
