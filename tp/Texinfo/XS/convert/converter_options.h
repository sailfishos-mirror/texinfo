/* converter_options.h - definitions for converter_options.c */
#ifndef CONVERTER_OPTIONS_H
#define CONVERTER_OPTIONS_H

#include "option_types.h"
#include "converter_types.h"

BUTTON_SPECIFICATION_LIST *new_basic_buttons (const CONVERTER *self,
                              enum button_function_type function_type);

BUTTON_SPECIFICATION_LIST *new_link_buttons (const CONVERTER *self);
BUTTON_SPECIFICATION_LIST *new_section_buttons (const CONVERTER *self);
BUTTON_SPECIFICATION_LIST *new_section_footer_buttons (const CONVERTER *self);

#endif
