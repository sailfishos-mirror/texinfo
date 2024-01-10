/* indices_in_conversion.h - definitions for indices_in_conversion.c */
#ifndef INDICES_IN_CONVERSION_H
#define INDICES_IN_CONVERSION_H

#include "tree_types.h"
#include "convert_to_text.h"

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
#endif
