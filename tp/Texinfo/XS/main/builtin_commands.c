/* Copyright 2010-2021 Free Software Foundation, Inc.

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
#include <stdlib.h>

#include "command_ids.h"
#include "tree_types.h"
#include "extra.h"
#include "builtin_commands.h"

#include "command_data.c"

static int
compare_command_fn (const void *a, const void *b)
{
  const COMMAND *ca = (COMMAND *) a;
  const COMMAND *cb = (COMMAND *) b;

  return strcmp (ca->cmdname, cb->cmdname);
}

/* Return element number in command_data array.  Return 0 if not found. */
enum command_id
lookup_builtin_command (char *cmdname)
{
  COMMAND *c;
  COMMAND target;

  target.cmdname = cmdname;

  c = (COMMAND *) bsearch (&target, builtin_command_data + 1,
        /* number of elements */
        sizeof (builtin_command_data) / sizeof (builtin_command_data[0]) - 1,
        sizeof (builtin_command_data[0]),
        compare_command_fn);

  if (c)
    {
      enum command_id cmd;
      cmd = c - &builtin_command_data[0];
      return cmd;
   }
  return 0;
}

/* this should be used when the user-defined commands are not avalable,
   ie outside of the parser */
char *
element_command_name (ELEMENT *e)
{
  if (e->cmd && e->cmd <
             sizeof(builtin_command_data) / sizeof((builtin_command_data)[0]))
    return builtin_command_data[e->cmd].cmdname;
  else
    {
      KEY_PAIR *k_cmdname;
      k_cmdname = lookup_info (e, "command_name");
      if (k_cmdname && k_cmdname->value)
        return (char *)k_cmdname->value;
    }

  return 0;
}
