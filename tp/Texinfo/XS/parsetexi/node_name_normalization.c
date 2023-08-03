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

/* In sync with Texinfo::Convert::NodeNameNormalization */

#include <config.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include "uniconv.h"
#include "unistr.h"

/* for whitespace_chars and isascii_alnum */
#include "parser.h"
#include "tree_types.h"
#include "element_types.h"
#include "unicode.h"
#include "text.h"

/* put in another file? Add an extern declaration in the .h file?*/
#include "command_tables.c"

/* FIXME use directly builtin_command_data[] instead of command_data? */

int ref_3_args_order[] = {0, 1, 2, -1};
int ref_5_args_order[] = {0, 1, 2, 4, 3, -1};

#define ADD(x) text_append (result, x)
void
convert_to_normalized_internal (ELEMENT *e, TEXT *result)
{
  if ((e->type == ET_ignorable_spaces_after_command
       || e->type == ET_postamble_after_end
       || e->type == ET_preamble_before_beginning
       || e->type == ET_spaces_at_end
       || e->type == ET_spaces_before_paragraph
       || e->type == ET_space_at_end_menu_node
       || e->type == ET_spaces_after_close_brace)
      || (e->cmd
          && ((e->cmd == CM_anchor
               || e->cmd == CM_footnote
               || e->cmd == CM_shortcaption
               || e->cmd == CM_caption
               || e->cmd == CM_hyphenation
               || e->cmd == CM_sortas
               || e->cmd == CM_seeentry))
             /* here ignore the line commands */
              || (e->args.number > 0
                  && (e->args.list[0]->type == ET_line_arg
                      || e->args.list[0]->type == ET_rawline_arg))))
    return;
  else if (e->text.end > 0)
    {
      char *p = e->text.text;
      while (*p)
        {
          int n = strcspn (p, whitespace_chars);
          if (n)
            {
              text_append_n (result, p, n);
              p += n;
            }
          if (*p)
            {
              int n = strspn (p, whitespace_chars);
              if (n)
                {
                  ADD(" ");
                  p += n;
                }
            }
        }
    }
  if (e->cmd)
    {
      if (command_normalization_text[e->cmd])
        ADD(command_normalization_text[e->cmd]);
      else if (e->cmd == CM_click)
        {
          enum command_id cmd;
          KEY_PAIR *k = lookup_extra (e, "clickstyle");
          if (k && k->value)
            {
              char *command_name = (char *) k->value;
              cmd = lookup_command (command_name);
              if (command_normalization_text[cmd])
                ADD(command_normalization_text[cmd]);
            }
        }
      else if (command_data(e->cmd).flags & CF_accent)
        {
          if (e->args.number > 0)
            {
              TEXT accent_text;
              char *accented_char;

              text_init (&accent_text);
              convert_to_normalized_internal (e->args.list[0], &accent_text);
              accented_char = unicode_accent (accent_text.text, e);
              if (!accented_char)
                ADD(accent_text.text);
              /* TODO?  Should never happen
                {
                  accented_char = ascii_accent (accent_text, e)
                  ADD(accented_char);
                  free (accented_char);
                }
               */
              else
                {
                  ADD(accented_char);
                  free (accented_char);
                }
              free (accent_text.text);
            }
        }
      else if (command_data(e->cmd).flags & CF_ref)
        {
          int index = 0;
          int *arguments_order = ref_5_args_order;
          if (e->cmd == CM_inforef || e->cmd == CM_link)
            arguments_order = ref_3_args_order;
          while (arguments_order[index] >= 0)
            {
              if (e->args.number > arguments_order[index])
                {
                  TEXT arg_text;

                  text_init (&arg_text);
                  convert_to_normalized_internal (
                    e->args.list[arguments_order[index]], &arg_text);
                  if (arg_text.end > 0)
                    {
                      char *non_space_char = arg_text.text
                              + strspn (arg_text.text, whitespace_chars);
                      if (*non_space_char)
                        {
                          ADD (arg_text.text);
                          free (arg_text.text);
                          break;
                        }
                    }
                }
              index++;
            }
        }
      else if (e->args.number > 0
               && (e->args.list[0]->type == ET_brace_command_arg
                   || e->cmd == CM_math))
        {
          convert_to_normalized_internal (e->args.list[0], result);
          return;
        }
    }
  if (e->contents.number > 0)
    {
      int i;
      for (i = 0; i < e->contents.number; i++)
        convert_to_normalized_internal (e->contents.list[i], result);
    }
}
#undef ADD

/* Return value to be freed by caller. */
char *
convert_to_normalized (ELEMENT *e)
{
  TEXT result;

  if (!e)
    return strdup ("");
  text_init (&result);
  /* FIXME this is needed for a test result with empty listoffloats */
  text_append (&result, "");
  convert_to_normalized_internal (e, &result);
  return result.text;
}

void
protect_unicode_char (char *text, TEXT *result)
{
  uint8_t *encoded_u8;
  const uint8_t *next;
  ucs4_t next_char;
  char *str;

  /* determine unicode codepoint */
  encoded_u8 = u8_strconv_from_encoding (text, "UTF-8",
                                         iconveh_question_mark);
  next = u8_next (&next_char, encoded_u8);
  if (next && *next)
    bug ("Something left on next_str/encoded_u8\n");
  free (encoded_u8);

  if (next_char < 0xFFFF)
    {
      xasprintf(&str, "%04lx", next_char);
      text_append_n (result, "_", 1);
    }
  else
    {
      xasprintf(&str, "%06lx", next_char);
      text_append_n (result, "__", 2);
    }
  text_append (result, str);
  free (str);
}

char *unicode_to_protected (char *text)
{
  TEXT result;
  char *p = text;

  text_init (&result);
  text_append (&result, "");

  while (*p)
    {
      int n = strspn (p, " ");
      if (n)
        {
          text_append_n (&result, "-", 1);
          p += n;
          if (!*p)
            break;
        }

      if (isascii_alnum (*p))
        {
          text_append_n (&result, p, 1);
          p++;
        }
      else
        {
          int char_len = 1;
          char *next_str;

          /* Count any UTF-8 continuation bytes. */
          while ((p[char_len] & 0xC0) == 0x80)
            char_len++;

          next_str = strndup (p, char_len);
          protect_unicode_char (next_str, &result);

          free (next_str);
          p += char_len;
        }
    }
  return (result.text);
}

/* frees input if another string is returned */
char *normalize_top_name (char *text)
{
  char *result = text;
  if (strlen(text) == 3)
    {
      char *normalized = strdup (text);
      char *p;

      for (p = normalized; *p; p++)
        if (isascii_alnum(*p))
          *p = tolower (*p);

      if (!strcmp (normalized, "top"))
        {
          result = strdup ("Top");
          free (text);
        }

      free (normalized);
    }
  return result;
}

char *
convert_to_identifier (ELEMENT *root)
{
  char *converted_name = convert_to_normalized (root);
  char *normalized_name = normalize_NFC (converted_name);
  char *protected = unicode_to_protected (normalized_name);
  char *result = normalize_top_name (protected);

  free (converted_name);
  free (normalized_name);
  return result;
}
