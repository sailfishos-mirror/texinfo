/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "utils.h"

void html_converter_initialize (CONVERTER *self);

void html_initialize_output_state (CONVERTER *self);

void html_prepare_conversion_units (CONVERTER *self,
                                    int *output_units_descriptor_ref,
                                    int *special_units_descriptor_ref,
                                    int *associated_special_units_descriptor_ref);

void html_prepare_conversion_units_targets (CONVERTER *self,
                                     const char *document_name,
                                     int output_units_descriptor,
                                     int special_units_descriptor,
                                     int associated_special_units_descriptor);

FILE_SOURCE_INFO_LIST * html_prepare_units_directions_files (CONVERTER *self,
          int output_units_descriptor,
          int special_units_descriptor, int associated_special_units_descriptor,
          char *output_file, char *destination_directory, char *output_filename,
          char *document_name);

void html_prepare_output_units_global_targets (CONVERTER *self,
                                        int output_units_descriptor,
                                        int special_units_descriptor,
                                        int associated_special_units_descriptor);

void html_translate_names (CONVERTER *self);

void html_convert_init (CONVERTER *self);

char *html_convert_convert (CONVERTER *self, ELEMENT *root,
                            int output_units_descriptor,
                            int special_units_descriptor);

#endif
