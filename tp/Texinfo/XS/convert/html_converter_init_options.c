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

#include <string.h>
#include <stdio.h>
#include <stddef.h>

#include "option_types.h"
#include "converter_types.h"
#include "converters_defaults.h"
/* html_get_direction_index html_free_button_specification_list */
#include "utils.h"
/* option_force_conf */
#include "customization_options.h"
#include "create_buttons.h"
/* new_converter_initialization_info */
#include "converter.h"
#include "html_converter_init_options.h"

/* HTML converter options setting and initialization.  Not with format
   specific converter code, since this code is called from generic
   converter code. */

static const int DEFAULT_MISC_BUTTONS[] = {
 D_direction_Top, BSUD_D_Contents, D_direction_Index, BSUD_D_About,
 -1
};

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
                                    new_base_navigation_section_buttons (self));
  set_option_buttons_specification (&options->SECTION_FOOTER_BUTTONS,
                           new_base_navigation_section_footer_buttons (self));
  set_option_buttons_specification (&options->LINKS_BUTTONS,
                                    new_base_links_buttons (self));
  set_option_buttons_specification (&options->NODE_FOOTER_BUTTONS,
           new_base_navigation_buttons (self, BFT_type_panel_node_footer, 0));
  set_option_buttons_specification (&options->CHAPTER_BUTTONS,
                                    new_base_navigation_section_buttons (self));
  set_option_buttons_specification (&options->MISC_BUTTONS,
      new_directions_list_buttons_specifications (self, DEFAULT_MISC_BUTTONS));
  set_option_buttons_specification (&options->TOP_BUTTONS,
                                    new_base_navigation_section_buttons (self));
  set_option_buttons_specification (&options->CHAPTER_FOOTER_BUTTONS,
                          new_base_navigation_section_footer_buttons (self));
  set_option_buttons_specification (&options->TOP_FOOTER_BUTTONS,
                            new_base_navigation_section_footer_buttons (self));
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
      new_directions_list_buttons_specifications (self, DEFAULT_MISC_BUTTONS));

  set_option_buttons_specification (&options->CHAPTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_CHAPTER_BUTTONS));

  set_option_buttons_specification (&options->SECTION_FOOTER_BUTTONS,
 new_directions_list_buttons_specifications (self, T2H_SECTION_FOOTER_BUTTONS));

  set_option_buttons_specification (&options->CHAPTER_FOOTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_CHAPTER_BUTTONS));

  set_option_buttons_specification (&options->NODE_FOOTER_BUTTONS,
      new_directions_list_buttons_specifications (self, T2H_SECTION_BUTTONS));
}

/* TODO we directly set the converter conf, so the conf list of
   returned format_defaults is not set.  This should work,
   but this is not the spirit of the corresponding Perl API */
CONVERTER_INITIALIZATION_INFO *
html_converter_defaults (CONVERTER *self,
                         CONVERTER_INITIALIZATION_INFO *conf)
{
  CONVERTER_INITIALIZATION_INFO *format_defaults
    = new_converter_initialization_info ();
  format_defaults->converted_format = strdup ("html");

  set_html_regular_options_defaults (self->conf);
  set_html_default_buttons_specifications (self);

  if (conf)
    {
      size_t t2h_conf_number = self->conf->TEXI2HTML.number;
      size_t i;

      for (i = 0; i < conf->conf.number; i++)
        {
          OPTION *option = conf->conf.list[i];
          if (option->number == t2h_conf_number)
            {
              if (option->o.integer >= 0)
                {
                  set_texi2html_regular_options_defaults (self->conf);
                  set_texi2html_default_buttons_specifications (self);
                  return format_defaults;
                }
              break;
            }
        }
    }
  return format_defaults;
}

/* this code corresponds to the Perl converter_initialize code, only for
   code to be called before Perl customization setup information is passed */
void
html_converter_initialize_beginning (CONVERTER *self)
{
  const char *split = self->conf->SPLIT.o.string;
  int max_header_level = self->conf->MAX_HEADER_LEVEL.o.integer;

  if (!self->conf->FORMAT_MENU.o.string)
    option_force_conf (&self->conf->FORMAT_MENU, 0, "");

 /* NOTE we reset silently if the split specification is not one known.
    The main program warns if the specific command line option value is
    not known.  We could add a warning here to catch mistakes in init
    files.  Wait for user reports.
  */
  if (split && strlen (split) && strcmp (split, "chapter")
      && strcmp (split, "section") && strcmp (split, "node"))
    option_force_conf (&self->conf->SPLIT, 0, "node");

  if (max_header_level < 0)
    option_force_conf (&self->conf->MAX_HEADER_LEVEL, 4, 0);
  else if (max_header_level < 1)
    option_force_conf (&self->conf->MAX_HEADER_LEVEL, 1, 0);

  /* For CONTENTS_OUTPUT_LOCATION
     should lead to contents not output, but if not, it is not an issue,
     the way to set contents to be output or not should be through the
     contents and shortcontents @-commands and customization options.
   */

  if (!self->conf->CONTENTS_OUTPUT_LOCATION.o.string)
    option_force_conf (&self->conf->CONTENTS_OUTPUT_LOCATION, 0, "");
  if (!self->conf->INDEX_ENTRY_COLON.o.string)
    option_force_conf (&self->conf->INDEX_ENTRY_COLON, 0, "");
  if (!self->conf->MENU_ENTRY_COLON.o.string)
    option_force_conf (&self->conf->MENU_ENTRY_COLON, 0, "");
}
