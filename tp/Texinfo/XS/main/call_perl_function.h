/* call_perl_function.h - API to interact with perl from C code */
#ifndef CALL_PERL_FUNCTION_H
#define CALL_PERL_FUNCTION_H

#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"

char *call_nodenamenormalization_unicode_to_transliterate (char *text);

char *call_latex_convert_to_latex_math (CONVERTER *self, ELEMENT *element);

const void *call_setup_collator (int use_unicode_collation,
                                 const char *locale_lang);

BYTES_STRING *call_collator_getSortKey (const void *collator_sv,
                                        const char *string);

#endif
