/* tree_perl_api.h - API to interact with perl from C code */
#ifndef TREE_PERL_API_H
#define TREE_PERL_API_H

#include "tree_types.h"
#include "utils.h"

/* in build_perl_info */
void unregister_perl_tree_element (ELEMENT *e);

/* in call_perl_function */
char *call_nodenamenormalization_unicode_to_transliterate (char *text);

TARGET_FILENAME *call_file_id_setting_special_unit_target_file_name (
                     CONVERTER *self, OUTPUT_UNIT *special_unit, char *target,
                                                      char *default_filename);
char *call_file_id_setting_label_target_name (CONVERTER *self,
                       char *normalized, ELEMENT *label_element, char *target,
                       int *called);
char *call_file_id_setting_node_file_name (CONVERTER *self,
                       ELEMENT *target_element, char *node_filename,
                       int *called);
TARGET_CONTENTS_FILENAME * call_file_id_setting_sectioning_command_target_name
                     (CONVERTER *self,
                      ELEMENT *command, char *target, char *target_contents,
                      char *target_shortcontents, char *filename);
FILE_NAME_PATH *call_file_id_setting_unit_file_name (CONVERTER *self,
                                                     OUTPUT_UNIT *output_unit,
                                               char *filename, char *filepath);
char *call_formatting_function_format_title_titlepage (CONVERTER *self);

#endif
