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
#include <string.h>
#include <stdbool.h>
#include "uniconv.h"
#include "unistr.h"
#include "uninorm.h"

#include "tree_types.h"
#include "text.h"

#include "unicode_tables.c"

char *
normalize_NFC (const char *text)
{
  size_t lengthp;
  
  char *result = 0;
  /* FIXME error checking? */
  uint8_t *encoded_u8 = u8_strconv_from_encoding (text, "UTF-8",
                                                 iconveh_question_mark);
  uint8_t *normalized_u8 = u8_normalize (UNINORM_NFC, encoded_u8, strlen (encoded_u8),
                                         NULL, &lengthp);
  free (encoded_u8);
  result = u8_strconv_to_encoding (normalized_u8, "UTF-8", iconveh_question_mark);
  free (normalized_u8);
  return result;
}

char *
unicode_accent (char *text, ELEMENT *e)
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
            return "\xc4\xb1";
          else if (!strcmp (text, "j"))
            return "\xc8\xb7";
        }
      /* also correct for dotless I as dotless I is I */
      return strdup(text);
    }
  if (unicode_diacritics[e->cmd])
    {
      if (e->cmd != CM_tieaccent)
        {
          static TEXT accented_text;
          text_init (&accented_text);
          text_append (&accented_text, text);
          text_append (&accented_text, unicode_diacritics[e->cmd]);
          result = normalize_NFC (accented_text.text);
          free (accented_text.text);
        }
    }

  return result;
}
