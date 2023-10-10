/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "utils.h"

void html_initialize_output_state (CONVERTER *self);

void html_prepare_conversion_units (CONVERTER *self,
                                    int *output_units_descriptor_ref,
                                    int *special_units_descriptor_ref,
                                    int *associated_special_units_descriptor_ref);

void html_prepare_conversion_units_targets (CONVERTER *self,
                                            const char *document_name,
                                            int output_units_descriptor,
                                            int special_units_descriptor);
/*
char *html_convert (CONVERTER *self);
*/

#endif
