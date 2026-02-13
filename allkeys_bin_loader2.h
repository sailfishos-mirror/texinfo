#include <config.h>
#include "allkeys_bin2.h"

int load_data_file(const char *filename);
void read_header(const uint8_t *data, Header *header);
int lookup_codepoint(const uint8_t *data, const Header *header,
                     uint32_t codepoint, 
                     CollationElement *elements, uint8_t *num_elements);

int lookup_sequence(const uint8_t *data, const Header *header,
                    const uint32_t *codepoints, size_t len,
                    CollationElement *elements, uint8_t *num_elements);

void print_collation(const CollationElement *elements, uint8_t num_elements);

/* FIXME: do not use global variable */
extern uint8_t *collation_data;
extern uint32_t collation_data_size;

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
