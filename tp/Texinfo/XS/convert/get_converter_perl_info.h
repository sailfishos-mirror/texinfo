/* get_converter_perl_info.h - declarations for get_converter_perl_info.c */
#ifndef GET_CONVERTER_PERL_INFO_H
#define GET_CONVERTER_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "convert_to_text.h"

CONVERTER *get_sv_converter (SV *sv_in, const char *warn_string);
CONVERTER *get_or_create_sv_converter (SV *converter_in,
                                       const char *input_class);
int get_converter_info_from_sv (SV *conf_sv, const char *class,
                                CONVERTER *converter,
                                OPTION **sorted_options,
                       CONVERTER_INITIALIZATION_INFO *initialization_info);
int converter_get_info_from_sv (SV *converter_sv, const char *class,
                                CONVERTER *converter,
                                SV *format_defaults_sv, SV *conf_sv,
                            CONVERTER_INITIALIZATION_INFO *format_defaults,
                            CONVERTER_INITIALIZATION_INFO *conf);
CONVERTER *converter_set_document_from_sv (SV *converter_in, SV *document_in);

TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

#endif
