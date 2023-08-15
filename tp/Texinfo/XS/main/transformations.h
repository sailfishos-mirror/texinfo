/* transformations.h - declarations for transformations.c */
#ifndef TRANSFORMATIONS_H
#define TRANSFORMATIONS_H

#include "tree_types.h"

ELEMENT *fill_gaps_in_sectioning (ELEMENT *root);
ELEMENT *relate_index_entries_to_table_items_in_tree (ELEMENT *tree,
                                               INDEX **indices_information);

#endif
