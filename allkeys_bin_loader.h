#include "allkeys_bin.h"

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
