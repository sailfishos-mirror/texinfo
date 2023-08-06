/* build_perl_info.h - declarations for build_perl_info.c */
#ifndef BUILD_PERL_INFO_H
#define BUILD_PERL_INFO_H

int init (int texinfo_uninstalled, char *srcdir_in);

HV *build_texinfo_tree (void);
AV *build_target_elements_list (void);
HV* build_identifiers_target (void);
AV *build_internal_xref_list (void);
HV *build_float_list (void);
HV *build_index_data (void);
HV *build_global_info (void);
HV *build_global_info2 (void);
AV *get_errors (void);

#endif
