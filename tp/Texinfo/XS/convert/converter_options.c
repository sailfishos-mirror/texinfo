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
#include "converters_defaults.h"
#include "utils.h"
#include "converter_options.h"

/* code for converters options setting.  Not with format specific converter
   code, since this code is called from generic converter code. */

/* should be consistent with enum BUTTON_special_unit_directions.  See
   the comment there */
static const char *buttons_special_units_names[] = {
    "Contents",
    "About",
};

/* create button specification */
void
new_button_specification (BUTTON_SPECIFICATION *button,
                          enum button_specification_type type,
                          enum button_information_type info_type,
                          int direction, const char *direction_string,
                          const char *string,
                          enum button_function_type function_type,
                          enum html_text_type text_type)
{
  button->type = type;
  button->direction_string = direction_string;

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
                   enum button_function_type function_type,
                   int with_about)
{
  BUTTON_SPECIFICATION_LIST *result;
  int buttons_nr = 6;

  if (with_about)
    buttons_nr++;

  result = new_button_specification_list (buttons_nr);
  /* this function is called too early for special units direction
     indices to be known, therefore we register direction string name
     for such directions, directions are set afterwards.
  int contents_direction = html_get_direction_index (self, "Contents");
  int about_direction = html_get_direction_index (self, "About");
   */

  new_button_specification (&result->list[0], BST_direction_info,
                            BIT_function, D_direction_Next, 0, 0,
                            function_type, 0);
  new_button_specification (&result->list[1], BST_direction_info,
                            BIT_function, D_direction_Prev, 0, 0,
                            function_type, 0);
  new_button_specification (&result->list[2], BST_direction_info,
                            BIT_function, D_direction_Up, 0, 0,
                            function_type, 0);
  new_button_specification (&result->list[3], BST_direction, 0,
                            D_direction_Space, 0, 0, 0, 0);
  new_button_specification (&result->list[4], BST_direction, 0,
                            -1, "Contents", 0, 0, 0);
  new_button_specification (&result->list[5], BST_direction, 0,
                            D_direction_Index, 0, 0, 0, 0);
  if (with_about)
    new_button_specification (&result->list[6], BST_direction,
                              0, -1, "About", 0, 0, 0);
  return result;
}

BUTTON_SPECIFICATION_LIST *
new_link_buttons (const CONVERTER *self)
{
  BUTTON_SPECIFICATION_LIST *result = new_button_specification_list (7);
  /* this function is called too early for special units direction
     indices to be known, therefore we register direction string name
     for such directions, directions are set afterwards.
  int contents_direction = html_get_direction_index (self, "Contents");
  int about_direction = html_get_direction_index (self, "About");
   */
  new_button_specification (&result->list[0], BST_direction,
                            0, D_direction_Top, 0, 0, 0, 0);
  new_button_specification (&result->list[1], BST_direction,
                            0, D_direction_Index, 0, 0, 0, 0);
  new_button_specification (&result->list[2], BST_direction,
                            0, -1, "Contents", 0, 0, 0);
  new_button_specification (&result->list[3], BST_direction,
                            0, -1, "About", 0, 0, 0);
  new_button_specification (&result->list[4], BST_direction,
                            0, D_direction_NodeUp, 0, 0, 0, 0);
  new_button_specification (&result->list[5], BST_direction,
                            0, D_direction_NodeNext, 0, 0, 0, 0);
  new_button_specification (&result->list[6], BST_direction,
                            0, D_direction_NodePrev, 0, 0, 0, 0);
  return result;
}

BUTTON_SPECIFICATION_LIST *
new_section_buttons (const CONVERTER *self)
{
  return new_basic_buttons (self, BFT_type_panel_directions, 1);
}

BUTTON_SPECIFICATION_LIST *
new_section_footer_buttons (const CONVERTER *self)
{
  return new_basic_buttons (self, BFT_type_panel_section_footer, 0);
}



/* same as NODE_FOOTER_BUTTONS */
static const int T2H_SECTION_BUTTONS[] = {
 D_direction_FastBack, D_direction_Back, D_direction_Up, D_direction_Forward,
 D_direction_FastForward,
 D_direction_Space, D_direction_Space, D_direction_Space, D_direction_Space,
 D_direction_Top, BSUD_D_Contents, D_direction_Index, BSUD_D_About,
 -1
};

/* same as TOP_FOOTER_BUTTONS */
static const int T2H_TOP_BUTTONS[] = {
 D_direction_Back, D_direction_Forward, D_direction_Space,
 BSUD_D_Contents, D_direction_Index, BSUD_D_About,
 -1
};

static const int T2H_MISC_BUTTONS[] = {
 D_direction_Top, BSUD_D_Contents, D_direction_Index, BSUD_D_About,
 -1
};

/* same as CHAPTER_FOOTER_BUTTONS */
static const int T2H_CHAPTER_BUTTONS[] = {
 D_direction_FastBack, D_direction_FastForward, D_direction_Space,
 D_direction_Space, D_direction_Space, D_direction_Space, D_direction_Space,
 D_direction_Top, BSUD_D_Contents, D_direction_Index, BSUD_D_About,
 -1
};

static const int T2H_SECTION_FOOTER_BUTTONS[] = {
 D_direction_FastBack, D_direction_FirstInFileBack, D_direction_FirstInFileUp,
 D_direction_Forward, D_direction_FastForward,
 -1
};

/* a negative direction in DIRECTIONS corresponds to a special direction
   which index is not known early and is better stored as a string.

   Mainly called for texi2html style navigation buttons, but also for
   default special units navigation panel buttons.
 */
BUTTON_SPECIFICATION_LIST *
new_directions_list_buttons_specifications (const CONVERTER *self,
                                            const int* directions)
{
  int buttons_nr = 0;
  int i;
  BUTTON_SPECIFICATION_LIST *result;

  for (buttons_nr = 0; directions[buttons_nr] != -1; buttons_nr++) {};

  result = new_button_specification_list (buttons_nr);

  for (i = 0; i < buttons_nr; i++)
    {
      int direction = directions[i];
      const char *direction_string = 0;
      if (direction < 0)
        {
          int name_idx = -direction - 2;
          direction_string = buttons_special_units_names[name_idx];
        }
      new_button_specification (&result->list[i], BST_direction,
                        0, direction, direction_string, 0, 0, 0);
    }
  return result;
}



static void
set_option_buttons_specification (OPTION *option,
                                 BUTTON_SPECIFICATION_LIST *buttons)
{
  if (option->o.buttons)
    html_free_button_specification_list (option->o.buttons);
  option->o.buttons = buttons;
}

static void
set_html_default_buttons_specifications (CONVERTER *self)
{
  OPTIONS *options = self->conf;
  set_option_buttons_specification (&options->SECTION_BUTTONS,
                                    new_section_buttons (self));
  set_option_buttons_specification (&options->SECTION_FOOTER_BUTTONS,
                                    new_section_footer_buttons (self));
  set_option_buttons_specification (&options->LINKS_BUTTONS,
                                    new_link_buttons (self));
  set_option_buttons_specification (&options->NODE_FOOTER_BUTTONS,
                  new_basic_buttons (self, BFT_type_panel_node_footer, 0));
  set_option_buttons_specification (&options->CHAPTER_BUTTONS,
                                    new_section_buttons (self));
  set_option_buttons_specification (&options->MISC_BUTTONS,
                                    new_section_buttons (self));
  set_option_buttons_specification (&options->TOP_BUTTONS,
                                    new_section_buttons (self));
  set_option_buttons_specification (&options->CHAPTER_FOOTER_BUTTONS,
                                    new_section_footer_buttons (self));
  set_option_buttons_specification (&options->TOP_FOOTER_BUTTONS,
                                    new_section_footer_buttons (self));
}

static void
set_texi2html_default_buttons_specifications (CONVERTER *self)
{
  OPTIONS *options = self->conf;
  set_option_buttons_specification (&options->SECTION_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_SECTION_BUTTONS));

  set_option_buttons_specification (&options->TOP_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_TOP_BUTTONS));

  set_option_buttons_specification (&options->TOP_FOOTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_TOP_BUTTONS));

  set_option_buttons_specification (&options->MISC_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_MISC_BUTTONS));

  set_option_buttons_specification (&options->CHAPTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_CHAPTER_BUTTONS));

  set_option_buttons_specification (&options->SECTION_FOOTER_BUTTONS,
 new_directions_list_buttons_specifications (self, T2H_SECTION_FOOTER_BUTTONS));

  set_option_buttons_specification (&options->CHAPTER_FOOTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_CHAPTER_BUTTONS));

  set_option_buttons_specification (&options->NODE_FOOTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_SECTION_BUTTONS));
}

void
html_converter_defaults (CONVERTER *self,
                         CONVERTER_INITIALIZATION_INFO *conf)
{
  set_html_regular_options_defaults (self->conf);
  set_html_default_buttons_specifications (self);

  if (conf)
    {
      size_t t2h_conf_number = self->conf->TEXI2HTML.number;
      size_t i;

      for (i = 0; i < conf->conf.number; i++)
        {
          OPTION *option = &conf->conf.list[i];
          if (option->number == t2h_conf_number)
            {
              if (option->o.integer >= 0)
                {
                  set_texi2html_regular_options_defaults (self->conf);
                  set_texi2html_default_buttons_specifications (self);
                  return;
                }
              break;
            }
        }
    }
}
