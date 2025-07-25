/* swig_text_options.h - text options modification interface */
#ifndef SWIG_TEXT_OPTIONS_H
#define SWIG_TEXT_OPTIONS_H

/* implemented in swig_interface.c.  Could be the basis for an interface
   used for setting text options in C.
 */

#include "document_types.h"

#define TEXT_INDICATOR_CONVERTER_OPTIONS \
  tico_option_name(ASCII_GLYPH) \
  tico_option_name(DEBUG) \
  tico_option_name(DOC_ENCODING_FOR_INPUT_FILE_NAME) \
  tico_option_name(NUMBER_SECTIONS) \
  tico_option_name(TEST)

struct TEXT_OPTIONS;

#define tico_option_name(name) \
void text_options_set_##name (struct TEXT_OPTIONS *text_options, int i);
 TEXT_INDICATOR_CONVERTER_OPTIONS
#undef tico_option_name

void text_options_set_encoding (TEXT_OPTIONS *text_options,
                                const char *encoding);

void text_options_clear_expanded_formats (struct TEXT_OPTIONS *text_options);

void text_options_add_expanded_format (struct TEXT_OPTIONS *text_options,
                                       const char *format);
struct TEXT_OPTIONS *document_text_options (DOCUMENT *document);

#endif
