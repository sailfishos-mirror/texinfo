/* get_perl_info.h - declarations for get_perl_info.c */
#ifndef GET_PERL_INFO_H
#define GET_PERL_INFO_H

#include "options_types.h"
#include "document.h"
#include "convert_to_text.h"
#include "convert_html.h"

DOCUMENT *get_sv_tree_document (SV *tree_in, char *warn_string);
DOCUMENT *get_sv_document_document (SV *document_in, char *warn_string);

OUTPUT_UNIT_LIST *get_sv_output_units (SV *output_units_in, char *warn_string);
int get_sv_output_units_descriptor (SV *output_units_in, char *warn_string);

OPTIONS *copy_sv_options (SV *sv_in);
TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);
HTML_CONVERTER *get_html_converter_sv (SV *sv_in);

#endif
