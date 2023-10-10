/* tree_perl_api.h - API to interact with perl from C code */
#ifndef TREE_PERL_API_H
#define TREE_PERL_API_H

/* in build_perl_info */
void unregister_perl_tree_element (ELEMENT *e);

/* in call_perl_function */
TARGET_FILENAME *call_file_id_setting_special_unit_target_file_name (
                     CONVERTER *self, OUTPUT_UNIT *special_unit, char *target,
                                                      char *default_filename);

#endif
