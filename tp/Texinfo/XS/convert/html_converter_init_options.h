/* html_converter_init_options.h - for html_converter_init_options.c */
#ifndef HTML_CONVERTER_INIT_OPTIONS_H
#define HTML_CONVERTER_INIT_OPTIONS_H

#include "option_types.h"
#include "converter_types.h"

void html_converter_defaults (CONVERTER *self,
                              CONVERTER_INITIALIZATION_INFO *format_defaults);

void html_converter_initialize (CONVERTER *self);
#endif
