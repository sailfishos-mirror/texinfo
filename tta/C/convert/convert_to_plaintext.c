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

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
/* for uintptr_t */
#include <stdint.h>
/* for PRIuPTR */
#include <inttypes.h>

#include "list_macros.h"
#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
#include "types_data.h"
#include "option_types.h"
#include "base_utils.h"
#include "hashmap.h"
#include "tree.h"
/* for lookup_extra* */
#include "extra.h"
#include "builtin_commands.h"
#include "errors.h"
#include "debug.h"
/* for format_expanded_p */
#include "utils.h"
/* for add_(command) ... */
#include "command_stack.h"
#include "manipulate_tree.h"
#include "translations.h"
#include "targets.h"
#include "customization_options.h"
#include "output_unit.h"
/* for converter_encoded_output_file_name */
#include "convert_utils.h"
#include "convert_to_texinfo.h"
#include "plaintext_paragraph.h"
#include "converters_options.h"
#include "convert_to_text.h"
/* for write_or_return top_node_filename determine_files_and_directory
   create_destination_directory ... */
#include "converter.h"
#include "convert_indices.h"
#include "convert_to_info.h"
#include "convert_to_plaintext.h"

static const enum command_id informative_global_commands[]
             = {CM_paragraphindent, CM_firstparagraphindent,
                CM_exampleindent,
  CM_frenchspacing, CM_footnotestyle, CM_documentlanguage, CM_documentscript,
  CM_deftypefnnewline};

static const enum command_id contents_commands[]
             = {CM_contents, CM_shortcontents, CM_summarycontents, 0};

static COMMAND_ID_LIST format_raw_cmd;

/* Only used in this file */
struct style_map {
  enum command_id cmd;
  const char *pre;
  const char *post;
};

static struct style_map style_map[] =
{
  {CM_strong, "*", "*"},
  {CM_emph, "_", "_"},
  {CM_key, "<", ">"},
  {CM_sub, "_{", "}"},
  {CM_sup, "^{", "}"},
};

struct item_indent_format_length {
  enum command_id cmd;
  int indent_format_length;
};

static struct item_indent_format_length item_indent_format_length[] = {
  {CM_enumerate, 2},
  {CM_itemize, 3},
  {CM_table, 0},
  {CM_vtable, 0},
  {CM_ftable, 0},
  {CM_NONE, -1},
};

static PLAINTEXT_COMMAND_STRUCT plaintext_commands_data[BUILTIN_CMD_NUMBER];

/* dispatch of formatting functions that are either for plaintext or
   Info output.  The table is below, after the functions definitions */
typedef struct PLAINTEXT_FORMAT_FUNCTIONS {
    void (*  format_contents) (CONVERTER *self,
                               SECTIONING_ROOT *sectioning_root,
                               enum command_id contents_or_shortcontents_cmd);
    void (* format_error_outside_of_any_node) (CONVERTER *self,
                                               const ELEMENT *element);
    char * (* format_image) (CONVERTER *self, const char *image_file,
                   const char *text, const char *alt,
                   int dpi, int depth);
    void (* format_image_element) (CONVERTER *self, const ELEMENT *element,
                                   STRING_LINE_COUNT *result);
    void (* format_node) (CONVERTER *self, const ELEMENT *element,
                          const NODE_RELATIONS *node_relations);
    void (* format_printindex) (CONVERTER *self, const ELEMENT *element);
    void (* format_ref) (CONVERTER *self, enum command_id cmd,
                         const ELEMENT *element);
} PLAINTEXT_FORMAT_FUNCTIONS;

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

def_list_fns(TARGET_LOCATION_LIST, target_location, TARGET_LOCATION *, 5);

static void
destroy_count_context (COUNT_CONTEXT *ctxt)
{
  text_destroy (&ctxt->pending_text);
  text_destroy (&ctxt->result);
  /* TODO destroy TARGET_LOCATION_LIST locations.
     And remaining locations within? */
}

void
pop_count_context (COUNT_CONTEXT_STACK *stack)
{
  if (stack->number == 0)
    fatal ("count context stack empty");

  stack->number--;
  destroy_count_context (&stack->list[stack->number]);
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

static void
fill_formatter (FORMATTER *formatter, CONVERTER *self, enum formatter_type type,
               int indent_length, int indent_length_next)
{
  formatter->container.paragraph = para_new ();

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
}

FORMATTER
new_formatter (CONVERTER *self, enum formatter_type type,
               int indent_length, int indent_length_next)
{
  FORMATTER formatter = { 0 };
  fill_formatter (&formatter, self, type, indent_length, indent_length_next);
  return formatter;
}

def_list_fns(FORMAT_CONTEXT_STACK, format_context, FORMAT_CONTEXT, 2);
def_stack_fns(FORMAT_CONTEXT_STACK, format_context, FORMAT_CONTEXT);

void
push_formatter (CONVERTER *self, const FORMATTER *formatter)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  FORMATTER_STACK *stack = &self_plaintext->formatters;
  add_(formatter) (stack, *formatter);
  para_set_state (top_(formatter) (stack)->container.paragraph);
}

void
push_top_formatter (CONVERTER *self, enum command_id cmd)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  /* top_format 'cmdname' is '_top_format' in Perl.  Use 0 in C. */
  FORMAT_CONTEXT top_format = { 0 };

  add_(command) (&self_plaintext->context, cmd);

  add_(format_context) (&self_plaintext->format_context, top_format);

  /* TODO
  push @{$self->{'text_element_context'}}, {
                                     'max' => $self->{'fillcolumn'}
                                   };
   */

  /* TODO
  push @{$self->{'document_context'}}, {
                                     'in_multitable' => 0,
                                     'quotations_authors' => []
                                   };
   */

 /* This is not really meant to be used, as contents should open
    their own formatters, however it happens that there is some text
    outside any content that needs to be formatted, as @sp for example. */
  FORMATTER top_formatter = new_formatter(self, formatter_line, -1, -1);
  push_formatter (self, &top_formatter);
}

void
pop_formatter (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  FORMATTER_STACK *stack = &self_plaintext->formatters;
  pop_(formatter) (stack);

  para_set_state (top_(formatter) (stack)->container.paragraph);
  /* Note: no memory needs to be freed here. */
}

static enum command_id
pop_context (COMMAND_STACK *stack)
{
  enum command_id popped_cmd = *top_(command) (stack);
  pop_(command) (stack);
  return popped_cmd;
}

enum command_id
pop_top_formatter (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  enum command_id popped_cmd = pop_context (&self_plaintext->context);

  pop_(format_context) (&self_plaintext->format_context);
  para_destroy ();

  if (popped_cmd == CM_NONE)
    /* should be removing the last format, do not set the paragraph */
    pop_(formatter) (&self_plaintext->formatters);
  else
    pop_formatter (self);

  /* TODO
  pop @{$self->{'text_element_context'}};
  pop @{$self->{'document_context'}};
   */

  return popped_cmd;
}



/* used to pass to info converter */
const enum command_id *
plaintext_get_informative_global_commands (void)
{
  return informative_global_commands;
}

/* Can be used to sort structures whose first field is an
   enum command_id. */
int
compare_cmd_id_fn (const void *a, const void *b)
{
  const enum command_id *cmd1 = a;
  const enum command_id *cmd2 = b;

  return (*cmd1 - *cmd2) - (*cmd2 - *cmd1);
}

/* set information that is independent of customization, only called once */
void
plaintext_format_setup (enum converter_format format)
{
  int i;
  int format_raw_cmd_nr = 0;

  static enum command_id ignored_brace_commands[] = {
      CM_caption, CM_shortcaption, CM_hyphenation, CM_sortas, CM_errormsg,
      CM_seeentry, CM_seealso, 0};

  static enum command_id ignored_block_commands[] = {
      CM_ignore, CM_macro, CM_rmacro, CM_linemacro, CM_copying,
      CM_documentdescription, CM_documentinfo, CM_publication, CM_titlepage,
      CM_titlepage, CM_direntry, CM_nodedescriptionblock, 0};

  static enum command_id non_formatted_line_command[] = {
    CM_page, CM_need, CM_vskip, CM_title, CM_subtitle, CM_title,
    CM_maketitle, 0};

  static enum command_id indented_commands[] = {
    CM_quotation, CM_smallquotation, CM_indentedblock, CM_smallindentedblock,
    CM_defblock, 0};

  static enum command_id format_context_commands[] = {
    CM_verbatim, CM_flushleft, CM_flushright, CM_multitable, CM_float, 0};

  static enum command_id punctuation_no_arg_commands[] = {
    CM_enddots, CM_exclamdown, CM_questiondown, 0};

  for (i = 0; ignored_brace_commands[i]; i++)
    plaintext_commands_data[ignored_brace_commands[i]].flags |= PF_ignored;

  for (i = 0; ignored_block_commands[i]; i++)
    plaintext_commands_data[ignored_block_commands[i]].flags |= PF_ignored;

  for (i = 0; punctuation_no_arg_commands[i]; i++)
    plaintext_commands_data[punctuation_no_arg_commands[i]].flags
                                               |= PF_punctuation_no_arg;

  /* count commands in some categories and set categories */
  for (i = 1; i < BUILTIN_CMD_NUMBER; i++)
    {
      plaintext_commands_data[i].indent_format_length = -1;
      if (command_data[i].flags & CF_nobrace)
        {
          if (command_data[i].other_flags & CF_formatted_nobrace)
            {}
          else
            plaintext_commands_data[i].flags |= PF_ignored;
        }
      else if (command_data[i].flags & CF_line)
        {
          if (command_data[i].other_flags & CF_formattable_line
              || command_data[i].other_flags & CF_formatted_line
              || command_data[i].flags & CF_def
              || command_data[i].flags & CF_index_entry_command)
            {}
          else
            plaintext_commands_data[i].flags |= PF_ignored;
        }
      else if (command_data[i].flags & CF_block)
        {
          if (command_data[i].data == BLOCK_menu)
            {
              plaintext_commands_data[i].flags |= PF_menu;
              plaintext_commands_data[i].flags |= PF_preformatted_context;
              plaintext_commands_data[i].flags |= PF_format_context;
            }
          else if (command_data[i].data == BLOCK_format_raw)
            {
              plaintext_commands_data[i].flags |= PF_format_raw;
              plaintext_commands_data[i].flags |= PF_preformatted_context;
              format_raw_cmd_nr++;
            }
          else if (command_data[i].flags & CF_math)
            {
              plaintext_commands_data[i].flags |= PF_preformatted_context;
              plaintext_commands_data[i].flags |= PF_format_context;
            }
          else if (command_data[i].flags & CF_def)
            {
              plaintext_commands_data[i].flags |= PF_indented;
              plaintext_commands_data[i].flags |= PF_format_context;
            }
          else if (command_data[i].flags & CF_preformatted)
            {
              plaintext_commands_data[i].flags |= PF_preformatted_context;
              if (i != CM_format && i != CM_smallformat)
                {
                  plaintext_commands_data[i].flags |= PF_example_indented;
                  plaintext_commands_data[i].flags |= PF_indented;
                  plaintext_commands_data[i].flags |= PF_format_context;
                }
            }
        }
    }

  for (i = 0; indented_commands[i]; i++)
    {
      enum command_id cmd = indented_commands[i];
      plaintext_commands_data[cmd].flags |= PF_indented;
      plaintext_commands_data[cmd].flags |= PF_format_context;
    }

  for (i = 0; format_context_commands[i]; i++)
    plaintext_commands_data[format_context_commands[i]].flags
           |= PF_format_context;

  plaintext_commands_data[CM_verbatim].flags |= PF_preformatted_context;

  for (i = 0; item_indent_format_length[i].cmd != CM_NONE; i++)
    {
      enum command_id cmd = item_indent_format_length[i].cmd;
      plaintext_commands_data[cmd].flags |= PF_indented;
      plaintext_commands_data[cmd].flags |= PF_format_context;
      plaintext_commands_data[cmd].indent_format_length
        = item_indent_format_length[i].indent_format_length;
    }

  /* ignored formatted/formattable line commands */
  for (i = 0; non_formatted_line_command[i]; i++)
    plaintext_commands_data[non_formatted_line_command[i]].flags |= PF_ignored;

  /* not ignored line commands */
  for (i = 0; informative_global_commands[i]; i++)
    {
      enum command_id cmd = informative_global_commands[i];
      plaintext_commands_data[cmd].flags &= ~PF_ignored;
      plaintext_commands_data[cmd].flags |= PF_informative;
    }

  for (i = 0; contents_commands[i]; i++)
    plaintext_commands_data[contents_commands[i]].flags &= ~PF_ignored;

  plaintext_commands_data[CM_documentlanguagevariant].flags &= ~PF_ignored;

  initialize_cmd_list (&format_raw_cmd, format_raw_cmd_nr, 0);

  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (plaintext_commands_data[i].flags & PF_format_raw)
        {
          format_raw_cmd.list[format_raw_cmd.number] = i;
          format_raw_cmd.number++;
        }
    }

  static enum command_id asis_commands[] = {
    CM_asis, CM_w, CM_b, CM_i, CM_t, CM_r, CM_slanted, CM_sansserif,
    CM_verb, CM_clicksequence, CM_headitemfont, CM_dmn, 0
  };

  for (i = 0; (asis_commands[i]); i++)
    plaintext_commands_data[asis_commands[i]].flags |= PF_asis;

  static enum command_id quoted_commands[] = {
    CM_cite, CM_code, CM_command, CM_env, CM_file,
    CM_indicateurl, CM_kbd, CM_option, CM_samp, 0
  };

  for (i = 0; (quoted_commands[i]); i++)
    plaintext_commands_data[quoted_commands[i]].flags |= PF_quoted;

  /* Sort style_map by command. */
  int n = sizeof(style_map) / sizeof(style_map[0]);
  qsort (style_map, n, sizeof(style_map[0]), &compare_cmd_id_fn);

  for (i = 0; i < n; i++)
    plaintext_commands_data[style_map[i].cmd].flags |= PF_style_map;
}

void
plaintext_conversion_initialization (CONVERTER *self, DOCUMENT *document)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  COUNT_CONTEXT bottom_count_context = { 0 };
  add_(count_context) (&self_plaintext->count_context,
                       bottom_count_context);

  converter_set_document (self, document);

  if (document->indices_info.number > 0)
    {
      converter_sort_index_names (self);

      if (self->sorted_index_names.number > 0)
        {
          size_t i;

          self_plaintext->index_entry_conversion_info = (INDEX_ENTRY_INFO **)
            malloc (sizeof (INDEX_ENTRY_INFO *)
                                    * self->sorted_index_names.number);

          for (i = 0; i < self->sorted_index_names.number; i++)
            {
              self_plaintext->index_entry_conversion_info[i]
               = (INDEX_ENTRY_INFO *) malloc (sizeof (INDEX_ENTRY_INFO)
                    * self->sorted_index_names.list[i]->entries_number);
              memset (self_plaintext->index_entry_conversion_info[i], 0,
                      sizeof (INDEX_ENTRY_INFO)
                        * self->sorted_index_names.list[i]->entries_number);
            }
        }
    }

  self_plaintext->node_names_cache
    = realloc (self_plaintext->node_names_cache,
               document->nodes_list.number * sizeof (STRING_WITH_WIDTH));
  memset (self_plaintext->node_names_cache, 0,
          document->nodes_list.number * sizeof (STRING_WITH_WIDTH));

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

  /* it is an error to have index entries outside of nodes, so there
     is no point optimizing the size of the hash */
  init_c_hashmap (&self_plaintext->index_entries_no_node, 10);

  init_c_hashmap (&self_plaintext->index_entry_node_colon,
                  document->nodes_list.number);

  /* _Root_context in Perl, in C use CM_NONE */
  push_top_formatter (self, CM_NONE);
}

void
plaintext_conversion_finalization (CONVERTER *self)
{
  /* TODO */
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  size_t i;

  for (i = 0; i < self->document->nodes_list.number; i++)
    free (self_plaintext->node_names_cache[i].string);

  pop_top_formatter (self);

  clear_c_hashmap (&self_plaintext->index_entries_no_node);
  clear_c_hashmap (&self_plaintext->index_entry_node_colon);

  free (self_plaintext->outside_of_any_node_text);
  self_plaintext->outside_of_any_node_text = 0;
  self_plaintext->outside_of_any_node_text_width = 0;
  self_plaintext->current_node = 0;

  free (self_plaintext->text_before_first_node);
  self_plaintext->text_before_first_node = 0;

  self_plaintext->encoding_disabled = 0;

  if (self->sorted_index_names.number > 0)
    {
      for (i = 0; i < self->sorted_index_names.number; i++)
        free (self_plaintext->index_entry_conversion_info[i]);
      free (self_plaintext->index_entry_conversion_info);
    }
  self_plaintext->index_entry_conversion_info = 0;
}

/* TODO
protect_sentence_ends

process_text_internal
*/

static void
add_lines_count (CONVERTER *self, int lines_count)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  count_context->lines += lines_count;
}

/* TODO: reset more than just 'result'? */
static void
stream_reset (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  text_reset (&count_context->pending_text);
  text_reset (&count_context->result);
}

void
stream_output (CONVERTER *self, const char *text)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  text_append (&count_context->pending_text, text);
}

static void
stream_output_count_nl (CONVERTER *self, const char *text)
{
  /* TODO */
  stream_output (self, text);
}

void
stream_output_add_text (CONVERTER *self, const char *text)
{
  int count;
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  TEXT result = para_add_text (text, strlen (text));
  count = para_end_line_count ();
  count_context->lines += count;

  if (result.text)
    text_append (&count_context->pending_text, result.text);
}

void
stream_output_add_next (CONVERTER *self, const char *text)
{
  /* TODO */
  stream_output (self, text);
}

static size_t
stream_encode (CONVERTER *self, const char *text, TEXT *result)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  char *converted_text;
  size_t len;

  if (self_plaintext->encoding_disabled)
    {
      len = strlen (text);
      text_append_n (result, text, len);
      return len;
    }

  if (!self_plaintext->encoding_object)
    {
      if (self->conf->OUTPUT_ENCODING_NAME.o.string
          && strcmp (self->conf->OUTPUT_ENCODING_NAME.o.string, "utf-8")
          && strcmp (self->conf->OUTPUT_ENCODING_NAME.o.string, "ascii"))
        {
          self_plaintext->encoding_object
           = get_encoding_conversion (
                            self->conf->OUTPUT_ENCODING_NAME.o.string,
                                            &output_conversions);
        }
      else
        {
          self_plaintext->encoding_disabled = 1;
          len = strlen (text);
          text_append_n (result, text, len);
          return len;
        }
    }
  converted_text = encode_with_iconv (self_plaintext->encoding_object->iconv,
                                      (char *)text, 0, ieh_error, 0);
  len = strlen (converted_text);
  text_append_n (result, converted_text, len);
  free (converted_text);
  return len;
}

static size_t
stream_byte_count (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  /* TODO need pending_text */
  if (count_context->pending_text.end > 0)
    {
      if (!count_context->encoding_disabled)
        {
          size_t len = stream_encode (self, count_context->pending_text.text,
                                      &count_context->result);
          /* TODO use count_context->result.end? */
          count_context->bytes += len;
        }
      else
        {
          text_append_n (&count_context->result,
                         count_context->pending_text.text,
                         count_context->pending_text.end);
          count_context->bytes = -1;
        }
      text_reset (&count_context->pending_text);
    }

  return count_context->bytes;
}

void
stream_output_encoded (CONVERTER *self, const char *encoded)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  /* flush pending */
  stream_byte_count (self);

  text_append (&count_context->result, encoded);
  count_context->bytes += strlen (encoded);
}

/* NOTE the returned string changes with new text streamed and is destroyed
   after popping the count context.  Therefore this function should only
   be used if the result is handled shortly after calling.  Otherwise
   stream_yield_result should be used.
 */
const char *
stream_result (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  /* flush pending */
  stream_byte_count (self);

  const char *result = count_context->result.text;
  return result ? result : "";
}

/* Like stream_result, but do not keep the result. */
/* Return value to be freed by caller. */
char *
stream_yield_result (CONVERTER *self)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  /* flush pending */
  stream_byte_count (self);

  char *result = text_yield (&count_context->result);
  return result ? result : strdup ("");
}

/* Save the line and byte offset of $ELEMENT. */
void
plaintext_add_target_location (CONVERTER *self, const ELEMENT *element)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT *count_context
    = top_(count_context) (&self_plaintext->count_context);

  TARGET_LOCATION *location = (TARGET_LOCATION *)
        malloc (sizeof (TARGET_LOCATION));

  location->lines = count_context->lines;
  location->target_element = element;
  location->bytes = stream_byte_count (self);

  add_(target_location) (&count_context->target_locations, location);
}

void
plaintext_convert_line (CONVERTER *self, const ELEMENT *converted,
                        int indent_length, int indent_length_next)
{
  FORMATTER formatter = new_formatter(self, formatter_line, indent_length,
                                      indent_length_next);
  const char *end_line;

  push_formatter (self, &formatter);
  convert_to_plaintext_internal (self, converted);
  end_line = para_end ();
  stream_output (self, end_line);
  para_destroy ();
  pop_formatter (self);
}

/* convert with a line formatter in a new count context, not changing
   the current context.  return the result of the conversion.
 */
void
plaintext_convert_line_new_context (CONVERTER *self,
                          const ELEMENT *converted,
                          int indent_length, int indent_length_next,
                           /* TODO $formatter_conf, */
                          STRING_COUNT_LINE_COUNT *output)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  /* TODO encoding_disabled is set in Perl */
  COUNT_CONTEXT new_count_context = { 0 };
  FORMATTER formatter = new_formatter(self, formatter_line, indent_length,
                                      indent_length_next);
  const char *end_line;

  add_(count_context) (&self_plaintext->count_context, new_count_context);
  push_formatter (self, &formatter);

  convert_to_plaintext_internal (self, converted);
  end_line = para_end ();
  stream_output (self, end_line);

  output->string = stream_yield_result (self);
  output->count = para_counter ();
  output->line_count = new_count_context.lines;

  para_destroy ();
  pop_formatter (self);
  pop_count_context (&self_plaintext->count_context);
}

/* TODO decode */

/* TODO string_width_encoded */

/* TODO update_locations_counts */

/* Called at the beginning of a line.  Add a blank line if the output does
   not already end in one. */
void
add_newline_if_needed (CONVERTER *self)
{
  /* TODO check pending_text */
  stream_output (self, "\n");
}

static void
ensure_end_of_line (CONVERTER *self)
{
  const char *result = stream_result (self);
  size_t len;

  if (!result)
    return;

  len = strlen (result);

  if (!len)
    return;

  if (result[len -1] != '\n')
    {
      stream_output (self, "\n");
      add_lines_count (self, 1);
     /* TODO
      $self->{'text_element_context'}->[-1]->{'counter'} = 0;
      */
    }
}

static FORMATTER *node_names_formatter;

static void
plaintext_convert_node_name (CONVERTER *self, const ELEMENT *element,
                             STRING_WITH_WIDTH *string_result)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  const ELEMENT *label_element = get_label_element (element);
  ELEMENT *node_text;
  const char *pending_word;
  char *result;
  /* TODO encoding_disabled is set in Perl */
  COUNT_CONTEXT new_count_context = { 0 };

  if (!label_element)
    {
      /* external node */
      label_element = lookup_extra_container (element, AI_key_node_content);
    }

  node_text = new_element (ET__code);
  /* cast to drop const */
  add_to_contents_as_array (node_text, (ELEMENT *)label_element);

  if (!node_names_formatter)
    {
      node_names_formatter = (FORMATTER *) malloc (sizeof (FORMATTER));
      memset (node_names_formatter, 0, sizeof (FORMATTER));
      /* TODO {'suppress_styles' => 1, 'no_added_eol' => 1,} */
      fill_formatter (node_names_formatter, self, formatter_line, 0, -1);
    }

  add_(count_context) (&self_plaintext->count_context, new_count_context);
  push_formatter (self, node_names_formatter);

  convert_to_plaintext_internal (self, node_text);
  pending_word = para_add_pending_word (0);
  stream_output_count_nl (self, pending_word);
  result = stream_yield_result (self);
  result = normalize_top_node_name (result);
  string_result->width = para_counter ();

  para_end_line ();
  destroy_element (node_text);

  pop_count_context (&self_plaintext->count_context);
  pop_formatter (self);

  string_result->string = result;
}

/* TODO do caching for nodes in nodes_list only, for two reasons.
   First, it is easier, as nodes have the node_number which allows
   for an easy setup of an array for indexing, other elements would
   need something else, maybe an hash for integers based on pointers.
   Second, other elements are unlikely to be needed many times
   in formatting as cached names.
 */
void
plaintext_node_name (CONVERTER *self, const ELEMENT *element,
                     STRING_WITH_WIDTH *string_result)
{
  if (element->e.c->cmd == CM_node)
    {
      int status;
      size_t node_number = lookup_extra_integer (element,
                                        AI_key_node_number, &status);
      if (status == 0)
        {
          PLAINTEXT_CONVERTER_STATE *self_plaintext
              = self->plaintext_converter;
          STRING_WITH_WIDTH *node_name
            = &self_plaintext->node_names_cache[node_number -1];

          if (!node_name->string)
            {
              plaintext_convert_node_name (self, element,
                                           node_name);
            }

          string_result->string = strdup (node_name->string);
          string_result->width = node_name->width;
          return;
        }
    }
  plaintext_convert_node_name (self, element, string_result);
}

/* the advantage of using that function is that we know that nodes only
   are processed and the $label_element can be obtained more simply
   than when the node is setup by a call to node_name(). */
void
plaintext_cache_node_names (CONVERTER *self, NODE_RELATIONS_LIST *nodes_list)
{
  size_t i;
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  ELEMENT *node_text = new_element (ET__code);

  if (!node_names_formatter)
    {
      node_names_formatter = (FORMATTER *) malloc (sizeof (FORMATTER));
      memset (node_names_formatter, 0, sizeof (FORMATTER));
      /* TODO {'suppress_styles' => 1, 'no_added_eol' => 1,} */
      fill_formatter (node_names_formatter, self, formatter_line, 0, -1);
    }

  push_formatter (self, node_names_formatter);

  for (i = 0; i < self->document->nodes_list.number; i++)
    {
      const char *pending_word;
      char *result;
      COUNT_CONTEXT count_context = { 0 };

      STRING_WITH_WIDTH *node_name = &self_plaintext->node_names_cache[i];

      const ELEMENT *node = self->document->nodes_list.list[i]->element;
      const ELEMENT *label_element = node->e.c->contents.list[0]
                                                 ->e.c->contents.list[0];

      /* cast to drop const */
      add_to_contents_as_array (node_text, (ELEMENT *)label_element);

      add_(count_context) (&self_plaintext->count_context, count_context);

      convert_to_plaintext_internal (self, node_text);
      pending_word = para_add_pending_word (0);
      stream_output_count_nl (self, pending_word);
      result = stream_yield_result (self);
      result = normalize_top_node_name (result);
      node_name->width = para_counter ();
      node_name->string = result;

      /* reset counters */
      para_end_line ();

      pop_count_context (&self_plaintext->count_context);

      pop_element_from_contents (node_text);
    }
  pop_formatter (self);

  destroy_element (node_text);
}

/*
sub _open_code($) {
 */

/*
sub _close_code($) {
 */

static PLAINTEXT_FORMAT_FUNCTIONS plaintext_functions[];

def_list_fns(PENDING_FOOTNOTE_LIST, pending_footnote, PENDING_FOOTNOTE, 3);

static int footnote_indent = 3;
#define NO_NUMBER_FOOTNOTE_SYMBOL "*"

void
plaintext_process_footnotes (CONVERTER *self, const OUTPUT_UNIT *output_unit)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  /* may not be used */
  FORMATTER formatter = new_formatter (self, formatter_line, -1, -1);
  const char *end_result;

  push_formatter (self, &formatter);

  if (self_plaintext->pending_footnotes.number > 0)
    {
      ELEMENT *label_element = 0;
      const ELEMENT *node_element;
      const char *identifier;
      ELEMENT *footnotes_node = 0;
      size_t i;

      if (output_unit && output_unit->uc.unit_command)
        {
          node_element = output_unit->uc.unit_command;

          if (node_element->e.c->cmd == CM_node)
            {
              identifier
                = lookup_extra_string (node_element, AI_key_identifier);
              if (identifier)
                {
                  const ELEMENT *arguments_line
                    = node_element->e.c->contents.list[0];
                  label_element = arguments_line->e.c->contents.list[0];
                }
            }
        }

      add_newline_if_needed (self);

      if (!self->conf->footnotestyle.o.string
          || strcmp (self->conf->footnotestyle.o.string, "separate")
        /* no node label happens only in very special cases, such as
           a @footnote in @copying and @insertcopying (and USE_NODES=0?) */
          || !label_element)
        {
          stream_output (self, "   ---------- Footnotes ----------\n\n");
          add_lines_count (self, 2);
        }
      else
        { /* TODO local variables?  current_node is used for an index entry
             appearing in footnote.  When/how can the elements be destroyed? */
          ELEMENT *footnotes_node_arg = new_element (ET_line_arg);
          ELEMENT *footnotes_suffix = new_element (ET_other_text);
          footnotes_node
            = new_command_element (ET_line_command, CM_node);
          ELEMENT *footnote_arguments_line
            = new_element (ET_arguments_line);
          char *footnote_node_id;
          NODE_RELATIONS footnotes_node_relations = { 0 };

          text_append_n (footnotes_suffix->e.text, "-Footnotes", 10);
          xasprintf (&footnote_node_id, "%s-Footnotes", identifier);

          /* TODO the label_element could be copied if it is simpler
             to register footnotes_node to be destroyed instead of
             each of the element except for label_element */
          add_to_contents_as_array (footnotes_node_arg, label_element);
          add_element_to_element_contents (footnotes_node_arg,
                                           footnotes_suffix);
          add_element_to_element_contents (footnote_arguments_line,
                                           footnotes_node_arg);
          add_element_to_element_contents (footnotes_node,
                                           footnote_arguments_line);
          footnotes_node->flags |= EF_is_target;
          add_extra_string (footnotes_node, AI_key_identifier,
                            footnote_node_id);

          footnotes_node_relations.element = footnotes_node;
          footnotes_node_relations.node_directions = new_directions ();
          footnotes_node_relations.node_directions[D_up] = node_element;

          plaintext_functions[self->format].format_node (self, footnotes_node,
                                                   &footnotes_node_relations);
          self_plaintext->current_node = footnotes_node;

          free (footnote_node_id);
        }

      for (i = 0; i < self_plaintext->pending_footnotes.number; i++)
        {
          enum command_id old_context_cmd;
          const PENDING_FOOTNOTE *footnote_info
            = &self_plaintext->pending_footnotes.list[i];
          int j;

     /* If nested within another footnote and footnotestyle is separate,
        the element here will be the parent element and not the footnote
        element, while the pxref will point to the name with the
        footnote node taken into account.  Not really problematic as
        nested footnotes are not right. */

          if (label_element)
            {
              char *footnote_anchor_id;
              int non_empty;
              ARG_INDICES arg_indices;

              ELEMENT *footnote_anchor_arg = new_element (ET_brace_arg);
              ELEMENT *footnote_anchor = new_command_element (ET_brace_command,
                                                              CM_anchor);
              ELEMENT *footnote_anchor_postfix_e
                = new_text_element (ET_other_text);
              text_printf (footnote_anchor_postfix_e->e.text, "-Footnote-%d",
                           footnote_info->number);

          /* TODO the label_element could be copied if it is simpler
             to register footnotes_anchor to be destroyed instead of
             each of the element except for label_element */
              non_empty = non_leading_trailing_indices (label_element,
                                                        &arg_indices);
              if (non_empty)
                insert_slice_into_contents (footnote_anchor_arg, 0,
                                            label_element, arg_indices.start,
                                            arg_indices.end +1);

              add_element_to_element_contents (footnote_anchor_arg,
                                               footnote_anchor_postfix_e);

              xasprintf (&footnote_anchor_id, "%s%s", identifier,
                         footnote_anchor_postfix_e->e.text->text);

              footnote_anchor->flags |= EF_is_target;
              add_extra_string (footnote_anchor, AI_key_identifier,
                                footnote_anchor_id);
              add_to_element_contents (footnote_anchor, footnote_anchor_arg);

              /* FIXME the footnote_anchor element is not registered anywhere
                 for destruction */
              plaintext_add_target_location (self, footnote_anchor);
            }

          push_top_formatter (self, CM_footnote);

          for (j = 0; j < footnote_indent; j++)
            {
              /* TODO
              $self->{'text_element_context'}->[-1]->{'counter'} += 1
               */
              stream_output (self, " ");
            }

          if (self->conf->NUMBER_FOOTNOTES.o.integer > 0)
            {
              char *formatted_footnote_number_str;
              xasprintf (&formatted_footnote_number_str, "(%d)",
                         footnote_info->number);

              stream_output (self, formatted_footnote_number_str);
            /*
              $self->{'text_element_context'}->[-1]->{'counter'} +=
                Texinfo::Convert::Unicode::string_width($footnote_text);
             */
              free (formatted_footnote_number_str);
            }
          else
            {
              stream_output (self, "(" NO_NUMBER_FOOTNOTE_SYMBOL ")");
              /*
             $self->{'text_element_context'}->[-1]->{'counter'} +=
               3 */
            }

          if (footnote_info->element->e.c->contents.number > 0)
            convert_to_plaintext_internal (self,
                        footnote_info->element->e.c->contents.list[0]);

          add_newline_if_needed (self);

          old_context_cmd = pop_top_formatter (self);
          if (old_context_cmd != CM_footnote)
            abort ();
        }
      self_plaintext->pending_footnotes.number = 0;
    }

  self_plaintext->footnote_index = 0;

  end_result = para_end ();
  stream_output_count_nl (self, end_result);

  para_destroy ();
  pop_formatter (self);
}

void
plaintext_format_contents (CONVERTER *self, SECTIONING_ROOT *sectioning_root,
                           enum command_id contents_or_shortcontents_cmd)
{
  int is_contents = (contents_or_shortcontents_cmd == CM_contents);
  const SECTION_RELATIONS_LIST *root_children;
  int status;
  int root_level;
  size_t i;
  int lines_count = 0;

  if (!sectioning_root)
    return;

  root_children = &sectioning_root->section_children;
  root_level = lookup_extra_integer (root_children->list[0]->element,
                                     AI_key_section_level,
                                     &status);

  for (i = 0; i < root_children->number; i++)
    {
      const ELEMENT *top_section = root_children->list[i]->element;
      int section_level
        = lookup_extra_integer (top_section, AI_key_section_level, &status);
      if (section_level > root_level)
        root_level = section_level;
    }

 /* This is done like that because the tree may not be well formed if
    there is a @part after a @chapter for example. */
  for (i = 0; i < root_children->number; i++)
    {
      const SECTION_RELATIONS *top_relations = root_children->list[i];
      const SECTION_RELATIONS *section_relations = top_relations;
      while (section_relations)
        {
          const ELEMENT *section = section_relations->element;
          const ELEMENT *arguments_line = section->e.c->contents.list[0];
          ELEMENT *line_arg = arguments_line->e.c->contents.list[0];
          ELEMENT *section_title_tree;
          ELEMENT *section_title_element = new_element (ET__frenchspacing);
          int numbered_section;
          int status;
          int section_level = lookup_extra_integer (section,
                                       AI_key_section_level, &status);
          const char *section_number
           = lookup_extra_string (section, AI_key_section_heading_number);
          STRING_COUNT_LINE_COUNT section_text;

          int repeat_count = 2 * (section_level - (root_level+1));
          if (repeat_count > 0)
            {
              int j;
              for (j = 0; j < repeat_count; j++)
                stream_output (self, " ");
            }

          numbered_section = (section_number
             && self->conf->NUMBER_SECTIONS.o.integer != 0);

          if (numbered_section)
            {
              NAMED_STRING_ELEMENT_LIST *replaced_substrings
                = new_named_string_element_list ();
              ELEMENT *e_number = new_text_element (ET_normal_text);
              ELEMENT *section_title_copy = copy_element_tree (line_arg, 0);

              add_element_to_named_string_element_list (
                          replaced_substrings, "section_title",
                          section_title_copy);
              text_append (e_number->e.text, section_number);
              add_element_to_named_string_element_list (
                          replaced_substrings, "number", e_number);

              if (section->e.c->cmd == CM_appendix && section_level == 1)
                  section_title_tree
                      = cdt_tree ("Appendix {number} {section_title}",
                                  self, replaced_substrings, 0);
              else
                section_title_tree = cdt_tree ("{number} {section_title}",
                                             self, replaced_substrings, 0);

              destroy_named_string_element_list (replaced_substrings);
            }
          else
            section_title_tree = line_arg;

          add_to_contents_as_array (section_title_element,
                                    section_title_tree);

          plaintext_convert_line_new_context (self, section_title_element,
                                                  -1, -1,
                                                  &section_text);
          if (numbered_section)
            destroy_element_and_children (section_title_element);
          else
            destroy_element (section_title_element);

          stream_output (self, section_text.string);
          if (section_text.string[strlen (section_text.string) -1] != '\n')
            stream_output (self, "\n");
          lines_count++;
          free (section_text.string);

          if (section_relations->section_children
              && section_relations->section_children->number > 0
              && (is_contents || section_level < root_level+1))
            section_relations = section_relations->section_children->list[0];
          else if (section_relations->section_directions
                   && section_relations->section_directions[D_next])
            {
              if (section_relations == top_relations)
                break;

              section_relations
                = section_relations->section_directions[D_next];
            }
          else
            {
              if (section_relations == top_relations)
                break;

              while (section_relations->section_directions
                     && section_relations->section_directions[D_up])
                {
                  section_relations
                    = section_relations->section_directions[D_up];

                  if (section_relations == top_relations)
                    {
                      section_relations = NULL;
                      break;
                    }

                  if (section_relations->section_directions
                      && section_relations->section_directions[D_next])
                    {
                      section_relations
                        = section_relations->section_directions[D_next];
                      break;
                    }
                }
            }
        }
    }
}

typedef struct CONVERT_PRINTINDEX_ENTRIES_INFO {
    const ELEMENT *node;
    int line_nr;
    int ignored;
} CONVERT_PRINTINDEX_ENTRIES_INFO;

static int index_length_to_node = 41;

static const char *node_quote = "\x7f";

void
plaintext_process_printindex (CONVERTER *self,
                              const ELEMENT *printindex, int in_info)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  const STRING_LIST *misc_args;
  const char *index_name;
  INDEX_SORTED_BY_INDEX *sorted_indexes;
  char *language;
  const INDEX_SORTED_BY_INDEX *idx;
  const INDEX_SORTED_BY_INDEX *index_sorted = 0;
  size_t i;
  int max_index_line_nr_string_length = 0;
  char *line_nr_with_max_format;
  /* number of index entries that refer to something else than an index entry
     in a node.  Corresponding with @seeentry or @seealso */
  size_t reference_entries_nr = 0;
  size_t other_entries_nr = 0;
  FORMATTER formatter;
  TEXT entry_line;
  TEXT line_part;
  C_HASHMAP *entry_counts;
  int fillcolumn = self->conf->FILLCOLUMN.o.integer;

  /* misc_args is not set with NO_INDEX set */
  misc_args = lookup_extra_string_list (printindex, AI_key_misc_args);
  if (misc_args && misc_args->number > 0)
    index_name = misc_args->list[0];
  else
    return;

  /* not sure that it can happen */
  if (!self->document)
    return;

  sorted_indexes = get_converter_indices_sorted_by_index (self, &language);

  if (!sorted_indexes)
    return;

  for (idx = sorted_indexes; idx->name; idx++)
    {
      if (!strcmp (idx->name, index_name))
        {
          index_sorted = idx;
          break;
        }
    }
  /* no entries should not be possible, as only indices with entries are
     left in sorted index names array */
  if (!index_sorted || !index_sorted->entries_number)
    return;

  /* TODO could cache entry_index_nr index_entry_info->number in an
     array per sorted index entry to reuse in the second loop.
     Not sure it is worth it.
   */

  for (i = 0; i < index_sorted->entries_number; i++)
    {
      INDEX_ENTRY_INFO *entry_info;
      const INDEX_ENTRY *index_entry = index_sorted->entries[i];
      const ELEMENT *main_entry_element = index_entry->entry_element;
      const ELEMENT *node = 0;
      char *line_nr_string;
      int index_line_nr_string_length;
      size_t entry_index_nr;
      const INDEX_ENTRY_LOCATION *index_entry_info;

      const ELEMENT *seealso;
      const ELEMENT *seeentry = index_entry_referred_entry (main_entry_element,
                                                            CM_seeentry);
      int line_nr = 0;

      if (seeentry)
        {
          reference_entries_nr++;
          continue;
        }

      seealso = index_entry_referred_entry (main_entry_element, CM_seealso);
      if (seealso)
        {
          reference_entries_nr++;
          continue;
        }

      entry_index_nr
       = index_number_index_by_name (&self->sorted_index_names,
                                    index_entry->index_name);
      index_entry_info
        = lookup_extra_index_entry (main_entry_element, AI_key_index_entry);
      entry_info = &self_plaintext->index_entry_conversion_info
         [entry_index_nr -1][index_entry_info->number -1];

     if (1)
       {
    /* TODO
    if (exists($self->{'index_entries_line_location'})
        and defined($self->{'index_entries_line_location'}
                                              ->{$main_entry_element})) {
      $line_nr = $self->{'index_entries_line_location'}
                                     ->{$main_entry_element}->{'lines'};
    }
      */
         line_nr = i+1;
       }
      else
       {
      /* ignore index entries in special regions that haven't been seen */
          const char *element_region
            = lookup_extra_string (main_entry_element, AI_key_element_region);
          if (element_region)
            {
              entry_info->ignored = 1;
              break;
            }
        }
    /* priority given to the location determined dynamically as the
       index entry may be in footnote. */
      if (0)
        {
     /* TODO
    if (exists($self->{'index_entries_line_location'})
        and exists($self->{'index_entries_line_location'}
                                             ->{$main_entry_element})
        and defined($self->{'index_entries_line_location'}
                                    ->{$main_entry_element}->{'node'})) {
      $node = $self->{'index_entries_line_location'}
                                    ->{$main_entry_element}->{'node'};
    } elsif (exists($main_entry_element->{'extra'}->{'element_node'})) {
      $node = $identifiers_target->{
                        $main_entry_element->{'extra'}->{'element_node'}};
    }
       */
        }
      else
        {
          const char *element_node
            = lookup_extra_string (main_entry_element, AI_key_element_node);
          if (element_node)
            {
              C_HASHMAP *identifiers_target = &self->document->identifiers_target;
              node = find_identifier_target (identifiers_target, element_node);
            }
        }

      entry_info->node = node;
      /* TODO in Perl !defined is used not 0, it may be needed to do something
         similar here */
      if (!node)
        line_nr = 0;
      else if (in_info)
        {
          if (line_nr == 0)
            line_nr = 4;
          else if (line_nr < 3)
            line_nr = 3;
        }
      xasprintf (&line_nr_string, "%d", line_nr);
      index_line_nr_string_length = string_width_multibyte (line_nr_string);
      free (line_nr_string);
      if (max_index_line_nr_string_length < index_line_nr_string_length)
        max_index_line_nr_string_length = index_line_nr_string_length;
      entry_info->line_nr = line_nr;
      other_entries_nr++;
    }

  if (other_entries_nr + reference_entries_nr == 0)
    return;

  add_newline_if_needed (self);

  if (in_info)
    {
      /* FIXME nothing is actually streamed because of the first \x00 that
         terminates the string */
      stream_output (self, "\x00\x08[index\x00\x08]\n");
      add_lines_count (self, 1);
    }

  stream_output (self, "* Menu:\n\n");
  add_lines_count (self, 2);

  /* this is used to count entries that are the same */
  entry_counts = new_c_hashmap (index_sorted->entries_number);

  /* Use the same line formatter for all the index entries.  This is
     slightly faster than making a new one for each entry. */
  fill_formatter (&formatter, self, formatter_line, 0, -1);
  /* TODO
     { 'suppress_styles' => 1, 'no_added_eol' => 1 } );
   */
  push_formatter (self, &formatter);

  text_init (&entry_line);
  text_init (&line_part);

  xasprintf (&line_nr_with_max_format, "%%%dd",
             max_index_line_nr_string_length);

  for (i = 0; i < index_sorted->entries_number; i++)
    {
      const INDEX_ENTRY *index_entry = index_sorted->entries[i];
      const ELEMENT *main_entry_element = index_entry->entry_element;
      ELEMENT *entry_content_element;
      ELEMENT *entry_tree_element;
      ELEMENT_LIST *subentries_tree;
      size_t entry_index_nr;
      const INDEX *entry_index;
      int in_code;
      const char *end_result;
      const ELEMENT *seeentry;
      const ELEMENT *referred_entry = 0;
      char *entry_text;
      int found;
      uintptr_t entry_text_count;
      int line_width = 0;
      const ELEMENT *node;
      int line_nr;
      int line_part_width;
      int spaces_nr;
      int j;
      const INDEX_ENTRY_LOCATION *index_entry_info;
      INDEX_ENTRY_INFO *entry_info;

      entry_index_nr
       = index_number_index_by_name (&self->sorted_index_names,
                                    index_entry->index_name);
      index_entry_info
        = lookup_extra_index_entry (main_entry_element, AI_key_index_entry);
      entry_info = &self_plaintext->index_entry_conversion_info
         [entry_index_nr -1][index_entry_info->number -1];

      if (entry_info->ignored)
        continue;

      COUNT_CONTEXT new_count_context = { 0 };

      entry_content_element
        = converter_index_content_element (main_entry_element, self, 0);

      subentries_tree = comma_index_subentries_tree (main_entry_element, 0);

      entry_index = self->sorted_index_names.list[entry_index_nr-1];
      in_code = entry_index->in_code;

      if (in_code)
        entry_tree_element = new_element (ET__code);
      else
        entry_tree_element = new_element (ET__frenchspacing);

      add_to_contents_as_array (entry_tree_element, entry_content_element);

      if (subentries_tree)
        {
          insert_list_slice_into_contents (entry_tree_element,
                               entry_tree_element->e.c->contents.number,
                               subentries_tree, 0,
                               subentries_tree->number);
        }

      /* Convert entry text in a new context in order to capture result. */
      add_(count_context) (&self_plaintext->count_context, new_count_context);
      /* TODO
        $self->{'count_context'}->[-1]->{'encoding_disabled'} = 1;
       */
      convert_to_plaintext_internal (self, entry_tree_element);
      end_result = para_end ();
      stream_output_count_nl (self, end_result);
      entry_text = stream_yield_result (self);
      pop_count_context (&self_plaintext->count_context);

      if (entry_text[strspn (entry_text, whitespace_chars)] == '\0')
        goto finalize_entry;

      seeentry = index_entry_referred_entry (main_entry_element, CM_seeentry);
      if (seeentry)
        referred_entry = seeentry;
      else
        referred_entry
          = index_entry_referred_entry (main_entry_element, CM_seealso);

      if (referred_entry)
        {
          ELEMENT *referred_tree;
          ELEMENT *reference_tree;
          NAMED_STRING_ELEMENT_LIST *substrings
             = new_named_string_element_list ();

          ELEMENT *referred_copy
           = copy_element_tree (referred_entry->e.c->contents.list[0], 0);

          if (in_code)
            referred_tree = new_element (ET__code);
          else
            referred_tree = new_element (ET_NONE);

          add_to_contents_as_array (referred_tree, referred_copy);

     /* indent with the same width as '* ', but do not use * such that the
       info readers never find a cross reference for @seeentry or @seealso */
          stream_output (self, "  ");
          line_width += 2;

          if (seeentry)
            {
              ELEMENT *entry_tree_copy
                = copy_element_tree (entry_tree_element, 0);
              add_element_to_named_string_element_list (substrings,
                                                "main_index_entry",
                                                entry_tree_copy);
              add_element_to_named_string_element_list (substrings,
                                              "seeentry", referred_tree);
              reference_tree
                = cdt_tree ("{main_index_entry}, See@: {seeentry}", self,
                            substrings, 0);
            }
          else
            {
              add_element_to_named_string_element_list (substrings,
                                          "see_also_entry", referred_tree);
              stream_output (self, entry_text);
              stream_output (self, ": ");
              line_width += string_width_multibyte (entry_text);
              if (line_width < index_length_to_node)
                {
                  int j;
                  for (j = 0; j < index_length_to_node - line_width; j++)
                    stream_output (self, " ");
                }
              reference_tree = cdt_tree ("See also {see_also_entry}",
                                        self, substrings, 0);
            }

          convert_to_plaintext_internal (self, reference_tree);
          end_result = para_end ();
          stream_output_count_nl (self, end_result);
          stream_output (self, ".\n");
          add_lines_count (self, 1);

          destroy_named_string_element_list (substrings);
          goto finalize_entry;
        }

  /* No need for protection, the Info readers should find the last : on
     the line.  : in the node following the index entry node should be
     protected, however, as done below, such that : in the node are not
     mistaken as being part of the index entry. */

      if (self->conf->INDEX_SPECIAL_CHARS_WARNING.o.integer > 0
          && !self_plaintext->silent)
        {
          const char *check_chars = ":";

          const char *p = strpbrk (entry_text, check_chars);

          if (p)
            {
              char *texinfo_string = convert_to_texinfo (entry_tree_element);
              const char *command_name
                = element_command_name (main_entry_element);
              if (!command_name)
                {
                  command_name
                    = lookup_extra_string (main_entry_element,
                                          AI_key_original_def_cmdname);
                }

              message_list_command_warn (&self->error_messages,
                            (self->conf && self->conf->DEBUG.o.integer > 0),
                           main_entry_element, 0,
                    "Index entry in @%s with : produces invalid Info: %s",
                          command_name, texinfo_string);
              free (texinfo_string);
            }
        }

      text_append_n (&entry_line, "* ", 2);
      entry_text_count
         = (uintptr_t)c_hashmap_value (entry_counts, entry_text, &found);
      if (found)
        {
          entry_text_count++;
          c_hashmap_set_value (entry_counts,
                           entry_text, (const void *)entry_text_count);
          text_printf (&entry_line, "<%" PRIuPTR ">", entry_text_count);
        }
      else
        {
          entry_text_count = 0;
          c_hashmap_register (entry_counts,
                           entry_text, (const void *)entry_text_count);
        }

      text_append (&entry_line, entry_text);
      text_append_n (&entry_line, ": ", 2);
      stream_output (self, entry_line.text);

      line_width = string_width_multibyte (entry_line.text);
      text_reset (&entry_line);

      if (line_width < index_length_to_node)
        {
          int j;
          for (j = 0; j < index_length_to_node - line_width; j++)
            stream_output (self, " ");
          line_width = index_length_to_node;
        }

      node = entry_info->node;

      if (!node)
        {
          /* cache the transformation to text and byte counting, as
             it is likely that there is more than one such entry */
          if (!self_plaintext->outside_of_any_node_text)
            {
              ELEMENT *tree = cdt_tree ("(outside of any node)",
                                        self, 0 ,0);
              STRING_COUNT_LINE_COUNT node_text;
              plaintext_convert_line_new_context (self, tree,
                                                  -1, -1,
                                                  &node_text);

              self_plaintext->outside_of_any_node_text = node_text.string;
              self_plaintext->outside_of_any_node_text_width
                 = node_text.count;

              destroy_element_and_children (tree);
            }
          stream_output (self, self_plaintext->outside_of_any_node_text);
          line_width += self_plaintext->outside_of_any_node_text_width;
    /* TODO when outside of sectioning commands this message was already
       done by the Parser.
       Warn, only once. */
          if (!self_plaintext->silent)
            {
              char *entry_unique_string;

              xasprintf (&entry_unique_string, "%s-%d",
                         index_entry->index_name, index_entry->number);

              if (! is_c_hashmap_registered (
                            &self_plaintext->index_entries_no_node,
                                       entry_unique_string))
                {
                  message_list_command_warn (&self->error_messages,
                            (self->conf && self->conf->DEBUG.o.integer > 0),
                           main_entry_element, 0,
                     "entry for index `%s' outside of any node",
                       index_entry->index_name);

                  c_hashmap_register (&self_plaintext->index_entries_no_node,
                                      entry_unique_string, 0);
                }
              free (entry_unique_string);
            }
        }
      else
        {
          STRING_WITH_WIDTH node_name;
          const char *p;
          int quoting_required = 0;
          int warn_special_char = (!self_plaintext->silent
                  && self->conf->INFO_SPECIAL_CHARS_WARNING.o.integer > 0);

          plaintext_node_name (self, node, &node_name);

          if (warn_special_char
              || self->conf->INFO_SPECIAL_CHARS_QUOTE.o.integer > 0)
            {
     /* protect characters that need to be protected in menu node entry
        after menu entry name and also :, as the Info readers
        should consider text up to : to be part of the index entry. */
              p = node_name.string;
              char warned_char[3];
              while (*p)
                {
                  /* protect ,\t: and . followed by whitespace_chars */
                  const char *q = strpbrk (p, ",\t:.");
                  if (!q)
                    break;
                  if (*q == '.')
                    {
                      if (! *(q+1))
                        break;
                      if (!strchr (whitespace_chars, *(q+1)))
                        {
                          p = q+1;
                          continue;
                        }
                      warned_char[1] = *(q+1);
                      warned_char[2] = '\0';
                    }
                  else
                    warned_char[1] = '\0';
                  warned_char[0] = *q;

                  if (warn_special_char)
                    {
                      if (! is_c_hashmap_registered (
                            &self_plaintext->index_entry_node_colon,
                                       node_name.string))
                        {
                          message_list_command_warn (&self->error_messages,
                            (self->conf && self->conf->DEBUG.o.integer > 0),
                           node, 0,
                  "node name with index entries should not contain `%s'",
                           warned_char);

                          c_hashmap_register (
                                 &self_plaintext->index_entry_node_colon,
                                          node_name.string, 0);
                        }
                    }

                  if (self->conf->INFO_SPECIAL_CHARS_QUOTE.o.integer > 0)
                    quoting_required = 1;

                  break;
                }
            }

          if (quoting_required)
            stream_output_encoded (self, node_quote);
          stream_output_encoded (self, node_name.string);
          line_width += node_name.width;
          if (quoting_required)
            stream_output_encoded (self, node_quote);

          free (node_name.string);
        }

      stream_output (self, ".");
      line_width++;

      line_nr = entry_info->line_nr;
      text_append_n (&line_part, "(line ", 6);
      /* line_nr_with_max_format is "%" max_index_line_nr_string_length "d" */
      text_printf (&line_part, line_nr_with_max_format, line_nr);
      text_append_n (&line_part, ")", 1);

      line_part_width = string_width_multibyte (line_part.text);

      if (line_width + line_part_width +1 > fillcolumn)
        {
          stream_output (self, "\n");
          add_lines_count (self, 1);
          spaces_nr = fillcolumn - line_part_width;
        }
      else
        spaces_nr = fillcolumn - line_part_width - line_width;

      for (j = 0; j < spaces_nr; j++)
        stream_output (self, " ");

      stream_output (self, line_part.text);

      text_reset (&line_part);

      stream_output (self, "\n");
      add_lines_count (self, 1);

     finalize_entry:
      free (entry_text);
      if (subentries_tree)
        free_comma_index_subentries_tree (subentries_tree);
      destroy_element (entry_tree_element);
      destroy_element_and_children (entry_content_element);
    }

  para_destroy ();
  pop_formatter (self);

  stream_output (self, "\n");
  add_lines_count (self, 1);

  clear_c_hashmap (entry_counts);
  free (entry_counts);

  free (entry_line.text);
  free (line_part.text);

  free (line_nr_with_max_format);
}

void
plaintext_format_printindex (CONVERTER *self, const ELEMENT *printindex)
{
  plaintext_process_printindex (self, printindex, 0);
}

void
plaintext_format_ref (CONVERTER *self, enum command_id cmd,
                      const ELEMENT *element)
{
  const size_t max_xref_args = 5;
  const ELEMENT *args[max_xref_args];
  const ELEMENT *arg_node;
  const ELEMENT *label_element = 0;
  const ELEMENT *target_element = 0;
  ELEMENT *float_type_number_element = 0;
  ELEMENT *file_code_element = 0;
  ELEMENT *file_stop_upper_case_element = 0;
  ELEMENT *node_code_element = 0;
  ELEMENT *node_stop_upper_case_element = 0;
  ELEMENT *node_suppress_styles_element = 0;
  /* next elements are temporarily modified during copy, so cannot be
     const, but they are conceptually const */
  ELEMENT *file = 0;
  ELEMENT *node = 0;
  ELEMENT *book = 0;
  ELEMENT *name = 0;
  size_t i;
  NAMED_STRING_ELEMENT_LIST *substrings;
  ELEMENT *tree;

  /* no args may happen with bogus @-commands without argument, maybe only
     at the end of a document */

  if (!element->e.c->contents.number)
    return;
  else if (element->e.c->contents.number > max_xref_args)
    fatal ("xref command with too many arguments");

  memset (args, 0, max_xref_args * sizeof (const ELEMENT *));

  for (i = 0; i < element->e.c->contents.number; i++)
    {
      const ELEMENT *arg = element->e.c->contents.list[i];
      if (!empty_spaces_argument (arg))
        args[i] = arg;
    }

  arg_node = element->e.c->contents.list[0];

  /* normalize node name, to get a ref with the right formatting
     NOTE as a consequence, the line numbers appearing in case of errors
     correspond to the node lines numbers, and not the @ref. */
  /* exclude external nodes (in case internal refs get normalized) */
  if (!args[3] && !args[4])
    {
      const char *normalized
       = lookup_extra_string (arg_node, AI_key_normalized);
      const ELEMENT *manual_content = lookup_extra_container (arg_node,
                                                      AI_key_manual_content);
      if (normalized && !manual_content)
        {
          target_element = find_identifier_target (
                                  &self->document->identifiers_target,
                                  normalized);
          /* TODO normalized defined and no target_element happens in
             t/converters_tests.t ref_error_formatting with reference to non
             existing node.  Check difference with Perl, if any */
          if (target_element)
            label_element = get_label_element (target_element);
        }
    }
  if (!label_element)
    /* may still be NULL if node argument is empty */
    label_element = args[0];

  /* if it a reference to a float with a label, $args[1] is
     set to '$type $number' or '$number' if there is no type. */
  if (!args[1] && target_element && target_element->e.c->cmd == CM_float)
    {
      float_type_number_element = float_type_number (self, target_element);
      args[1] = float_type_number_element;
    }

  if (cmd == CM_inforef && args[2])
    {
      args[3] = args[2];
      args[2] = 0;
    }

  if (args[1])
    name = (ELEMENT *) args[1];
  else if (args[2])
    name = (ELEMENT *) args[2];

  if (args[3])
    {
      file_code_element = new_element (ET__code);
      /* cast to drop const */
      add_to_contents_as_array (file_code_element, (ELEMENT *)args[3]);
      file_stop_upper_case_element = new_element (ET__stop_upper_case);
      add_to_element_contents (file_stop_upper_case_element,
                               file_code_element);
      file = file_code_element;
    }
  else if (args[4])
    book = (ELEMENT *) args[4];

  if (label_element)
    {
      node_suppress_styles_element = new_element (ET__suppress_styles);
      /* cast to drop const */
      add_to_contents_as_array (node_suppress_styles_element,
                                (ELEMENT *)label_element);
      node_code_element = new_element (ET__code);
      add_to_element_contents (node_code_element, node_suppress_styles_element);
      node_stop_upper_case_element = new_element (ET__stop_upper_case);
      add_to_element_contents (node_stop_upper_case_element,
                               node_code_element);
      node = node_suppress_styles_element;
    }

  substrings = new_named_string_element_list ();

  if (node)
    {
      ELEMENT *node_copy = copy_element_tree (node, 0);
      add_element_to_named_string_element_list (substrings,
                                                "node", node_copy);
      if (file)
        {
          ELEMENT *file_copy = copy_element_tree (file, 0);
          add_element_to_named_string_element_list (substrings,
                                                    "file", file_copy);
          if (name)
            {
              ELEMENT *name_copy = copy_element_tree (name, 0);
              add_element_to_named_string_element_list (substrings,
                                                     "name", name_copy);
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {name}: ({file}){node}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {name}: ({file}){node}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{name}: ({file}){node}", self,
                                 substrings, 0);
            }
          else
            {
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See ({file}){node}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see ({file}){node}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("({file}){node}", self,
                                 substrings, 0);
            }
       }
     else if (book)
       {
          ELEMENT *book_copy = copy_element_tree (book, 0);
          add_element_to_named_string_element_list (substrings,
                                               "book", book_copy);
          if (name)
            {
              ELEMENT *name_copy = copy_element_tree (name, 0);
              add_element_to_named_string_element_list (substrings,
                                                     "name", name_copy);
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {name}: {node} in @cite{{book}}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {name}: {node} in @cite{{book}}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{name}: {node} in @cite{{book}}", self,
                                 substrings, 0);
            }
          else
            {
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {node} in @cite{{book}}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {node} in @cite{{book}}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{node} in @cite{{book}}", self,
                                 substrings, 0);
            }
       }
     else
       {
          if (name)
            {
              ELEMENT *name_copy = copy_element_tree (name, 0);
              add_element_to_named_string_element_list (substrings,
                                                     "name", name_copy);
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {name}: {node}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {name}: {node}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{name}: {node}", self,
                                 substrings, 0);
            }
          else
            {
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {node}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {node}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{node}", self,
                                 substrings, 0);
            }
        }
    }
   else
    {
      if (file)
        {
          ELEMENT *file_copy = copy_element_tree (file, 0);
          add_element_to_named_string_element_list (substrings,
                                                    "file", file_copy);
          if (name)
            {
              ELEMENT *name_copy = copy_element_tree (name, 0);
              add_element_to_named_string_element_list (substrings,
                                                     "name", name_copy);
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {name}({file})", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {name}({file})", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{name}({file})", self,
                                 substrings, 0);
            }
          else
            {
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See ({file})", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see ({file})", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("({file})", self,
                                 substrings, 0);
            }
       }
     else if (book)
       {
          ELEMENT *book_copy = copy_element_tree (book, 0);
          add_element_to_named_string_element_list (substrings,
                                               "book", book_copy);
          if (name)
            {
              ELEMENT *name_copy = copy_element_tree (name, 0);
              add_element_to_named_string_element_list (substrings,
                                                     "name", name_copy);
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {name} in @cite{{book}}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {name} in @cite{{book}}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{name} in @cite{{book}}", self,
                                 substrings, 0);
            }
          else
            {
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See @cite{{book}}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see @cite{{book}}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("@cite{{book}}", self,
                                 substrings, 0);
            }
       }
     else
       {
          if (name)
            {
              ELEMENT *name_copy = copy_element_tree (name, 0);
              add_element_to_named_string_element_list (substrings,
                                                     "name", name_copy);
              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {name}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {name}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{name}", self,
                                 substrings, 0);
            }
          else
            {
              ELEMENT *top_text = new_text_element (ET_other_text);
              text_append_n (top_text->e.text, "Top", 3);
              add_element_to_named_string_element_list (substrings,
                                                        "node", top_text);

              if (cmd == CM_xref || cmd == CM_inforef)
                tree = cdt_tree ("See {node}", self,
                                 substrings, 0);
              else if (cmd == CM_pxref)
                tree = cdt_tree ("see {node}", self,
                                 substrings, 0);
              else
                tree = cdt_tree ("{node}", self,
                                 substrings, 0);
            }
        }
    }

  destroy_named_string_element_list (substrings);

  convert_to_plaintext_internal (self, tree);

  destroy_element_and_children (tree);

  if (node_suppress_styles_element)
    {
      destroy_element (node_suppress_styles_element);
      destroy_element (node_code_element);
      destroy_element (node_stop_upper_case_element);
    }

  if (file_code_element)
    {
      destroy_element (file_code_element);
      destroy_element (file_stop_upper_case_element);
    }

  if (float_type_number_element)
    destroy_element_and_children (float_type_number_element);
}

void
plaintext_format_node (CONVERTER *self, const ELEMENT *node,
                       const NODE_RELATIONS *node_relations)
{
}

void
plaintext_format_error_outside_of_any_node (CONVERTER *self,
                                            const ELEMENT *element)
{
}

static void
anchor (CONVERTER *self, const ELEMENT *anchor)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;

  if (! (self_plaintext->multiple_pass || self_plaintext->in_copying_header))
    {
      plaintext_add_target_location (self, anchor);
      plaintext_functions[self->format]
                  .format_error_outside_of_any_node (self, anchor);
    }
}

char *
plaintext_image_formatted_text (CONVERTER *self, const ELEMENT *element,
                                const char *basefile, const char *text)
{
  TEXT result;

  if (text)
    return strdup (text);

  text_init (&result);

  text_append_n (&result, "[", 1);
  if (element->e.c->contents.number >= 4
      && !empty_spaces_argument (element->e.c->contents.list[3]))
    {
      char *alt = convert_to_text (element->e.c->contents.list[3],
                                       self->convert_text_options);
      text_append (&result, alt);
      free (alt);
    }
  else
    {
      PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
      if (!self_plaintext->silent)
        {
          message_list_command_warn (&self->error_messages,
                            (self->conf && self->conf->DEBUG.o.integer > 0),
                            element, 0,
                    "could not find @image file `%s.txt' nor alternate text",
                           basefile);
        }

      text_append (&result, basefile);
    }
  text_append_n (&result, "]", 1);

  return result.text;
}

void
plaintext_format_image_element (CONVERTER *self, const ELEMENT *element,
                                STRING_LINE_COUNT *result)
{
  if (element->e.c->contents.number > 0
      && !empty_spaces_argument (element->e.c->contents.list[0]))
    {
      char *basefile;
      char *text;
      int width = -1;
      const char *p;
      int lines_count = 0;

      self->convert_text_options->code_state++;
      basefile = convert_to_text (element->e.c->contents.list[0],
                                  self->convert_text_options);
      self->convert_text_options->code_state--;

      text = converter_txt_image_text (self, element, basefile, &width);

      if (text)
        {
          size_t text_len = strlen (text);
          /* remove last end of line */
          if (text_len > 0 && text[text_len - 1] == '\n')
            text[text_len - 1] = '\0';
        }

      result->string = plaintext_image_formatted_text (self, element,
                                                       basefile, text);
      free (text);

      if (width == -1)
        width = string_width_multibyte (result->string);

      p = result->string;
      while (1)
        {
          const char *q = strpbrk (p, "\n");
          if (q)
            {
              lines_count++;
              p = q +1;
             /* FIXME there are '\0' in the image quote characters */
              if (!*p)
                break;
            }
          else
            break;
        }

      result->line_count = lines_count;
   /* the last line is part of the image but do not have a new line,
      so 1 is added to $lines_count to have the number of lines of
      the image */
    /* TODO
    $self->add_image($element, $lines_count+1, $width);
     */
      free (basefile);

      return;
    }

  memset (result, 0, sizeof (STRING_LINE_COUNT));
}

/*
  should not be called, only the Info format counterpart should be called
  since it is not called by Plaintext format_image_element and is only
  called for INFO_MATH_IMAGES, which should do nothing in Plaintext.
 */
char *
plaintext_format_image (CONVERTER *self, const char *image_file,
                   const char *text, const char *alt,
                   int dpi, int depth)
{
  return 0;
}

/* format_* dispatch table between plaintext and info.  Should be in sync with
   enum converter_format */
static PLAINTEXT_FORMAT_FUNCTIONS plaintext_functions[] = {
  {
   &plaintext_format_contents,
   &plaintext_format_error_outside_of_any_node,
   &plaintext_format_image,
   &plaintext_format_image_element,
   &plaintext_format_node,
   &plaintext_format_printindex,
   &plaintext_format_ref,
  },
  {
   &info_format_contents,
   &info_format_error_outside_of_any_node,
   &info_format_image,
   &info_format_image_element,
   &info_format_node,
   &info_format_printindex,
   &info_format_ref,
  }
};

void
plaintext_insert_image (CONVERTER *self, const char *image_file,
                        const char *image_text, int dpi, int depth,
                        STRING_LINE_COUNT *result)
{
  char *result_text = strdup (image_text);
  int line_count = 0;
  int width = 0;
  const char *p;
  char *q;

  size_t len = strlen (result_text);

  if (len != 0)
    {
      if (result_text[len -1] == '\n')
        result_text[len -1] = '\0';

      /* We assume that there are only NL, no CR */
      p = result_text;
      while (1)
        {
          int new_width;

          line_count++;
          q = strpbrk (p, "\n");
          if (q)
            *q = '\0';
          new_width = string_width_multibyte (p);
          if (new_width > width)
            width = new_width;
          if (!q)
            break;
          *q = '\n';
          p = q+1;
          if (!*p)
            break;
        }
    }

  result->string
    = plaintext_functions[self->format].format_image (self, image_file,
                                             result_text, 0, dpi, depth);

  result->line_count = line_count;

   /* the last line is part of the image but do not have a new line,
      so 1 is added to $lines_count to have the number of lines of
      the image */
    /* TODO
    $self->add_image(undef, $line_count+1, $width);
     */
}

void convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *e);


/* ALTIMP: _convert in Texinfo:Convert::Plaintext */
void
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
          return;
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
      if (self_plaintext->commands_data[cmd].flags & PF_ignored)
        return;
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
          if ((plaintext_commands_data[cmd].flags
               & (PF_style_map | PF_asis | PF_quoted))
              || cmd == CM_dfn /* %double_quoted_commands in Perl */)
            {
              /* TODO check brace_code_commands */
              /* TODO check style_no_code */
              /* TODO check no_punctuation_munging_commands */
              /* TODO @w */
              /* TODO non_quoted_commands_when_nested */
              const char *text_before = NULL, *text_after = NULL;
              if (plaintext_commands_data[cmd].flags & PF_style_map)
                {
                  /* Look up in style map by linear search.
                     Binary search would also be possible, although the
                     array is not very big. */
                  int n = sizeof(style_map) / sizeof(style_map[0]);
                  int i;
                  for (i = 0; i < n; i++)
                    {
                      if (style_map[i].cmd == cmd)
                        break;
                    }
                  if (i < n)
                    {
                      text_before = style_map[i].pre;
                      text_after = style_map[i].post;
                    }
                  else
                    { /* bug */
                      text_before = "";
                      text_after = "";
                    }
                }
              else if (plaintext_commands_data[cmd].flags & PF_quoted)
                {
                  text_before = "‘"; /* UTF-8 left single quotation mark */
                  text_after = "’";  /* UTF-8 right single quotation mark */
                  /* TODO */
                }
              else if (cmd == CM_dfn)
                {
                  text_before = "“"; /* UTF-8 left double quotation mark */
                  text_after = "”";  /* UTF-8 right double quotation mark */
                  /* TODO */
                }
              else if (plaintext_commands_data[cmd].flags & PF_asis)
                {
                  text_before = "";
                  text_after = "";
                }
              else
                { /* bug */
                  text_before = "";
                  text_after = "";
                }

              TEXT added = para_add_next (text_before,
                                          strlen (text_before), 1);
              if (added.text)
                stream_output_count_nl (self, added.text);

              if (element->e.c->contents.number != 0)
                convert_to_plaintext_internal (self,
                                               element->e.c->contents.list[0]);

              added = para_add_next (text_after,
                                     strlen (text_after), 1);
              if (added.text)
                stream_output_count_nl (self, added.text);

              /* TODO @w */
              /* TODO check brace_code_commands */
              /* TODO check style_no_code */
              /* TODO non_quoted_commands_when_nested */
              /* TODO check no_punctuation_munging_commands */
              return;
            }
          /* TODO upper_case_commands */
          else if (cmd == CM_link)
            return;
          else if (cmd_data->flags & CF_ref)
            {
              plaintext_functions[self->format].format_ref (self, cmd, element);
              return;
            }
          else if (cmd == CM_image)
            {
              const char *pending_word;
              STRING_LINE_COUNT image_result;

              pending_word = para_add_pending_word (1);
              stream_output_count_nl (self, pending_word);

              /* add an empty word so that following spaces aren't lost */
              para_add_next ("", 0, 0);
              plaintext_functions[self->format].format_image_element (self,
                                                   element, &image_result);

       /* We do not how much horizontal space @image will take:
            * In plain text output or standalone Info, the replacement
              text will be used
            * In Emacs Info, the image file may be displayed.
          So if an @image is used inside a paragraph, we cannot break
          the line in a place that will always work.
          Here we just add a small number to the line counter as a compromise.
          (However, multi-line replacement texts are unlikely to look good if
          used inside a paragraph.) */
              para_add_to_counter (3);
              add_lines_count (self, image_result.line_count);
              if (image_result.string)
                {
                  stream_output (self, image_result.string);

                  free (image_result.string);
                }
              return;
            }
          else if (cmd == CM_today)
            return;
          else if (cmd_data->data == BRACE_noarg)
            {
              ELEMENT *translated_tree
                = converter_translated_command_tree (self, cmd);
              if (translated_tree)
                {
                  convert_to_plaintext_internal (self, translated_tree);
                  destroy_element_and_children (translated_tree);
                }
              else
                {
                  char *text;
                  int text_need_free = 0;

                  if (cmd == CM_dots || cmd == CM_enddots)
                    text = "...";
                  else
                    {
           /* Note that we set set_case to 0 irrespective of upper case
              context, as we want the call to _protect_sentence_ends
              to be on a text not already upper cased */
                      text = text_brace_no_arg_command (element,
                                   self_plaintext->enabled_encoding,
                             (self->conf->ASCII_GLYPH.o.integer > 0), 0, 0);
                      text_need_free = 1;
                    }

                  if (plaintext_commands_data[cmd].flags & PF_punctuation_no_arg)
                    {
                      stream_output_add_next (self, text);
                      para_add_end_sentence ();
                    }
                  else if (cmd == CM_tie)
                    stream_output_add_next (self, text);
                  else
                    {
           /* @AA{} should suppress an end sentence, @aa{} shouldn't.  This
              is the case whether we are in @sc or not. */
                      /* TODO
            if ($formatter->{'upper_case_stack'}->[-1]->{'upper_case'}
                and $letter_no_arg_commands{$cmdname}) {
              $text = _protect_sentence_ends($text);
              $text = uc($text);
            }
                       */

                      stream_output_add_text (self, text);

      /* This is to have @TeX{}, for example, not to prevent end sentences. */
                      if (!(command_other_flags (element) & CF_letter_no_arg))
                        para_allow_end_sentence ();

                      if (cmd == CM_dots)
                        para_remove_end_sentence ();
                    }

                  if (text_need_free)
                    free (text);
                }

            /* TODO
          if ($formatter->{'upper_case_stack'}->[-1]->{'var'}
              or $formatter->{'font_type_stack'}->[-1]->{'monospace'}) {
            allow_end_sentence($formatter->{'container'});
          }
             */

              return;
            }
          else if (cmd == CM_email)
            return;
          else if (cmd == CM_uref || cmd == CM_url)
            return;
          else if (cmd == CM_footnote)
            {
              TEXT added;

              if (!self_plaintext->multiple_pass)
                self_plaintext->footnote_index++;

              if (!self_plaintext->in_copying_header)
                plaintext_functions[self->format]
                  .format_error_outside_of_any_node (self, element);

              if (!self_plaintext->multiple_pass)
                {
                  PENDING_FOOTNOTE footnote_and_number = {
                         element, self_plaintext->footnote_index
                  };
                  add_(pending_footnote) (&self_plaintext->pending_footnotes,
                                          footnote_and_number);
                }

              if (self->conf->NUMBER_FOOTNOTES.o.integer > 0)
                {
                  char *formatted_footnote_number_str;
                  xasprintf (&formatted_footnote_number_str, "(%d)",
                             self_plaintext->footnote_index);
                  added = para_add_next (formatted_footnote_number_str,
                                   strlen (formatted_footnote_number_str), 1);
                  free (formatted_footnote_number_str);
                }
              else
                added = para_add_next ("(" NO_NUMBER_FOOTNOTE_SYMBOL ")", 3, 1);

              if (added.text)
                stream_output_count_nl (self, added.text);

              if (self->conf->footnotestyle.o.string
                  && !strcmp (self->conf->footnotestyle.o.string, "separate")
                  && self_plaintext->current_node)
                {
                  /* arguments_line type element */
                  const ELEMENT *arguments_line
                    = self_plaintext->current_node->e.c->contents.list[0];
                  ELEMENT *line_arg = arguments_line->e.c->contents.list[0];

                  ELEMENT *footnote_ref = new_element (ET_NONE);
                  ELEMENT *open_parenthese = new_text_element (ET_other_text);
                  text_append_n (open_parenthese->e.text, " (", 2);
                  ELEMENT *close_parenthese = new_text_element (ET_other_text);
                  text_append_n (close_parenthese->e.text, ")", 1);
                  ELEMENT *footnote_pxref
                                 = new_command_element (ET_brace_command,
                                                        CM_pxref);
                  ELEMENT *footnote_brace_arg = new_element (ET_brace_arg);
                  ELEMENT *footnote_name = new_text_element (ET_other_text);
                  text_printf (footnote_name->e.text, "-Footnote-%s",
                               self_plaintext->footnote_index);

                  add_element_to_element_contents (footnote_ref,
                                                   open_parenthese);
                  add_to_element_contents (footnote_ref, footnote_pxref);
                  add_element_to_element_contents (footnote_ref,
                                                   close_parenthese);
                  add_to_element_contents (footnote_pxref, footnote_brace_arg);
                  add_to_contents_as_array (footnote_brace_arg, line_arg);
                  add_element_to_element_contents (footnote_brace_arg,
                                                   footnote_name);

                  convert_to_plaintext_internal (self, footnote_ref);

                  destroy_element (footnote_name);
                  destroy_element (footnote_brace_arg);
                  destroy_element (footnote_pxref);
                  destroy_element (open_parenthese);
                  destroy_element (close_parenthese);
                  destroy_element (footnote_ref);
                }
              return;
            }
          else if (cmd == CM_anchor || cmd == CM_namedanchor)
            {
              const char *pending_word = para_add_pending_word (0);
              stream_output_count_nl (self, pending_word);
              anchor (self, element);
              return;
            }
          else if (cmd_data->flags & CF_explained)
            return;
          else if (cmd_data->data == BRACE_inline)
            return;
          else if (cmd_data->flags & CF_math)
            {
              ELEMENT *math_frenchspacing_element
                = new_element (ET__frenchspacing);
              ELEMENT *math_code_element = new_element (ET__code);
              MATH_ELEMENT_IMAGE *element_image = 0;
              add_(command) (&self_plaintext->context, cmd);
              enum command_id popped_cmd;

              if (self_plaintext->element_images)
                {
                  element_image
                 = &self_plaintext->element_images->math_images.list[
                          self_plaintext->element_images->math_index];
                  if (element_image->element != element)
                    {
                      char *msg;
                      xasprintf (&msg, "BUG: %zu: out of sync math element"
                                       " image and tree\n");
                      bug (msg);
                      free (msg);
                    }

                  self_plaintext->element_images->math_index++;
                  if (element_image->filename)
                    {
                      COUNT_CONTEXT count_context = { 0 };
                      /* TODO 'encoding_disabled' => 1, */

                      /* flush before @math, including spaces */
                      const char *pending_word = para_add_pending_word (1);
                      stream_output_count_nl (self, pending_word);
           /* TODO same as @image code.  Does not seems to have any effect,
              leading spaces in @math are lost anyway (which is not important).
              add an empty word so that following spaces aren't lost */
                      para_add_next ("", 0, 0);

           /* math rendered as an image, push a count to capture content */
                      add_(count_context) (&self_plaintext->count_context,
                                           count_context);
                    }
                }

              if (element->e.c->contents.number > 0)
                {
                  add_to_contents_as_array (math_code_element,
                                            element->e.c->contents.list[0]);
                  add_to_element_contents (math_frenchspacing_element,
                                           math_code_element);

                  convert_to_plaintext_internal (self,
                                                math_frenchspacing_element);

                  destroy_element (math_code_element);
                  destroy_element (math_frenchspacing_element);
               }

              if (element_image && element_image->filename)
                {
                  STRING_LINE_COUNT image_result;
                  char *result;
                   /* flush @math, including spaces */
                  const char *pending_word = para_add_pending_word (1);
                  stream_output_count_nl (self, pending_word);

                  result = stream_yield_result (self);

                  pop_count_context (&self_plaintext->count_context);

                  plaintext_insert_image (self, element_image->filename,
                             result,
                             element_image->dpi, element_image->depth,
                             &image_result);
                  free (result);
                  add_lines_count (self, image_result.line_count);
                  stream_output (self, image_result.string);
                  free (image_result.string);
                }
              popped_cmd = pop_context (&self_plaintext->context);
              if (popped_cmd != cmd)
                abort ();
              return;
            }
          else if (cmd == CM_titlefont)
            return;
          else if (cmd == CM_U)
            return;
          else if (cmd == CM_value)
            return;
        }
      else if (nobrace_symbol_text[cmd])
        {
          if (cmd == CM_COLON)
            para_remove_end_sentence ();
          else if (cmd == CM_ASTERISK)
            {
              FORMATTER *formatter
                = top_(formatter) (&self_plaintext->formatters);
              const char *pending_word = para_add_pending_word (0);

              stream_output_count_nl (self, pending_word);

       /* added eol in some line oriented constructs, such as @node, menu
          entry and therefore index entry would lead to end of line on
          node pointers line, in tag table, or on menu, all being invalid. */
              if (formatter->no_added_eol)
                stream_output_add_text (self, " ");
              else
                {
                  const char *end_line = para_end_line ();
                  stream_output_count_nl (self, end_line);
                }
            }
          else if (cmd == CM_FULL_STOP || cmd == CM_QUESTION_MARK
                       || cmd == CM_EXCLAMATION_MARK)
            {
              stream_output_add_next (self, nobrace_symbol_text[cmd]);
              para_add_end_sentence ();
            }
          else if (cmd == CM_SPACE || cmd == CM_NEWLINE || cmd == CM_TAB)
            stream_output_add_next (self, nobrace_symbol_text[cmd]);
          else
            stream_output_add_text (self, nobrace_symbol_text[cmd]);

          return;
        }
      else if (cmd_data->flags & CF_block)
        {
          if (cmd_data->data == BLOCK_menu)
            {
              const char *format_menu = self->conf->FORMAT_MENU.o.string;
              if (!format_menu || !*format_menu
                  || !strcmp (format_menu, "nomenu"))
                return;
            }
          /* includes @verbatim raw block_commands and block_math_commands */
          if (plaintext_commands_data[cmd].flags & PF_preformatted_context
              || cmd == CM_float)
            {
              if (plaintext_commands_data[cmd].flags & PF_format_raw)
                {
                  const char *pending_word = para_add_pending_word (1);
                  stream_output_count_nl (self, pending_word);
                }
              add_(command) (&self_plaintext->context, cmd);
            }
          /* TODO
            elsif ...
           */

          if (plaintext_commands_data[cmd].flags & PF_format_context)
            {
              /* TODO */

        /*
          open a preformatted container, if the command opening the
          preformatted context is not a classical preformatted
          command (ie if it is menu or verbatim, and not example or
          similar)
         */
              if (plaintext_commands_data[cmd].flags & PF_preformatted_context
                  && !(cmd_data->flags & CF_preformatted)
                  && !(plaintext_commands_data[cmd].flags & PF_format_raw))
                {
                  FORMATTER new_preformatted
                    = new_formatter (self, formatter_unfilled, -1, -1);
                  preformatted = &new_preformatted;

                  push_formatter (self, preformatted);
          /* displaymath rendered as an image, push a count to capture
             formatted content
           */
                  if (cmd_data->flags & CF_math
                      && self_plaintext->element_images)
                    {
                      MATH_ELEMENT_IMAGE *element_image
                = &self_plaintext->element_images->displaymath_images.list[
                          self_plaintext->element_images->displaymath_index];
                      if (element_image->element != element)
                        {
                          char *msg;
                          xasprintf (&msg, "BUG: %zu: out of sync displaymath"
                                           " element image and tree\n");
                          bug (msg);
                          free (msg);
                        }

                      if (element_image->filename)
                        {
                          COUNT_CONTEXT count_context = { 0 };
                          /* TODO 'encoding_disabled' => 1, */

          /* displaymath rendered as an image, push a count to capture
             formatted content */
                         add_(count_context) (&self_plaintext->count_context,
                                                        count_context);
                        }
                    }
                }
            }
          /* TODO */
        }
      else if (cmd == CM_node)
        {
          self_plaintext->current_node = element;
          plaintext_functions[self->format].format_node (self, element, 0);
        }
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
        {
          plaintext_functions[self->format].format_printindex (self, element);
          return;
        }
      else if (cmd == CM_listoffloats)
        return;
      else if (cmd == CM_sp)
        return;
      else if (cmd == CM_contents
               || cmd == CM_shortcontents || cmd == CM_summarycontents)
        {
          if (self->document->sections_list.number > 1)
            {
              plaintext_functions[self->format].format_contents (self,
                                     self->document->sectioning_root, cmd);
              return;
            }
        }
      else if (cmd == CM_author)
        return;

   /* all the @-commands that have an information for the formatting, like
      @paragraphindent, @frenchspacing... */
      else if (self_plaintext->commands_data[cmd].flags & PF_informative)
        {
          set_informative_command_value (self->sorted_options, element);

          if (cmd == CM_documentlanguage)
            {
              self->current_lang_translations =
                 set_translations_documentlanguage (
                              &converters_translation_cache,
                              self->conf->documentlanguage.o.string,
                              self->current_lang_translations,
                              TXI_CONVERT_STRINGS_NR);
            }
          else if (cmd == CM_documentscript)
            {
              self->current_lang_translations =
                 set_translations_documentscript (
                              &converters_translation_cache,
                              self->conf->documentscript.o.string,
                              self->current_lang_translations,
                              TXI_CONVERT_STRINGS_NR);
            }
          return;
        }
      else if (cmd == CM_documentlanguagevariant)
        {/* special case, array argument */
          STRING_LIST *language_variants
            = documentlanguagevariant_variants (element);
          self->current_lang_translations =
               set_translations_documentlanguagevariant (
                              &converters_translation_cache,
                              language_variants,
                              self->current_lang_translations,
                              TXI_CONVERT_STRINGS_NR);

          destroy_strings_list (language_variants);
          return;
        }
      else
        { /* unknown command */
          char *unknown_cmd_str;
          xasprintf (&unknown_cmd_str, "!!!!!!!!! Unhandled %s !!!!!!!!!\n",
                     element_command_name (element));
          stream_output (self, unknown_cmd_str);
          free (unknown_cmd_str);
          add_lines_count (self, 1);
        }
    }

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

          push_formatter (self, &new_paragraph);

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
      if (type == ET__frenchspacing)
        {
        }
      else if (type == ET__code)
        {}
      else if (type == ET__stop_upper_case)
        {}
      else if (type == ET__suppress_styles)
        {}
      else if (type == ET_row)
        {
        }
      else if (type == ET_before_node_section)
        {
          const char *result;

          ensure_end_of_line (self);
          result = stream_result (self);

          self_plaintext->text_before_first_node = strdup (result);
        }
    }

  /* Close paragraphs and preformatted. */
  if (type == ET_paragraph)
    {
      const char *result = para_end ();
      stream_output_count_nl (self, result);
      para_destroy ();
      pop_formatter (self);
    }
 /* may have been opened for a block commands, @menu, raw output
    format, @verbatim..., or for (raw)preformatted type */
  else if (preformatted)
    {
      const char *end_line = para_end ();
      enum command_id context_cmd = *top_(command) (&self_plaintext->context);

      stream_output_count_nl (self, end_line);

      ensure_end_of_line (self);

      if (context_cmd == CM_flushright)
        {
          /* TODO */
        }
      else if (context_cmd == CM_displaymath
               && self_plaintext->element_images)
        {
          char *result = stream_yield_result (self);
          MATH_ELEMENT_IMAGE *element_image
           = &self_plaintext->element_images->displaymath_images.list[
                self_plaintext->element_images->displaymath_index];
          if (element_image->element != element)
            {
              char *msg;
              xasprintf (&msg, "BUG: %zu: out of sync close displaymath"
                                           " element image and tree\n");
              bug (msg);
              free (msg);
            }

          if (element_image->filename)
            {
              STRING_LINE_COUNT image_result;

              pop_count_context (&self_plaintext->count_context);

              plaintext_insert_image (self, element_image->filename,
                             result,
                             element_image->dpi, element_image->depth,
                             &image_result);

     /* NB we don't output the below-baseline depth for @displaymath as
        it does not need to be aligned with surrounding text. */
              add_lines_count (self, image_result.line_count);
              stream_output (self, image_result.string);
              free (image_result.string);
           }
         free (result);

         self_plaintext->element_images->displaymath_index++;
       }

      para_destroy ();
      pop_formatter (self);

    /* We assume that, upon closing the preformatted we are at the
       beginning of a line. */
     /* TODO
    delete $self->{'text_element_context'}->[-1]->{'counter'};
      */
    }

  /* Close commands */
  if (cmd != CM_NONE)
    {
      if (cmd == CM_float)
        {
        }
      else if (cmd == CM_quotation || cmd == CM_smallquotation)
        {
        }
      else if (cmd == CM_multitable)
        {
        }
      /* else if root_commands etc. */

       /* close the contexts and register the cells */
       if (plaintext_commands_data[cmd].flags & PF_preformatted_context
           || cmd == CM_float)
         {
           enum command_id popped_cmd
             = pop_context (&self_plaintext->context);

           if (popped_cmd != CM_float
               && !(plaintext_commands_data[popped_cmd].flags
                                         & PF_preformatted_context))
             {
               char *msg;
               xasprintf (&msg, "Not a preformatted context (%d): %s",
                          popped_cmd, builtin_command_name (popped_cmd));
               bug (msg);
               free (msg);
             }
         }
         /* TODO
       else if
          */

       /* TODO */
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

  /* happens if created from XS */
  if (!self_plaintext)
    return;

  free (self_plaintext->enabled_encoding);
  free (self_plaintext->output_filename);

  clear_count_context_stack (&self_plaintext->count_context);

  free (self_plaintext->formatters.list);
  free (self_plaintext->format_context.list);
  free (self_plaintext->count_context.list);

  free (self_plaintext->node_names_cache);

  free (self_plaintext);
  self->plaintext_converter = 0;
}

void
plaintext_converter_initialize (CONVERTER *self)
{
  size_t i;
  PLAINTEXT_CONVERTER_STATE *self_plaintext = (PLAINTEXT_CONVERTER_STATE *)
                                malloc (sizeof (PLAINTEXT_CONVERTER_STATE));
  self->plaintext_converter = self_plaintext;

  memset (self_plaintext, 0, sizeof (*self_plaintext));

  memcpy (self_plaintext->commands_data, plaintext_commands_data,
          BUILTIN_CMD_NUMBER * sizeof (PLAINTEXT_COMMAND_STRUCT));

  for (i = 0; i < format_raw_cmd.number; i++)
    {
      enum command_id cmd = format_raw_cmd.list[i];
      const char *format = builtin_command_name (cmd);
      if (!format_expanded_p (self->expanded_formats, format))
        self_plaintext->commands_data[cmd].flags |= PF_ignored;
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

char *
plaintext_convert_output_unit (CONVERTER *self, const OUTPUT_UNIT *output_unit)
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

  plaintext_process_footnotes (self, output_unit);
  /* TODO
  _adjust_final_locations
   */

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
  size_t output_units_descriptor = 0;
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

  /* TODO no need to register in the document */
  if (self->conf->USE_NODES.o.integer > 0)
    output_units_descriptor = split_by_node (document);
  else
    output_units_descriptor = split_by_section (document);
  output_units = retrieve_output_units (document, output_units_descriptor);

  nodes_list = &self->document->nodes_list;
 /* Do not call _cache_node_names as only the node names used in index
    formatting are needed, therefore we may generate names that are
    not used if we call the function.

  plaintext_cache_node_names (self, nodes_list);
  */

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
          char *node_text = plaintext_convert_output_unit (self, output_unit);
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
          char *node_text = plaintext_convert_output_unit (self, output_unit);
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

  if (output_units_descriptor > 0)
    {
      free_output_unit_list (output_units);
      document->output_units_lists
          .output_units_lists[output_units_descriptor -1].list = 0;
    }

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
   was an XS interface (which is not necessarily a good thing to do) */
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
      const OUTPUT_UNIT *output_unit = output_units->list[i];
      char *node_text = plaintext_convert_output_unit (self, output_unit);
      text_append (&result, node_text);
      free (node_text);
    }

  free_output_unit_list (output_units);
  document->output_units_lists
      .output_units_lists[output_units_descriptor -1].list = 0;

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
