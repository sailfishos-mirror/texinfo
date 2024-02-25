/* output_unit.h - declarations for output_unit.c */
#ifndef OUTPUT_UNIT_H
#define OUTPUT_UNIT_H

#include <stddef.h>

#include "tree_types.h"

extern const char *relative_unit_direction_name[];

OUTPUT_UNIT_LIST *retrieve_output_units (int output_units_descriptor);
size_t new_output_units_descriptor (void);

int split_by_node (const ELEMENT *root);
int split_by_section (const ELEMENT *root);
int unsplit (const ELEMENT *root);
void split_pages (OUTPUT_UNIT_LIST *output_units, const char *split);

OUTPUT_UNIT *new_output_unit (enum output_unit_type unit_type);
void add_to_output_unit_list (OUTPUT_UNIT_LIST *list,
                              OUTPUT_UNIT *output_unit);

char *output_unit_texi (const OUTPUT_UNIT *output_unit);

void units_directions (OPTIONS *customization_information,
                       LABEL_LIST *identifiers_target,
                       OUTPUT_UNIT_LIST *output_units);
void units_file_directions (OUTPUT_UNIT_LIST *output_units);

#endif
