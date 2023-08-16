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

/* In sync with Texinfo::Convert::Unicode */

#include <config.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "uniconv.h"
#include "unictype.h"
#include "uninorm.h"
#include "unistr.h"

#include "tree_types.h"
#include "text.h"
#include "utils.h"
#include "unicode.h"

#include "cmd_unicode.c"

char *
normalize_NFC (const char *text)
{
  size_t lengthp;

  char *result = 0;
  /* FIXME error checking? */
  uint8_t *encoded_u8 = u8_strconv_from_encoding (text, "UTF-8",
                                                 iconveh_question_mark);
  /* +1 to have the terminating NUL included in the string */
  uint8_t *normalized_u8 = u8_normalize (UNINORM_NFC, encoded_u8,
                                         u8_strlen (encoded_u8)+1,
                                         NULL, &lengthp);
  free (encoded_u8);
  result = u8_strconv_to_encoding (normalized_u8, "UTF-8", iconveh_question_mark);
  free (normalized_u8);
  return result;
}

char *
unicode_accent (const char *text, ELEMENT *e)
{
  char *result = 0;

  /*
  special handling of @dotless{i}.
  \x{0131}\x{0308} for @dotless{i} @" doesn't lead to NFC 00ef.
  so it is set to a real dotless i only if not in an accent command.
  Do the same for dotless j, even though we have no clear idea on
  what is going on for that character.
  */

  if (e->cmd == CM_dotless)
    {
      if (!e->parent || !e->parent->parent || !e->parent->parent->cmd
          || !unicode_diacritics[e->parent->parent->cmd])
        {
          if (!strcmp (text, "i"))
            /* dotless i in UTF-8 */
            return strdup("\xc4\xb1");
          else if (!strcmp (text, "j"))
            return strdup("\xc8\xb7");
        }
      /* also correct for dotless I as dotless I is I */
      return strdup(text);
    }

  if (unicode_diacritics[e->cmd])
    {
      static TEXT accented_text;
      if (e->cmd == CM_tieaccent)
        {
          /* tieaccent diacritic is naturally and correctly composed
             between two characters */
          uint8_t *encoded_u8 = u8_strconv_from_encoding (text, "UTF-8",
                                                  iconveh_question_mark);
          const uint8_t *next;
          ucs4_t first_char;
          next = u8_next (&first_char, encoded_u8);
          if (next && (uc_is_general_category (first_char, UC_CATEGORY_L)
                       /* ASCII digits */
                       || (first_char >= 0x0030 && first_char <= 0x0039)))
            {
              const uint8_t *remaining;
              ucs4_t second_char;
              remaining = u8_next (&second_char, next);
              if (remaining && (uc_is_general_category (second_char, UC_CATEGORY_L)
                                /* ASCII digits */
                                || (second_char >= 0x0030 && second_char <= 0x0039)))
                {
                  char *first_char_text;
                  char *next_text;
                  uint8_t *first_char_u8 = malloc (7 * sizeof(uint8_t));
                  int first_char_len = u8_uctomb (first_char_u8, first_char, 6);
                  if (first_char_len < 0)
                    fatal ("u8_uctomb returns negative value");
                  first_char_u8[first_char_len] = 0;
                  first_char_text = u8_strconv_to_encoding (first_char_u8, "UTF-8",
                                                            iconveh_question_mark);
                  free (first_char_u8);
                  text_init (&accented_text);
                  text_append (&accented_text, first_char_text);
                  free (first_char_text);
                  text_append (&accented_text, unicode_diacritics[e->cmd]);
                  next_text = u8_strconv_to_encoding (next, "UTF-8",
                                                      iconveh_question_mark);
                  text_append (&accented_text, next_text);
                  free (next_text);
                  result = normalize_NFC (accented_text.text);
                  free (accented_text.text);
                }
            }
          free (encoded_u8);
          if (result)
            return result;
        }
      text_init (&accented_text);
      text_append (&accented_text, text);
      text_append (&accented_text, unicode_diacritics[e->cmd]);
      result = normalize_NFC (accented_text.text);
      free (accented_text.text);
    }

  return result;
}

/* FIXME converter in perl */
char *
format_unicode_accents_stack_internal (char *text, ELEMENT *stack,
  char *(*format_accent)(char *text, ELEMENT *element, int set_case),
  int set_case)
{
  int i;
  char *result = strdup (text);

  for (i = stack->contents.number; i >= 0; i--)
    {
      ELEMENT *accent_command = stack->contents.list[i];
      char *formatted_result = unicode_accent (result, accent_command);
      if (formatted_resut)
        {
          free (result);
          result = formatted_result;
        }
      else
        break;
    }

/* FIXME uc/lc on multibyte characters?
   use libunistring u8_toupper
  if ($set_case) {
    if ($set_case > 0) {
      $result = uc ($result);
    } else {
      $result = lc ($result);
    }
  }
 */

  for (; i >= 0; i--)
    {
      ELEMENT *accent_command = stack->contents.list[i];
      char *formatted_result
          = (*format_accent) (result, accent_command, set_case);
      free (result);
      result = formatted_result;
    }
  return result;
}


/* FIXME a converter is passed in perl to encoded_accents and
  to (*format_accent) */
char *
encoded_accents (char *text, ELEMENT *stack, char *encoding,
  char *(*format_accent)(char *text, ELEMENT *element, int set_case),
  int set_case)
{
  if (encoding)
    {
     /*
      in case an encoding is directly specified with -c OUTPUT_ENCODING_NAME
      in upper case to match with the encodings in Texinfo input, we convert
      to lower case to match the encoding names used here.  In the code
      encoding names are lower cased early.
     */
      int possible_encoding;
      char *normalized_encoding = normalize_encoding_name
                                      (encoding, &possible_encoding);
      if (possible_encoding)
        {
          if (!strcmp (normalized_encoding, "utf-8"))
            {
              return format_unicode_accents_stack_internal (text, stack,
                                                format_accent, set_case);
            }
          /*
               } elsif ($unicode_to_eight_bit{$encoding}) {
      return _format_eight_bit_accents_stack($converter, $text, $stack, $encoding,
                               $format_accent, $set_case);
    }

           */
        }
    }
  return 0;
}
