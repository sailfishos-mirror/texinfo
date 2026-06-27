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
#include <string.h>

#include "customization_options.h"
#include "convert_to_texinfo.h"
#include "converters_options.h"
/* converter_output_tree */
#include "converter.h"


#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "types_data.h"
/* for lookup_extra* */
#include "extra.h"
#include "builtin_commands.h"
#include "debug.h"
#include "convert_to_plaintext.h"

static void
stream_output (CONVERTER *self, const char *text)
{
  text_append (&self->plaintext_converter.pending_text, text);
}

static void
stream_output_add_text (CONVERTER *self, const char *text)
{
  /* TODO */
  text_append (&self->plaintext_converter.pending_text, text);
}

static void
stream_output_add_next (CONVERTER *self, const char *text)
{
  /* TODO */
  text_append (&self->plaintext_converter.pending_text, text);
}

static void
stream_output_encoded (CONVERTER *self, const char *encoded)
{
  /* TODO */
  text_append (&self->plaintext_converter.pending_text, encoded);
}

static char *
stream_result (CONVERTER *self)
{
  /* TODO */
}

static void
stream_encode (CONVERTER *self, const char *text)
{
  /* TODO */
}

static int
stream_byte_count (void)
{
  /* TODO */
}


static void convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *e);


/* ALTIMP: _convert in Texinfo:Convert::Plaintext */
static void
convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *element)
{
  enum element_type type = element->type;

  /* TODO check right way to check text in union field */
  if (type_data[type].flags & TF_text)
    {
      /* TODO */
      if (element->e.text->end > 0)
        {
           stream_output (self, element->e.text->text);
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
    convert_to_plaintext_internal (self, element->e.c->contents.list[i]);

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


/* Return value to be freed by caller. */
char *
convert_to_plaintext (CONVERTER *self, const ELEMENT *e)
{
  if (!e)
    return strdup ("");
  text_init (&self->plaintext_converter.pending_text);
  convert_to_plaintext_internal (self, e);
  return self->plaintext_converter.pending_text.text;
}

void
plaintext_free_converter (CONVERTER *self)
{
}

void
plaintext_converter_initialize (CONVERTER *self)
{
}

CONVERTER_INITIALIZATION_INFO *
plaintext_converter_defaults (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf)
{
  CONVERTER_INITIALIZATION_INFO *format_defaults
    = new_converter_initialization_info ();

  /* add_plaintext_converter_regular_options_defaults (&format_defaults->conf); */

  return format_defaults;
}

char *
plaintext_output (CONVERTER *converter, DOCUMENT *document)
{
  return converter_output_tree (converter, document, 0, 0, 0, 0);
}

char *
plaintext_convert (CONVERTER *converter, DOCUMENT *document)
{
  char *result = convert_to_plaintext (converter, document->tree);
  return result;
}

char *
plaintext_convert_tree (CONVERTER *converter,
                           const ELEMENT *tree)
{
  char *result = convert_to_plaintext (converter, tree);
  return result;
}
