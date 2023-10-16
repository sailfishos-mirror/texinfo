/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "utils.h"

/* in utils.c */
extern char *html_conversion_context_type_names[];

typedef struct FILE_SOURCE_INFO {
    char *filename;
    char *type;
    char *name;
    ELEMENT *element;
    char *path; /* filenames_paths in perl */
} FILE_SOURCE_INFO;

typedef struct FILE_SOURCE_INFO_LIST {
    size_t number;
    size_t space;
    FILE_SOURCE_INFO *list;
} FILE_SOURCE_INFO_LIST;

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
