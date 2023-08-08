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

/* code that does not fit anywhere else */

#include <config.h>
#include <string.h>
#include <ctype.h>

#include "tree_types.h"
#include "tree.h"
#include "command_ids.h"
#include "utils.h"

const char *whitespace_chars = " \t\v\f\r\n";

int
isascii_alnum (int c)
{
  return (((c & ~0x7f) == 0) && isalnum(c));
}

int
isascii_lower (int c)
{
  return (((c & ~0x7f) == 0) && islower(c));
}

int
isascii_upper (int c)
{
  return (((c & ~0x7f) == 0) && isupper(c));
}

ELEMENT *
get_label_element (ELEMENT *e)
{
  if ((e->cmd == CM_node || e->cmd == CM_anchor)
      && e->args.number > 0)
    return e->args.list[0];
  else if (e->cmd == CM_float && e->args.number >= 2)
    return e->args.list[1];
  return 0;
}

/* Read a name used for @set, @value and translations arguments. */
char *
read_flag_name (char **ptr)
{
  char *p = *ptr, *q;
  char *ret = 0;

  q = p;
  if (!isascii_alnum (*q) && *q != '-' && *q != '_')
    return 0; /* Invalid. */

  while (!strchr (whitespace_chars, *q)
         && !strchr ("{\\}~`^+\"<>|@", *q))
    q++;
  ret = strndup (p, q - p);
  p = q;

  *ptr = p;
  return ret;
}

void
delete_global_info (GLOBAL_INFO *global_info_ref)
{
  GLOBAL_INFO global_info = *global_info_ref;

  free (global_info.dircategory_direntry.contents.list);
  free (global_info.footnotes.contents.list);

  free (global_info.global_input_encoding_name);

#define GLOBAL_CASE(cmx) \
  free (global_info.cmx.contents.list)

  GLOBAL_CASE(author);
  GLOBAL_CASE(detailmenu);
  GLOBAL_CASE(hyphenation);
  GLOBAL_CASE(insertcopying);
  GLOBAL_CASE(printindex);
  GLOBAL_CASE(subtitle);
  GLOBAL_CASE(titlefont);
  GLOBAL_CASE(listoffloats);
  GLOBAL_CASE(part);
  GLOBAL_CASE(floats);
  GLOBAL_CASE(allowcodebreaks);
  GLOBAL_CASE(clickstyle);
  GLOBAL_CASE(codequotebacktick);
  GLOBAL_CASE(codequoteundirected);
  GLOBAL_CASE(contents);
  GLOBAL_CASE(deftypefnnewline);
  GLOBAL_CASE(documentencoding);
  GLOBAL_CASE(documentlanguage);
  GLOBAL_CASE(exampleindent);
  GLOBAL_CASE(firstparagraphindent);
  GLOBAL_CASE(frenchspacing);
  GLOBAL_CASE(headings);
  GLOBAL_CASE(kbdinputstyle);
  GLOBAL_CASE(microtype);
  GLOBAL_CASE(paragraphindent);
  GLOBAL_CASE(shortcontents);
  GLOBAL_CASE(urefbreakstyle);
  GLOBAL_CASE(xrefautomaticsectiontitle);

#undef GLOBAL_CASE
}

