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
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

#include <config.h>
#include <string.h>

#include "tree_types.h"
#include "macro.h"
#include "conf.h"

/* Configuration values. */
CONF conf;

void
conf_set_show_menu (int i)
{
  conf.show_menu = i;
}

void
conf_set_CPP_LINE_DIRECTIVES (int i)
{
  conf.cpp_line_directives = i;
}

void
conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i)
{
  conf.ignore_space_after_braced_command_name = i;
}

void
conf_set_MAX_MACRO_CALL_NESTING (int i)
{
  conf.max_macro_call_nesting = i;
}

int
conf_set_NO_INDEX (int i)
{
  int previous = conf.no_index;
  conf.no_index = i;
  return previous;
}

int
conf_set_NO_USER_COMMANDS (int i)
{
  int previous = conf.no_user_commands;
  conf.no_user_commands = i;
  return previous;
}

void
reset_conf (void)
{
  wipe_values (&conf.values);

  conf.show_menu = 1;
  conf.cpp_line_directives = 1;
  conf.ignore_space_after_braced_command_name = 1;
  conf.max_macro_call_nesting = 100000;
  conf.no_index = 0;
  conf.no_user_commands = 0;

  /* special value always returned as 1 to mark that @ifcommandnotdefined
     is implemented.  Note that when called from the main program it is set
     from Perl using the configuration passed to the parser */
  store_value (&conf.values, "txicommandconditionals", "1");
}
