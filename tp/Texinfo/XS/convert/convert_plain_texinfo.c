/* Copyright 2023 Free Software Foundation, Inc.

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

#include "converter_types.h"
#include "convert_to_texinfo.h"
#include "convert_plain_texinfo.h"

char *
plain_texinfo_convert (DOCUMENT *document)
{
  char *result;
  /* FIXME warn/error?  Or in the .xs code? */
  if (!document)
    {
      return strdup ("");
    }
  result = convert_to_texinfo (document->tree);

  /*
  fprintf (stderr, "PLAIN TEXI: using XS: '%.100s'\n", result);
   */

  return result;
}

