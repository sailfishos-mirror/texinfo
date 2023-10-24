/* get_perl_info.h - declarations for get_perl_info.c */
#ifndef GET_PERL_INFO_H
#define GET_PERL_INFO_H

#include "options_types.h"
#include "tree_types.h"
#include "document.h"
#include "utils.h"
#include "convert_to_text.h"

DOCUMENT *get_sv_tree_document (SV *tree_in, char *warn_string);
DOCUMENT *get_sv_document_document (SV *document_in, char *warn_string);

OUTPUT_UNIT_LIST *get_sv_output_units (SV *output_units_in, char *warn_string);
int get_sv_output_units_descriptor (SV *output_units_in, char *warn_string);

OPTIONS *copy_sv_options (SV *sv_in);
TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

int html_converter_initialize_sv (SV *sv_in, SV *default_formatting_references,
                                  SV *default_css_string_formatting_references,
                                  SV *default_commands_open,
                                  SV *default_commands_conversion,
                                  SV *default_types_open,
                                  SV *default_types_conversion);
CONVERTER *set_output_converter_sv (SV *sv_in, char *warn_string);
CONVERTER *get_sv_converter (SV *sv_in, char *warn_string);

INDEX_SORTABLE_ENTRIES **get_sv_sortable_entries (SV *sortable_entries_in);

void get_sv_index_entries_sorted_by_letter (CONVERTER *converter,
                                            SV *index_entries_sorted_by_letter);
#endif
