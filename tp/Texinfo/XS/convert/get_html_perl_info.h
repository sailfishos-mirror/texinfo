/* get_html_perl_info.h - declarations for get_perl_info.c */
#ifndef GET_HTML_PERL_INFO_H
#define GET_HTML_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

int html_converter_initialize_sv (SV *converter_sv,
                                  SV *default_formatting_references,
                                  SV *default_css_string_formatting_references,
                                  SV *default_commands_open,
                                  SV *default_commands_conversion,
                                  SV *default_css_string_commands_conversion,
                                  SV *default_types_open,
                                  SV *default_types_conversion,
                                  SV *default_css_string_types_conversion,
                                  SV *default_output_units_conversion,
                                  SV *default_special_unit_body);

void html_converter_prepare_output_sv (SV *converter_sv, CONVERTER *converter);

#endif
