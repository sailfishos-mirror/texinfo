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

CONVERTER_INITIALIZATION_INFO *
call_converter_converter_defaults (const char *module_name,
                                   OPTIONS_LIST *customizations)
{
  return 0;
}

CONVERTER *
call_convert_converter (const char *module_name,
                        const CONVERTER_INITIALIZATION_INFO *conf)
{
  return 0;
}

OUTPUT_TEXT_FILES_INFO *
call_converter_output (const char *module_name, CONVERTER *self,
                       DOCUMENT *document)
{
  return 0;
}

char *
call_sort_element_counts (const char *module_name, CONVERTER *self,
                          DOCUMENT *document, int use_sections,
                          int count_words)
{
  return 0;
}
