/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "converter.h"

void html_prepare_conversion_units (CONVERTER *self,
                                    const char *document_name,
                                    int *output_units_descriptor_ref,
                                    int *special_units_descriptor_ref,
                                    int *associated_special_units_descriptor_ref);

/*
char *html_convert (CONVERTER *self);
*/

#endif
