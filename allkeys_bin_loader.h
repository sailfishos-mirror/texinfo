#include <config.h>
#include <uchar.h>
#include "allkeys_bin.h"

typedef uint32_t CODEPOINT_DATA;

int load_data_file(const char *filename);
int lookup_codepoint(char32_t codepoint, 
                     CollationElement *elements, size_t *num_elements);

CODEPOINT_DATA lookup_codepoint_data(char32_t codepoint);

int lookup_sequence(const char32_t *codepoints, size_t len,
                    CollationElement *elements, size_t *num_elements);

uint8_t element_count_of_data_offset(CODEPOINT_DATA offset);

int read_collation_data_offset(CODEPOINT_DATA data_offset,
                     CollationElement *elements, size_t *num_elements);

void get_implicit_weight (uint32_t codepoint, CollationElement *elements,
                          size_t *n_elements);

void print_collation(const CollationElement *elements, size_t num_elements);

/*
CollationEntry* load_database(const char *filename, BinaryHeader *header);
void dump_info(const char *filename);
void dump_entries(const char *filename, int count);
void dump_sequences(const char *filename);
void do_lookup(const char *filename, uint32_t *codepoints, size_t len);
CollationEntry* lookup_codepoint(CollationEntry *entries,
                                 uint32_t num_entries, uint32_t codepoint);
CollationEntry* lookup_sequence(CollationEntry *entries, uint32_t num_entries, 
                                uint32_t *codepoints, size_t len);
void print_entry(CollationEntry *entry);
*/
