/* indices_in_conversion.h - definitions for indices_in_conversion.c */
#ifndef INDICES_IN_CONVERSION_H
#define INDICES_IN_CONVERSION_H

#include "tree_types.h"
#include "indices_in_conversion.h"

MERGED_INDEX **merge_indices (INDEX **index_names);

ELEMENT *index_content_element (ELEMENT *element,
                                int prefer_reference_element);

#endif
