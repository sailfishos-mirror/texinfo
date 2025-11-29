/* create_buttons.h - definitions for create_buttons.c */
#ifndef CREATE_BUTTONS_H
#define CREATE_BUTTONS_H

#include <stddef.h>

#include "option_types.h"

BUTTON_SPECIFICATION_INFO *new_button_specification_info (void);
BUTTON_SPECIFICATION_LIST *new_button_specification_list (size_t buttons_nr);

#endif
