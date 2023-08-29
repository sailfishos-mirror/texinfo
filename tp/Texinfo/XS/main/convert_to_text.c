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

/* In sync with Texinfo::Convert::Text */

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "tree_types.h"
#include "command_ids.h"
#include "text.h"
#include "utils.h"
#include "convert_utils.h"
#include "builtin_commands.h"
#include "unicode.h"
#include "convert_to_text.h"

#include "cmd_symbol.c"
#include "cmd_text.c"

char *
ascii_accent (char *text, ELEMENT *command)
{
  enum command_id cmd = command->cmd;
  char *result;
  static TEXT accent_text;

  text_init (&accent_text);

  if (cmd == CM_udotaccent)
    {
      text_append (&accent_text, ".");
      text_append (&accent_text, text);
    }
  else
    {
      text_append (&accent_text, text);
      if (cmd == CM_H)
        text_append (&accent_text, "''");
      else if (cmd == CM_dotaccent)
        text_append (&accent_text, ".");
      else if (cmd == CM_ringaccent)
        text_append (&accent_text, "*");
      else if (cmd == CM_tieaccent)
        text_append (&accent_text, "[");
      else if (cmd == CM_u)
        text_append (&accent_text, "(");
      else if (cmd == CM_ubaraccent)
        text_append (&accent_text, "_");
      else if (cmd == CM_v)
        text_append (&accent_text, "<");
      else if (cmd == CM_ogonek)
        text_append (&accent_text, ";");
      else if (cmd != CM_dotless)
        text_append (&accent_text, builtin_command_name (cmd));
    }
  result = strdup (accent_text.text);
  return result;
}

char *
ascii_accents_internal (char *text, ELEMENT *stack, int set_case)
{
  char *result;
  int i;

  if (set_case)
    result = to_upper_or_lower_multibyte (text, set_case);
  else
    result = strdup (text);

  for (i = stack->contents.number - 1; i >= 0; i--)
    {
      ELEMENT *accent_command = stack->contents.list[i];
      char *formatted_accent = ascii_accent (result, accent_command);
      free (result);
      result = formatted_accent;
    }

  return result;
}

TEXT_OPTIONS *
new_text_options (void)
{
  TEXT_OPTIONS *options = malloc (sizeof (TEXT_OPTIONS));
  memset (options, 0, sizeof (TEXT_OPTIONS));
  options->expanded_formats = new_expanded_formats (0);
  return options;
}

void
destroy_options (TEXT_OPTIONS *options)
{
  /* encoding? */
  free (options->expanded_formats);
  free (options);
}

/* format an accent command and nested accents within as Text. */
char *
text_accents (ELEMENT *accent, char *encoding, int set_case)
{
  ACCENTS_STACK *accent_stack = find_innermost_accent_contents (accent);
  char *text;
  char *result;
  TEXT_OPTIONS *options = new_text_options ();

  options->encoding = encoding;
  options->sc = set_case;

  if (accent_stack->argument)
    text = convert_to_text (accent_stack->argument, options);
  else
    text = strdup ("");

  result = encoded_accents (text, accent_stack->stack, encoding,
                            ascii_accents_internal, set_case);

  if (!result)
    result = ascii_accents_internal (text, accent_stack->stack, set_case);
  free (text);
  destroy_accent_stack (accent_stack);
  destroy_options (options);
  return result;
}

char *
convert_to_text (ELEMENT *root, TEXT_OPTIONS *options)
{
}

