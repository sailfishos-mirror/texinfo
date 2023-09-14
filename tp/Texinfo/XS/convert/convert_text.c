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
text_convert (DOCUMENT *document, TEXT_OPTIONS *text_options)
{
  char *result;
  /* FIXME warn/error?  Or in the .xs code? */
  if (!document)
    {
      return strdup ("");
    }

  if (!text_options)
    text_options = new_text_options ();

  text_options->document_descriptor = document->descriptor;

  result = convert_to_text (document->tree, text_options);

  /*
  fprintf (stderr, "TEXT: using XS: '%.100s'\n", result);
   */
  destroy_text_options (text_options);

  return result;
}

