/* Copyright 2010-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <stddef.h>

#include "option_types.h"
#include "create_buttons.h"

BUTTON_SPECIFICATION_INFO *
new_button_specification_info (void)
{
  BUTTON_SPECIFICATION_INFO *button_spec
    = (BUTTON_SPECIFICATION_INFO *)
        malloc (sizeof (BUTTON_SPECIFICATION_INFO));
  memset (button_spec, 0, sizeof (BUTTON_SPECIFICATION_INFO));
  return button_spec;
}

BUTTON_SPECIFICATION_LIST *
new_button_specification_list (size_t buttons_nr)
{
  BUTTON_SPECIFICATION_LIST *result;

  result = (BUTTON_SPECIFICATION_LIST *)
              malloc (sizeof (BUTTON_SPECIFICATION_LIST));

  result->BIT_user_function_number = 0;
  result->number = buttons_nr;
  result->av = 0;

  result->list = (BUTTON_SPECIFICATION *) malloc (buttons_nr *
                   sizeof (BUTTON_SPECIFICATION));
  memset (result->list, 0, buttons_nr * sizeof (BUTTON_SPECIFICATION));

  return result;
}

