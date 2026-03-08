/* get_perl_tree_elements.h - declarations for get_perl_tree_elements.c */
#ifndef GET_PERL_TREE_ELEMENTS_H
#define GET_PERL_TREE_ELEMENTS_H

#include "EXTERN.h"
#include "perl.h"

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"

DOCUMENT *get_sv_element_document (SV *element_in, const char *warn_string);
ELEMENT *get_sv_element_element (SV *element_sv, DOCUMENT *document);

ELEMENT *new_element_from_sv (DOCUMENT *document, const SV *element_hash,
                              CONVERTER *converter);

NAMED_STRING_ELEMENT_LIST *get_replaced_substrings (SV *replaced_substrings_sv);

#endif
