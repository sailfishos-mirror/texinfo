/* Copyright 2010-2023 Free Software Foundation, Inc.
              
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

/* functions in this file correspond to Texinfo::Convert::Converter */

#include <config.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "command_ids.h"
#include "utils.h"
#include "builtin_commands.h"
#include "converter.h"

/* freed by caller */
static COMMAND_OPTION_VALUE *
new_option_value (int type, int int_value, char *char_value)
{
  COMMAND_OPTION_VALUE *result
    = (COMMAND_OPTION_VALUE *) malloc (sizeof (COMMAND_OPTION_VALUE));
  result->type = type;
  if (type == GO_int)
    result->int_value = int_value;
  else
    result->char_value = char_value;
  return result;
}

/* freed by caller */
static COMMAND_OPTION_VALUE *
command_init (enum command_id cmd, OPTIONS *init_conf)
{
  COMMAND_OPTION_REF *init_conf_ref;
  COMMAND_OPTION_DEFAULT *option_default;
  COMMAND_OPTION_VALUE *option_value = 0;
  if (init_conf)
    {
      init_conf_ref = get_command_option (init_conf, cmd);
      if (init_conf_ref)
        {
          if (init_conf_ref->type == GO_int)
            {
              if (*(init_conf_ref->int_ref) >= 0)
                {
                  option_value
                    = new_option_value (GO_int, *(init_conf_ref->int_ref), 0);
                  free (init_conf_ref);
                  return option_value;
                }
            }
          else
            {
              if (*(init_conf_ref->char_ref))
                {
                  option_value
                    = new_option_value (GO_char, -1, *(init_conf_ref->char_ref));
                  free (init_conf_ref);
                  return option_value;
                }
            }
        }
      free (init_conf_ref);
    }
  option_default = &command_option_default_table[cmd];
  if (option_default->type == GO_int)
    {
      if (option_default->value >= 0)
        option_value = new_option_value (GO_int, option_default->value, 0); 
    }
  else if (option_default->type == GO_char)
    {
      if (option_default->string)
        option_value = new_option_value (GO_char, -1, option_default->string);
    }
  return 0;
}

void
set_global_document_commands (CONVERTER *converter,
                              const enum commands_location location,
                              const enum command_id *cmd_list)
{
  if (location == CL_before)
    {
      int i;
      for (i = 0; cmd_list[i] > 0; i++)
        {
          enum command_id cmd = cmd_list[i];
          COMMAND_OPTION_VALUE *option_value = command_init (cmd,
                                                converter->init_conf);
          if (option_value)
            {
              COMMAND_OPTION_REF *option_ref
               = get_command_option (converter->conf, cmd);
              if (option_value->type == GO_int)
                *(option_ref->int_ref) = option_value->int_value;
              else
                *(option_ref->char_ref) = option_value->char_value;

              free (option_value);
            }
        }
    }
  else
    {
      int i;
      for (i = 0; cmd_list[i] > 0; i++)
        {
          ELEMENT *element;
          enum command_id cmd = cmd_list[i];
          if (converter->conf->DEBUG >= 0 && converter->conf->DEBUG)
            {
              fprintf (stderr, "SET_global(%s) %s\n",
                       commands_location_names[location],
                       builtin_command_data[cmd].cmdname);
            }
          element = set_global_document_command (converter, cmd, location);
          if (!element)
            {
              COMMAND_OPTION_VALUE *option_value = command_init (cmd,
                                                      converter->init_conf);
              if (option_value)
                {
                  COMMAND_OPTION_REF *option_ref
                    = get_command_option (converter->conf, cmd);
                  if (option_value->type == GO_int)
                    *(option_ref->int_ref) = option_value->int_value;
                  else
                    *(option_ref->char_ref) = option_value->char_value;

                  free (option_value);
                }
            }
        }
    }
}
