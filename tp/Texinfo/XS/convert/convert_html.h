/* convert_html.h - definitions for convert_html.c */
#ifndef CONVERT_HTML_H
#define CONVERT_HTML_H

#include "options_types.h"
#include "tree_types.h"
#include "document.h"

/* see Texinfo::HTML _prepare_output_units_global_targets */
enum global_directions {
  GD_First,
  GD_Top,
  GD_Index,
  GD_Last,
};

typedef struct HTML_CONVERTER {
  OPTIONS *conf;
  DOCUMENT *document;
  int document_units_descriptor;
  OUTPUT_UNIT *global_target_directions[GD_Last+1];
} HTML_CONVERTER;

HTML_CONVERTER *new_html_converter (void);
void html_prepare_conversion_units (HTML_CONVERTER *self,
                                    const char *document_name,
                                    int *output_units_descriptor_ref,
                                    int *special_units_descriptor_ref,
                                    int *associated_special_units_descriptor_ref);

/*
char *html_convert (HTML_CONVERTER *self);
*/

#endif
