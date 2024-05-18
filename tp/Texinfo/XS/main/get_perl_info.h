/* get_perl_info.h - declarations for get_perl_info.c */
#ifndef GET_PERL_INFO_H
#define GET_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "tree_types.h"
#include "document_types.h"
#include "option_types.h"
#include "options_types.h"
#include "converter_types.h"
#include "convert_to_text.h"

/* in options_get_perl.c */
void get_sv_option (OPTIONS *options, const char *key, SV *value,
                    int force, const CONVERTER *converter);
/* in options_init_free.c */
void set_option_key_configured (OPTIONS *options, const char *key,
                                int configured);


DOCUMENT *get_sv_tree_document (SV *tree_in, char *warn_string);
DOCUMENT *get_sv_document_document (SV *document_in, char *warn_string);

OUTPUT_UNIT_LIST *get_sv_output_units (SV *output_units_in, char *warn_string);
int get_sv_output_units_descriptor (SV *output_units_in, char *warn_string);

void add_svav_to_string_list (const SV *sv, STRING_LIST *string_list,
                              enum sv_string_type type);

SOURCE_INFO *get_source_info (SV *source_info_sv);
void get_line_message (CONVERTER *self, enum error_type type, int continuation,
                       SV *error_location_info, const char *message);
OPTIONS *init_copy_sv_options (SV *sv_in, CONVERTER *converter, int force);
void get_sv_configured_options (SV *configured_sv_in, OPTIONS *options);
void copy_converter_conf_sv (HV *hv, CONVERTER *converter,
                             OPTIONS **conf, const char *conf_key, int force);
void set_conf (CONVERTER *converter, const char *conf, SV *value);
void force_conf (CONVERTER *converter, const char *conf, SV *value);

CONVERTER *get_sv_converter (SV *sv_in, const char *warn_string);
int converter_initialize (SV *converter_sv);
void reset_output_init_conf (SV *sv_in);
void converter_set_document (SV *converter_in, SV *document_in);

INDEX_ENTRY *find_index_entry_sv (const SV *index_entry_sv,
                     INDEX_LIST *indices_info,
                     const char *warn_string, const INDEX **entry_idx,
                     int *entry_number);

INDEX_SORTED_BY_LETTER *get_sv_index_entries_sorted_by_letter
                 (INDEX_LIST *indices_info, SV *index_entries_sorted_by_letter);

TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

BUTTON_SPECIFICATION_LIST *html_get_button_specification_list
                                (const CONVERTER *converter, const SV *buttons_sv);
void html_get_direction_icons_sv (const CONVERTER *converter,
                             DIRECTION_ICON_LIST *direction_icons,
                             const SV *icons_sv);

const ELEMENT *find_element_from_sv (const CONVERTER *converter,
                                     const DOCUMENT *document_in,
                          const SV *element_sv, int output_units_descriptor);

SV *get_language_document_hv_sorted_indices (HV *document_hv, const char *key,
                      const char *language, HV **out_sorted_indices_hv);
#endif
