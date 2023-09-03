/* get_perl_info.h - declarations for get_perl_info.c */
#ifndef GET_PERL_INFO_H
#define GET_PERL_INFO_H

#include "document.h"
#include "convert_to_text.h"

DOCUMENT *get_sv_tree_document (SV *tree_in, char *warn_string);
DOCUMENT *get_sv_document_document (SV *document_in, char *warn_string);

TEXT_OPTIONS *copy_sv_options_for_convert_text (SV *sv_in);

#endif
