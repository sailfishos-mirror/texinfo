/* call_conversion_perl.h - API to interact with embedded perl from C code */
#ifndef CALL_CONVERSION_PERL_H
#define CALL_CONVERSION_PERL_H

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"

CONVERTER *call_convert_converter (const char *module_name,
                      const DEPRECATED_DIRS_LIST *deprecated_directories,
                      const OPTIONS_LIST *converter_options);
char *call_converter_output (const char *module_name, CONVERTER *self,
                             DOCUMENT *document);

void call_config_GNUT_load_init_file (const char *file_path);

void call_init_perl (int *argc_ref, char ***argv_ref, char ***env_ref,
                     char *load_txi_modules_path);
void call_finish_perl (void);
#endif
