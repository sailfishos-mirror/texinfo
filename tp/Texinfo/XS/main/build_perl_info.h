/* build_perl_info.h - declarations for build_perl_info.c */
#ifndef BUILD_PERL_INFO_H
#define BUILD_PERL_INFO_H

#include <stddef.h>
#include <stdarg.h>

#include "EXTERN.h"
#include "perl.h"

#include "global_commands_types.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "options_types.h"

void perl_only_free (void *ptr);
void *perl_only_malloc (size_t size);
char *perl_only_strdup (const char *s);
char *perl_only_strndup (const char *s, size_t n);

int init (int texinfo_uninstalled, char *srcdir_in);

/* in options_get_perl.c */
SV *build_sv_option (OPTIONS *options, const char *key, CONVERTER *converter);

/* does not exist as perl macro */
SV *newSVpv_utf8 (const char *str, STRLEN len);
SV *newSVpv_byte (const char *str, STRLEN len);

void element_to_perl_hash (ELEMENT *e, int avoid_recursion);

SV *build_document (size_t document_descriptor, int no_store);
SV *get_document (size_t document_descriptor);
void rebuild_document (SV *document_in, int no_store);

HV *build_texinfo_tree (ELEMENT *root, int avoid_recursion);
SV *store_texinfo_tree (DOCUMENT *document, HV *document_hv);
AV *build_errors (ERROR_MESSAGE* error_list, size_t error_number);
AV *build_target_elements_list (LABEL *labels_list,
                                size_t labels_number);
HV* build_identifiers_target (LABEL_LIST *identifiers_target);
AV *build_internal_xref_list (ELEMENT **internal_xref_list,
                              size_t internal_xref_number);
HV *build_float_list (FLOAT_RECORD *floats_list, size_t floats_number);
HV *build_index_data (INDEX_LIST *indices_info);
HV *build_global_info (GLOBAL_INFO *global_info_ref,
                       GLOBAL_COMMANDS *global_commands_ref);
void build_global_info_tree_info (HV *hv, GLOBAL_INFO *global_info_ref);
HV *build_global_commands (GLOBAL_COMMANDS *global_commands_ref);

SV *document_indices_information (SV *document_in);
SV *document_global_commands_information (SV *document_in);
SV *document_labels_information (SV *document_in);
SV *document_nodes_list (SV *document_in);
SV *document_sections_list (SV *document_in);

SV *document_floats_information (SV *document_in);
SV *document_internal_references_information (SV *document_in);
SV *document_labels_list (SV *document_in);

SV *document_global_information (SV *document_in);

void pass_document_parser_errors_to_registrar (int document_descriptor,
                                               SV *parser_sv);
SV *pass_errors_to_registrar (ERROR_MESSAGE_LIST *error_messages,
                              SV *object_sv,
                              SV **errors_warnings_out, SV **error_nrs_out);

SV *build_output_units_list (size_t output_units_descriptor);
void rebuild_output_units_list (SV *output_units_sv,
                                size_t output_units_descriptor);
SV *setup_output_units_handler (size_t output_units_descriptor);

AV *build_integer_stack (const INTEGER_STACK *integer_stack);
AV *build_string_list (const STRING_LIST *strings_list, enum sv_string_type);

void pass_output_unit_files (SV *converter_sv,
                        FILE_NAME_PATH_COUNTER_LIST *output_unit_files);

void build_output_files_information (SV *converter_sv,
                   OUTPUT_FILES_INFORMATION *output_files_information);

HV *build_indices_sort_strings (
                  const INDICES_SORT_STRINGS *indices_sort_strings,
                            HV *indices_information_hv);
HV *build_sorted_indices_by_letter (
                      const INDEX_SORTED_BY_LETTER *index_entries_by_letter,
                      HV *indices_information_hv);
HV *build_sorted_indices_by_index (
                      const INDEX_SORTED_BY_INDEX *index_entries_by_index,
                      HV *indices_information_hv);

SV *html_build_direction_icons (CONVERTER *converter,
                            DIRECTION_ICON_LIST *direction_icons);
SV *get_conf (CONVERTER *converter, const char *option_name);

void build_tree_to_build (ELEMENT_LIST *tree_to_build);

#endif
