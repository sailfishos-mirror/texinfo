/* replacements for Perl functions calling.  Some are actually called, most are
   defined to please the linker */

#include <config.h>

#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
#include "call_plaintext_perl_function.h"

MATH_ELEMENTS_IMAGES *
call_latex_convert_math_to_images (CONVERTER *self, DOCUMENT *document,
                                   const char *prefix,
                                   const char *destination_directory)
{
  return 0;
}


