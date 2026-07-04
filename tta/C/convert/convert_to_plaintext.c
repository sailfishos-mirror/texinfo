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

/* In sync with Texinfo::Convert::Plaintext.  Very little written yet. */

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
#include "base_utils.h"
#include "plaintext_paragraph.h"

/* Data structure utilities.  These could possibly be placed in a
   separate file, or defined with macros in list_macros.h. */

void
reset_count_context_stack (COUNT_CONTEXT_STACK *stack)
{
  stack->number = 0;
  stack->space = 0;
  free (stack->list);
  stack->list = 0;
}

def_list_fns(COUNT_CONTEXT_STACK, count_context, COUNT_CONTEXT, 2);


static void
destroy_count_context (COUNT_CONTEXT *ctxt)
{
  text_destroy (&ctxt->result);
}

void
pop_count_context (COUNT_CONTEXT_STACK *stack)
{
  if (stack->number == 0)
    fatal ("count context stack empty");

  destroy_count_context (&stack->list[stack->number--]);
}

COUNT_CONTEXT *
top_count_context (const COUNT_CONTEXT_STACK *stack)
{
  if (stack->number == 0)
    fatal ("count context stack empty for top");

  return &stack->list[stack->number - 1];
}


void
clear_count_context_stack (COUNT_CONTEXT_STACK *stack)
{
  while (stack->number > 0)
    pop_count_context (stack);
}





def_list_fns(FORMATTER_STACK, formatter, FORMATTER, 1);

FORMATTER *
top_formatter (FORMATTER_STACK *stack)
{
  if (stack->number == 0)
    fatal ("formatter stack empty");
  return &stack->list[stack->number - 1];
}
enum formatter_type {
  formatter_paragraph,
  formatter_line,
  formatter_unfilled
};

FORMATTER
new_formatter (CONVERTER *self, enum formatter_type type)
{
  FORMATTER formatter = { 0 };
  formatter.container.paragraph = para_new ();

  switch (type)
    {
    case formatter_paragraph:
      break;
    case formatter_line:
      break;
    case formatter_unfilled:
      break;
    default:
      fatal ("unknown container type\n");
    }
  return formatter;
}

void
push_top_formatter (CONVERTER *self)
{
  FORMATTER top_formatter = new_formatter(self, formatter_line);
  add_(formatter) (&self->plaintext_converter.formatters, top_formatter);
}

void
pop_formatter (CONVERTER *self)
{
  FORMATTER_STACK *stack = &self->plaintext_converter.formatters;

  if (stack->number == 0)
    fatal ("formatter stack empty");

  /* Note: no memory needs to be freed here. */
  /* Note: para_end should have been called by this point to free memory
     resources in plaintext_paragraph.c. */

  stack->number--;
}

static void
plaintext_conversion_initialization  (CONVERTER *self, DOCUMENT *document)
{
  COUNT_CONTEXT bottom_count_context = { 0 };
  add_(count_context) (&self->plaintext_converter.count_context,
                       bottom_count_context);

  /* TODO ... */

  push_top_formatter (self);
}

static void
plaintext_conversion_finalization  (CONVERTER *self)
{
  /* TODO */
}

static void
stream_output (CONVERTER *self, const char *text)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = &self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_count_context (&self_plaintext->count_context);

  text_append (&count_context->result, text);
}

static void
stream_output_add_text (CONVERTER *self, const char *text)
{
  /* TODO */
  para_set_state (top_formatter(&self->plaintext_converter.formatters)->container.paragraph);
  TEXT result = para_add_text (text, strlen (text));
  if (result.text)
    stream_output (self, result.text);
}

static void
stream_output_add_next (CONVERTER *self, const char *text)
{
  /* TODO */
  stream_output (self, text);
}

static void
stream_output_encoded (CONVERTER *self, const char *encoded)
{
  /* TODO */
  stream_output (self, encoded);
}

static const char *
stream_result (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = &self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_count_context (&self_plaintext->count_context);

  char *result = count_context->result.text;
  return result ? result : "";
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

/* TODO decode */

/* TODO string_width_encoded */

/* TODO update_locations_counts */

/* Called at the beginning of a line.  Add a blank line if the output does
   not already end in one. */
static void
add_newline_if_needed (CONVERTER *self)
{
  /* TODO check pending_text */
  stream_output (self, "\n");
}

/* TODO ... */


static void convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *e);


/* ALTIMP: _convert in Texinfo:Convert::Plaintext */
static void
convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *element)
{
  enum element_type type = element->type;

  /* TODO check right way to check text in union field */
  if (type_data[type].flags & TF_text)
    {
      if (type == ET_empty_line || type == ET_after_menu_description_line)
        {
          if (0) /* TODO: default_preformatted_context_commands */
            {
            }
          else
            {
              add_newline_if_needed (self);
            }
        }
      /* %ignorable_space_types in Plaintext.pm */
      else if (type == ET_ignorable_spaces_after_command
               || type == ET_spaces_at_end
               /* not ignored as menu manual formatting is kept as is */
               /* || type == ET_space_at_end_menu_node */
               || type == ET_spaces_after_close_brace
               || type == ET_spaces_before_argument
               || type == ET_spaces_after_argument)
        {
          /* TODO ET_spaces_after_close_brace form feeds */
          return;
        }

      /* TODO */
      if (element->e.text->end > 0)
        {
           stream_output_add_text (self, element->e.text->text);
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

  const FORMATTER *paragraph = NULL;

  if (type != ET_NONE)
    {
      if (type == ET_paragraph)
        {
          /* TODO */
          FORMATTER new_paragraph = new_formatter (self, formatter_paragraph);
          add_(formatter) (&self->plaintext_converter.formatters, new_paragraph);
          paragraph = top_formatter(&self->plaintext_converter.formatters);
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
      para_set_state (paragraph->container.paragraph);
      char *result = para_end ();
      /* TODO third parameter to stream_output? */
      stream_output (self, result);
      pop_formatter (self);
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
  convert_to_plaintext_internal (self, e);

  return strdup (stream_result (self));
}

void
plaintext_free_converter (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = &self->plaintext_converter;

  clear_count_context_stack (&self_plaintext->count_context);
}

void
plaintext_converter_initialize (CONVERTER *self)
{
  memset (&self->plaintext_converter, 0,
          sizeof (self->plaintext_converter));
  /* TODO */
  /* Mainly set conversion options based on configuration variables */
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
  plaintext_conversion_initialization (converter, document);
  /* TODO */
  char *result = convert_to_plaintext (converter, document->tree);
  plaintext_conversion_finalization (converter);
  return result;
}

char *
plaintext_convert_tree (CONVERTER *converter,
                           const ELEMENT *tree)
{
  COUNT_CONTEXT new_count_context = { 0 };
  add_(count_context) (&converter->plaintext_converter.count_context,
                       new_count_context);
  push_top_formatter (converter);

  char *result = convert_to_plaintext (converter, tree);
  return result;
}
