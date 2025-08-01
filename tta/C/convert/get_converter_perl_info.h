/* get_converter_perl_info.h - declarations for get_converter_perl_info.c */
#ifndef GET_CONVERTER_PERL_INFO_H
#define GET_CONVERTER_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "convert_to_text.h"

/* Implemented in call_conversion_perl.h, but we do not want Perl
   SV in call_conversion_perl.h since it is included from C that do not
   include the Perl headers */
CONVERTER *get_sv_converter (SV *sv_in, const char *warn_string);

CONVERTER *get_or_create_sv_converter (SV *converter_in,
                                       const char *input_class);
void set_non_customization_sv (HV *converter_hv, SV *init_info_sv,
                               STRING_LIST *non_valid_customization);
CONVERTER *converter_set_document_from_sv (SV *converter_in, SV *document_in);

DOCUMENT *get_converter_sv_document (SV *converter_sv, const char *warn_string);

TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

#endif
