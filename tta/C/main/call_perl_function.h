/* call_perl_function.h - API to interact with perl from C code */
#ifndef CALL_PERL_FUNCTION_H
#define CALL_PERL_FUNCTION_H

/* for BYTES_STRING */
#include "document_types.h"

char *call_translations_translate_string (const char *string,
                                          const char *language_env,
                                          const char *translation_context);

void *call_setup_lang_collator (const char *locale_lang);

BYTES_STRING *call_collator_getSortKey (const void *collator_sv,
                                        const char *string);

#endif
