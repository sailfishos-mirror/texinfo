/* Copyright 2010-2024 Free Software Foundation, Inc.

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

#include "tree_types.h"
#include "option_types.h"
#include "converter_types.h"
#include "utils.h"


/* create button specification */
void
new_button_specification (BUTTON_SPECIFICATION *button,
                          enum button_specification_type type,
                          enum button_information_type info_type,
                          int direction, const char *string,
                          enum button_function_type function_type,
                          enum html_text_type text_type)
{
  button->type = type;

  if (type == BST_string)
    {
      if (string)
        button->b.string = strdup (string);
    }
  else if (type == BST_direction)
    button->b.direction = direction;
  else if (type == BST_direction_info)
    {
      BUTTON_SPECIFICATION_INFO *button_spec
       = (BUTTON_SPECIFICATION_INFO *)
           malloc (sizeof (BUTTON_SPECIFICATION_INFO));
      memset (button_spec, 0, sizeof (BUTTON_SPECIFICATION_INFO));

      button->b.button_info = button_spec;

      button_spec->type = info_type;
      button_spec->direction = direction;

      if (info_type == BIT_string)
        {
          if (string)
            button_spec->bi.string = strdup (string);
        }
      else if (info_type == BIT_function)
        button_spec->bi.button_function.type = function_type;
      else if (info_type == BIT_selected_direction_information_type
               || info_type == BIT_href_direction_information_type)
        button_spec->bi.direction_information_type = text_type;
    }
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

/* BFT_type_panel_directions */
BUTTON_SPECIFICATION_LIST *
new_basic_buttons (const CONVERTER *self,
                   enum button_function_type function_type)
{
  BUTTON_SPECIFICATION_LIST *result = new_button_specification_list (7);
  int contents_direction = html_get_direction_index (self, "Contents");
  int about_direction = html_get_direction_index (self, "About");

  new_button_specification (&result->list[0], BST_direction_info,
                            BIT_function, D_direction_Next, 0,
                            function_type, 0);
  new_button_specification (&result->list[1], BST_direction_info,
                            BIT_function, D_direction_Prev, 0,
                            function_type, 0);
  new_button_specification (&result->list[2], BST_direction_info,
                            BIT_function, D_direction_Up, 0,
                            function_type, 0);
  new_button_specification (&result->list[3], BST_direction,
                            0, D_direction_Space, 0, 0, 0);
  new_button_specification (&result->list[4], BST_direction,
                            0, contents_direction, 0, 0, 0);
  new_button_specification (&result->list[5], BST_direction,
                            0, D_direction_Index, 0, 0, 0);
  new_button_specification (&result->list[6], BST_direction,
                            0, about_direction, 0, 0, 0);
  return result;
}

BUTTON_SPECIFICATION_LIST *
new_link_buttons (const CONVERTER *self)
{
  BUTTON_SPECIFICATION_LIST *result = new_button_specification_list (7);
  int contents_direction = html_get_direction_index (self, "Contents");
  int about_direction = html_get_direction_index (self, "About");
  new_button_specification (&result->list[0], BST_direction,
                            0, D_direction_Top, 0, 0, 0);
  new_button_specification (&result->list[1], BST_direction,
                            0, D_direction_Index, 0, 0, 0);
  new_button_specification (&result->list[2], BST_direction,
                            0, contents_direction, 0, 0, 0);
  new_button_specification (&result->list[3], BST_direction,
                            0, about_direction, 0, 0, 0);
  new_button_specification (&result->list[4], BST_direction,
                            0, D_direction_NodeUp, 0, 0, 0);
  new_button_specification (&result->list[5], BST_direction,
                            0, D_direction_NodeNext, 0, 0, 0);
  new_button_specification (&result->list[6], BST_direction,
                            0, D_direction_NodePrev, 0, 0, 0);
  return result;
}

BUTTON_SPECIFICATION_LIST *
new_section_buttons (const CONVERTER *self)
{
  return new_basic_buttons (self, BFT_type_panel_directions);
}

BUTTON_SPECIFICATION_LIST *
new_section_footer_buttons (const CONVERTER *self)
{
  return new_basic_buttons (self, BFT_type_panel_section_footer);
}



/*
void
html_converter_defaults (CONVERTER *self
 */
