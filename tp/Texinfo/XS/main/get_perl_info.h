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

/* in options_get_perl.c */
void get_sv_option (OPTIONS *options, const char *key, SV *value,
                    int set, CONVERTER *converter);

DOCUMENT *get_sv_tree_document (SV *tree_in, char *warn_string);
DOCUMENT *get_sv_document_document (SV *document_in, char *warn_string);

OUTPUT_UNIT_LIST *get_sv_output_units (SV *output_units_in, char *warn_string);
int get_sv_output_units_descriptor (SV *output_units_in, char *warn_string);

void add_svav_to_string_list (SV *sv, STRING_LIST *string_list,
                              enum sv_string_type type);

SOURCE_INFO *get_source_info (SV *source_info_sv);
void get_line_message (CONVERTER *self, enum error_type type, int continuation,
                       SV *error_location_info, char *message);
OPTIONS *copy_sv_options (SV *sv_in, CONVERTER *converter, SV *set_sv_in);
void recopy_converter_conf_sv (HV *hv, CONVERTER *converter,
                               OPTIONS **conf, const char *conf_key);
void set_conf (CONVERTER *converter, const char *conf, SV *value);
void force_conf (CONVERTER *converter, const char *conf, SV *value);

CONVERTER *get_sv_converter (SV *sv_in, const char *warn_string);
int converter_initialize (SV *converter_sv);
void reset_output_init_conf (SV *sv_in, const char *warn_string);

INDEX_SORTED_BY_LETTER *get_sv_index_entries_sorted_by_letter
                 (INDEX **index_names, SV *index_entries_sorted_by_letter);

TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

BUTTON_SPECIFICATION_LIST *html_get_button_specification_list
                                (CONVERTER *converter, SV *buttons_sv);
void html_get_direction_icons_sv (CONVERTER *converter,
                             DIRECTION_ICON_LIST *direction_icons,
                             SV *icons_sv);

#endif
