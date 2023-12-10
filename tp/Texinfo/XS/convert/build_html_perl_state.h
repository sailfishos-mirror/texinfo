/* build_html_perl_state.h - declarations for build_html_perl_state.c */
#ifndef BUILD_HTML_PERL_STATE_H
#define BUILD_HTML_PERL_STATE_H

#include "EXTERN.h"
#include "perl.h"

#include "tree_types.h"
#include "converter_types.h"
/* for FILE_SOURCE_INFO_LIST HTML_ARGS_FORMATTED */
#include "utils.h"
/* for NAMED_STRING_ELEMENT_LIST */
#include "translations.h"

void pass_html_element_targets (SV *converter_sv,
                                HTML_TARGET_LIST *html_targets);
void pass_html_special_targets (SV *converter_sv,
                                HTML_TARGET_LIST *html_special_targets);
void pass_html_seen_ids (SV *converter_sv, STRING_LIST *seen_ids);

void pass_converter_errors (ERROR_MESSAGE_LIST *error_messages,
                            HV *converter_hv);

SV *build_html_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info);
void pass_html_global_units_directions (SV *converter_sv,
                       const OUTPUT_UNIT **global_units_directions,
                       SPECIAL_UNIT_DIRECTION *special_units_direction_name);
void pass_html_elements_in_file_count (SV *converter_sv,
                   FILE_NAME_PATH_COUNTER_LIST *output_unit_files);

SV *build_html_formatting_state (CONVERTER *converter, unsigned long flags);

SV *build_html_command_formatted_args
           (const HTML_ARGS_FORMATTED *args_formatted);
SV *build_replaced_substrings (NAMED_STRING_ELEMENT_LIST *replaced_substrings);

void build_pending_footnotes (AV *av, HTML_PENDING_FOOTNOTE_STACK *stack);

void build_simpletitle (CONVERTER *converter, HV *converter_hv);

#endif
