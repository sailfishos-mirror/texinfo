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
#include <stdlib.h>
#include <string.h>

#include "utils.h"
#include "macro.h"
#include "parser_conf.h"

/* Configuration values. */
PARSER_CONF global_parser_conf;

void
clear_parser_conf (PARSER_CONF *parser_conf)
{
  wipe_values (&parser_conf->values);
  clear_strings_list (&parser_conf->include_directories);
  free (parser_conf->documentlanguage);
  free (parser_conf->input_file_name_encoding);
  free (parser_conf->locale_encoding);
}

void
clear_global_parser_conf (void)
{
  clear_parser_conf (&global_parser_conf);
}

