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
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

#include <config.h>
#include <stdlib.h>
#include <string.h>

#include "tree_types.h"
/* for fatal */
#include "utils.h"
#include "output_unit.h"

static OUTPUT_UNIT_LIST *output_units_list;
static size_t output_units_number;
static size_t output_units_space;

OUTPUT_UNIT_LIST *
retrieve_output_units (int output_units_descriptor)
{
  /* the list can still be uninitialized and .list be 0 */
  if (output_units_descriptor <= output_units_number)
    return &output_units_list[output_units_descriptor -1];
  return 0;
}

/* descriptor starts at 1, 0 is an error */
size_t
new_output_units_descriptor (void)
{
  size_t output_units_index;
  int slot_found = 0;
  int i;

  for (i = 0; i < output_units_number; i++)
    {
      if (output_units_list[i].list == 0)
        {
          slot_found = 1;
          output_units_index = i;
        }
    }
  if (!slot_found)
    {
      if (output_units_number == output_units_space)
        {
          output_units_list = realloc (output_units_list,
                      (output_units_space += 5) * sizeof (OUTPUT_UNIT_LIST));
          if (!output_units_list)
            fatal ("realloc failed");
        }
      output_units_index = output_units_number;
      output_units_number++;
    }

  memset (&output_units_list[output_units_index], 0, sizeof (OUTPUT_UNIT_LIST));

  return output_units_index +1;
}
