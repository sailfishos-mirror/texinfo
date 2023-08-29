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
#include "extra.h"
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
  options->set_case = set_case;

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

/* result to be freed by caller */
char *
brace_no_arg_command (ELEMENT *e, TEXT_OPTIONS *options)
{
  char *result;
  enum command_id cmd = e->cmd;
  char *encoding = 0;

  if (options && options->encoding)
    encoding = options->encoding;

  if (cmd == CM_click)
    {
      char *clickstyle = lookup_extra_string (e, "clickstyle");
      if (clickstyle)
        {
          enum command_id clickstyle_cmd = lookup_builtin_command (clickstyle);
          if (clickstyle_cmd && text_brace_no_arg_commands[clickstyle_cmd])
            {
              cmd = clickstyle_cmd;
            }
        }
    }

  if (!(options && options->ascii_glyph)
      || !(unicode_character_brace_no_arg_commands[cmd].is_extra > 0))
    {
      result = strdup (unicode_brace_no_arg_command (cmd, encoding));
    }

  /* no converter in options yet, interface to be done
  if (!defined($result) and $options and $options->{'converter'}) {
    my $tree
     = Texinfo::Convert::Utils::translated_command_tree($options->{'converter'},
                                                        $command);
    if ($tree) {
      $result = _convert($tree, $options);
    }
  }
  */
  if (!result)
    {
      if (options && options->sort_string
          && sort_brace_no_arg_commands[cmd]
          && strlen (sort_brace_no_arg_commands[cmd]))
        result = strdup (sort_brace_no_arg_commands[cmd]);
      else
        result = strdup (text_brace_no_arg_commands[cmd]);
    }

  if (options && options->set_case
      && (command_other_flags (e) & CF_letter_no_arg))
    {
      char *cased = to_upper_or_lower_multibyte (result, options->set_case);
      free (result);
      result = cased;
    }

  return result;
}

static const char *underline_symbol[5] = {"*", "*", "=", "-", "."};

/* Return the text of an underlined heading, possibly indented. */
/* FIXME converter argument in perl */
/* result to be freed by caller */
char *
text_heading (ELEMENT *current, char *text, int numbered, int indent_length)
{
  int i;
  TEXT result;
  int level;
  int status;
  int text_width;

  text_init (&result);

  text_append (&result, text);

  /* end of lines spaces are ignored in conversion.  However in
     rare cases, invalid nestings leave an end of line, so we chomp.
   */
  if (result.end > 0 && result.text[result.end - 1] == '\n')
    result.text[--result.end] = '\0';

  if (result.text[strspn (result.text, whitespace_chars)] == '\0')
    {
      free (result.text);
      return strdup ("");
    }

  text_append (&result, "\n");

  if (indent_length > 0)
    {
      for (i = 0; i < indent_length; i++)
        text_append_n (&result, " ", 1);
    }
  else
   indent_length = 0;

  level = lookup_extra_integer (current, "section_level", &status);
  if (!status)
    level = section_level (current);

  text_width = width_multibyte (text);
  /* FIXME it seems strange to remove the indent length from the underlined
     width? */
  for (i = 0; i < text_width - indent_length; i++)
    text_append (&result, underline_symbol[level]);
  text_append (&result, "\n");

  return result.text;
}

char *
convert_to_text (ELEMENT *root, TEXT_OPTIONS *options)
{
}

