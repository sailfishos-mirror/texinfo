/* get_converter_perl_info.h - declarations for get_converter_perl_info.c */
#ifndef GET_CONVERTER_PERL_INFO_H
#define GET_CONVERTER_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "converter_types.h"

struct TEXT_OPTIONS;

CONVERTER *get_sv_converter (SV *sv_in, const char *warn_string);
int converter_initialize (SV *converter_sv);

void converter_set_document (SV *converter_in, SV *document_in);
void reset_output_init_conf (SV *sv_in);

struct TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

#endif
