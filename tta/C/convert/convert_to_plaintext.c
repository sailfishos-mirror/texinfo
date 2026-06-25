/* Copyright 2010-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>. */

/* In sync with Texinfo::Convert::Plaintext.  Not written yet. */

#include <config.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "types_data.h"
/* for lookup_extra* */
#include "extra.h"
#include "builtin_commands.h"
/* get_label_element and collapse_spaces */
#include "utils.h"
#include "debug.h"
#include "convert_to_plaintext.h"


static void convert_to_plaintext_internal (const ELEMENT *e, TEXT *result);


#define ADD(x) text_append (result, x)

/* ALTIMP: _convert in Texinfo:Convert::Plaintext */
static void
convert_to_plaintext_internal (const ELEMENT *element, TEXT *result)
{
  enum element_type type = element->type;

  /* TODO check right way to check text in union field */
  if (type_data[type].flags & TF_text)
    {
      if (element->e.text->end > 0)
        {
           /* TODO */
           text_append_n (result,
                          element->e.text->text, element->e.text->end);
           return;
        }
    }

  /* %ignored_types in Plaintext.pm */
  if (type == ET_postamble_after_end
      || type == ET_preamble_before_beginning
      || type == ET_preamble_before_setfilename
      || type == ET_arguments_line)
    return;

  enum command_id cmd = element->e.c->cmd;
  if (cmd != CM_NONE)
    {
    }

  /* TODO: Index entry check */

  if (type == ET_index_entry_command)
    return;

  int cell = 0, preformatted = 0;

  if (cmd != CM_NONE)
    {
      /* TODO */
    }

  int paragraph = 0;

  if (type != ET_NONE)
    {
      if (type == ET_paragraph)
        {
          /* TODO */
        }
      else if (type == ET_preformatted || type == ET_rawpreformatted)
        {
          /* TODO */
        }
      else if (type == ET_def_line)
        {
          /* TODO */
        }
      else if (type == ET_menu_entry)
        {
          /* TODO */
        }
      /* TODO: Fake internal types used in Plaintext.pm */
      /* else if (type == ET_frenchspacing) */
      /* else if (type == ET__code) */
      /* else if (type == ET__stop_upper_case) */
      /* else if (type == ET__suppress_styles) */
      else if (type == ET_untranslated_def_line_arg)
        {
          /* TODO */
        }
    }

  /* Convert any contents */
  int i;
  for (i = 0; i < element->e.c->contents.number; i++)
    convert_to_plaintext_internal (element->e.c->contents.list[i], result);

  /* Now closing.  First, close types. */
  if (type != ET_NONE)
    {
    }

  /* Close paragraphs and preformatted. */
  if (paragraph)
    {
    }
  if (preformatted)
    {
    }

  /* Close commands */
  if (cmd != CM_NONE)
    {
    }
  return;
}


#undef ADD


/* Return value to be freed by caller. */
char *
convert_to_plaintext (const ELEMENT *e)
{
  TEXT result;

  if (!e)
    return strdup ("");
  text_init (&result);
  /* in case of a document without any content expanded, for instance
     containing only containers, we still want to output an empty string */
  text_append (&result, "");
  convert_to_plaintext_internal (e, &result);
  return result.text;
}
