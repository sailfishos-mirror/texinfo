/* converter_options.h - definitions for converter_options.c */
#ifndef CONVERTER_OPTIONS_H
#define CONVERTER_OPTIONS_H

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
