/* build_perl_info.h - declarations for build_perl_info.c */
#ifndef BUILD_PERL_INFO_H
#define BUILD_PERL_INFO_H

#include <stddef.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "utils.h"

int init (int texinfo_uninstalled, char *srcdir_in);

SV *build_document (size_t document_descriptor, int no_clean_perl_refs,
                    int no_store);

HV *build_texinfo_tree (ELEMENT *root);
AV *get_errors (ERROR_MESSAGE* error_list, size_t error_number);
AV *build_target_elements_list (LABEL *labels_list,
                                size_t labels_number);
HV* build_identifiers_target (LABEL_LIST *identifiers_target);
AV *build_internal_xref_list (ELEMENT **internal_xref_list,
                              size_t internal_xref_number);
HV *build_float_list (FLOAT_RECORD *floats_list, size_t floats_number);
HV *build_index_data (INDEX **index_names_in);
HV *build_global_info (GLOBAL_INFO *global_info_ref);
HV *build_global_commands (GLOBAL_COMMANDS *global_commands_ref);

SV *build_output_units_list (size_t output_units_descriptor);

#endif
