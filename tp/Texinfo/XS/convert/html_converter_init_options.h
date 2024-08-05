/* html_converter_init_options.h - for html_converter_init_options.c */
#ifndef HTML_CONVERTER_INIT_OPTIONS_H
#define HTML_CONVERTER_INIT_OPTIONS_H

#include "option_types.h"
#include "converter_types.h"

/* the enum value is negative to denote a special unit direction with
   a direction index not already known.  And such that -enum_value -2
   is the index in the special units directions names array */
enum BUTTON_special_unit_directions {
    BSUD_D_About = -3,
    BSUD_D_Contents,
};

void html_converter_defaults (CONVERTER *self,
                              CONVERTER_INITIALIZATION_INFO *format_defaults);
#endif
