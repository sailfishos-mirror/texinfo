/* build_perl_tree_elements.h - declarations for build_perl_tree_elements.c */
#ifndef BUILD_PERL_TREE_ELEMENTS_H
#define BUILD_PERL_TREE_ELEMENTS_H

#include "EXTERN.h"
#include "perl.h"

#include "tree_types.h"
#include "document_types.h"

SV *build_element_attribute (const ELEMENT *element, const char *attribute,
                             DOCUMENT *document);

size_t register_element_handle_in_sv (ELEMENT *element, DOCUMENT *document);
size_t register_sv_element_handle_in_sv (ELEMENT *element, SV *element_sv,
                                       DOCUMENT *document);

#endif
