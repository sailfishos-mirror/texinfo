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
#include "tree.h"
#include "extra.h"
#include "node_name_normalization.h"

char *
parse_float_type (ELEMENT *current)
{   
  char *normalized;
  if (current->args.number > 0)
    normalized = convert_to_normalized (current->args.list[0]);
  else  
    normalized = strdup ("");
  add_extra_string (current, "float_type", normalized);
  return normalized;
}

void
add_to_float_record_list (FLOAT_RECORD_LIST *float_records, char *type,
                          ELEMENT *element)
{
  if (float_records->number == float_records->space)
    {
      float_records->float_types
               = realloc (float_records->float_types,
                          (float_records->space += 5) * sizeof (FLOAT_RECORD));
    }
  float_records->float_types[float_records->number].type = type;
  float_records->float_types[float_records->number].element = element;
  float_records->number++;
}

FLOAT_RECORD *
find_float_type (FLOAT_RECORD_LIST *float_records, char *float_type)
{
  size_t i;
  for (i = 0; i < float_records->number; i++)
    {
      FLOAT_RECORD *record = &float_records->float_types[i];
      if (!strcmp (record->type, float_type))
        return record;
    }
  return 0;
}

FLOAT_RECORD_LIST *
float_list_to_listoffloats_list (FLOAT_RECORD_LIST *floats_list)
{
  FLOAT_RECORD_LIST *result = malloc (sizeof (FLOAT_RECORD_LIST));
  memset (result, 0, sizeof (FLOAT_RECORD_LIST));

  /* a zero floats_list is unusual, it cannot happen when a document
     comes from parsing of Texinfo, but it may happen with a document
     created from code */

  if (floats_list && floats_list->number > 0)
    {
      size_t i;

      for (i = 0; i < floats_list->number; i++)
        {
          FLOAT_RECORD *float_record = &floats_list->float_types[i];
          char *float_type = float_record->type;
          ELEMENT *listoffloats_element;

          FLOAT_RECORD *listoffloats_type_record = find_float_type (result,
                                                                 float_type);
          /* add a new container of floats by float_type */
          if (!listoffloats_type_record)
            {
              listoffloats_element = new_element (ET_NONE);
              add_to_float_record_list (result, strdup (float_type),
                                        listoffloats_element);
            }
          else
            listoffloats_element = listoffloats_type_record->element;

          add_to_contents_as_array (listoffloats_element,
                                   float_record->element);
        }
    }
  return result;
}

void
destroy_listoffloats_list (FLOAT_RECORD_LIST *listoffloats_list)
{
  size_t i;
  for (i = 0; i < listoffloats_list->number; i++)
    {
      free (listoffloats_list->float_types[i].type);
      destroy_element (listoffloats_list->float_types[i].element);
    }
  free (listoffloats_list->float_types);
  free (listoffloats_list);
}

