/* get_converter_perl_info.h - declarations for get_converter_perl_info.c */
#ifndef GET_CONVERTER_PERL_INFO_H
#define GET_CONVERTER_PERL_INFO_H

#include "EXTERN.h"
#include "perl.h"

#include "converter_types.h"

struct TEXT_OPTIONS;

struct TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

#endif
