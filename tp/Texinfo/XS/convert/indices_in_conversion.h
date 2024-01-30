/* indices_in_conversion.h - definitions for indices_in_conversion.c */
#ifndef INDICES_IN_CONVERSION_H
#define INDICES_IN_CONVERSION_H

#include "tree_types.h"
#include "convert_to_text.h"

typedef struct SORTABLE_INDEX_SUBENTRY {
    char *sort_string;
    char *sort_key;
    int alpha;
} SORTABLE_INDEX_SUBENTRY;

typedef struct SORTABLE_INDEX_ENTRY {
    INDEX_ENTRY *entry;
    /* in perl 'index_name' => $index_entry->{'index_name'} */
    /* in perl 'number' => $index_entry->{'entry_number'} */
    size_t subentries_number;
    /* both entry_keys and keys in perl */
    SORTABLE_INDEX_SUBENTRY *sortable_subentries;
} SORTABLE_INDEX_ENTRY;

typedef struct INDEX_SORTABLE_ENTRIES {
    MERGED_INDEX *index;
    size_t number;
    SORTABLE_INDEX_ENTRY *sortable_entries;
} INDEX_SORTABLE_ENTRIES;

typedef struct INDICES_SORTABLE_ENTRIES {
    size_t number;
    INDEX_SORTABLE_ENTRIES *indices;
} INDICES_SORTABLE_ENTRIES;

MERGED_INDEX *merge_indices (INDEX **index_names);
void destroy_merged_indices (MERGED_INDEX *merged_indices);

void destroy_indices_sorted_by_letter (
         INDEX_SORTED_BY_LETTER *indices_entries_by_letter);

ELEMENT *index_content_element (const ELEMENT *element,
                                int prefer_reference_element);

char *index_entry_element_sort_string (INDEX_ENTRY *main_entry,
                                 ELEMENT *index_entry_element,
                                 TEXT_OPTIONS *options, int in_code,
                                 int prefer_reference_element);

INDEX_SORTED_BY_LETTER *sort_indices_by_letter (
                        ERROR_MESSAGE_LIST *error_messages,
                        OPTIONS *options, MERGED_INDEX *index_entries,
                              INDEX **indices_information);
#endif
