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
#include <errno.h>

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
#include "types_data.h"
#include "base_utils.h"
/* for lookup_extra* */
#include "extra.h"
#include "builtin_commands.h"
#include "errors.h"
#include "debug.h"
/* for format_expanded_p */
#include "utils.h"
#include "customization_options.h"
#include "output_unit.h"
/* for converter_encoded_output_file_name */
#include "convert_utils.h"
#include "convert_to_texinfo.h"
#include "plaintext_paragraph.h"
#include "converters_options.h"
/* for write_or_return top_node_filename determine_files_and_directory
   create_destination_directory ... */
#include "converter.h"
#include "convert_to_plaintext.h"

static const enum command_id informative_global_commands[]
             = {CM_paragraphindent, CM_firstparagraphindent,
                CM_exampleindent,
  CM_frenchspacing, CM_footnotestyle, CM_documentlanguage, CM_documentscript,
  CM_deftypefnnewline};

static const enum command_id contents_commands[]
             = {CM_contents, CM_shortcontents, CM_summarycontents, 0};

static COMMAND_ID_LIST format_raw_cmd;

/* Plaintext command data flags */
/*
#define PF_                     0x0002
*/
#define PF_format_raw           0x0004
/*
#define HF_composition_context  0x0001
#define HF_pre_class            0x0008
#define HF_small_block_command  0x0010
#define HF_HTML_align           0x0020
#define HF_special_variety      0x0040
#define HF_indented_preformatted 0x0080
#define HF_style_command         0x0100
*/

typedef struct PLAINTEXT_COMMAND_STRUCT {
    unsigned long flags;
    /*
    enum command_id pre_class_cmd;
    enum command_id upper_case_cmd;
     */
} PLAINTEXT_COMMAND_STRUCT;

PLAINTEXT_COMMAND_STRUCT plaintext_commands_data[BUILTIN_CMD_NUMBER];

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
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  FORMAT_CONTEXT top_format = { 0 };
  /* top_format 'cmdname' is '_top_format' in Perl.  Use 0 in C. */

  add_(format_context) (&self_plaintext->format_context, top_format);

  FORMATTER top_formatter = new_formatter(self, formatter_line, -1, -1);
  add_(formatter) (&self_plaintext->formatters, top_formatter);
}

void
pop_formatter (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  FORMATTER_STACK *stack = &self_plaintext->formatters;
  pop_(formatter) (stack);

  /* Note: no memory needs to be freed here. */
  /* Note: para_end should have been called by this point to free memory
     resources in plaintext_paragraph.c. */
}



/* set information that is independent of customization, only called once */
void
plaintext_format_setup (enum converter_format format)
{
  int i;
  int format_raw_cmd_nr = 0;

  /* count commands in some categories */
  for (i = 1; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (command_data[i].flags & CF_block)
        {
          if (command_data[i].data == BLOCK_menu)
            {}
          /*
            plaintext_command_data[i].flags |= PF_menu
           */
          else if (command_data[i].data == BLOCK_format_raw)
            {
              plaintext_commands_data[i].flags |= PF_format_raw;
              format_raw_cmd_nr++;
            }
        }
    }

  initialize_cmd_list (&format_raw_cmd, format_raw_cmd_nr, 0);

  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (plaintext_commands_data[i].flags & PF_format_raw)
        {
          format_raw_cmd.list[format_raw_cmd.number] = i;
          format_raw_cmd.number++;
        }
    }
}

static void
plaintext_conversion_initialization  (CONVERTER *self, DOCUMENT *document)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  COUNT_CONTEXT bottom_count_context = { 0 };
  add_(count_context) (&self_plaintext->count_context,
                       bottom_count_context);

  converter_set_document (self, document);

  set_global_document_commands (self, CL_before, informative_global_commands);
  set_global_document_commands (self, CL_before, contents_commands);

  /* TODO ... */

  if (self->conf->ENABLE_ENCODING.o.integer > 0
      && self->conf->OUTPUT_ENCODING_NAME.o.string)
    {
      free (self_plaintext->enabled_encoding);
      self_plaintext->enabled_encoding
         = strdup (self->conf->OUTPUT_ENCODING_NAME.o.string);
      if (!strcmp (self_plaintext->enabled_encoding, "utf-8"))
        {
          self_plaintext->to_utf8 = 1;
          /* TODO ... */
        }
    }
  /* TODO ... */

  push_top_formatter (self);
}

static void
plaintext_conversion_finalization (CONVERTER *self)
{
  /* TODO */
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  /*
  pop_top_formatter (self);
   */

  self_plaintext->encoding_disabled = 0;
}

/* TODO: reset more than just 'result'? */
static void
stream_reset (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  text_reset (&count_context->result);
}

static void
stream_output (CONVERTER *self, const char *text)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

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
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  /* TODO */
  para_set_state (top_(formatter) (
                       &self_plaintext->formatters)->container.paragraph);
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
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  const char *result = count_context->result.text;
  return result ? result : "";
}

/* Like stream_result, but do not keep the result. */
static char *
stream_yield_result (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

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
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
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
          int paragraphindent = self->conf->paragraphindent.o.integer;

          FORMAT_CONTEXT *top_format
            = top_(format_context) (&self_plaintext->format_context);

          int paragraphindent_size = 0;
          if (!top_format->cmd /* '_top_format' in Perl */
              && paragraphindent >= 0) /* 'asis' */
            {
              paragraphindent_size = paragraphindent;
            }

          FORMATTER new_paragraph
            = new_formatter (self, formatter_paragraph,
                             paragraphindent_size, 0);

          add_(formatter) (&self_plaintext->formatters, new_paragraph);
          paragraph = self_plaintext->formatters.number - 1;

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
  size_t i;
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
      para_set_state (
          self_plaintext->formatters.list[paragraph].container.paragraph);
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
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  free (self_plaintext->enabled_encoding);
  clear_count_context_stack (&self_plaintext->count_context);

  free (self_plaintext);
}

void
plaintext_converter_initialize (CONVERTER *self)
{
  size_t i;
  PLAINTEXT_CONVERTER_STATE *self_plaintext = (PLAINTEXT_CONVERTER_STATE *)
                                malloc (sizeof (PLAINTEXT_CONVERTER_STATE));
  self->plaintext_converter = self_plaintext;

  memset (self_plaintext, 0, sizeof (*self_plaintext));

  for (i = 0; i < format_raw_cmd.number; i++)
    {
      enum command_id cmd = format_raw_cmd.list[i];
      const char *format = builtin_command_name (cmd);
      if (!format_expanded_p (self->expanded_formats, format))
        self_plaintext->ignored_commands[cmd] = 1;
    }

  /* TODO */

  if (self->conf->ASCII_PUNCTUATION.o.integer > 0)
    {
      option_set_conf (&self->conf->ASCII_DASHES_AND_QUOTES, 1, 0);
      option_set_conf (&self->conf->ASCII_GLYPH, 1, 0);
      option_set_conf (&self->conf->OPEN_QUOTE_SYMBOL, 0, "'");
      option_set_conf (&self->conf->CLOSE_QUOTE_SYMBOL, 0, "'");
      option_set_conf (&self->conf->OPEN_DOUBLE_QUOTE_SYMBOL, 0, "\"");
      option_set_conf (&self->conf->CLOSE_DOUBLE_QUOTE_SYMBOL, 0, "\"");
    }

  if (self->conf->ASCII_DASHES_AND_QUOTES.o.integer == -1)
    option_force_conf (&self->conf->ASCII_DASHES_AND_QUOTES, 0, 0);

  if (self->conf->FILLCOLUMN.o.integer == -1)
    {
      int fillcolumn_default = txi_base_options.FILLCOLUMN.o.integer;
      option_force_conf (&self->conf->FILLCOLUMN,
                         fillcolumn_default, 0);
    }

  if (self->conf->INFO_SPECIAL_CHARS_QUOTE.o.string != 0
      && strcmp (self->conf->INFO_SPECIAL_CHARS_QUOTE.o.string, ""))
    {
      if (self->conf->INFO_SPECIAL_CHARS_WARNING.o.integer == -1)
        option_set_conf (&self->conf->INFO_SPECIAL_CHARS_WARNING, 1, 0);
    }
  else
    {
      if (self->conf->INFO_SPECIAL_CHARS_QUOTE.o.string == 0)
        option_force_conf (&self->conf->INFO_SPECIAL_CHARS_QUOTE, 0, "");

      if (self->conf->INFO_SPECIAL_CHARS_WARNING.o.integer == -1)
        option_set_conf (&self->conf->INFO_SPECIAL_CHARS_WARNING, 0, 0);
    }

  if (self->conf->INFO_SPECIAL_CHARS_WARNING.o.integer == -1)
    option_force_conf (&self->conf->INFO_SPECIAL_CHARS_WARNING, 0, 0);
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

static char *
convert_output_unit (CONVERTER *self, const OUTPUT_UNIT *output_unit)
{
  stream_reset (self);

  if (output_unit->unit_contents.number > 0)
    {
      size_t content_idx;
      for (content_idx = 0; content_idx < output_unit->unit_contents.number;
           content_idx++)
        {
          const ELEMENT *content = output_unit->unit_contents.list[content_idx];
          convert_to_plaintext_internal (self, content);
        }
    }

  /* TODO */

  return stream_yield_result (self);
}

char *
plaintext_output (CONVERTER *self, DOCUMENT *document)
{
  size_t i;
  int status = 1;
  char *paths[5];
  char *dir_encoding;
  const char *output_file;
  const char *destination_directory;
  const char *output_filename;
  const char *document_name;
  FILE *file_fh = 0;
  char *encoded_destination_directory;
  int succeeded;
  const ENCODING_CONVERSION *conversion = 0;
  TEXT result;
  size_t output_units_descriptor;
  OUTPUT_UNIT_LIST *output_units;
  const NODE_RELATIONS_LIST *nodes_list;
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  /*
  return converter_output_tree (self, document, 0, 0, 0, 0);
   */

  plaintext_conversion_initialization (self, document);

  if (self->conf->OUTFILE.o.string
      && self->conf->SPLIT.o.string && strcmp (self->conf->SPLIT.o.string, ""))
    {
      int i;
      int need_unsplit = 0;
      const char *outfile = self->conf->OUTFILE.o.string;
      if (!strlen(outfile) || !strcmp (outfile, "-"))
        need_unsplit = 1;
      else
        {
          for (i = 0; null_device_names[i]; i++)
            {
              if (!strcmp (null_device_names[i], outfile))
                {
                  need_unsplit = 1;
                  break;
                }
            }
        }
      if (need_unsplit)
        {
          message_list_document_warn (&self->error_messages, self->conf,
                        0, "%s: output incompatible with split",
                        outfile);

          option_force_conf (&self->conf->SPLIT, 0, "");
        }
    }

  if (self->conf->SPLIT.o.string
      && strcmp (self->conf->SPLIT.o.string, ""))
    option_set_conf (&self->conf->NODE_FILES, 1, 0);

  text_init (&result);
  text_append (&result, "");

  determine_files_and_directory (self,
                    self->conf->TEXINFO_OUTPUT_FORMAT.o.string, paths);

  output_file = paths[0];
  destination_directory = paths[1];
  output_filename = paths[2];
  document_name = paths[3];

  /* cast to remove const since the argument cannot
     be const even though the string is not modified */
  encoded_destination_directory
             = converter_encoded_output_file_name (self->conf,
                                            &self->document->global_info,
                                           (char *)destination_directory,
                                                       &dir_encoding, 0);
  free (dir_encoding);

  succeeded = create_destination_directory (self,
                                     encoded_destination_directory,
                                           destination_directory);

  free (encoded_destination_directory);

  if (!succeeded)
    {
      status = 0;
      goto finalization;
    }

  if (self->conf->USE_NODES.o.integer > 0)
    output_units_descriptor = split_by_node (document);
  else
    output_units_descriptor = split_by_section (document);
  output_units = retrieve_output_units (document, output_units_descriptor);

  nodes_list = &self->document->nodes_list;

  split_pages (output_units, nodes_list, self->conf->SPLIT.o.string);

  /* determine file names associated with the different pages */
  if (strcmp (output_file, ""))
    {
      set_output_units_files (self, output_units, output_file,
                              destination_directory, output_filename,
                              document_name);
    }
  else
    self_plaintext->encoding_disabled = 1;

  /* Now do the output */

  if (!output_units->list[0]->unit_filename)
    {
      char *outfile_name = 0;
      char *encoded_outfile_name = 0;
      /* no page */
      if (strcmp (output_file, ""))
        {
          char *path_encoding;
          int overwritten_file;
          char *open_error_message;

          if (self->conf->SPLIT.o.string
              && strcmp (self->conf->SPLIT.o.string, ""))
            {
              TEXT outfile_name_text;
              text_init (&outfile_name_text);
              char *top_node_filename_str
                = top_node_filename (self, document_name);
              if (destination_directory && strcmp (destination_directory, ""))
                {
                  text_append (&outfile_name_text, destination_directory);
                  text_append_n (&outfile_name_text, "/", 1);
                }
              text_append (&outfile_name_text, top_node_filename_str);
              free (top_node_filename_str);
              outfile_name = outfile_name_text.text;
            }
          else
            outfile_name = strdup (output_file);

          if (self->conf->DEBUG.o.integer > 0)
            fprintf (stderr, "DO No pages, output in %s\n", outfile_name);

          encoded_outfile_name
            = converter_encoded_output_file_name (self->conf,
                                       &self->document->global_info,
                                  (char *)outfile_name, &path_encoding, 0);

          /* overwritten_file being set cannot happen */
          file_fh = output_files_open_out (&self->output_files_information,
                                   encoded_outfile_name, &open_error_message,
                                   &overwritten_file, 0);
          free (path_encoding);

          if (!file_fh)
            {
              message_list_document_error (&self->error_messages,
                             self->conf, 0,
                             "could not open %s for writing: %s",
                             outfile_name, open_error_message);
              free (open_error_message);
              free (encoded_outfile_name);
              free (outfile_name);

              status = 0;
              goto finalization;
            }
        }
      else if (self->conf->DEBUG.o.integer > 0)
        fprintf (stderr, "DO No pages, string output\n");

      if (file_fh)
        {
          if (self->conf->OUTPUT_ENCODING_NAME.o.string
           && strcmp (self->conf->OUTPUT_ENCODING_NAME.o.string, "utf-8"))
            {
              conversion
                 = get_encoding_conversion (
                           self->conf->OUTPUT_ENCODING_NAME.o.string,
                                              &output_conversions);
            }
        }

      for (i = 0; i < output_units->number; i++)
        {
          OUTPUT_UNIT *output_unit = output_units->list[i];
          char *node_text = convert_output_unit (self, output_unit);
          write_or_return (conversion, encoded_outfile_name,
                           file_fh, &result, node_text);
          free (node_text);
        }
  /* Do not close STDOUT now such that the file descriptor is not reused
     by open, which uses the lowest-numbered file descriptor not open,
     for another filehandle.  Closing STDOUT is handled by the caller. */
      if (file_fh && !strcmp (outfile_name, "-"))
        {
           output_files_register_closed
                         (&self->output_files_information,
                          encoded_outfile_name);
          if (fclose (file_fh))
            {
               message_list_document_error (
                 &self->error_messages, self->conf, 0,
                 "error on closing %s: %s",
                 outfile_name, strerror (errno));
            }
        }

      free (encoded_outfile_name);
      free (outfile_name);
    }
  else
    { /* output with pages */
      if (self->conf->DEBUG.o.integer > 0)
        fprintf (stderr, "DO Elements with filenames\n");

      if (self->conf->OUTPUT_ENCODING_NAME.o.string
          && strcmp (self->conf->OUTPUT_ENCODING_NAME.o.string, "utf-8"))
        {
          conversion
                 = get_encoding_conversion (
                           self->conf->OUTPUT_ENCODING_NAME.o.string,
                                              &output_conversions);
        }

      for (i = 0; i < output_units->number; i++)
        {
          OUTPUT_UNIT *output_unit = output_units->list[i];
          size_t file_index
            = self->output_unit_file_indices[output_unit->index];
          FILE_NAME_PATH_COUNTER *unit_file
            = &self->output_unit_files.list[file_index];
          char *node_text = convert_output_unit (self, output_unit);
          unit_file->counter--;

          if (!unit_file->first_unit)
            {
              unit_file->first_unit = output_unit;
              text_init (&unit_file->body);
            }
          text_append (&unit_file->body, node_text);
          free (node_text);

          /* TODO in Perl, file is opened when first encountered
             not when counter is 0.  Probably best to align Perl
             with this code */
          if (unit_file->counter == 0)
            {
              const char *out_filepath = unit_file->filepath;
              char *path_encoding;
              char *open_error_message;
              int overwritten_file;

                /* cast to remove const since the argument cannot
                 be const even though the string is not modified */
              char *encoded_out_filepath
                    = converter_encoded_output_file_name (self->conf,
                                           &self->document->global_info,
                                   (char *)out_filepath, &path_encoding, 0);
              /* overwritten_file being set cannot happen */
              FILE *file_fh
                 = output_files_open_out (&self->output_files_information,
                               encoded_out_filepath, &open_error_message,
                               &overwritten_file, 0);
              free (path_encoding);
              if (!file_fh)
                {
                  message_list_document_error (
                             &self->error_messages, self->conf, 0,
                             "could not open %s for writing: %s",
                             out_filepath, open_error_message);
                  free (open_error_message);
                  free (encoded_out_filepath);
                  status = 0;
                  goto finalization;
                }

              if (unit_file->body.end)
                {
                  char *result;
                  size_t res_len;
                  size_t write_len;
                  TEXT *text = &unit_file->body;

                  if (conversion)
                    {
                      result = encode_with_iconv (conversion->iconv,
                                          text->text, 0, ieh_error, 0);
                      res_len = strlen (result);
                    }
                  else
                    {
                      result = text->text;
                      res_len = text->end;
                    }
                  write_len = fwrite (result, sizeof (char), res_len, file_fh);
                  if (conversion)
                    free (result);
                  if (write_len != res_len)
                    { /* register error message instead? */
                      fprintf (stderr, "ERROR: write to %s failed (%zu/%zu)\n",
                               encoded_out_filepath, write_len, res_len);
                      free (encoded_out_filepath);
                      status = 0;
                      goto finalization;
                    }
                }
      /* Do not close STDOUT now such that the file descriptor is not reused
         by open, which uses the lowest-numbered file descriptor not open,
         for another filehandle.  Closing STDOUT is handled by the caller. */
              if (strcmp (out_filepath, "-"))
                {
                  output_files_register_closed (&self->output_files_information,
                                                encoded_out_filepath);
                  if (fclose (file_fh))
                    {
                      message_list_document_error (&self->error_messages,
                             self->conf, 0,
                             "error on closing %s: %s",
                             out_filepath, strerror (errno));
                      free (encoded_out_filepath);
                      status = 0;
                      goto finalization;
                    }
                }
              free (encoded_out_filepath);
            }
        }
    }


 finalization:

  plaintext_conversion_finalization (self);

  for (i = 0; i < 5; i++)
    {
      free (paths[i]);
    }

  if (status)
    return result.text;
  else
    {
      free (result.text);
      return 0;
    }
}

/* ALTIMP: Texinfo:Convert::Plaintext::convert */
/* never called from C, could be called from XS for t/?*.t tests if there
   was an XS interface (which is not a clearly something to do) */
char *
plaintext_convert (CONVERTER *self, DOCUMENT *document)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  size_t output_units_descriptor;
  OUTPUT_UNIT_LIST *output_units;
  size_t i;
  TEXT result;

  plaintext_conversion_initialization (self, document);
  self_plaintext->encoding_disabled = 1;

  output_units_descriptor = split_by_node (document);
  output_units = retrieve_output_units (document, output_units_descriptor);

  text_init (&result);
  text_append (&result, "");
  for (i = 0; i < output_units->number; i++)
    {
      OUTPUT_UNIT *output_unit = output_units->list[i];
      char *node_text = convert_output_unit (self, output_unit);
      text_append (&result, node_text);
      free (node_text);
    }

  plaintext_conversion_finalization (self);

  return result.text;
}

char *
plaintext_convert_tree (CONVERTER *self, const ELEMENT *tree)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  COUNT_CONTEXT new_count_context = { 0 };
  add_(count_context) (&self_plaintext->count_context, new_count_context);

  char *result = convert_to_plaintext (self, tree);
  return result;
}
