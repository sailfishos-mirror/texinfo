/* get_perl_info.h - declarations for get_perl_info.c */
#ifndef GET_PERL_INFO_H
#define GET_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "options_types.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "convert_to_text.h"

enum sv_string_type {
  svt_byte,
  svt_dir,
  svt_char,
};

DOCUMENT *get_sv_tree_document (SV *tree_in, char *warn_string);
DOCUMENT *get_sv_document_document (SV *document_in, char *warn_string);

OUTPUT_UNIT_LIST *get_sv_output_units (SV *output_units_in, char *warn_string);
int get_sv_output_units_descriptor (SV *output_units_in, char *warn_string);

void add_svav_to_string_list (SV *sv, STRING_LIST *string_list,
                              enum sv_string_type type);

OPTIONS *copy_sv_options (SV *sv_in);
void set_conf (CONVERTER *converter, const char *conf, SV *value);

CONVERTER *set_output_converter_sv (SV *sv_in, char *warn_string);
CONVERTER *get_sv_converter (SV *sv_in, char *warn_string);

void converter_initialize (SV *converter_sv, CONVERTER *converter);

INDEX_SORTED_BY_LETTER *get_sv_index_entries_sorted_by_letter
                 (INDEX **index_names, SV *index_entries_sorted_by_letter);

TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

BUTTON_SPECIFICATION_LIST *html_get_button_specification_list (SV *buttons_sv);

#endif
