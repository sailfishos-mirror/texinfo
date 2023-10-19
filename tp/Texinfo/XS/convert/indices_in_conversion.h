/* indices_in_conversion.h - definitions for indices_in_conversion.c */
#ifndef INDICES_IN_CONVERSION_H
#define INDICES_IN_CONVERSION_H

#include "tree_types.h"
#include "utils.h"

typedef struct LETTER_SORTABLE_ENTRIES {
    char *letter;
    int alpha;
    size_t number;
    size_t space;
    SORTABLE_ENTRY **sortable_entries;
} LETTER_SORTABLE_ENTRIES;

typedef struct LETTER_SORTABLE_ENTRIES_LIST {
    size_t number;
    size_t space;
    LETTER_SORTABLE_ENTRIES *list;
} LETTER_SORTABLE_ENTRIES_LIST;

MERGED_INDEX **merge_indices (INDEX **index_names);

ELEMENT *index_content_element (ELEMENT *element,
                                int prefer_reference_element);

INDEX_SORTED_BY_LETTER **sort_indices_by_letter (CONVERTER *converter,
                                   INDEX_SORTABLE_ENTRIES **sortable_entries);


#endif
