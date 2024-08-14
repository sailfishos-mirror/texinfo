/* html_prepare_converter.h - definitions for html_prepare_converter.c */
#ifndef HTML_PREPARE_CONVERTER_H
#define HTML_PREPARE_CONVERTER_H

#include "command_ids.h"
#include "converter_types.h"

void html_format_setup (void);

void html_converter_init_special_unit (CONVERTER *self);
void html_converter_customize (CONVERTER *self);

char ***new_directions_strings_type (int nr_string_directions,
                                     int nr_dir_str_contexts);

void html_initialize_output_state (CONVERTER *self, const char *context);

void html_prepare_conversion_units (CONVERTER *self);

#endif
