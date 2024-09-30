/* get_converter_perl_info.h - declarations for get_converter_perl_info.c */
#ifndef GET_CONVERTER_PERL_INFO_H
#define GET_CONVERTER_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "converter_types.h"

struct TEXT_OPTIONS;

CONVERTER *get_sv_converter (SV *sv_in, const char *warn_string);
int converter_initialize (SV *converter_sv);
void reset_output_init_conf (SV *sv_in);
CONVERTER *converter_set_document_from_sv (SV *converter_in, SV *document_in);

struct TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

#endif
