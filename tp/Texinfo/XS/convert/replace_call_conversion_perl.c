/* replacements for Perl functions calling.  Most could be called. */

#include <config.h>

#include "converter_types.h"
#include "document_types.h"
#include "call_conversion_perl.h"

int
call_config_GNUT_load_init_file (const char *file_path)
{
  return 0; 
}

CONVERTER *
call_convert_converter (const char *module_name,
                        const CONVERTER_INITIALIZATION_INFO *conf)
{
  return 0;
}

char *
call_converter_output (const char *module_name, CONVERTER *self,
                       DOCUMENT *document)
{
  return 0;
}

int
call_init_perl (int *argc_ref, char ***argv_ref, char ***env_ref,
                char *load_txi_modules_path)
{
  return -1;
}

void
call_finish_perl (void)
{
}
