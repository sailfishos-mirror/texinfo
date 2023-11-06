/* build_perl_info.h - declarations for build_perl_info.c */
#ifndef BUILD_PERL_INFO_H
#define BUILD_PERL_INFO_H

#include <stddef.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "converter_types.h"
/* for FILE_SOURCE_INFO_LIST and HTML_ARGS_FORMATTED */
#include "utils.h"
/* for NAMED_STRING_ELEMENT_LIST */
#include "translations.h"

int init (int texinfo_uninstalled, char *srcdir_in);

/* does not exist as perl macro */
SV *newSVpv_utf8 (const char *str, STRLEN len);

SV *build_document (size_t document_descriptor, int no_store);
SV *get_document (size_t document_descriptor);

HV *build_texinfo_tree (ELEMENT *root);
AV *get_errors (ERROR_MESSAGE* error_list, size_t error_number);
AV *build_target_elements_list (LABEL *labels_list,
                                size_t labels_number);
HV* build_identifiers_target (LABEL_LIST *identifiers_target);
AV *build_internal_xref_list (ELEMENT **internal_xref_list,
                              size_t internal_xref_number);
HV *build_float_list (FLOAT_RECORD *floats_list, size_t floats_number);
HV *build_index_data (INDEX **index_names_in);
HV *build_global_info (GLOBAL_INFO *global_info_ref,
                       GLOBAL_COMMANDS *global_commands_ref);
HV *build_global_commands (GLOBAL_COMMANDS *global_commands_ref);

SV *build_output_units_list (size_t output_units_descriptor);
void rebuild_output_units_list (SV *output_units_sv,
                                size_t output_units_descriptor);

void pass_output_unit_files (SV *converter_sv,
                        FILE_NAME_PATH_COUNTER_LIST *output_unit_files);

void pass_html_element_targets (SV *converter_sv,
                                HTML_TARGET_LIST *html_targets);
void pass_html_special_targets (SV *converter_sv,
                                HTML_TARGET_LIST **html_special_targets);
void pass_html_seen_ids (SV *converter_sv, STRING_LIST *seen_ids);

void pass_converter_errors (ERROR_MESSAGE_LIST *error_messages,
                            HV *converter_hv);

SV *build_html_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info);
void pass_html_global_units_directions (SV *converter_sv,
                       OUTPUT_UNIT **global_units_directions,
                       SPECIAL_UNIT_DIRECTION **special_units_direction_name);
void pass_html_elements_in_file_count (SV *converter_sv,
                   FILE_NAME_PATH_COUNTER_LIST *output_unit_files);

HV *build_html_document_context (HTML_DOCUMENT_CONTEXT *document_context);

SV *build_html_formatting_state (CONVERTER *converter, unsigned long flags);

void build_output_files_information (CONVERTER *converter);

SV *build_html_command_formatted_args (HTML_ARGS_FORMATTED *args_formatted);
SV *build_replaced_substrings (NAMED_STRING_ELEMENT_LIST *replaced_substrings);
#endif
