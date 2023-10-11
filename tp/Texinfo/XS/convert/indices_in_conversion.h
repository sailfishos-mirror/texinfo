/* indices_in_conversion.h - definitions for indices_in_conversion.c */
#ifndef INDICES_IN_CONVERSION_H
#define INDICES_IN_CONVERSION_H

#include "tree_types.h"

typedef struct MERGED_INDEX {
  char *name;
  INDEX_ENTRY *index_entries;
  size_t index_number;
} MERGED_INDEX;   
                    

MERGED_INDEX **merge_indices (INDEX **index_names);

#endif
