/* call_plaintext_perl_function.h - interact with Plaintext/Info perl conversion
                                    from C code */
#ifndef CALL_PLAINTEXT_PERL_FUNCTION_H
#define CALL_PLAINTEXT_PERL_FUNCTION_H

#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"

MATH_ELEMENTS_IMAGES *call_latex_convert_math_to_images (
                                   CONVERTER *self, DOCUMENT *document,
                                   const char *prefix,
                                   const char *destination_directory);

#endif
