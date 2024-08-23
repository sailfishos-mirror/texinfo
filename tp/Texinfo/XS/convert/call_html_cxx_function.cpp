/* Copyright 2023-2024 Free Software Foundation, Inc.

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

#include <unordered_map>
#include <iostream>

extern "C"
{
#include "converter_types.h"
}

#include "call_html_cxx_function.h"

// Using const char * did not work, there were spurious matches, so we use
// a std::string.
//typedef std::unordered_map<const char *, int> CXX_HASHMAP;
typedef std::unordered_map<std::string, int> CXX_HASHMAP;

void
init_registered_ids_hashmap (CONVERTER *self)
{
  self->registered_ids_hashmap = new (CXX_HASHMAP);
}

int
is_hashmap_registered_id (CONVERTER *self, const char *in_string)
{
  CXX_HASHMAP *registered_id = (CXX_HASHMAP *)self->registered_ids_hashmap;
  std::string string (in_string);
  int result = registered_id->count(string);
  return result;
}

void
hashmap_register_id (CONVERTER *self, const char *in_string)
{
  CXX_HASHMAP *registered_id = (CXX_HASHMAP *)self->registered_ids_hashmap;
  std::string string (in_string);
  (*registered_id)[string] = 1;
}

void
clear_registered_ids_hashmap (CONVERTER *self)
{
  if (self->registered_ids_hashmap)
    {
      CXX_HASHMAP *registered_id = (CXX_HASHMAP *)self->registered_ids_hashmap;
      registered_id->clear ();
    }
}

void
free_registered_ids_hashmap (CONVERTER *self)
{
  if (self->registered_ids_hashmap)
    {
      CXX_HASHMAP *registered_id = (CXX_HASHMAP *)self->registered_ids_hashmap;
      delete (registered_id);
    }
}

