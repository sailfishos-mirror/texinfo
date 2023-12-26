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

HV *build_html_target (HTML_TARGET *html_target);
void build_html_translated_names (HV *hv, CONVERTER *converter);

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

void build_tree_to_build (ELEMENT_LIST *tree_to_build);

#endif
