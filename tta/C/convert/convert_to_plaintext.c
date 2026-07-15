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
def_stack_fns(COUNT_CONTEXT_STACK, count_context, COUNT_CONTEXT);


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

void
clear_count_context_stack (COUNT_CONTEXT_STACK *stack)
{
  while (stack->number > 0)
    pop_count_context (stack);
}





def_list_fns(FORMATTER_STACK, formatter, FORMATTER, 1);
def_stack_fns(FORMATTER_STACK, formatter, FORMATTER);

enum formatter_type {
  formatter_paragraph,
  formatter_line,
  formatter_unfilled
};

FORMATTER
new_formatter (CONVERTER *self, enum formatter_type type,
               int indent_length, int indent_length_next)
{
  FORMATTER formatter = { 0 };
  formatter.container.paragraph = para_new ();

  if (indent_length != -1)
    para_set_conf_indent_length (indent_length);
  if (indent_length_next != -1)
    para_set_conf_indent_length_next (indent_length_next);

  switch (type)
    {
    case formatter_paragraph:
      /* nothing to change */
      break;
    case formatter_line:
      para_set_conf_max (10000001);
      para_set_conf_keep_end_lines (1);
      para_set_conf_no_final_newline (1);
      para_set_conf_add_final_space (1);
      break;
    case formatter_unfilled:
      para_set_conf_max (10000000);
      para_set_conf_ignore_columns (1);
      para_set_conf_keep_end_lines (1);
      para_set_conf_frenchspacing (1);
      para_set_conf_unfilled (1);
      para_set_conf_no_final_newline (1);
      break;
    default:
      fatal ("unknown container type\n");
    }
  return formatter;
}

def_list_fns(FORMAT_CONTEXT_STACK, format_context, FORMAT_CONTEXT, 2);
def_stack_fns(FORMAT_CONTEXT_STACK, format_context, FORMAT_CONTEXT);

void
push_top_formatter (CONVERTER *self) /* , CONTEXT top_context) */
{
  PLAINTEXT_CONVERTER_STATE *self_pt = &self->plaintext_converter;

  FORMAT_CONTEXT top_format = { 0 };
  /* top_format 'cmdname' is '_top_format' in Perl.  Use 0 in C. */

  add_(format_context) (&self_pt->format_context, top_format);

  FORMATTER top_formatter = new_formatter(self, formatter_line, -1, -1);
  add_(formatter) (&self->plaintext_converter.formatters, top_formatter);
}

void
pop_formatter (CONVERTER *self)
{
  FORMATTER_STACK *stack = &self->plaintext_converter.formatters;
  pop_(formatter) (stack);

  /* Note: no memory needs to be freed here. */
  /* Note: para_end should have been called by this point to free memory
     resources in plaintext_paragraph.c. */
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

/* TODO: reset more than just 'result'? */
static void
stream_reset (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_pt = &self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_pt->count_context);

  text_reset (&count_context->result);
}

static void
stream_output (CONVERTER *self, const char *text)
{
  PLAINTEXT_CONVERTER_STATE *self_pt = &self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_pt->count_context);

  text_append (&count_context->result, text);
}

static void
stream_output_count_nl (CONVERTER *self, const char *text)
{
  /* TODO */
  stream_output (self, text);
}

static void
stream_output_add_text (CONVERTER *self, const char *text)
{
  PLAINTEXT_CONVERTER_STATE *self_pt = &self->plaintext_converter;
  /* TODO */
  para_set_state (top_(formatter) (&self_pt->formatters)->container.paragraph);
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
    = top_(count_context) (&self_plaintext->count_context);

  const char *result = count_context->result.text;
  return result ? result : "";
}

/* Like stream_result, but do not keep the result. */
static char *
stream_yield_result (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_pt = &self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_pt->count_context);

  char *result = text_yield (&count_context->result);
  return result ? result : strdup ("");
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
  PLAINTEXT_CONVERTER_STATE *self_pt = &self->plaintext_converter;
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
        }

      /* TODO */
      if (element->e.text->end > 0)
        {
           stream_output_add_text (self, element->e.text->text);
        }

      return;
    }

  /* %ignored_types in Plaintext.pm */
  if (type == ET_postamble_after_end
      || type == ET_preamble_before_beginning
      || type == ET_preamble_before_setfilename
      || type == ET_arguments_line)
    return;

  /* check for ignored command */
  /* enum command_id cmd = element->e.c->cmd; */
  enum command_id cmd = element_builtin_cmd (element);
  /* or, to have @item in line commands as item_LINE
  enum command_id cmd = element_builtin_data_cmd (element);
   */

  if (cmd != CM_NONE)
    {
      /* TODO: %ignored_line_commands */
      /* TODO: %ignored_nobrace_commands */

      /* %ignored_brace_commands */
      if (cmd == CM_caption
          || cmd == CM_shortcaption
          || cmd == CM_hyphenation
          || cmd == CM_sortas
          || cmd == CM_errormsg
          || cmd == CM_seeentry
          || cmd == CM_seealso)
        {
          return;
        }
      /* %ignored_block_commands */
      if (cmd == CM_ignore
          || cmd == CM_macro
          || cmd == CM_rmacro
          || cmd == CM_linemacro
          || cmd == CM_copying
          || cmd == CM_documentdescription
          || cmd == CM_documentinfo
          || cmd == CM_publication
          || cmd == CM_titlepage
          || cmd == CM_direntry
          || cmd == CM_nodedescriptionblock)
        {
          return;
        }
      /* TODO: ignore %format_raw_commands unless expanded */
    }

  /* TODO: Index entry check */

  if (type == ET_index_entry_command)
    return;

  int cell = 0;
  const FORMATTER *preformatted = NULL;
  if (cmd != CM_NONE)
    {
      const COMMAND *cmd_data = &command_data[cmd];
      if (cmd_data->flags & CF_brace
          && cmd_data->data == BRACE_accent)
        return;
      else if (type == ET_definfoenclose_command)
        return;
      else if (cmd_data->flags & CF_brace)
        {
          /* if style_map */
          /* else*/ if (cmd == CM_link)
            return;
          else if (cmd_data->flags & CF_ref)
            return;
          else if (cmd == CM_image)
            return;
          else if (cmd == CM_today)
            return;
          else if (cmd_data->data == BRACE_noarg)
            return;
          else if (cmd == CM_email)
            return;
          else if (cmd == CM_uref || cmd == CM_url)
            return;
          else if (cmd == CM_footnote)
            return;
          else if (cmd == CM_anchor || cmd == CM_namedanchor)
            return;
          else if (cmd == CM_footnote)
            return;
          else if (cmd_data->flags & CF_explained)
            return;
          else if (cmd_data->data == BRACE_inline)
            return;
          else if (cmd_data->flags & CF_math)
            return;
          else if (cmd == CM_titlefont)
            return;
          else if (cmd == CM_U)
            return;
          else if (cmd == CM_value)
            return;
        }
      /* else if (nobrace_symbol_text) */
      else if (cmd_data->flags & CF_block)
        {
          if (cmd_data->data == BLOCK_menu)
            {
              /* const char *format_menu = self->conf->FORMAT_MENU; */
              const char *format_menu = self->conf->FORMAT_MENU.o.string;
              if (!format_menu || !*format_menu
                  || !strcmp (format_menu, "nomenu"))
                return;
            }
        }
      else if (cmd == CM_node)
        ;
      /* else if sectioning_heading_commands */
      /* else if item or itemx */
      else if (cmd == CM_headitem || cmd == CM_item || cmd == CM_tab)
        ;
      /* else if def_commands */
      else if (cmd == CM_center)
        return;
      else if (cmd == CM_exdent)
        return;
      else if (cmd == CM_verbatiminclude)
        return;
      else if (cmd == CM_insertcopying)
        return;
      else if (cmd == CM_printindex)
        return;
      else if (cmd == CM_listoffloats)
        return;
      else if (cmd == CM_sp)
        return;
      else if (cmd == CM_contents)
        return;
      else if (cmd == CM_shortcontents || cmd == CM_summarycontents)
        return;
      else if (cmd == CM_author)
        return;
      /* else if informative_commands */
      else if (cmd == CM_documentlanguagevariant)
        return;
      /* TODO else unknown_command - possibly not relevant for C code */
    }

  size_t paragraph = 0;

  if (type != ET_NONE)
    {
      if (type == ET_paragraph)
        {
          const char *paragraphindent = self->conf->paragraphindent.o.string;

          FORMAT_CONTEXT *top_format
            = top_(format_context) (&self_pt->format_context);

          int paragraphindent_size = 0;
          if (!top_format->cmd /* '_top_format' in Perl */
              && strcmp (paragraphindent, "asis") != 0)
            {
              if (!strcmp (paragraphindent, "none"))
                paragraphindent_size = 0;
              else
                {
                  char *endptr;
                  paragraphindent_size = strtol (paragraphindent, &endptr, 10);
                }
            }

          FORMATTER new_paragraph
            = new_formatter (self, formatter_paragraph,
                             paragraphindent_size, 0);

          add_(formatter) (&self_pt->formatters, new_paragraph);
          paragraph = self_pt->formatters.number - 1;

          top_format->paragraph_count++;
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
      /* TODO ficititious types */
      /* if (type == ET_frenchspacing) */
      /* else if type == ET__code  */
      /* else if type == ET__stop_upper_case  */
      /* else if type == ET__suppress_style  */
      /* else */ if (type == ET_row)
        ;
      else if (type == ET_before_node_section)
        ;
    }

  /* Close paragraphs and preformatted. */
  if (paragraph)
    {
      para_set_state (self_pt->formatters.list[paragraph].container.paragraph);
      char *result = para_end ();
      stream_output_count_nl (self, result);
      pop_formatter (self);
    }
  if (preformatted)
    {
    }

  /* Close commands */
  if (cmd != CM_NONE)
    {
      if (cmd == CM_float)
        ;
      else if (cmd == CM_quotation || cmd == CM_smallquotation)
        ;
      else if (cmd == CM_multitable)
        ;
      /* else if root_commands etc. */
    }
  return;
}


/* Return value to be freed by caller. */
static char *
convert_to_plaintext (CONVERTER *self, const ELEMENT *e)
{
  if (!e)
    return strdup ("");
  convert_to_plaintext_internal (self, e);

  return stream_yield_result (self);
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

  add_plaintext_regular_options_defaults (&format_defaults->conf);

  return format_defaults;
}

char *
plaintext_output (CONVERTER *converter, DOCUMENT *document)
{
  return converter_output_tree (converter, document, 0, 0, 0, 0);
}

/* ALTIMP: Texinfo:Convert::Plaintext::convert */
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
