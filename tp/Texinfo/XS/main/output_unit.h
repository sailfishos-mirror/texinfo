/* output_unit.h - declarations for output_unit.c */
#ifndef OUTPUT_UNIT_H
#define OUTPUT_UNIT_H

#include <stddef.h>

#include "tree_types.h"

OUTPUT_UNIT_LIST *retrieve_output_units (int output_units_descriptor);
size_t new_output_units_descriptor (void);

int split_by_node (ELEMENT *root);
int split_by_section (ELEMENT *root);
int unsplit (ELEMENT *root);
void split_pages (OUTPUT_UNIT_LIST *output_units, char *split);

char *unit_or_external_element_texi (OUTPUT_UNIT *element);

#endif
