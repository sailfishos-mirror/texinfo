/* call_perl_function.h - API to interact with perl from C code */
#ifndef CALL_PERL_FUNCTION_H
#define CALL_PERL_FUNCTION_H

#include "tree_types.h"
#include "converter_types.h"

char *call_nodenamenormalization_unicode_to_transliterate (char *text);

char *call_latex_convert_to_latex_math (CONVERTER *self, ELEMENT *element);

INDEX_SORTED_BY_LETTER *get_call_index_entries_sorted_by_letter
                                                   (CONVERTER *self);
#endif
