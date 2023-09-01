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

#include "convert_to_text.h"
#include "document.h"
#include "convert_text.h"

char *
text_convert (DOCUMENT *document)
{
  char *result;
  /* FIXME warn/error?  Or in the .xs code? */
  if (!document)
    {
      return strdup ("");
    }

  TEXT_OPTIONS *options = new_text_options ();

  result = convert_to_text (document->tree, options);

  /*
  fprintf (stderr, "EXPERIMENTAL: using XS: '%.100s'\n", result);
   */

  destroy_options (options);

  return result;
}

