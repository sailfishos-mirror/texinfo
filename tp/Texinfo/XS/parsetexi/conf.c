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
#include "utils.h"
#include "macro.h"
#include "conf.h"

/* Configuration values. */
CONF parser_conf;

void
conf_set_show_menu (int i)
{
  parser_conf.show_menu = i;
}

void
conf_set_CPP_LINE_DIRECTIVES (int i)
{
  parser_conf.cpp_line_directives = i;
}

void
conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i)
{
  parser_conf.ignore_space_after_braced_command_name = i;
}

void
conf_set_MAX_MACRO_CALL_NESTING (int i)
{
  parser_conf.max_macro_call_nesting = i;
}

int
conf_set_NO_INDEX (int i)
{
  int previous = parser_conf.no_index;
  parser_conf.no_index = i;
  return previous;
}

int
conf_set_NO_USER_COMMANDS (int i)
{
  int previous = parser_conf.no_user_commands;
  parser_conf.no_user_commands = i;
  return previous;
}

int
conf_set_DEBUG (int i)
{
  int previous = parser_conf.debug;
  parser_conf.debug = i;
  return previous;
}

void
conf_clear_INCLUDE_DIRECTORIES (void)
{
  clear_strings_list (&parser_conf.include_directories);
}

void
conf_add_include_directory (const char *filename)
{
  add_include_directory (filename, &parser_conf.include_directories);
}

void
conf_clear_expanded_formats (void)
{
  clear_expanded_formats (parser_conf.expanded_formats);
}

void
conf_add_expanded_format (const char *format)
{
  add_expanded_format (parser_conf.expanded_formats, format);
}

void
conf_set_documentlanguage (const char *value)
{
  free (parser_conf.documentlanguage);
  parser_conf.documentlanguage = value ? strdup (value) : 0;
  parser_conf.global_documentlanguage_fixed = 1;
}

void
conf_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i)
{
  parser_conf.doc_encoding_for_input_file_name = i;
}

void
conf_set_INPUT_FILE_NAME_ENCODING (const char *value)
{
  free (parser_conf.input_file_name_encoding);
  parser_conf.input_file_name_encoding = value ? strdup (value) : 0;
}

void
conf_set_LOCALE_ENCODING (const char *value)
{
  free (parser_conf.locale_encoding);
  parser_conf.locale_encoding =  value ? strdup (value) : 0;
}

void
conf_set_accept_internalvalue (int value)
{
  parser_conf.accept_internalvalue = value;
}

void
reset_conf (void)
{
  wipe_values (&parser_conf.values);
  clear_strings_list (&parser_conf.include_directories);
  free (parser_conf.documentlanguage);
  free (parser_conf.input_file_name_encoding);
  free (parser_conf.locale_encoding);

  parser_conf.accept_internalvalue = 0;
  parser_conf.cpp_line_directives = 1;
  parser_conf.debug = 1;
  parser_conf.doc_encoding_for_input_file_name = 1;
  parser_conf.documentlanguage = 0;
  parser_conf.ignore_space_after_braced_command_name = 1;
  parser_conf.input_file_name_encoding = 0;
  parser_conf.locale_encoding = 0;
  parser_conf.max_macro_call_nesting = 100000;
  parser_conf.no_index = 0;
  parser_conf.no_user_commands = 0;
  parser_conf.show_menu = 1;

  parser_conf.global_documentlanguage_fixed = 0;

  memcpy (parser_conf.expanded_formats, default_expanded_formats,
          sizeof (parser_conf.expanded_formats));
  /* It would have been cleaner to separate setting default values,
     but it is not needed, as default_expanded_formats is already zeros,
     so the call can be kept in comments
  conf_clear_expanded_formats ();
   */

  add_include_directory (".", &parser_conf.include_directories);

  /* special value always returned as 1 to mark that @ifcommandnotdefined
     is implemented.  Note that when called from the main program it is set
     from Perl using the configuration passed to the parser */
  store_value (&parser_conf.values, "txicommandconditionals", "1");
}
