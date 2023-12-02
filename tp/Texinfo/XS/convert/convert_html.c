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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "element_types.h"
#include "converter_types.h"
#include "tree.h"
#include "builtin_commands.h"
#include "command_stack.h"
#include "errors.h"
#include "utils.h"
#include "extra.h"
#include "targets.h"
#include "debug.h"
#include "output_unit.h"
#include "converter.h"
#include "node_name_normalization.h"
#include "indices_in_conversion.h"
#include "convert_to_texinfo.h"
#include "translations.h"
#include "convert_utils.h"
#include "convert_to_text.h"
#include "call_perl_function.h"
#include "call_html_perl_function.h"
/* for TREE_AND_STRINGS */
#include "document.h"
/* for OTXI_UNICODE_TEXT_CASES */
#include "unicode.h"
#include "manipulate_tree.h"
#include "convert_html.h"

enum count_elements_in_filename_type {
  CEFT_total,
  CEFT_remaining,
  CEFT_current,
};

typedef struct ROOT_AND_UNIT {
    const OUTPUT_UNIT *output_unit;
    const ELEMENT *root;
} ROOT_AND_UNIT;

typedef struct CMD_VARIETY {
    enum command_id cmd;
    char *variety;
} CMD_VARIETY;

typedef struct COMMAND_INTERNAL_CONVERSION {
    enum command_id cmd;
    void (* command_conversion) (struct CONVERTER *self,
                                 const enum command_id cmd,
                                 const ELEMENT *element,
                                 const HTML_ARGS_FORMATTED *args_formatted,
                                 const char *content, TEXT *result);
} COMMAND_INTERNAL_CONVERSION;

typedef struct COMMAND_INTERNAL_OPEN {
    enum command_id cmd;
    void (* command_open) (CONVERTER *self, const enum command_id cmd,
                           const ELEMENT *element, TEXT *result);
} COMMAND_INTERNAL_OPEN;

typedef struct TYPE_INTERNAL_CONVERSION {
    enum element_type type;
    void (* type_conversion) (CONVERTER *self, const enum element_type type,
                              const ELEMENT *element, const char *content,
                              TEXT *result);
} TYPE_INTERNAL_CONVERSION;

typedef struct TYPE_INTERNAL_OPEN {
    enum element_type type;
    void (* type_open) (CONVERTER *self, const enum element_type type,
                        const ELEMENT *element, TEXT *result);
} TYPE_INTERNAL_OPEN;

typedef struct OUTPUT_UNIT_INTERNAL_CONVERSION {
    enum output_unit_type type;
    void (* output_unit_conversion) (CONVERTER *self,
                        const enum output_unit_type unit_type,
                        const OUTPUT_UNIT *output_unit, const char *content,
                        TEXT *result);
} OUTPUT_UNIT_INTERNAL_CONVERSION;

char *html_global_unit_direction_names[] = {
  #define hgdt_name(name) #name,
   HTML_GLOBAL_DIRECTIONS_LIST
  #undef hgdt_name
};

char *html_conversion_context_type_names[] = {
  #define cctx_type(name) #name,
    HCC_CONTEXT_TYPES_LIST
  #undef cctx_type
};

char *html_formatting_reference_names[] = {
  #define html_fr_reference(name) #name,
   HTML_FORMATTING_REFERENCES_LIST
  #undef html_fr_reference
};

const char *html_argument_formatting_type_names[] = {
   #define html_aft_type(name) #name,
    HTML_ARGUMENTS_FORMATTED_FORMAT_TYPE
   #undef html_aft_type
};

const char *special_unit_info_type_names[SUI_type_heading + 1] =
{
  #define sui_type(name) #name,
    SUI_TYPES_LIST
  #undef sui_type
};

TRANSLATED_SUI_ASSOCIATION translated_special_unit_info[] = {
  {SUIT_type_heading, SUI_type_heading},
  /* these special types end the list */
  {SUIT_type_none, SUI_type_none},
};

CMD_VARIETY command_special_unit_variety[] = {
                                {CM_contents, "contents"},
                                {CM_shortcontents, "shortcontents"},
                                {CM_summarycontents, "shortcontents"},
                                {CM_footnote, "footnotes"},
                                {0, 0},
};

/* used to set flags to non-zero with a flag that does nothing */
#define F_AFT_none              0x0001

#define F_AFT_normal            0x0002
#define F_AFT_string            0x0004
#define F_AFT_monospace         0x0008
#define F_AFT_monospacetext     0x0010
#define F_AFT_monospacestring   0x0020
#define F_AFT_filenametext      0x0040
#define F_AFT_url               0x0080
#define F_AFT_raw               0x0100

/* HTML command data flags */
#define HF_composition_context  0x0001
#define HF_format_context       0x0002
#define HF_format_raw           0x0004
#define HF_pre_class            0x0008
/*
#define HF_           0x0010
 */
#define HF_HTML_align           0x0020
#define HF_special_variety      0x0040

typedef struct HTML_COMMAND_STRUCT {
    unsigned long flags;
    char *pre_class;
} HTML_COMMAND_STRUCT;

static HTML_COMMAND_STRUCT html_commands_data[BUILTIN_CMD_NUMBER];

/* should correspond to enum html_special_character */
/* HTML textual entity, UTF-8 encoded, unicode point, HTML numeric entity */
char *special_characters_formatting[SC_non_breaking_space+1][4] = {
  {"&para;", "\xC2\xB6", "00B6", "&#182;"},
  {"&lsquo;", "\xE2\x80\x98", "2018", "&#8216;"},
  {"&rsquo;", "\xE2\x80\x99", "2019", "&#8216;"},
  {"&bull;", "\xE2\x80\xA2", "2022", "&#8226;"},
  {"&nbsp;", "\xC2\xA0", "00A0", "&#160;"},
};

/* in specification of args.  Number max +1 for a trailing 0 */
#define MAX_COMMAND_ARGS_NR 6

typedef struct COMMAND_ID_ARGS_SPECIFICATION {
    enum command_id cmd;
    unsigned long flags[MAX_COMMAND_ARGS_NR];
} COMMAND_ID_ARGS_SPECIFICATION;

static COMMAND_ID_ARGS_SPECIFICATION default_commands_args[] = {
  {CM_anchor, {F_AFT_monospacestring}},
  {CM_email, {F_AFT_url | F_AFT_monospacestring, F_AFT_normal}},
  {CM_footnote, {F_AFT_none}}, /* no flag */
  {CM_printindex, {F_AFT_none}}, /* no flag */
  {CM_uref, {F_AFT_url | F_AFT_monospacestring, F_AFT_normal, F_AFT_normal}},
  {CM_url, {F_AFT_url | F_AFT_monospacestring, F_AFT_normal, F_AFT_normal}},
  {CM_sp, {F_AFT_none}}, /* no flag */
  {CM_inforef, {F_AFT_monospace, F_AFT_normal, F_AFT_filenametext}},
  {CM_xref, {F_AFT_monospace, F_AFT_normal, F_AFT_normal, F_AFT_filenametext, F_AFT_normal}},
  {CM_pxref, {F_AFT_monospace, F_AFT_normal, F_AFT_normal, F_AFT_filenametext, F_AFT_normal}},
  {CM_ref, {F_AFT_monospace, F_AFT_normal, F_AFT_normal, F_AFT_filenametext, F_AFT_normal}},
  {CM_link, {F_AFT_monospace, F_AFT_normal, F_AFT_filenametext}},
  {CM_image, {F_AFT_url | F_AFT_filenametext | F_AFT_monospacestring, F_AFT_filenametext, F_AFT_filenametext, F_AFT_string | F_AFT_normal, F_AFT_filenametext}},
  {CM_inlinefmt, {F_AFT_monospacetext, F_AFT_normal}},
  {CM_inlinefmtifelse, {F_AFT_monospacetext, F_AFT_normal, F_AFT_normal}},
  {CM_inlineraw, {F_AFT_monospacetext, F_AFT_raw}},
  {CM_inlineifclear, {F_AFT_monospacetext, F_AFT_normal}},
  {CM_inlineifset, {F_AFT_monospacetext, F_AFT_normal}},
  {CM_item, {F_AFT_none}}, /* no flag */
  {CM_itemx, {F_AFT_none}}, /* no flag */
  {CM_value, {F_AFT_monospacestring}},
  {CM_abbr, {F_AFT_normal, F_AFT_string}},
  {CM_acronym, {F_AFT_normal, F_AFT_string}},
};

typedef struct COMMAND_ARGS_SPECIFICATION {
    int status;
    unsigned long flags[MAX_COMMAND_ARGS_NR];
} COMMAND_ARGS_SPECIFICATION;

static COMMAND_ARGS_SPECIFICATION command_args_flags[BUILTIN_CMD_NUMBER];



static void convert_to_html_internal (CONVERTER *self, const ELEMENT *e,
                                      TEXT *result, char *explanation);

/*
 if OUTPUT_UNITS is defined, the first output unit is used if a proper
 top output unit is not found.
 */
static OUTPUT_UNIT *
get_top_unit (DOCUMENT *document, const OUTPUT_UNIT_LIST *output_units)
{
  const ELEMENT *node_top = find_identifier_target
                          (document->identifiers_target, "Top");
  const ELEMENT *section_top = document->global_commands->top;

  if (section_top)
    return section_top->associated_unit;
  else if (node_top)
    return node_top->associated_unit;
  else if (output_units)
    return output_units->list[0];

  return 0;
}

int
special_unit_variety_direction_index (CONVERTER *self,
                                      char *special_unit_variety)
{
  /* number is index +1 */
  size_t number = find_string (&self->special_unit_varieties,
                               special_unit_variety);
  int i = number -1;
  if (i >= 0)
    return D_Last +1 +i;
  return -1;
}

/*
  If FIND_CONTAINER is set, the element that holds the command output
  is found, otherwise the element that holds the command is found.  This is
  mostly relevant for footnote only.
  If no known root element type is found, the returned root element is undef,
  and not set to the element at the tree root
 */
static ROOT_AND_UNIT *
html_get_tree_root_element (CONVERTER *self, const ELEMENT *command,
                            int find_container)
{
  const ELEMENT *current = command;
  const OUTPUT_UNIT *output_unit = 0;
  const ELEMENT *root_command = 0;

  while (1)
    {
      if (current->type == ET_special_unit_element)
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = current->associated_unit;
          result->root = current;
          return result;
        }

      if (current->cmd && (builtin_command_flags(current) & CF_root))
        root_command = current;
      else if (current->cmd && (builtin_command_flags(current) & CF_block)
               && builtin_command_data[current->cmd].data == BLOCK_region)
        {
          const OUTPUT_UNIT_LIST *output_units
             = retrieve_output_units (self->document_units_descriptor);
          if (current->cmd == CM_copying
              && self->document->global_commands->insertcopying.number > 0)
            {
              const ELEMENT_LIST global_insertcopying
                = self->document->global_commands->insertcopying;
              int i;
              for (i = 0; i < global_insertcopying.number; i++)
                {
                  const ELEMENT *insertcopying
                      = global_insertcopying.list[i];
                  ROOT_AND_UNIT *cur_result = html_get_tree_root_element (self,
                                                insertcopying, find_container);
                  if (cur_result->output_unit || cur_result->root)
                    return cur_result;
                }
            }
          else if (current->cmd == CM_titlepage
                   && self->conf->USE_TITLEPAGE_FOR_TITLE > 0
                   && self->conf->SHOW_TITLE > 0
                   && output_units->number > 0)
            {
              ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
              result->output_unit = output_units->list[0];
              result->root = output_units->list[0]->unit_command;
              return result;
            }
          if (output_unit || root_command)
            fatal ("Problem output_unit, root_command");
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          memset (result, 0, sizeof (ROOT_AND_UNIT));
          return result;
        }
      else if (find_container
               && html_commands_data[current->cmd].flags & HF_special_variety)
        {
          int j;
          for (j = 0; self->command_special_variety_name_index[j].cmd; j++)
            {
     /* @footnote and possibly @*contents when a separate element is set */
              COMMAND_ID_INDEX cmd_variety_index
                = self->command_special_variety_name_index[j];
              if (cmd_variety_index.cmd == current->cmd)
                {
                  char *special_unit_variety
                = self->special_unit_varieties.list[cmd_variety_index.index];
                  int special_unit_direction_index
                    = special_unit_variety_direction_index (self,
                                                special_unit_variety);
                  const OUTPUT_UNIT *special_unit
                = self->global_units_directions[special_unit_direction_index];
                  if (special_unit)
                    {
                      ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
                      result->output_unit = special_unit;
                      result->root = 0;
                      return result;
                    }
                  break;
                }
            }
        }

      if (current->associated_unit)
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = current->associated_unit;
          result->root = current;
          return result;
        }
      else if (current->parent)
        {
          current = current->parent;
        }
      else
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = 0;
          result->root = root_command;
          return result;
        }
    }
}

HTML_TARGET *
find_element_target (const HTML_TARGET_LIST *targets, const ELEMENT *element)
{
  int i;

  if (!targets->number)
    return 0;

  for (i = 0; i < targets->number; i ++)
    {
      HTML_TARGET *target = &targets->list[i];
      if (target->element == element)
        return target;
    }
  return 0;
}


char *
html_translate_string (CONVERTER *self, const char *string,
                   const char *translation_context, const char *in_lang)
{
  FORMATTING_REFERENCE *formatting_reference
    = &self->formatting_references[FR_format_translate_message];

  /* there is no place where FRS_status_ignore could be set, but
     it does not hurt to consider it possible */
  if (formatting_reference->status
      && formatting_reference->status != FRS_status_ignored
      && formatting_reference->sv_reference)
    {
      const char *lang = in_lang;
      char *translated_string;

      if (!lang && self->conf->documentlanguage)
        lang = self->conf->documentlanguage;

      translated_string
       = call_formatting_function_format_translate_message(
                            self, string, lang, translation_context);

      if (translated_string)
        return translated_string;
    }

  return translate_string (self->conf, string, translation_context,
                           in_lang);
}

/* returns a document descriptor. */
int
html_gdt (const char *string, CONVERTER *self,
     NAMED_STRING_ELEMENT_LIST *replaced_substrings,
     const char *translation_context, const char *in_lang)
{
  char *translated_string = html_translate_string (self, string,
                                              translation_context,
                                              in_lang);

  int document_descriptor
    = replace_convert_substrings (translated_string, replaced_substrings);
  free (translated_string);
  return document_descriptor;
}

/* a copy and paste of translations.c gdt_tree with html_gdt instead of gdt */
ELEMENT *
html_gdt_tree (const char *string, DOCUMENT *document, CONVERTER *self,
               NAMED_STRING_ELEMENT_LIST *replaced_substrings,
               const char *translation_context,
               const char *in_lang)
{
  ELEMENT *tree;
  int gdt_document_descriptor = html_gdt (string, self, replaced_substrings,
                                     translation_context, in_lang);
  TREE_AND_STRINGS *tree_and_strings
     = unregister_document_descriptor_tree (gdt_document_descriptor);

  tree = tree_and_strings->tree;

  if (tree_and_strings->small_strings)
    {
      /* this is very unlikely, as small strings correspond to file names and
         macro names, while we are parsing a simple string */
      if (tree_and_strings->small_strings->number)
        {
          if (document)
            merge_strings (document->small_strings,
                           tree_and_strings->small_strings);
          else
            fatal ("html_gdt_tree no document but small_strings");
        }
      free (tree_and_strings->small_strings->list);
      free (tree_and_strings->small_strings);
    }
  free (tree_and_strings);

  return tree;
}

char *
html_gdt_string (const char *string, CONVERTER *self,
                 NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                 const char *translation_context, const char *in_lang)
{
  /* FIXME */
  char *translated_string = html_translate_string (self, string,
                                      translation_context, in_lang);

  char *result = replace_substrings (translated_string, replaced_substrings);
  free (translated_string);
  return result;
}

ELEMENT *
html_pgdt_tree (const char *translation_context, const char *string,
                DOCUMENT *document, CONVERTER *self,
                NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                const char *in_lang)
{
  return html_gdt_tree (string, document, self, replaced_substrings,
                        translation_context, in_lang);
}

int
html_in_code (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_integer_stack (&top_document_ctx->monospace);
}

int
html_in_math (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_document_ctx->math_ctx;
}

int
html_in_preformatted_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_integer_stack (&top_document_ctx->preformatted_context);
}

int
html_inside_preformatted (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_document_ctx->inside_preformatted;
}

int
html_in_non_breakable_space (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;
  top_document_ctx = html_top_document_context (self);
  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);
  return top_formating_ctx->no_break;
}

int
html_in_raw (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_document_ctx->raw_ctx;
}

int
html_in_space_protected (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;
  top_document_ctx = html_top_document_context (self);
  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);
  return top_formating_ctx->space_protected;
}

int
html_in_string (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_document_ctx->string_ctx;
}

int
html_in_upper_case (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;
  top_document_ctx = html_top_document_context (self);
  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);
  return top_formating_ctx->upper_case_ctx;
}

int
html_in_verbatim (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return top_document_ctx->verbatim_ctx;
}

int
html_paragraph_number (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;
  top_document_ctx = html_top_document_context (self);
  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);
  return top_formating_ctx->paragraph_number;
}

int
html_preformatted_number (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;
  top_document_ctx = html_top_document_context (self);
  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);
  return top_formating_ctx->preformatted_number;
}

enum command_id
html_top_block_command (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  if (top_document_ctx->block_commands.top <= 0)
    return 0;
  return top_command (&top_document_ctx->block_commands);
}

STRING_STACK *
html_preformatted_classes_stack (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  return &top_document_ctx->preformatted_classes;
}

enum command_id
html_in_align (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  COMMAND_OR_TYPE *context;
  top_document_ctx = html_top_document_context (self);
  context = top_command_or_type (&top_document_ctx->composition_context);
  if (context->variety == CTV_type_command)
    {
      enum command_id cmd = context->cmd;
      if (html_commands_data[cmd].flags & HF_HTML_align)
        return cmd;
    }
  return 0;
}

void
html_set_code_context (CONVERTER *self, int code)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  push_integer_stack_integer (&top_document_ctx->monospace, code);
}

void
html_pop_code_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  pop_integer_stack (&top_document_ctx->monospace);
}

void
html_set_string_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  top_document_ctx->string_ctx++;
}

void
html_unset_string_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  top_document_ctx->string_ctx--;
}

void
html_set_raw_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  top_document_ctx->raw_ctx++;
}

void
html_unset_raw_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  top_document_ctx = html_top_document_context (self);
  top_document_ctx->raw_ctx--;
}

size_t
count_elements_in_filename (CONVERTER *self,
                 enum count_elements_in_filename_type type,
                 size_t file_number)
{
  size_t i = file_number - 1;
  FILE_NAME_PATH_COUNTER *file_counter
            = &self->output_unit_files.list[i];

  if (type == CEFT_total)
    return file_counter->elements_in_file_count;
  else if (type == CEFT_remaining)
    return file_counter->counter;
  else /* if (type == CEFT_current) */
    return file_counter->elements_in_file_count - file_counter->counter +1;
}

ELEMENT *
special_unit_info_tree (CONVERTER *self, const enum special_unit_info_tree type,
                        const char *special_unit_variety)
{
  /* number is index +1 */
  size_t number = find_string (&self->special_unit_varieties,
                               special_unit_variety);
  int j;
  int i = number -1;

  if (self->special_unit_info_tree[type][i])
    return self->special_unit_info_tree[type][i];

  for (j = 0; translated_special_unit_info[j].tree_type != SUIT_type_none; j++)
    {
      if (translated_special_unit_info[j].tree_type == type)
        {
          enum special_unit_info_type string_type
            = translated_special_unit_info[j].string_type;
          char *special_unit_info_string
            = self->special_unit_info[string_type][i];
          /* if set to undef in user customization. To be forbidden? */
          if (!special_unit_info_string)
            return 0;
          char *translation_context;
          xasprintf (&translation_context, "%s section heading",
                     special_unit_variety);
          self->special_unit_info_tree[type][i]
            = html_pgdt_tree (translation_context, special_unit_info_string,
                              self->document, self, 0, 0);
          free (translation_context);
          add_to_element_list (&self->tree_to_build,
                               self->special_unit_info_tree[type][i]);
          return self->special_unit_info_tree[type][i];
        }
    }
  return 0;
}

char *
special_unit_info (CONVERTER *self, enum special_unit_info_type type,
                   char *special_unit_variety)
{
  /* number is index +1 */
  size_t number = find_string (&self->special_unit_varieties,
                               special_unit_variety);
  int i = number -1;

  return self->special_unit_info[type][i];
}

void
html_register_footnote (CONVERTER *self, const ELEMENT *command,
     const char *footid, const char *docid, const int number_in_doc,
     const char *footnote_location_filename, char *multi_expanded_region)
{
  HTML_PENDING_FOOTNOTE_STACK *stack;
  HTML_PENDING_FOOTNOTE *pending_footnote;
  KEY_PAIR *k = lookup_associated_info (&self->shared_conversion_state.integers,
                                        "in_skipped_node_top");

  if (k && k->integer == 1)
    return;

  stack = &self->pending_footnotes;

  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (HTML_PENDING_FOOTNOTE *));
    }
  pending_footnote = (HTML_PENDING_FOOTNOTE *)
                      malloc (sizeof (HTML_PENDING_FOOTNOTE));
  stack->stack[stack->top] = pending_footnote;
  stack->top++;

  pending_footnote->command = command;
  pending_footnote->footid = strdup (footid);
  pending_footnote->docid = strdup (docid);
  pending_footnote->number_in_doc = number_in_doc;
  pending_footnote->footnote_location_filename
       = strdup (footnote_location_filename);

  if (multi_expanded_region)
    pending_footnote->multi_expanded_region = strdup (multi_expanded_region);
  else
    pending_footnote->multi_expanded_region = 0;
}

HTML_PENDING_FOOTNOTE_STACK *
html_get_pending_footnotes (CONVERTER *self)
{
  HTML_PENDING_FOOTNOTE_STACK *stack = (HTML_PENDING_FOOTNOTE_STACK *)
     malloc (sizeof (HTML_PENDING_FOOTNOTE_STACK));

  stack->top = self->pending_footnotes.top;
  stack->space = self->pending_footnotes.space;
  stack->stack = self->pending_footnotes.stack;

  memset (&self->pending_footnotes, 0, sizeof (HTML_PENDING_FOOTNOTE_STACK));

  return stack;
}

void
destroy_pending_footnotes (HTML_PENDING_FOOTNOTE_STACK *stack)
{
  int i;
  for (i = 0; i < stack->top; i++)
    {
      free (stack->stack[i]->multi_expanded_region);
      free (stack->stack[i]->footid);
      free (stack->stack[i]->docid);
      free (stack->stack[i]->footnote_location_filename);
      free (stack->stack[i]);
    }
  free (stack->stack);
  free (stack);
}

void
html_register_pending_formatted_inline_content (CONVERTER *self,
                             const char *category, const char *inline_content)
{
  HTML_INLINE_CONTENT *pending_content;
  HTML_INLINE_CONTENT_STACK *stack;

  if (!inline_content)
    return;

  stack = &self->pending_inline_content;
  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (HTML_INLINE_CONTENT));
    }
  pending_content = &stack->stack[stack->top];

  pending_content->category = strdup (category);
  pending_content->string = strdup (inline_content);

  stack->top++;
}

/* cancel only the first pending content for the category */
char *
html_cancel_pending_formatted_inline_content (CONVERTER *self,
                                              const char *category)
{
  HTML_INLINE_CONTENT_STACK *stack = &self->pending_inline_content;
  if (stack->top)
    {
      size_t current_idx = stack->top - 1;
      while (current_idx >= 0)
        {
          if (!strcmp (stack->stack[current_idx].category, category))
            {
              char *inline_content = stack->stack[current_idx].string;
              free (stack->stack[current_idx].category);
              if (current_idx < stack->top - 1)
                {
                  memmove (&stack->stack[current_idx],
                           &stack->stack[current_idx+1],
                           sizeof (HTML_INLINE_CONTENT)
                               * (stack->top - (current_idx +1)));
                }
              stack->top--;
              return inline_content;
            }
        }
    }
  return 0;
}

char *
html_get_pending_formatted_inline_content (CONVERTER *self)
{
  HTML_INLINE_CONTENT_STACK *stack = &self->pending_inline_content;
  if (stack->top)
    {
      TEXT result;
      size_t i;
      text_init (&result);
      for (i = 0; i < stack->top; i++)
        {
          text_append (&result, stack->stack[i].string);
          free (stack->stack[i].string);
          free (stack->stack[i].category);
        }
      stack->top = 0;
      return result.text;
    }
  else
    return strdup ("");
}

/* API to associate inline content to an element, typically
   paragraph or preformatted.  Allows to associate the pending
   content to the first inline element. */
/* hv is used when called from perl, element when called from C */
void
html_associate_pending_formatted_inline_content (CONVERTER *self,
                                            const ELEMENT *element,
                                            const void *hv,
                                            const char *inline_content)
{
  HTML_ASSOCIATED_INLINE_CONTENT_LIST *associated_content_list
    = &self->associated_inline_content;
  HTML_ASSOCIATED_INLINE_CONTENT *element_associated_content;
  size_t i;
  size_t element_associated_content_idx;
  int empty_slot = 0;

  for (i = 0; i < associated_content_list->number; i++)
    {
      if (associated_content_list->list[i].inline_content == 0)
        {
          empty_slot = 1;
          element_associated_content_idx = i;
        }
    }

  if (!empty_slot)
    {
      if (associated_content_list->number >= associated_content_list->space)
        {
          associated_content_list->list
            = realloc (associated_content_list->list,
               (associated_content_list->space += 5)
                          * sizeof (HTML_ASSOCIATED_INLINE_CONTENT));
        }
      element_associated_content_idx = associated_content_list->number;

      associated_content_list->number++;
    }
  element_associated_content
    = &associated_content_list->list[element_associated_content_idx];
  element_associated_content->element = element;
  element_associated_content->hv = hv;
  element_associated_content->inline_content = strdup (inline_content);
}

/* hv is used when called from perl element when called from C */
char *
html_get_associated_formatted_inline_content (CONVERTER *self,
                                              const ELEMENT *element,
                                              void *hv)
{
  HTML_ASSOCIATED_INLINE_CONTENT_LIST *associated_content_list
    = &self->associated_inline_content;
  size_t i;
  for (i = 0; i < associated_content_list->number; i++)
    {
      HTML_ASSOCIATED_INLINE_CONTENT *element_associated_content
        = &associated_content_list->list[i];
      if ((element && (element_associated_content->element == element
                       || (element->hv
                           && element_associated_content->hv == element->hv)))
          || (hv && (element_associated_content->hv == hv
                     || (element_associated_content->element
                         && element_associated_content->element->hv == hv))))
        {
          char *result = element_associated_content->inline_content;
          if (i == associated_content_list->number -1)
            associated_content_list->number--;
          else
            memset (element_associated_content, 0,
                    sizeof (HTML_ASSOCIATED_INLINE_CONTENT));
          return result;
        }
    }
  return strdup ("");
}

void
html_register_opened_section_level (CONVERTER *self, int level,
                                    const char *close_string)
{
  STRING_STACK *pending_closes = &self->pending_closes;

  while (pending_closes->top < level)
    {
      push_string_stack_string (pending_closes, "");
    }
  push_string_stack_string (pending_closes, close_string);
}

STRING_LIST *
html_close_registered_sections_level (CONVERTER *self, int level)
{
  STRING_LIST *closed_elements = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  STRING_STACK *pending_closes = &self->pending_closes;

  memset (closed_elements, 0, sizeof (STRING_LIST));

  while (pending_closes->top > level)
    {
      const char *close_string = top_string_stack (pending_closes);
      if (strlen (close_string))
        {
          add_string (close_string, closed_elements);
        }
      pop_string_stack (pending_closes);
    }

  return closed_elements;
}

OUTPUT_UNIT *
register_special_unit (CONVERTER *self, char *special_unit_variety)
{
  ELEMENT *unit_command = new_element (ET_special_unit_element);
  OUTPUT_UNIT *special_unit = new_output_unit (OU_special_unit);

  special_unit->special_unit_variety = special_unit_variety;
  unit_command->associated_unit = special_unit;
  special_unit->unit_command = unit_command;

  return special_unit;
}

typedef struct SPECIAL_UNIT_ORDER {
    char *order;
    char *variety;
} SPECIAL_UNIT_ORDER;

int
compare_special_units (const void *a, const void *b)
{
  const SPECIAL_UNIT_ORDER *spu_order_a = (const SPECIAL_UNIT_ORDER *) a;
  const SPECIAL_UNIT_ORDER *spu_order_b = (const SPECIAL_UNIT_ORDER *) b;

  int result = strcmp (spu_order_a->order, spu_order_b->order);
  if (result != 0)
    return result;
  return strcmp (spu_order_a->variety, spu_order_b->variety);
}

void
prepare_special_units (CONVERTER *self, int output_units_descriptor,
                               int *special_units_descriptor_ref,
                               int *associated_special_units_descriptor_ref)
{
  int i;
  STRING_LIST *special_unit_varieties = &self->special_unit_varieties;
  SPECIAL_UNIT_ORDER *special_units_order;
  OUTPUT_UNIT *previous_output_unit = 0;

  int special_units_descriptor = new_output_units_descriptor ();
  int associated_special_units_descriptor = new_output_units_descriptor ();

  /* retrieve after reallocating */

  OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);

  OUTPUT_UNIT_LIST *associated_special_units
    = retrieve_output_units (associated_special_units_descriptor);

  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  /* for separate special output units */
  STRING_LIST *do_special = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (do_special, 0, sizeof (STRING_LIST));

  *special_units_descriptor_ref = special_units_descriptor;
  *associated_special_units_descriptor_ref
     = associated_special_units_descriptor;

  if (self->document->sections_list
      && self->document->sections_list->number > 0)
    {
      enum command_id contents_cmds[2] = {CM_shortcontents, CM_contents};
      int i;
      for (i = 0; i < 2; i++)
        {
          int contents_set = 0;
          enum command_id cmd = contents_cmds[i];
          COMMAND_OPTION_REF *contents_option_ref
             = get_command_option (self->conf, cmd);
          if (*(contents_option_ref->int_ref) > 0)
            contents_set = 1;
          free (contents_option_ref);
          if (contents_set)
            {
              int j;
              char *special_unit_variety = 0;
              char *contents_location = self->conf->CONTENTS_OUTPUT_LOCATION;

              for (j = 0; command_special_unit_variety[j].cmd; j++)
                {
                  if (command_special_unit_variety[j].cmd == cmd)
                    {
                      special_unit_variety
                        = command_special_unit_variety[j].variety;
                      break;
                    }
                }
              if (!strcmp (contents_location, "separate_element"))
                add_string (special_unit_variety, do_special);
              else
                {
                  OUTPUT_UNIT *special_output_unit = 0;
                  const OUTPUT_UNIT *associated_output_unit = 0;
                  if (!strcmp (contents_location, "after_title"))
                    {
                      if (output_units->number > 0)
                        associated_output_unit = output_units->list[0];
                      else
                        continue;
                    }
                  else if (!strcmp (contents_location, "after_top"))
                    {
                      if (self->document->global_commands->top)
                        {/* note that top is a uniq command */
                          const ELEMENT *section_top
                             = self->document->global_commands->top;

                          if (section_top->associated_unit)
                            associated_output_unit
                                 = section_top->associated_unit;
                        }
                      if (!associated_output_unit)
                        continue;
                    }
                  else if (!strcmp (contents_location, "inline"))
                    {
                      const ELEMENT_LIST *global_command
                       = get_cmd_global_multi_command (
                                      self->document->global_commands, cmd);
                      if (global_command->number > 0)
                        {
                          int i;
                          for (i = 0; i < global_command->number; i++)
                            {
                              const ELEMENT *command = global_command->list[i];
                              ROOT_AND_UNIT *root_unit
                               = html_get_tree_root_element (self, command, 0);
                              if (root_unit->output_unit)
                                associated_output_unit = root_unit->output_unit;
                              free (root_unit);
                              if (associated_output_unit)
                                break;
                            }
                        }
                      else
                        continue;
                    }
                  else /* should not happen */
                    continue;

                  special_output_unit
                    = register_special_unit (self, special_unit_variety);
                  special_output_unit->associated_document_unit
                    = associated_output_unit;
                  add_to_output_unit_list (associated_special_units,
                                           special_output_unit);
                }
            }
        }
    }

  if (self->document->global_commands->footnotes.number > 0
      && !strcmp(self->conf->footnotestyle, "separate")
      && output_units && output_units->number > 1)
    add_string ("footnotes", do_special);

  if ((self->conf->DO_ABOUT < 0
       && output_units && output_units->number > 1
       && ((self->conf->SPLIT && strlen (self->conf->SPLIT))
           || self->conf->HEADERS > 0))
      || self->conf->DO_ABOUT > 0)
    add_string ("about", do_special);

  special_units_order = (SPECIAL_UNIT_ORDER *)
    malloc (sizeof (SPECIAL_UNIT_ORDER) * do_special->number);
  for (i = 0; i < do_special->number; i++)
    {
      char *special_unit_variety = do_special->list[i];
      special_units_order[i].order = special_unit_info (self, SUI_type_order,
                                                        special_unit_variety);
      special_units_order[i].variety = special_unit_variety;
    }

  qsort (special_units_order, do_special->number, sizeof (SPECIAL_UNIT_ORDER),
         compare_special_units);

  if (output_units && output_units->number > 0)
    previous_output_unit = output_units->list[output_units->number-1];

  for (i = 0; i < do_special->number; i++)
    {
      /* take the string from special_unit_varieties */
      char *special_unit_variety;
      /* number is index +1 */
      size_t number = find_string (special_unit_varieties,
                                   special_units_order[i].variety);
      int special_unit_varieties_idx = number -1;
      if (special_unit_varieties_idx < 0)
        {
          char *msg;
          xasprintf (&msg, "special_unit_varieties not found: %s\n",
                           special_units_order[i].variety);
          bug (msg);
        }

      special_unit_variety
        = special_unit_varieties->list[special_unit_varieties_idx];
      OUTPUT_UNIT *special_output_unit
                    = register_special_unit (self, special_unit_variety);
      add_to_output_unit_list (special_units,
                               special_output_unit);

      if (previous_output_unit)
        {
          special_output_unit->tree_unit_directions[D_prev]
             = previous_output_unit;
          previous_output_unit->tree_unit_directions[D_next]
             = special_output_unit;
        }
      previous_output_unit = special_output_unit;
    }

  free (special_units_order);
  destroy_strings_list (do_special);
}

static enum command_id additional_format_context_cmd[] = {
   CM_tab, CM_item, CM_itemx, CM_headitem, 0
 };

static enum command_id HTML_align_cmd[] = {
   CM_raggedright, CM_flushleft, CM_flushright, CM_center, 0
};

/* TODO free? It should be freed at exit? */
void
register_format_context_command (enum command_id cmd)
{
  html_commands_data[cmd].flags |= HF_format_context;
}

void register_pre_class_command (enum command_id cmd, enum command_id main_cmd)
{
  char *pre_class_str;

  if (main_cmd)
    pre_class_str = builtin_command_data[main_cmd].cmdname;
  else
    pre_class_str = builtin_command_data[cmd].cmdname;

  html_commands_data[cmd].pre_class = pre_class_str;
  html_commands_data[cmd].flags |= HF_pre_class;
}

/* used for diverse elements: tree units, indices, footnotes, special
  elements, contents elements... */
static HTML_TARGET *
add_element_target_to_list (HTML_TARGET_LIST *targets,
                            const ELEMENT *element, char *target)
{
  HTML_TARGET *element_target;

  if (targets->number == targets->space)
    {
      targets->list = realloc (targets->list,
                   sizeof (HTML_TARGET) * (targets->space += 5));
    }
  element_target = &targets->list[targets->number];
  memset (element_target, 0, sizeof (HTML_TARGET));
  element_target->element = element;
  if (target)
    element_target->target = strdup (target);

  targets->number++;
  return element_target;
}

static HTML_TARGET *
add_element_target (CONVERTER *self, const ELEMENT *element, char *target)
{
  HTML_TARGET_LIST *targets = &self->html_targets;
  return add_element_target_to_list (targets, element, target);
}

static HTML_TARGET *
add_special_target (CONVERTER *self, enum special_target_type type,
                    const ELEMENT *element, char *target)
{
  HTML_TARGET_LIST *targets = &self->html_special_targets[type];
  return add_element_target_to_list (targets, element, target);
}


static const enum command_id contents_elements_options[]
             = {CM_contents, CM_shortcontents, CM_summarycontents, 0};

static const enum command_id conf_for_special_units[]
                          = {CM_footnotestyle, 0};

void
html_prepare_conversion_units (CONVERTER *self,
                               int *output_units_descriptor_ref,
                               int *special_units_descriptor_ref,
                               int *associated_special_units_descriptor_ref)
{
  int output_units_descriptor;

  if (self->conf->USE_NODES > 0)
    output_units_descriptor = split_by_node (self->document->tree);
  else
    output_units_descriptor = split_by_section (self->document->tree);
  *output_units_descriptor_ref = output_units_descriptor;

  /* Needs to be set early in case it would be needed to find some region
     command associated root command. */
  self->document_units_descriptor = output_units_descriptor;

  /* the presence of contents elements in the document is used in diverse
     places, set it once for all here */
  set_global_document_commands (self, CL_last, contents_elements_options);
  set_global_document_commands (self, CL_last, conf_for_special_units);
  /*
    NOTE if the last value of footnotestyle is separate, all the footnotes
    formatted text are set to the special element set in _prepare_special_units
    as _html_get_tree_root_element uses the Footnote direction for every footnote.
    Therefore if @footnotestyle separate is set late in the document the current
    value may not be consistent with the link obtained for the footnote
    formatted text.  This is not an issue, as the manual says that
    @footnotestyle should only appear in the preamble, and it makes sense
    to have something consistent in the whole document for footnotes position.
   */
  prepare_special_units (self, output_units_descriptor,
                         special_units_descriptor_ref,
                         associated_special_units_descriptor_ref);

  /* reset to the default */
  set_global_document_commands (self, CL_before, conf_for_special_units);
}

void
set_special_units_targets_files (CONVERTER *self, int special_units_descriptor,
                                 const char *document_name)
{
  int i;
  OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);

  char *extension = "";
  if (self->conf->EXTENSION)
    extension = self->conf->EXTENSION;

  for (i = 0; i < special_units->number; i++)
    {
      TARGET_FILENAME *target_filename;
      char *default_filename = 0;
      char *filename = 0;
      OUTPUT_UNIT *special_unit = special_units->list[i];
      char *special_unit_variety = special_unit->special_unit_variety;

      /* not to be freed, refers to self->special_unit_info */
      char *target = special_unit_info (self, SUI_type_target,
                                        special_unit_variety);

      if (!target)
        continue;

      if (((self->conf->SPLIT && strlen (self->conf->SPLIT))
           || self->conf->MONOLITHIC <= 0)
    /* in general document_name not defined means called through convert */
          && document_name)
        {
          TEXT text_name;
          char *special_unit_file_string
            = special_unit_info (self, SUI_type_file_string,
                                 special_unit_variety);
          text_init (&text_name);
          if (!special_unit_file_string)
            special_unit_file_string = "";
          text_append (&text_name, document_name);
          text_append (&text_name, special_unit_file_string);
          if (extension && strlen (extension))
            {
              text_append (&text_name, ".");
              text_append (&text_name, extension);
            }
          default_filename = text_name.text;
        }
      target_filename = call_file_id_setting_special_unit_target_file_name (
                               self, special_unit, target, default_filename);
      if (target_filename)
        {
          if (target_filename->target)
            target = target_filename->target;
          if (target_filename->filename)
            {
              filename = target_filename->filename;
              free (default_filename);
            }
          else
            filename = default_filename;

        }
      else
        filename = default_filename;

      if (self->conf->DEBUG > 0)
        {
          char *fileout = filename;
          if (!fileout)
            fileout = "UNDEF";
          fprintf (stderr, "Add special %s: target %s,\n    filename %s\n",
                            special_unit_variety, target, fileout);
        }

      HTML_TARGET *element_target
        = add_element_target (self, special_unit->unit_command, target);
      element_target->special_unit_filename = filename;
      add_string (target, &self->seen_ids);

      if (target_filename)
        {
          if (target_filename->target)
            free (target_filename->target);

          free (target_filename);
        }
    }
}

static void
prepare_associated_special_units_targets (CONVERTER *self,
                                 int associated_special_units_descriptor)
{
  OUTPUT_UNIT_LIST *associated_special_units
    = retrieve_output_units (associated_special_units_descriptor);

  if (associated_special_units && associated_special_units->number > 0)
    {
      int i;
      for (i = 0; i < associated_special_units->number; i++)
        {
          HTML_TARGET *element_target;
          TARGET_FILENAME *target_filename;
          char *filename = 0;
          OUTPUT_UNIT *special_unit = associated_special_units->list[i];
          char *special_unit_variety = special_unit->special_unit_variety;

          /* it may be undef'ined in user customization code */
          char *target = special_unit_info (self, SUI_type_target,
                                                 special_unit_variety);
          target_filename
            = call_file_id_setting_special_unit_target_file_name (
                               self, special_unit, target, filename);
          if (target_filename)
            {
              if (target_filename->target)
                target = target_filename->target;
              if (target_filename->filename)
                filename = target_filename->filename;
            }

          if (self->conf->DEBUG > 0)
            {
              char *str_filename;
              char *str_target;
              if (filename)
                str_filename = filename;
              else
                str_filename = "UNDEF (default)";
              if (target)
                str_target = target;
              else
                str_target = "UNDEF";
              fprintf (stderr, "Add content %s: target %s,\n"
                                "    filename %s\n", special_unit_variety,
                                str_target, str_filename);
            }
          element_target
           = add_element_target (self, special_unit->unit_command, target);
          if (target)
            add_string (target, &self->seen_ids);
          if (filename)
            element_target->special_unit_filename = filename;

          if (target_filename)
            {
              if (target_filename->target)
                free (target_filename->target);

              free (target_filename);
            }
        }
    }
}

static char *
normalized_to_id (char *id)
{
  if (isascii_digit (id[0]) || id[0] == '_')
    {
      char *result;
      xasprintf (&result, "%s%s", "g_t", id);
      return result;
    }
  return strdup (id);
}

static TARGET_FILENAME *
normalized_label_id_file (CONVERTER *self, char *normalized,
                          const ELEMENT* label_element)
{
  int called;
  char *target;
  char *target_customized;
  TARGET_FILENAME *target_filename
    = (TARGET_FILENAME *) malloc (sizeof (TARGET_FILENAME));

  int normalized_need_to_be_freed = 0;
  if (!normalized)
    {
      normalized = convert_contents_to_identifier (label_element);
      normalized_need_to_be_freed = 1;
    }

  if (normalized)
    target = normalized_to_id (normalized);
  else
    target = strdup ("");

  /* to find out the Top node, one could check $normalized */
  target_customized = call_file_id_setting_label_target_name (self,
                                  normalized, label_element, target,
                                  &called);

  if (target_customized)
    {
      free (target);
      target = target_customized;
    }

  if (normalized_need_to_be_freed)
    free (normalized);

  target_filename->target = target;
  target_filename->filename = node_information_filename (self, normalized,
                                                         label_element);

  return target_filename;
}

char *
unique_target (CONVERTER *self, char *target_base)
{
  int nr = 1;
  char *target = strdup (target_base);
  while (1)
    {
      if (find_string (&self->seen_ids, target))
        {
          free (target);
          xasprintf (&target, "%s-%d", target_base, nr);
          nr++;
          if (nr == 0)
            fatal ("overflow");
        }
      else
        return target;
    }
}

static void
new_sectioning_command_target (CONVERTER *self, const ELEMENT *command)
{
  char *normalized_name;
  char *filename;
  char *target_base;
  char *target;
  char *target_contents = 0;
  char *target_shortcontents = 0;
  TARGET_CONTENTS_FILENAME *target_contents_filename;

  TARGET_FILENAME *target_filename
    = normalized_sectioning_command_filename (self, command);

  normalized_name = target_filename->target;
  filename = target_filename->filename;

  free (target_filename);

  target_base = normalized_to_id (normalized_name);

  if (!strlen (target_base) && command->cmd == CM_top)
    {
      /* @top is allowed to be empty.  In that case it gets this target name */
      free (target_base);
      target_base = strdup ("SEC_Top");
    }

  if (strlen (target_base))
    target = unique_target (self, target_base);
  else
    target = strdup ("");

  free (target_base);

  if (strlen (target)
      && (builtin_command_flags(command) & CF_sectioning_heading))
    {
      char *target_base_contents;
      char *target_base_shortcontents;
      xasprintf (&target_base_contents, "toc-%s", normalized_name);
      target_contents = unique_target (self, target_base_contents);
      free (target_base_contents);

      xasprintf (&target_base_shortcontents, "stoc-%s", normalized_name);
      target_shortcontents = unique_target (self, target_base_shortcontents);
      free (target_base_shortcontents);
    }

  free (normalized_name);

  target_contents_filename
    = call_file_id_setting_sectioning_command_target_name (self, command,
                  target, target_contents, target_shortcontents, filename);
  if (target_contents_filename)
    {
      free (target);
      target = target_contents_filename->target;
      free (filename);
      filename = target_contents_filename->filename;
      free (target_contents);
      target_contents = target_contents_filename->target_contents;
      free (target_shortcontents);
      target_shortcontents = target_contents_filename->target_shortcontents;

      free (target_contents_filename);
    }

  if (self->conf->DEBUG > 0)
    {
      char *command_name = element_command_name (command);
      fprintf (stderr, "Register %s %s\n", command_name, target);
    }

  HTML_TARGET *element_target
    = add_element_target (self, command, target);
  element_target->section_filename = filename;
  add_string (target, &self->seen_ids);

  free (target);

  if (target_contents)
    element_target->contents_target = target_contents;
  else
    element_target->contents_target = strdup ("");

  if (target_shortcontents)
    element_target->shortcontents_target = target_shortcontents;
  else
    element_target->shortcontents_target = strdup ("");
}

/*
 This set with two different codes
  * the target information, id and normalized filename of 'identifiers_target',
    ie everything that may be the target of a ref, @node, @float label,
    @anchor.
  * The target information of sectioning elements
 @node and section commands targets are therefore both set.

 conversion to HTML is done on-demand, upon call to command_text
 and similar functions.
 Note that 'node_filename', which is set here for Top target information
 too, is not used later for Top anchors or links, see the NOTE below
 associated with setting TOP_NODE_FILE_TARGET.
 */
void
set_root_commands_targets_node_files (CONVERTER *self)
{

  if (self->document->identifiers_target)
    {
      char *extension = 0;

      if (self->conf->EXTENSION)
        extension = self->conf->EXTENSION;
      LABEL_LIST *label_targets = self->document->identifiers_target;
      int i;
      for (i = 0; i < label_targets->number; i++)
        {
          int called;
          char *target;
          char *node_filename;
          char *user_node_filename;
          LABEL *label = &label_targets->list[i];
          const ELEMENT *target_element = label->element;
          const ELEMENT *label_element = get_label_element (target_element);

          TARGET_FILENAME *target_filename =
           normalized_label_id_file (self, label->identifier, label_element);
          target = target_filename->target;
          if (extension)
            xasprintf (&node_filename, "%s.%s", target_filename->filename,
                                                extension);
          else
            node_filename = strdup (target_filename->filename);

          free (target_filename->filename);
          free (target_filename);

          /* a non defined filename is ok if called with convert, but not
             if output in files.  We reset if undef, silently unless verbose
             in case called by convert. */

          user_node_filename = call_file_id_setting_node_file_name (self,
                                               target_element, node_filename,
                                               &called);
          if (user_node_filename)
            {
              free (node_filename);
              node_filename = user_node_filename;
            }
          else if (called)
            {
              if (self->conf->VERBOSE > 0)
                {
                  message_list_document_warn (&self->error_messages, self->conf,
                             "user-defined node file name not set for `%s'",
                             node_filename);
                }
              else if (self->conf->DEBUG > 0)
                {
                  fprintf (stderr,
                     "user-defined node file name undef for `%s'\n",
                       node_filename);
                }
            }

          if (self->conf->DEBUG > 0)
            {
              char *command_name = element_command_name (target_element);
              fprintf (stderr, "Label @%s %s, %s\n", command_name, target,
                               node_filename);
            }

          HTML_TARGET *element_target
            = add_element_target (self, target_element, target);
          element_target->node_filename = node_filename;
          add_string (target, &self->seen_ids);

          free (target);
        }
    }

  if (self->document->sections_list
      && self->document->sections_list->number >= 0)
    {
      const ELEMENT_LIST *sections_list = self->document->sections_list;
      int i;
      for (i = 0; i < sections_list->number; i++)
        {
          const ELEMENT *root_element = sections_list->list[i];
          new_sectioning_command_target (self, root_element);
        }
    }
}

/* to be inlined in text parsing codes */
#define OTXI_PROTECT_XML_FORM_FEED_CASES(var) \
        OTXI_PROTECT_XML_CASES(var) \
        case '\f':          \
          text_append_n (result, "&#12;", 5); var++; \
          break;


#define ADDN(str,nr) text_append_n (result, str, nr)

void
default_css_string_format_protect_text (const char *text, TEXT *result)
{
  const char *p = text;

  while (*p)
    {
      int before_sep_nr = strcspn (p, "\\'");
      if (before_sep_nr)
        {
          text_append_n (result, p, before_sep_nr);
          p += before_sep_nr;
        }
      if (!*p)
        break;
      switch (*p)
        {
        case '\\':
          ADDN("\\\\", 2);
          break;
        case '\'':
          ADDN("\\'", 2);
          break;
        }
      p++;
    }
}

#define OTXI_ISO_ENTITY_TEXT_CASES(var) \
        case '-': \
          if (*(var+1) && !memcmp (var, "---", 3)) \
            { \
              text_append_n (result, "&mdash;", 7); \
              var += 3; \
            } \
          else if (!memcmp (var, "--", 2)) \
            { \
              text_append_n (result, "&ndash;", 7); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, "-", 1); \
              var++; \
            } \
          break; \
        case '`': \
          if (!memcmp (var, "``", 2)) \
            { \
              text_append_n (result, "&ldquo;", 7); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, "&lsquo;", 7); \
              var++; \
            } \
          break; \
        case '\'': \
          if (!memcmp (var, "''", 2)) \
            { \
              text_append_n (result, "&rdquo;", 7); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, "&rsquo;", 7); \
              var++; \
            } \
          break;

#define OTXI_NO_ISO_ENTITY_TEXT_CASES(var) \
        case '-': \
          if (*(var+1) && !memcmp (var, "---", 3)) \
            { \
              text_append_n (result, "--", 2); \
              var += 3; \
            } \
          else \
            { \
              text_append_n (result, "-", 1); \
              if (!memcmp (var, "--", 2)) \
                var += 2; \
              else \
                var++; \
            } \
          break; \
        case '`': \
          if (!memcmp (var, "``", 2)) \
            { \
              text_append_n (result, "&quot;", 6); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, var, 1); \
              var++; \
            } \
          break; \
        case '\'': \
          if (!memcmp (var, "''", 2)) \
            { \
              text_append_n (result, "&quot;", 6); \
              var += 2; \
            } \
          else \
            { \
              text_append_n (result, var, 1); \
              var++; \
            } \
          break;

#define OTXI_NO_BREAK_CASES(var) \
        case ' ': \
        case '\n': \
          text_append_n (result, \
               self->special_character[SC_non_breaking_space].string, \
               self->special_character[SC_non_breaking_space].len); \
          var += strspn (var, "\n "); \
          break;

#define OTXI_SPACE_PROTECTION_CASES(var) \
        case ' ': \
          text_append_n (result, \
               self->special_character[SC_non_breaking_space].string, \
               self->special_character[SC_non_breaking_space].len); \
          var++; \
          break; \
        case '\n': \
          text_append_n (result, self->line_break_element.string, \
                         self->line_break_element.len); \
          var++; \
          break;

/* text conversion loop, with the protection of XML special
   characters and the possibility to add more delimiters and
   more cases to handle those delimiters */
#define OTXI_CONVERT_TEXT(delimiters,other_cases) \
  { \
  while (*p)  \
    { \
      int before_sep_nr = strcspn (p, "<>&\"\f" delimiters); \
      if (before_sep_nr) \
        { \
          text_append_n (result, p, before_sep_nr); \
          p += before_sep_nr; \
        } \
      if (!*p) \
        break; \
      switch (*p) \
        { \
          OTXI_PROTECT_XML_FORM_FEED_CASES(p) \
          other_cases \
        } \
    } \
  }

/* conversion of text for all the possibilities regarding -- --- ''
   conversion, with the possibility to add more for spaces protection */
#define OTXI_ALL_CONVERT_TEXT(additional_delim,other_cases) \
  const char *p = content_used; \
      if (html_in_code (self) || html_in_math (self)) \
        OTXI_CONVERT_TEXT(additional_delim,  \
          other_cases) \
      else if (self->use_unicode_text) \
        OTXI_CONVERT_TEXT("-`'" additional_delim, \
          OTXI_UNICODE_TEXT_CASES(p) \
          other_cases) \
      else if (self->conf->USE_NUMERIC_ENTITY > 0) \
        OTXI_CONVERT_TEXT("-`'" additional_delim, \
          OTXI_NUMERIC_ENTITY_TEXT_CASES(p) \
          other_cases) \
      else if (self->conf->USE_ISO > 0) \
        OTXI_CONVERT_TEXT("-`'" additional_delim, \
          OTXI_ISO_ENTITY_TEXT_CASES(p) \
          other_cases) \
      else \
        OTXI_CONVERT_TEXT("-`'" additional_delim, \
          OTXI_NO_ISO_ENTITY_TEXT_CASES(p) \
          other_cases)

void
html_default_format_protect_text (const char *text, TEXT *result)
{
  const char *p = text;

  OTXI_CONVERT_TEXT ( , )
}

static TREE_ADDED_ELEMENTS *
new_tree_added_elements ()
{
  TREE_ADDED_ELEMENTS *new
    = (TREE_ADDED_ELEMENTS *) malloc (sizeof (TREE_ADDED_ELEMENTS));
  memset (new, 0, sizeof (TREE_ADDED_ELEMENTS));
  return new;
}

static void
clear_tree_added_elements (CONVERTER *self, TREE_ADDED_ELEMENTS *tree_elements)
{
  if (tree_elements->status != tree_added_status_reused_tree)
    remove_element_from_list (&self->tree_to_build, tree_elements->tree);

  if (tree_elements->status == tree_added_status_new_tree)
    destroy_element_and_children (tree_elements->tree);
  else if (tree_elements->status == tree_added_status_normal)
    {
      int i;
      for (i = 0; i < tree_elements->added.number; i++)
        {
          ELEMENT *added_e = tree_elements->added.list[i];
          destroy_element (added_e);
        }
      tree_elements->added.number = 0;
    }
  tree_elements->tree = 0;
  tree_elements->status = 0;
}

static void
free_tree_added_elements (CONVERTER *self, TREE_ADDED_ELEMENTS *tree_elements)
{
  clear_tree_added_elements (self, tree_elements);
  free (tree_elements->added.list);
}

static void
destroy_tree_added_elements (CONVERTER *self, TREE_ADDED_ELEMENTS *tree_elements)
{
  free_tree_added_elements (self, tree_elements);
  free (tree_elements);
}

static void
push_html_formatting_context (HTML_FORMATTING_CONTEXT_STACK *stack,
                              char *context_name)
{
  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (HTML_FORMATTING_CONTEXT));
    }

  memset (&stack->stack[stack->top], 0, sizeof (HTML_FORMATTING_CONTEXT));

  stack->stack[stack->top].context_name = strdup (context_name);

  stack->top++;
}

static void
pop_html_formatting_context (HTML_FORMATTING_CONTEXT_STACK *stack)
{
  if (stack->top == 0)
    fatal ("HTML formatting context stack empty");

  free (stack->stack[stack->top - 1].context_name);
  stack->top--;
}

void
html_new_document_context (CONVERTER *self,
        char *context_name, char *document_global_context,
        enum command_id block_command)
{
  HTML_DOCUMENT_CONTEXT_STACK *stack = &self->html_document_context;
  HTML_DOCUMENT_CONTEXT *doc_context;

  if (stack->top >= stack->space)
    {
      stack->stack
        = realloc (stack->stack,
                   (stack->space += 5) * sizeof (HTML_DOCUMENT_CONTEXT));
    }

  doc_context = &stack->stack[stack->top];
  memset (doc_context, 0, sizeof (HTML_DOCUMENT_CONTEXT));
  doc_context->context = strdup (context_name);
  doc_context->document_global_context = document_global_context;

  push_integer_stack_integer (&doc_context->monospace, 0);
  push_integer_stack_integer (&doc_context->preformatted_context, 0);
  push_command_or_type (&doc_context->composition_context, 0, 0);
  if (block_command)
    push_command (&doc_context->block_commands, block_command);

  if (document_global_context)
    {
      self->document_global_context++;
      self->modified_state |= HMSF_converter_state;
    }

  push_html_formatting_context (&doc_context->formatting_context,
                                "_format");

  stack->top++;
}

void
html_pop_document_context (CONVERTER *self)
{
  HTML_DOCUMENT_CONTEXT_STACK *stack = &self->html_document_context;
  HTML_DOCUMENT_CONTEXT *document_ctx;

  if (stack->top == 0)
    fatal ("HTML document context stack empty for pop");

  document_ctx = &stack->stack[stack->top -1];

  free (document_ctx->context);
  free (document_ctx->monospace.stack);
  free (document_ctx->preformatted_context.stack);
  free (document_ctx->composition_context.stack);
  free (document_ctx->preformatted_classes.stack);
  if (document_ctx->block_commands.top > 0)
    pop_command (&document_ctx->block_commands);
  free (document_ctx->block_commands.stack);
  pop_html_formatting_context (&document_ctx->formatting_context);
  free (document_ctx->formatting_context.stack);

  if (document_ctx->document_global_context)
    {
      self->document_global_context--;
      self->modified_state |= HMSF_converter_state;
    }

  stack->top--;
}

char *
html_convert_tree (CONVERTER *self, const ELEMENT *tree, char *explanation)
{
  TEXT result;
  text_init (&result);

  convert_to_html_internal (self, tree, &result, explanation);

  return result.text;
}

/* This function should be used in formatting functions when some
   Texinfo tree need to be converted. */
char *
convert_tree_new_formatting_context (CONVERTER *self, const ELEMENT *tree,
                              char *context_string, char *multiple_pass,
                              char *document_global_context,
                              enum command_id block_cmd)
{
  char *result;
  char *multiple_pass_str = "";
  char *explanation;
  TEXT context_string_str;
  text_init (&context_string_str);
  text_append (&context_string_str, "");

  if (context_string)
    {
      html_new_document_context (self, context_string,
                                 document_global_context, block_cmd);
      text_printf (&context_string_str, "C(%s)", context_string);
    }

  if (multiple_pass)
    {
      self->ignore_notice++;
      push_string_stack_string (&self->multiple_pass, multiple_pass);
      self->modified_state |= HMSF_multiple_pass | HMSF_converter_state;
      multiple_pass_str = "|M";
    }

  if (self->conf->DEBUG > 0)
    fprintf (stderr, "new_fmt_ctx %s%s\n", context_string_str.text,
                                           multiple_pass_str);

  xasprintf (&explanation, "new_fmt_ctx %s", context_string_str.text);
  result = html_convert_tree (self, tree, explanation);

  free (explanation);
  free (context_string_str.text);

  if (context_string)
    {
      html_pop_document_context (self);
    }

  if (multiple_pass)
    {
      self->ignore_notice--;
      pop_string_stack (&self->multiple_pass);
      self->modified_state |= HMSF_multiple_pass | HMSF_converter_state;
    }

  return result;
}

static void
register_added_target (HTML_ADDED_TARGET_LIST *added_targets,
                       HTML_TARGET *target)
{
  if (added_targets->number == added_targets->space)
    {
      added_targets->list = realloc (added_targets->list,
                   sizeof (HTML_TARGET *) * (added_targets->space += 5));
    }
  added_targets->list[added_targets->number] = target;
  added_targets->number++;
}

static HTML_TARGET *
get_target (CONVERTER *self, const ELEMENT *element)
{
  HTML_TARGET *result
   = find_element_target (&self->html_targets, element);
  if (!result && element->cmd
      && builtin_command_flags(element) & CF_sectioning_heading
      && !(builtin_command_flags(element) & CF_root))
    {
      new_sectioning_command_target (self, element);

      result = find_element_target (&self->html_targets, element);

      register_added_target (&self->added_targets, result);
      self->modified_state |= HMSF_added_target;
    }
  return result;
}

char *html_command_id (CONVERTER *self, ELEMENT *command)
{
  HTML_TARGET *target = get_target (self, command);
  if (target)
    return target->target;
  else
    return 0;
}

ELEMENT *
new_element_added (TREE_ADDED_ELEMENTS *added_elements, enum element_type type)
{
  ELEMENT *new = new_element (type);
  add_to_element_list (&added_elements->added, new);
  return new;
}

TREE_ADDED_ELEMENTS *
html_command_tree (CONVERTER *self, ELEMENT *command, int no_number)
{
  TREE_ADDED_ELEMENTS *tree;
  HTML_TARGET *target;

  ELEMENT *manual_content = lookup_extra_element (command,
                                                  "manual_content");
  if (manual_content)
    {
      ELEMENT *root_code;
      ELEMENT *open_p;
      ELEMENT *close_p;

      ELEMENT *node_content = lookup_extra_element (command,
                                                    "node_content");

      tree = new_tree_added_elements ();

      root_code = new_element_added (tree, ET__code);
      open_p = new_element_added (tree, ET_NONE);
      close_p = new_element_added (tree, ET_NONE);

      text_append_n (&open_p->text, "(", 1);
      text_append_n (&close_p->text, ")", 1);

      add_to_element_contents (root_code, open_p);
      add_to_contents_as_array (root_code, manual_content);
      add_to_element_contents (root_code, close_p);
      if (node_content)
        add_to_contents_as_array (root_code, node_content);

      tree->tree = root_code;
      add_to_element_list (&self->tree_to_build, root_code);
      return tree;
    }

  target = get_target (self, command);
  if (target)
    {
      if (!target->tree.status)
        {
          tree = &target->tree;
          tree->status = tree_added_status_normal;
          if (command->type == ET_special_unit_element)
            {
              const char *special_unit_variety
                = command->associated_unit->special_unit_variety;
              ELEMENT *heading_tree = special_unit_info_tree (self,
                                   SUIT_type_heading, special_unit_variety);
              tree->tree = heading_tree;
            }
          else if (command->cmd == CM_node || command->cmd == CM_anchor)
            {
              ELEMENT *root_code = new_element_added (tree, ET__code);
              add_to_contents_as_array (root_code, command->args.list[0]);
              tree->tree = root_code;
              add_to_element_list (&self->tree_to_build, tree->tree);
            }
          else if (command->cmd == CM_float)
            {
              tree->tree = float_type_number (self, command);
              tree->status = tree_added_status_new_tree;
              add_to_element_list (&self->tree_to_build, tree->tree);
            }
          else if (command->args.number <= 0
                   || command->args.list[0]->contents.number <= 0)
            { /* no argument, nothing to do */
              /* TODO check if possible */
              tree->status = tree_added_status_no_tree;
            }
          else
            {
              char *section_number
                = lookup_extra_string (command, "section_number");
              if (section_number && !self->conf->NUMBER_SECTIONS == 0)
                {
                  NAMED_STRING_ELEMENT_LIST *replaced_substrings
                    = new_named_string_element_list ();
                  ELEMENT *e_number = new_element (ET_NONE);
                  ELEMENT *section_title_copy
                     = copy_tree (command->args.list[0]);

                  add_element_to_named_string_element_list (
                              replaced_substrings, "section_title",
                              section_title_copy);
                  text_append (&e_number->text, section_number);
                  add_element_to_named_string_element_list (
                              replaced_substrings, "number", e_number);

                  if (command->cmd == CM_appendix)
                    {
                      int status;
                      int section_level = lookup_extra_integer (command,
                                               "section_level", &status);
                      if (section_level == 1)
                        {
                          tree->tree
                            = gdt_tree ("Appendix {number} {section_title}",
                                        self->document, self->conf,
                                        replaced_substrings, 0, 0);
                        }
                    }
                  if (!tree->tree)
                    /* TRANSLATORS: numbered section title */
                    tree->tree = gdt_tree ("{number} {section_title}",
                                            self->document, self->conf,
                                            replaced_substrings, 0, 0);

                  destroy_named_string_element_list (replaced_substrings);
                  tree->status = tree_added_status_new_tree;
                  add_to_element_list (&self->tree_to_build, tree->tree);
                }
              else
                {
                  tree->status = tree_added_status_reused_tree;
                  tree->tree = command->args.list[0];
                }

              target->tree_nonumber.tree = command->args.list[0];
              target->tree_nonumber.status = tree_added_status_reused_tree;
            }
        }

      if (no_number && target->tree_nonumber.tree)
        return &target->tree_nonumber;
      else
        return &target->tree;
    }

  return 0;
}

/* keep in sync with enum html_command_text_type */
static char *html_command_text_type_name[] = {
  "text", "text_nonumber", "string", "string_nonumber"
};

char *
html_command_text (CONVERTER *self, ELEMENT *command,
                   const enum html_command_text_type type)
{
  char *result;
  HTML_TARGET *target;
  ELEMENT *tree_root;
  ELEMENT *manual_content = lookup_extra_element (command,
                                                  "manual_content");
  if (manual_content)
    {
      TREE_ADDED_ELEMENTS *command_tree = html_command_tree (self, command, 0);
      TREE_ADDED_ELEMENTS *string_tree = 0;
      if (type == HCTT_string)
        {
          ELEMENT *tree_root_string;

          string_tree = new_tree_added_elements ();

          tree_root_string = new_element_added (string_tree, ET__string);

          add_to_element_contents (tree_root_string, command_tree->tree);
          tree_root = tree_root_string;
          add_to_element_list (&self->tree_to_build, tree_root);
        }
      else
        tree_root = command_tree->tree;

      result = convert_tree_new_formatting_context (self, tree_root,
                                     element_command_name(command), 0,
                                     "command_text-manual_content", 0);

      if (type == HCTT_string)
        destroy_tree_added_elements (self, string_tree);
      return result;
    }

  target = get_target (self, command);
  if (target)
    {
      if (target->command_text[type])
        return target->command_text[type];
      else
        {
          TREE_ADDED_ELEMENTS *string_tree = 0;
          char *explanation = 0;
          char *context_name;
          ELEMENT *selected_tree;
          TREE_ADDED_ELEMENTS *command_tree
            = html_command_tree (self, command, 0);

          if (!command_tree->tree)
            return 0;

          if (command->cmd)
            {
              char *command_name = element_command_name(command);
              context_name = command_name;
              xasprintf (&explanation, "command_text:%s @%s",
                         html_command_text_type_name[type],
                         command_name);
            }
          else
            {
              context_name = element_type_names[command->type];
              if (command->type == ET_special_unit_element)
                {
                  char *special_unit_variety
                    = command->associated_unit->special_unit_variety;
                  xasprintf (&explanation, "command_text %s",
                             special_unit_variety);
                }
            }
          html_new_document_context (self, context_name, explanation, 0);

          if ((type == HCTT_text_nonumber || type == HCTT_string_nonumber)
              && target->tree_nonumber.tree)
            selected_tree = target->tree_nonumber.tree;
          else
            selected_tree = command_tree->tree;

          if (type == HCTT_string)
            {
              ELEMENT *tree_root_string;

              string_tree = new_tree_added_elements ();

              tree_root_string = new_element_added (string_tree, ET__string);

              add_to_element_contents (tree_root_string, selected_tree);
              tree_root = tree_root_string;
              add_to_element_list (&self->tree_to_build, tree_root);
            }
          else
            tree_root = selected_tree;

          self->ignore_notice++;
          add_to_element_list (&self->referred_command_stack, command);
          self->modified_state |= HMSF_referred_command_stack
                                   | HMSF_converter_state;
          target->command_text[type]
            = html_convert_tree (self, tree_root, explanation);
          free (explanation);
          remove_from_element_list (&self->referred_command_stack, -1);
          self->ignore_notice--;
          self->modified_state |= HMSF_referred_command_stack
                                   | HMSF_converter_state;

          html_pop_document_context (self);

          if (type == HCTT_string)
            {
              destroy_tree_added_elements (self, string_tree);
            }
          return target->command_text[type];
        }
    }

 /*
    Can happen
    * if USE_NODES is 0 and there are no sectioning commands.
    * if a special element target was set to undef in user defined code.
    * for @*ref with missing targets (maybe @novalidate needed in that case).
    * for @node header if the node consist only in spaces (example in sectioning
      in_menu_only_special_ascii_spaces_node).
    * for multiple targets with the same name, eg both @node and @anchor
    * with @inforef with node argument only, without manual argument.
  */

  return 0;
}

static int
compare_page_name_number (const void *a, const void *b)
{
  const PAGE_NAME_NUMBER *pnn_a = (const PAGE_NAME_NUMBER *) a;
  const PAGE_NAME_NUMBER *pnn_b = (const PAGE_NAME_NUMBER *) b;

  return strcmp (pnn_a->page_name, pnn_b->page_name);
}

size_t
find_page_name_number
     (const PAGE_NAME_NUMBER_LIST *page_name_number,
                                          const char *page_name)
{
  PAGE_NAME_NUMBER *result = 0;
  static PAGE_NAME_NUMBER searched_page_name;
  searched_page_name.page_name = page_name;

  result = (PAGE_NAME_NUMBER *) bsearch (&searched_page_name,
                page_name_number->list,
                page_name_number->number, sizeof(PAGE_NAME_NUMBER),
                compare_page_name_number);
  return result->number;
}

static int
compare_selector_style (const void *a, const void *b)
{
  const CSS_SELECTOR_STYLE *css_a = (const CSS_SELECTOR_STYLE *) a;
  const CSS_SELECTOR_STYLE *css_b = (const CSS_SELECTOR_STYLE *) b;

  return strcmp (css_a->selector, css_b->selector);
}

CSS_SELECTOR_STYLE *
find_css_selector_style
     (const CSS_SELECTOR_STYLE_LIST *css_element_class_styles,
                                           const char *selector)
{
  CSS_SELECTOR_STYLE *result = 0;
  static CSS_SELECTOR_STYLE searched_selector;
  /* remove const with a cast, it is more efficient than duplicating */
  searched_selector.selector = (char *) selector;

  result = (CSS_SELECTOR_STYLE *) bsearch (&searched_selector,
                css_element_class_styles->list,
                css_element_class_styles->number, sizeof(CSS_SELECTOR_STYLE),
                compare_selector_style);

  return result;
}

static void
collect_css_element_class (CONVERTER *self, const char *selector)
{
  CSS_SELECTOR_STYLE *selector_style
    = find_css_selector_style (&self->css_element_class_styles, selector);
  if (selector_style)
    {
      size_t i;
      size_t css_files_index;
      CSS_LIST *page_css_list;
      if (self->document_global_context)
        {
          css_files_index = 0;
        }
      else
        {
          css_files_index = self->current_filename.file_number;
        }
      page_css_list = &self->page_css.list[css_files_index];
      for (i = 0; i < page_css_list->number; i++)
        {
          if (!strcmp (page_css_list->list[i], selector))
            return;
        }
      if (page_css_list->number == page_css_list->space)
        {
          page_css_list->list
            = realloc (page_css_list->list,
                   (page_css_list->space += 5) * sizeof (char *));
        }
      page_css_list->list[page_css_list->number] = strdup (selector);
      page_css_list->number++;
    }
}

int
compare_strings (const void *a, const void *b)
{
  const char **str_a = (const char **) a;
  const char **str_b = (const char **) b;

  return strcmp (*str_a, *str_b);
}

STRING_LIST *
html_get_css_elements_classes (CONVERTER *self, const char *filename)
{
  int j;
  size_t page_number;
  STRING_LIST *result;
  const char **selectors;
  size_t selector_nr = 0;

  if (self->page_css.number <= 0)
    return 0;

  CSS_LIST *global_context_css_list = &self->page_css.list[0];

  if (filename)
    {
      CSS_LIST *css_list;
      page_number = find_page_name_number (&self->page_name_number,
                                           filename);
      if (!page_number)
        fatal ("Could not find page number of file name");

      css_list = &self->page_css.list[page_number];
      if (css_list->number)
        {
          /* +1 for 'span:hover a.copiable-link' */
          size_t space = css_list->number + global_context_css_list->number +1;
          selectors = (const char **) malloc (sizeof (char *) * space);
          memcpy (selectors, css_list->list,
                  css_list->number * sizeof (char *));
          selector_nr = css_list->number;
        }
    }

  if (selector_nr <= 0)
    {
      if (global_context_css_list->number)
        {
          /* +1 for 'span:hover a.copiable-link' */
          size_t space = global_context_css_list->number +1;
          selectors = (const char **) malloc (sizeof (char *) * space);
          selector_nr = global_context_css_list->number;
        }
      else
        return 0;
    }
  else if (global_context_css_list->number)
    {
      int i;
      size_t file_selector_nr = selector_nr;
      /* add global context selectors if not already present */
      for (i = 0; i < global_context_css_list->number; i++)
        {
          int j;
          const char *global_selector = global_context_css_list->list[i];
          int found = 0;
          for (j = 0; j < file_selector_nr; j++)
            {
              if (!strcmp (global_selector, selectors[j]))
                {
                  found = 1;
                  break;
                }
            }
          if (!found)
            {
              selectors[selector_nr] = global_selector;
              selector_nr++;
            }
        }
    }
  for (j = 0; j < selector_nr; j++)
    {
      if (!strcmp ("a.copiable-link", selectors[j]))
         {
           selectors[selector_nr] = "span:hover a.copiable-link";
           selector_nr++;
           break;
         }
    }

  qsort (selectors, selector_nr, sizeof (char *), compare_strings);

  result = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (result, 0, sizeof (STRING_LIST));
  for (j = 0; j < selector_nr; j++)
    add_string (selectors[j], result);

  free (selectors);

  return result;
}

static char *
protect_class_name (const char *class_name)
{
  TEXT result;
  TEXT space_protected;
  text_init (&result);
  text_init (&space_protected);
  const char *p = class_name;
  while (*p)
    {
      int n = strcspn (p, " ");
      if (n)
        {
          text_append_n (&space_protected, p, n);
          p += n;
        }
      if (*p)
        {
          int n = strspn (p, " ");
          if (n)
            {
              int i;
              for (i = 0; i < n; i++)
                text_append_n (&space_protected, "-", 1);
              p += n;
            }
        }
    }

  /* do not use the customization API as in perl */
  html_default_format_protect_text (space_protected.text, &result);
  free (space_protected.text);
  return result.text;
}

char *
html_attribute_class (CONVERTER *self, const char *element,
                      const STRING_LIST *classes)
{
  TEXT result;
  char *style = 0;
  int i;
  int class_nr = 0;
  if (!classes  || classes->number <= 0
      || self->conf->NO_CSS > 0)
    {
      if (!strcmp (element, "span"))
        return strdup ("");
      else
        {
          char *result;
          xasprintf (&result, "<%s", element);
          return result;
        }
    }

  if (self->conf->INLINE_CSS_STYLE > 0)
    {
      int i;
      TEXT inline_styles;
      text_init (&inline_styles);
      int style_nr = 0;
      for (i = 0; i < classes->number; i++)
        {
          const char *style_class = classes->list[i];
          char *selector;
          CSS_SELECTOR_STYLE *selector_style;

          xasprintf (&selector, "%s.%s", element, style_class);
          selector_style
            = find_css_selector_style (&self->css_element_class_styles,
                                       selector);
          free (selector);
          if (selector_style)
            {
              if (style_nr)
                 text_printf (&inline_styles, ";%s", selector_style->style);
              else
                 text_append (&inline_styles, selector_style->style);
              style_nr++;
            }
        }
      if (inline_styles.end)
        {
          xasprintf (&style, " style=\"%s\"", inline_styles.text);
        }
      free (inline_styles.text);
    }
  else
    {
      int i;
      for (i = 0; i < classes->number; i++)
        {
          const char *style_class = classes->list[i];
          char *selector;

          xasprintf (&selector, "%s.%s", element, style_class);
          collect_css_element_class (self, selector);
          free (selector);
        }
    }
  text_init (&result);
  text_printf (&result, "<%s class=\"", element);
  for (i = 0; i < classes->number; i++)
    {
      const char *class_name = classes->list[i];
      char *protected_class = protect_class_name (class_name);
      if (class_nr)
        text_printf (&result, " %s", protected_class);
      else
        text_append (&result, protected_class);
      free (protected_class);
      class_nr++;
    }
  text_append_n (&result, "\"", 1);
  if (style)
    {
      text_append (&result, style);
      free (style);
    }
  return result.text;
}

void
html_merge_index_entries (CONVERTER *self)
{
  if (self->document->index_names)
    {
      INDEX **index_names = self->document->index_names;
      MERGED_INDEX *merged_index_entries = merge_indices (index_names);
      self->index_entries = merged_index_entries;
    }
}

int
compare_index_name (const void *a, const void *b)
{
  const INDEX **idx_a = (const INDEX **) a;
  const INDEX **idx_b = (const INDEX **) b;

  return strcmp ((*idx_a)->name, (*idx_b)->name);
}

void
prepare_index_entries_targets (CONVERTER *self)
{
  if (self->document->index_names)
    {
      INDEX **i, *idx;
      INDEX **index_names = self->document->index_names;
      INDEX **sorted_index_names;
      int index_nr = 0;

      /* TODO sort indices by name before? when registering in document?
         In parser?
         Depending on size?  And use bsearch in some places?
       */
      for (i = index_names; (idx = *i); i++)
        index_nr++;

      sorted_index_names = (INDEX **) malloc ((index_nr+1) * sizeof (INDEX *));

      memcpy (sorted_index_names, index_names, (index_nr+1) * sizeof (INDEX *));
      qsort (sorted_index_names, index_nr, sizeof (INDEX *),
             compare_index_name);

      for (i = sorted_index_names; (idx = *i); i++)
        {
          if (idx->entries_number > 0)
            {
              int j;
              for (j = 0; j < idx->entries_number; j++)
                {
                  INDEX_ENTRY *index_entry;
                  const ELEMENT *main_entry_element;
                  const ELEMENT *seeentry;
                  const ELEMENT *seealso;
                  ELEMENT *entry_reference_content_element;
                  ELEMENT *normalize_index_element;
                  ELEMENT_LIST *subentries_tree;
                  const ELEMENT *target_element;
                  TEXT target_base;
                  char *normalized_index;
                  char *region = 0;
                  char *target;

                  index_entry = &idx->index_entries[j];
                  main_entry_element = index_entry->entry_element;
                  seeentry = lookup_extra_element (main_entry_element,
                                                   "seeentry");
                  if (seeentry)
                    continue;
                  seealso = lookup_extra_element (main_entry_element,
                                                  "seealso");
                  if (seealso)
                    continue;

                  region = lookup_extra_string (main_entry_element,
                                                "element_region");
                  entry_reference_content_element
                   = index_content_element (main_entry_element, 1);
        /* construct element to convert to a normalized identifier to use as
           hrefs target */
                  normalize_index_element = new_element (ET_NONE);
                  add_to_element_contents (normalize_index_element,
                                           entry_reference_content_element);

                  subentries_tree
                   = comma_index_subentries_tree (main_entry_element, " ");
                  if (subentries_tree)
                    {
                      insert_list_slice_into_contents (normalize_index_element,
                                       normalize_index_element->contents.number,
                                       subentries_tree, 0,
                                       subentries_tree->number);
                    }
                  normalized_index
                    = normalize_transliterate_texinfo (normalize_index_element,
                                                       (self->conf->TEST > 0));

                  destroy_element (normalize_index_element);
                  if (subentries_tree)
                    free_comma_index_subentries_tree (subentries_tree);

                  text_init (&target_base);
                  text_append (&target_base, "index-");
                  if (region)
                    {
                      text_append (&target_base, region);
                      text_append (&target_base, "-");
                    }
                  text_append (&target_base, normalized_index);
                  free (normalized_index);
                  target = unique_target (self, target_base.text);
                  free (target_base.text);
                  if (index_entry->entry_associated_element)
                    target_element = index_entry->entry_associated_element;
                  else
                    target_element = main_entry_element;

                  add_element_target (self, target_element, target);
                  add_string (target, &self->seen_ids);

                  free (target);
                }
            }
        }
      free (sorted_index_names);
    }
}

static const char *footid_base = "FOOT";
static const char *docid_base = "DOCF";

static void
prepare_footnotes_targets (CONVERTER *self)
{
  const ELEMENT_LIST *global_footnotes = &self->document->global_commands->footnotes;
  if (global_footnotes->number > 0)
    {
      int i;
      for (i = 0; i < global_footnotes->number; i++)
        {
          const ELEMENT *footnote = global_footnotes->list[i];
          TEXT footid;
          TEXT docid;
          int nr = i+1;

          text_init (&footid);
          text_init (&docid);
          text_printf (&footid, "%s%d", footid_base, nr);
          text_printf (&docid, "%s%d", docid_base, nr);

          while (1)
            {
              int j;
              int non_unique = 0;
              for (j = 0; j < self->seen_ids.number; j++)
                {
                  if (!strcmp (footid.text, self->seen_ids.list[j])
                      || !strcmp (docid.text, self->seen_ids.list[j]))
                    {
                      non_unique = 1;
                      break;
                    }
                }
              if (non_unique)
                {
                  nr++;
                  if (nr == 0)
                    fatal ("overflow footnote target nr");

                  text_init (&footid);
                  text_init (&docid);
                  text_printf (&footid, "%s%d", footid_base, nr);
                  text_printf (&docid, "%s%d", docid_base, nr);
                }
              else
                break;
            }
          add_string (footid.text, &self->seen_ids);
          add_string (docid.text, &self->seen_ids);
          add_element_target (self, footnote, footid.text);
          add_special_target (self, ST_footnote_location, footnote,
                              docid.text);

          if (self->conf->DEBUG > 0)
            {
              char *footnote_txi = convert_to_texinfo (footnote);
              fprintf (stderr, "Enter footnote: target %s, nr %d\n%s\n",
                       footid.text, nr, footnote_txi);
              free (footnote_txi);
            }
          free (footid.text);
          free (docid.text);
        }
    }
}

/* for conversion units except for associated special units that require
   files for document units to be set */
void
html_prepare_conversion_units_targets (CONVERTER *self,
                                       const char *document_name,
                                       int output_units_descriptor,
                                       int special_units_descriptor,
                                       int associated_special_units_descriptor)
{
  /*
   Do that before the other elements, to be sure that special page ids
   are registered before elements id are.
   */
  set_special_units_targets_files (self, special_units_descriptor,
                                   document_name);

  prepare_associated_special_units_targets (self,
                                  associated_special_units_descriptor);

  set_root_commands_targets_node_files (self);

  prepare_index_entries_targets (self);
  prepare_footnotes_targets (self);
}

/* Associate output units to the global targets, First, Last, Top, Index.
   and special output units */
void
html_prepare_output_units_global_targets (CONVERTER *self,
                                        int output_units_descriptor,
                                        int special_units_descriptor,
                                        int associated_special_units_descriptor)
{
  int i;
  int all_special_units_nr = 0;
  int s;
  const OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  const OUTPUT_UNIT *top_output_unit = get_top_unit (self->document,
                                                     output_units);

  int special_output_units_lists[2] = {special_units_descriptor,
                                       associated_special_units_descriptor};

  self->global_units_directions[D_First] = output_units->list[0];
  self->global_units_directions[D_Last]
    = output_units->list[output_units->number - 1];

  self->global_units_directions[D_Top] = top_output_unit;

  /* It is always the first printindex, even if it is not output (for example
     it is in @copying and @titlepage, which are certainly wrong constructs).
   */
  if (self->document->global_commands->printindex.number > 0)
    {
      const ELEMENT *printindex
        = self->document->global_commands->printindex.list[0];
      ROOT_AND_UNIT *root_unit
        = html_get_tree_root_element (self, printindex, 0);
      if (root_unit->output_unit)
        {
          const OUTPUT_UNIT *document_unit = root_unit->output_unit;
          const ELEMENT *root_command = root_unit->root;
          if (root_command && root_command->cmd == CM_node)
            {
              const ELEMENT *associated_section
                = lookup_extra_element (root_command, "associated_section");
              if (associated_section)
                root_command = associated_section;
            }
       /* find the first level 1 sectioning element to associate the printindex
           with */
          if (root_command && root_command->cmd != CM_node)
            {
              while (1)
                {
                  int status;
                  int section_level
                    = lookup_extra_integer (root_command, "section_level",
                                                               &status);
                  if (!status && section_level <= 1)
                    break;

                  const ELEMENT *up_section_directions
                    = lookup_extra_element (root_command, "section_directions");
                  if (up_section_directions
                      && up_section_directions->contents.list[D_up]
                      && up_section_directions->contents.list[D_up]
                                     ->associated_unit)
                    {
                      root_command = up_section_directions->contents.list[D_up];
                      document_unit = root_command->associated_unit;
                    }
                  else
                    break;
                }
            }
          self->global_units_directions[D_Index] = document_unit;
        }
      free (root_unit);
    }

  if (self->conf->DEBUG > 0)
    {
      int i;
      fprintf (stderr, "GLOBAL DIRECTIONS:\n");
      for (i = 0; i < D_Last+1; i++)
        {
          if (self->global_units_directions[i])
            {
              const OUTPUT_UNIT *global_unit = self->global_units_directions[i];
              char *unit_texi = output_unit_texi (global_unit);
              fprintf (stderr, " %s: %s\n", html_global_unit_direction_names[i],
                                            unit_texi);
              free (unit_texi);
            }
        }
      fprintf (stderr, "\n");
    }

  /* determine total number of special output units and fill
     special_units_directions_name_unit.  Used to simplify building perl
     directions */
  for (i = 0; i < 2; i++)
    {
      int special_units_descriptor = special_output_units_lists[i];
      const OUTPUT_UNIT_LIST *units_list
       = retrieve_output_units (special_units_descriptor);
      if (units_list && units_list->number)
        all_special_units_nr += units_list->number;
    }

  self->special_units_direction_name = (SPECIAL_UNIT_DIRECTION *)
   malloc (sizeof (SPECIAL_UNIT_DIRECTION) * (all_special_units_nr+1));
  memset (self->special_units_direction_name, 0,
          sizeof (SPECIAL_UNIT_DIRECTION) * (all_special_units_nr+1));

  s = 0;
  for (i = 0; i < 2; i++)
    {
      int special_units_descriptor = special_output_units_lists[i];
      OUTPUT_UNIT_LIST *units_list
       = retrieve_output_units (special_units_descriptor);
      if (units_list && units_list->number)
        {
          int j;
          for (j = 0; j < units_list->number; j++)
            {
              const OUTPUT_UNIT *special_unit = units_list->list[j];
              char *special_unit_variety = special_unit->special_unit_variety;
              int special_unit_direction_index
                = special_unit_variety_direction_index (self,
                                                special_unit_variety);
              self->global_units_directions[special_unit_direction_index]
                = special_unit;

              self->special_units_direction_name[s].output_unit = special_unit;
              self->special_units_direction_name[s].direction
                = special_unit_info (self, SUI_type_direction,
                                           special_unit_variety);
              s++;
            }
        }
    }
}

static void
set_file_source_info (FILE_SOURCE_INFO *file_source_info,
                          char *file_info_type, char *file_info_name,
                          const ELEMENT *file_info_element, char *filepath)
{
  file_source_info->type = file_info_type;
  file_source_info->name = file_info_name;
  file_source_info->element = file_info_element;
  file_source_info->path = filepath;
}

static FILE_SOURCE_INFO *
add_to_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info,
                          char *filename,
                          char *file_info_type, char *file_info_name,
                          const ELEMENT *file_info_element, char *filepath)
{
  FILE_SOURCE_INFO *new_file_source_info;
  if (files_source_info->number == files_source_info->space)
    {
      files_source_info->list = realloc (files_source_info->list,
               (files_source_info->space += 5) * sizeof (FILE_SOURCE_INFO));
      if (!files_source_info->list)
       fatal ("realloc failed");
    }

  new_file_source_info =
   &files_source_info->list[files_source_info->number];

  new_file_source_info->filename = strdup (filename);
  set_file_source_info (new_file_source_info, file_info_type,
                        file_info_name, file_info_element, filepath);

  files_source_info->number++;

  return new_file_source_info;
}

static FILE_SOURCE_INFO *
find_file_source_info (FILE_SOURCE_INFO_LIST *files_source_info,
                            char *filename)
{
  int i;
  for (i = 0; i < files_source_info->number; i++)
    {
      FILE_SOURCE_INFO *file_source_info = &files_source_info->list[i];
      if (!strcmp (file_source_info->filename, filename))
        return file_source_info;
    }
  return 0;
}

void
html_destroy_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info)
{
  int i;
  for (i = 0; i < files_source_info->number; i++)
    {
      free (files_source_info->list[i].filename);
    }
  free (files_source_info->list);
  free (files_source_info);
}

static char *
add_to_unit_file_name_paths (char **unit_file_name_paths,
                             char *filename, OUTPUT_UNIT *output_unit)
{
  char **new_output_unit_file_name
                  = &unit_file_name_paths[output_unit->index];
  *new_output_unit_file_name = strdup (filename);

  return *new_output_unit_file_name;
}

static FILE_SOURCE_INFO_LIST *
html_set_pages_files (CONVERTER *self, OUTPUT_UNIT_LIST *output_units,
                      OUTPUT_UNIT_LIST *special_units,
                      OUTPUT_UNIT_LIST *associated_special_units,
                      char *output_file,
                      char *destination_directory, char *output_filename,
                      char *document_name)
{
  FILE_SOURCE_INFO_LIST *files_source_info = 0;
  char **unit_file_name_paths;
  int i;

  if (!output_units || !output_units->number)
    return 0;

  initialize_output_units_files (self);

  files_source_info = (FILE_SOURCE_INFO_LIST *)
    malloc (sizeof (FILE_SOURCE_INFO_LIST));
  memset (files_source_info, 0, sizeof (FILE_SOURCE_INFO_LIST));

  unit_file_name_paths = (char **)
   malloc (output_units->number * sizeof (char *));
  memset (unit_file_name_paths, 0,
          output_units->number * sizeof (char *));

  if (!self->conf->SPLIT || !strlen (self->conf->SPLIT))
    {
      int i;
      add_to_files_source_info (files_source_info, output_filename,
                                "special_file", "non_split", 0,
                                output_file);
      for (i = 0; i < output_units->number; i++)
        {
          add_to_unit_file_name_paths (unit_file_name_paths,
                                       output_filename,
                                       output_units->list[i]);
        }
    }
  else
    {
      char *top_node_filename_str;
      OUTPUT_UNIT *node_top_output_unit = 0;
      char *extension = 0;
      const ELEMENT *node_top = 0;
      int file_nr = 0;
      int i;

      /* first determine the top node file name. */
      if (self->document->identifiers_target)
        node_top = find_identifier_target (self->document->identifiers_target,
                                           "Top");

      top_node_filename_str = top_node_filename (self, document_name);

      if (node_top && top_node_filename_str)
        {
          int i;
          node_top_output_unit = node_top->associated_unit;
          for (i = 0; i < output_units->number; i++)
            if (output_units->list[i] == node_top_output_unit)
              break;
          add_to_files_source_info (files_source_info, top_node_filename_str,
                                    "special_file", "Top", 0, 0);
          add_to_unit_file_name_paths (unit_file_name_paths,
                                       top_node_filename_str,
                                       node_top_output_unit);
        }

      if (self->conf->EXTENSION && strlen (self->conf->EXTENSION))
        extension = self->conf->EXTENSION;

      for (i = 0; i < output_units->number; i++)
        {
          OUTPUT_UNIT *output_unit = output_units->list[i];
          OUTPUT_UNIT *file_output_unit;
          char *output_unit_file_name;
          /* For Top node. */
          if (node_top_output_unit && node_top_output_unit == output_unit)
            continue;

          file_output_unit = output_unit->first_in_page;
          output_unit_file_name
           = unit_file_name_paths[file_output_unit->index];
          if (!output_unit_file_name)
            {
              char *node_filename = 0;
              int j;
              for (j = 0; j < file_output_unit->unit_contents.number; j++)
                {
                  const ELEMENT *root_command
                     = file_output_unit->unit_contents.list[j];
                  if (root_command->cmd == CM_node)
                    {
                      const ELEMENT *node_target = 0;
                      char *normalized = lookup_extra_string (root_command,
                                                              "normalized");
                      if (normalized)
                        node_target
                         = find_identifier_target (
                                  self->document->identifiers_target,
                                  normalized);
                   /* double node are not normalized, they are handled here */
                      if (!node_target)
                        {
                          FILE_SOURCE_INFO *file_source_info = 0;

                          TEXT file_name_text;
                          text_init (&file_name_text);
                          text_append (&file_name_text, "unknown_node");
                          if (extension)
                            {
                              text_append (&file_name_text, ".");
                              text_append (&file_name_text, extension);
                            }
                          file_source_info
                            = find_file_source_info (files_source_info,
                                                         file_name_text.text);
                          if (!file_source_info)
                            {
                              file_source_info
                                = add_to_files_source_info (files_source_info,
                                                file_name_text.text, "node", 0,
                                                              root_command, 0);
                              node_filename = file_source_info->filename;
                            }
                          free (file_name_text.text);
                        }
                      else
                        {
          /* Nodes with {'extra'}->{'is_target'} should always be in
            'identifiers_target', and thus in targets.  It is a bug otherwise. */
                          FILE_SOURCE_INFO *file_source_info = 0;
                          HTML_TARGET *node_target
                            = find_element_target (&self->html_targets,
                                                   root_command);
                          node_filename = node_target->node_filename;

                          file_source_info
                            = find_file_source_info (files_source_info,
                                                          node_filename);
                          if (file_source_info)
                            {
                              if (!strcmp (file_source_info->type,
                                           "stand_in_file"))
                                {/* NOTE we keep the order, as in perl */
                                  set_file_source_info (file_source_info,
                                                        "node",
                                                        0, root_command, 0);
                                }
                            }
                          else
                            add_to_files_source_info (files_source_info,
                                                 node_filename, "node", 0,
                                                 root_command, 0);
                        }
                      output_unit_file_name
                        = add_to_unit_file_name_paths (unit_file_name_paths,
                                                       node_filename,
                                                       file_output_unit);
                      break;
                    }
                }
              if (!node_filename)
                {
                  /* use section to do the file name if there is no node */
                  const ELEMENT *command = file_output_unit->unit_command;
                  if (command)
                    {
                      if (command->cmd == CM_top && !node_top
                          && top_node_filename_str)
                        {
                   /* existing top_node_filename can happen, see
                      html_tests.t top_file_name_and_node_name_collision */
                          FILE_SOURCE_INFO *file_source_info
                            = find_file_source_info (files_source_info,
                                                  top_node_filename_str);
                          if (file_source_info)
                            {/* NOTE we keep the order, as in perl */
                              set_file_source_info (file_source_info,
                                                    "special_file", "Top",
                                                    0, 0);
                            }
                          else
                            {
                              add_to_files_source_info (files_source_info,
                                                       top_node_filename_str,
                                                       "special_file", "Top",
                                                       0, 0);
                            }
                          output_unit_file_name
                           = add_to_unit_file_name_paths (unit_file_name_paths,
                                                          top_node_filename_str,
                                                           file_output_unit);
                        }
                      else
                        {
                          HTML_TARGET *section_target
                            = find_element_target (&self->html_targets,
                                                   command);
                          char *section_filename
                            = section_target->section_filename;

                          FILE_SOURCE_INFO *file_source_info
                            = find_file_source_info (files_source_info,
                                                     section_filename);
                          if (file_source_info)
                            {
                              if (!strcmp (file_source_info->type,
                                           "stand_in_file"))
                                {/* NOTE we keep the order, as in perl */
                                  set_file_source_info (file_source_info,
                                                        "section",
                                                        0, command, 0);
                                }
                            }
                          else
                            add_to_files_source_info (files_source_info,
                                                 section_filename, "section", 0,
                                                 command, 0);
                          output_unit_file_name
                            = add_to_unit_file_name_paths (unit_file_name_paths,
                                                           section_filename,
                                                           file_output_unit);
                        }
                    }
                  else
                    {
                      /* when everything else has failed */
                      if (file_nr == 0 && !node_top
                          && top_node_filename_str)
                        {
                          FILE_SOURCE_INFO *file_source_info
                            = find_file_source_info (files_source_info,
                                                  top_node_filename_str);
                          if (!file_source_info)
                            {
                              add_to_files_source_info (files_source_info,
                                                       top_node_filename_str,
                                                       "stand_in_file", "Top",
                                                       0, 0);
                            }
                          output_unit_file_name
                           = add_to_unit_file_name_paths (unit_file_name_paths,
                                                         top_node_filename_str,
                                                           file_output_unit);
                        }
                      else
                        {
                          FILE_SOURCE_INFO *file_source_info;

                          TEXT file_name_text;
                          text_init (&file_name_text);
                          text_printf (&file_name_text, "%s_%d", document_name,
                                                                file_nr);
                          if (extension)
                            {
                              text_append (&file_name_text, ".");
                              text_append (&file_name_text, extension);
                            }
                          file_source_info
                            = find_file_source_info (files_source_info,
                                                  file_name_text.text);
                          if (!file_source_info)
                            {
                              add_to_files_source_info (files_source_info,
                                                       file_name_text.text,
                                                       "stand_in_file",
                                                       "unknown",
                                                       0, 0);
                            }
                          output_unit_file_name
                           = add_to_unit_file_name_paths (unit_file_name_paths,
                                                          file_name_text.text,
                                                           file_output_unit);
                          free (file_name_text.text);
                        }
                      file_nr++;
                    }
                }
            }
          if (output_unit != file_output_unit)
            add_to_unit_file_name_paths (unit_file_name_paths,
                                         output_unit_file_name,
                                         output_unit);
        }
      free (top_node_filename_str);
    }

  self->output_unit_file_indices = (size_t *)
    malloc (output_units->number * sizeof (size_t));

  for (i = 0; i < output_units->number; i++)
    {
      size_t output_unit_file_idx = 0;
      FILE_NAME_PATH_COUNTER *output_unit_file;
      OUTPUT_UNIT *output_unit = output_units->list[i];
      char *output_unit_file_name = unit_file_name_paths[i];
      char *filename = strdup (output_unit_file_name);
      FILE_SOURCE_INFO *file_source_info
        = find_file_source_info (files_source_info, output_unit_file_name);
      char *filepath = file_source_info->path;

      FILE_NAME_PATH *file_name_path
        = call_file_id_setting_unit_file_name (self, output_unit,
                                         output_unit_file_name, filepath);
      if (file_name_path)
        {
          if (file_name_path->filename)
            {
              FILE_SOURCE_INFO *file_source_info
               = find_file_source_info (files_source_info,
                                        file_name_path->filename);
              if (file_source_info)
                {
                  if (file_source_info->path && file_name_path->filepath
                      && strcmp (file_source_info->path,
                                 file_name_path->filepath))
                    {
                      message_list_document_warn (&self->error_messages,
                                                  self->conf,
                                     "resetting %s file path %s to %s",
                                           file_name_path->filename,
                                           file_source_info->path,
                                           file_name_path->filepath);
                    }
                  set_file_source_info (file_source_info, "special_file",
                                "user_defined", 0, file_name_path->filepath);
                }
              else
                add_to_files_source_info (files_source_info,
                                          file_name_path->filename,
                                          "special_file", "user_defined",
                                           0, file_name_path->filepath);
              free (filename);
              filename = file_name_path->filename;
            }
          free (file_name_path);
        }
      output_unit_file_idx
        = set_output_unit_file (self, output_unit, filename, 1);
      self->output_unit_file_indices[i] = output_unit_file_idx;
      output_unit_file = &self->output_unit_files.list[output_unit_file_idx];
      if (self->conf->DEBUG > 0)
        fprintf (stderr, "Page %s: %s(%d)\n",
                 output_unit_texi (output_unit),
                 output_unit->unit_filename, output_unit_file->counter);
      free (filename);
      free (output_unit_file_name);
    }

  free (unit_file_name_paths);

  if (special_units && special_units->number)
    {
      int i;
      self->special_unit_file_indices = (size_t *)
        malloc (special_units->number * sizeof (size_t));
      for (i = 0; i < special_units->number; i++)
        {
          size_t special_unit_file_idx = 0;
          FILE_NAME_PATH_COUNTER *special_unit_file;
          OUTPUT_UNIT *special_unit = special_units->list[i];
          const ELEMENT *unit_command = special_unit->unit_command;
          const HTML_TARGET *special_unit_target
            = find_element_target (&self->html_targets, unit_command);
          char *filename = special_unit_target->special_unit_filename;

        /* Associate the special elements that have no page with the main page.
           This may only happen if not split. */
          if (!filename && special_units->number
              && output_units && output_units->number
              && output_units->list[0]->unit_filename)
            {
              filename = output_units->list[0]->unit_filename;
            }

          if (filename)
            {
              FILE_SOURCE_INFO *file_source_info
               = find_file_source_info (files_source_info, filename);
              if (file_source_info)
                {
                  if (!strcmp (file_source_info->type, "stand_in_file"))
                    {/* NOTE we keep the order, as in perl */
                      set_file_source_info (file_source_info, "special_unit",
                                            0, unit_command, 0);
                    }
                }
              else
                add_to_files_source_info (files_source_info, filename,
                                          "special_unit", 0, unit_command, 0);
            }
          special_unit_file_idx
            = set_output_unit_file (self, special_unit, filename, 1);
          self->special_unit_file_indices[i] = special_unit_file_idx;
          special_unit_file
             = &self->output_unit_files.list[special_unit_file_idx];
          if (self->conf->DEBUG > 0)
            fprintf (stderr, "Special page: %s(%d)\n", filename,
                             special_unit_file->counter);
        }
    }

  for (i = 0; i < files_source_info->number; i++)
    {
      FILE_SOURCE_INFO *file_source_info = &files_source_info->list[i];
      set_file_path (self, file_source_info->filename, file_source_info->path,
                     destination_directory);
    }

  /*
   to be able to associate to the output unit file the associated
   output units will be output into, this is done after document output
   units got files.
   In practice only used for contents and shortcontents.
   */
  if (associated_special_units && associated_special_units->number > 0)
    {
      int i;
      for (i = 0; i < associated_special_units->number; i++)
        {
          char *filename = 0;
          OUTPUT_UNIT *special_unit = associated_special_units->list[i];
          const OUTPUT_UNIT *associated_output_unit
            = special_unit->associated_document_unit;
          const ELEMENT *unit_command = special_unit->unit_command;
          HTML_TARGET *element_target
            = find_element_target (&self->html_targets, unit_command);

          if (element_target->special_unit_filename)
            filename = element_target->special_unit_filename;
          else
            {
              if (associated_output_unit)
                filename = strdup (associated_output_unit->unit_filename);
              element_target->special_unit_filename = filename;
            }

   /* set here the file name, but do not increment the counter as it is
      already set for the output unit the special output unit is in. */
          if (filename)
            set_output_unit_file (self, special_unit, filename, 0);
        }
    }

  /* initialize data that requires output_unit_files number */
  self->file_changed_counter.list = (size_t *)
      malloc (self->output_unit_files.number * sizeof (size_t));
  memset (self->file_changed_counter.list, 0,
          self->output_unit_files.number * sizeof (size_t));

  /* 0 is for document_global_context_css, the remaining indices
     for the output unit files */
  self->page_css.number = self->output_unit_files.number +1;
  self->page_css.list = (CSS_LIST *)
       malloc (self->page_css.number * sizeof (CSS_LIST));
  memset (self->page_css.list, 0,
          self->page_css.number * sizeof (CSS_LIST));

  return files_source_info;
}

/* setup a page (+global context) in case there are no files, ie called
   with convert or output with an empty string as filename. */
void
setup_output_simple_page (CONVERTER *self, const char *output_filename)
{
  PAGE_NAME_NUMBER *page_name_number;
  self->page_css.number = 1+1;
  self->page_css.list = (CSS_LIST *)
       malloc (self->page_css.number * sizeof (CSS_LIST));
  memset (self->page_css.list, 0,
          self->page_css.number * sizeof (CSS_LIST));

  self->page_name_number.number = 1;
  self->page_name_number.list = (PAGE_NAME_NUMBER *)
      malloc (self->page_name_number.number * sizeof (PAGE_NAME_NUMBER));

  page_name_number = &self->page_name_number.list[0];
  page_name_number->number = 1;
  page_name_number->page_name = output_filename;
}

static void
prepare_special_units_directions (CONVERTER *self,
                                  OUTPUT_UNIT_LIST *special_units)
{
  int i;

  if (!special_units)
    return;

  for (i = 0; i < special_units->number; i++)
    {
      OUTPUT_UNIT *special_unit = special_units->list[i];
      special_unit->directions[RUD_type_This] = special_unit;
    }
}

FILE_SOURCE_INFO_LIST *
html_prepare_units_directions_files (CONVERTER *self,
          int output_units_descriptor,
          int special_units_descriptor, int associated_special_units_descriptor,
          char *output_file, char *destination_directory, char *output_filename,
          char *document_name)
{
  int i;
  FILE_SOURCE_INFO_LIST *files_source_info = 0;
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);
  OUTPUT_UNIT_LIST *associated_special_units
    = retrieve_output_units (associated_special_units_descriptor);

  html_prepare_output_units_global_targets (self, output_units_descriptor,
                                             special_units_descriptor,
                                       associated_special_units_descriptor);

  split_pages (output_units, self->conf->SPLIT);

  if (strlen (output_file))
    {
      files_source_info =
        html_set_pages_files (self, output_units, special_units,
                        associated_special_units, output_file,
                        destination_directory, output_filename, document_name);
    }
  else
    setup_output_simple_page (self, output_filename);


  units_directions (self->conf, self->document->identifiers_target,
                    output_units);

  prepare_special_units_directions (self, special_units);

  units_file_directions (output_units);

 /* elements_in_file_count is only set in HTML, not in
    Texinfo::Convert::Converter */
  if (self->output_unit_files.number)
    {
      /* set elements_in_file_count and prepare page_name_number
         for sorting */
      self->page_name_number.number = self->output_unit_files.number;
      self->page_name_number.list = (PAGE_NAME_NUMBER *)
        malloc (self->page_name_number.number * sizeof (PAGE_NAME_NUMBER));

      for (i = 0; i < self->output_unit_files.number; i++)
        {
          FILE_NAME_PATH_COUNTER *file_counter
            = &self->output_unit_files.list[i];
          PAGE_NAME_NUMBER *page_name_number = &self->page_name_number.list[i];

          /* counter is dynamic, decreased when the element is encountered
             elements_in_file_count is not modified afterwards */
          file_counter->elements_in_file_count = file_counter->counter;

          page_name_number->number = i+1;
          page_name_number->page_name = file_counter->filename;
        }

      qsort (self->page_name_number.list,
             self->page_name_number.number,
             sizeof (PAGE_NAME_NUMBER), compare_page_name_number);
    }

  return files_source_info;
}

void
convert_text (CONVERTER *self, const enum element_type type,
              const ELEMENT *element, const char *content,
              TEXT *result)
{
  char *content_used;
  int contents_used_to_be_freed = 0;

  if (html_in_verbatim (self))
    {
      html_default_format_protect_text (content, result);
      return;
    }
  else if (html_in_raw (self))
    {
      text_append (result, content);
      return;
    }

  if (html_in_upper_case (self))
    {
      content_used = to_upper_or_lower_multibyte (content, 1);
      contents_used_to_be_freed = 1;
    }
  else
    /* cast needed to avoid a compiler warning */
    content_used = (char *) content;

  if (html_in_preformatted_context (self))
    {
      OTXI_ALL_CONVERT_TEXT ( , )
    }
  else if (html_in_non_breakable_space (self))
    {
      OTXI_ALL_CONVERT_TEXT (" \n", OTXI_NO_BREAK_CASES(p))
    }
  else if (html_in_space_protected (self))
    {
      OTXI_ALL_CONVERT_TEXT (" \n", OTXI_SPACE_PROTECTION_CASES(p))
    }
  else
    {
      OTXI_ALL_CONVERT_TEXT ( , )
    }

  if (contents_used_to_be_freed)
    free (content_used);
}

void
default_format_footnotes_segment (CONVERTER *self, TEXT *result)
{
  char *class_base;
  char *attribute_class;
  char *class;
  STRING_LIST *classes;
  ELEMENT *footnote_heading_tree;
  char *footnote_heading;
  int level;
  char *formatted_heading;
  char *foot_lines = call_formatting_function_format_footnotes_sequence (self);

  if (!foot_lines || !strlen (foot_lines))
    {
      free (foot_lines);
      return;
    }

  classes = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (classes, 0, sizeof (STRING_LIST));

  class_base = special_unit_info (self, SUI_type_class,
                                  "footnotes");
  xasprintf (&class, "%s-segment", class_base);

  add_string (class, classes);
  free (class);
  attribute_class = html_attribute_class (self, "div", classes);
  clear_strings_list (classes);

  text_append (result, attribute_class);
  free (attribute_class);

  text_append_n (result, ">\n", 2);

  if (self->conf->DEFAULT_RULE && strlen (self->conf->DEFAULT_RULE))
    {
      text_append (result, self->conf->DEFAULT_RULE);
      text_append_n (result, "\n", 1);
    }

  footnote_heading_tree = special_unit_info_tree (self,
                              SUIT_type_heading, "footnotes");
  if (footnote_heading_tree)
    {
      footnote_heading = html_convert_tree (self, footnote_heading_tree,
                                    "convert footnotes special heading");
    }
  else
    {
      footnote_heading = "";
    }

  level = self->conf->FOOTNOTE_END_HEADER_LEVEL;

  xasprintf (&class, "%s-heading", class_base);

  add_string (class, classes);
  free (class);

  formatted_heading
    = call_formatting_function_format_heading_text (self, 0, classes,
                                                    footnote_heading,
                                                    level, 0, 0, 0);
  destroy_strings_list (classes);
  text_append (result, formatted_heading);
  text_append_n (result, "\n", 1);

  free (formatted_heading);

  if (footnote_heading_tree)
    free (footnote_heading);

  text_append (result, foot_lines);
  free (foot_lines);
  text_append (result, "</div>\n");
}

void
format_footnotes_segment (CONVERTER *self, TEXT *result)
{
  if (self->formatting_references[FR_format_footnotes_segment].status
                                             == FRS_status_default_set)
    {
      default_format_footnotes_segment (self, result);
    }
  else
    {
      char *footnotes_segment
        = call_formatting_function_format_footnotes_segment (self);
      if (footnotes_segment)
        {
          text_append (result, footnotes_segment);
          free (footnotes_segment);
        }
    }
}

void
convert_table_term_type (CONVERTER *self, const enum element_type type,
                        const ELEMENT *element, const char *content,
                        TEXT *result)
{
  if (content)
    {
      text_append (result, "<dt>");
      text_append (result, content);
    }
}

void
convert_row_type (CONVERTER *self, const enum element_type type,
                  const ELEMENT *element, const char *content,
                  TEXT *result)
{
  if (html_in_string (self))
    {
      if (content)
        text_append (result, content);
    }

  if (!content || content[strspn (content, whitespace_chars)] == '\0')
    return;
  else
    {
      text_append (result, "<tr>");
      text_append (result, content);
      text_append (result, "</tr>");

      if (element->contents.number > 0
          && element->contents.list[0]->cmd != CM_headitem)
      /* if headitem, end of line added in _convert_multitable_head_type */
        text_append (result, "\n");
    }
}

void
convert_w_command (CONVERTER *self, const enum command_id cmd,
                    const ELEMENT *element,
                    const HTML_ARGS_FORMATTED *args_formatted,
                    const char *content, TEXT *result)
{
  if (args_formatted && args_formatted->number > 0)
    {
      if (args_formatted->args[0].formatted[AFT_type_normal])
        text_append (result,
                     args_formatted->args[0].formatted[AFT_type_normal]);
    }
  if (!html_in_string (self))
    {
      text_append (result, "<!-- /@w -->");
    }
}

/* associate command to the C function implementing the conversion */
static COMMAND_INTERNAL_CONVERSION commands_internal_conversion_table[] = {
  {CM_w, &convert_w_command},
  {0, 0},
};

void
open_quotation_command (CONVERTER *self, const enum command_id cmd,
                        const ELEMENT *element, TEXT *result)
{
  char *cmdname = element_command_name (element);
  char *formatted_quotation_arg_to_prepend = 0;
  if (element->args.number > 0 && element->args.list[0]->contents.number > 0)
    {
      ELEMENT *tree;
      char *explanation;
      NAMED_STRING_ELEMENT_LIST *substrings
                                       = new_named_string_element_list ();
      ELEMENT *quotation_arg_copy = copy_tree (element->args.list[0]);
      add_element_to_named_string_element_list (substrings,
                          "quotation_arg", quotation_arg_copy);
      tree = html_gdt_tree ("@b{{quotation_arg}:} ", self->document,
                           self, substrings, 0, 0);
      destroy_named_string_element_list (substrings);
      xasprintf (&explanation, "open %s prepended arg", cmdname);
      add_to_element_list (&self->tree_to_build, tree);
      formatted_quotation_arg_to_prepend
        = html_convert_tree (self, tree, explanation);
      remove_element_from_list (&self->tree_to_build, tree);
      destroy_element_and_children (tree);
      free (explanation);
    }
  html_register_pending_formatted_inline_content (self, cmdname,
                                  formatted_quotation_arg_to_prepend);
  free (formatted_quotation_arg_to_prepend);
}

void
open_inline_container_type (CONVERTER *self, const enum element_type type,
                            const ELEMENT *element, TEXT *result)
{
  char *pending_formatted = html_get_pending_formatted_inline_content (self);
  if (pending_formatted)
    {
      html_associate_pending_formatted_inline_content (self, element, 0,
                                                       pending_formatted);
      free (pending_formatted);
    }
}

/* associate command to the C function implementing the opening */
static COMMAND_INTERNAL_OPEN commands_internal_open_table[] = {
  {CM_quotation, &open_quotation_command},
  {CM_smallquotation, &open_quotation_command},
  {0, 0},
};

/* associate type to the C function implementing the conversion */
static TYPE_INTERNAL_CONVERSION types_internal_conversion_table[] = {
  {ET_table_term, &convert_table_term_type},
  {ET_text, &convert_text},
  {ET_row, &convert_row_type},
  {0, 0},
};

/* associate type to the C function implementing the opening */
static TYPE_INTERNAL_OPEN types_internal_open_table[] = {
  /*
  {ET_paragraph, &open_inline_container_type},
  {ET_preformatted, &open_inline_container_type},
   */
  {0, 0},
};

void
convert_unit_type (CONVERTER *self, const enum output_unit_type unit_type,
                   const OUTPUT_UNIT *output_unit, const char *content,
                   TEXT *result)
{
  STRING_LIST *closed_strings;
  ELEMENT *unit_command;
  char *formatted_footer;

  if (html_in_string (self))
    return;

  if (!output_unit->tree_unit_directions[D_prev])
    {
      text_append (result, self->title_titlepage);
      if (!output_unit->tree_unit_directions[D_next])
        {
          /* only one unit, use simplified formatting */
          if (content)
            text_append (result, content);
   /*  if there is one unit it also means that there is no formatting
       of footnotes in a separate unit.  And if footnotestyle is end
       the footnotes won't be done in format_element_footer either. */
          format_footnotes_segment (self, result);
          if (self->conf->DEFAULT_RULE
              && self->conf->PROGRAM_NAME_IN_FOOTER > 0)
            {
              text_append (result, self->conf->DEFAULT_RULE);
              text_append_n (result, "\n", 1);
            }

    /* do it here, as it is won't be done at end of page in
       format_element_footer */
          closed_strings = html_close_registered_sections_level (self, 0);

          if (closed_strings->number)
            {
              int i;
              for (i = 0; i < closed_strings->number; i++)
                {
                  text_append (result, closed_strings->list[i]);
                  free (closed_strings->list[i]);
                }
              free (closed_strings->list);
            }
          free (closed_strings);
          return;
        }
    }

  if (content)
    text_append (result, content);

  unit_command = output_unit->unit_command;

  formatted_footer
    = call_formatting_function_format_element_footer (self, unit_type,
                                         output_unit, content, unit_command);
  text_append (result, formatted_footer);

  free (formatted_footer);
}

void
convert_special_unit_type (CONVERTER *self,
                        const enum output_unit_type unit_type,
                        const OUTPUT_UNIT *output_unit, const char *content,
                        TEXT *result)
{
  const char *heading;
  size_t number;
  TEXT special_unit_body;
  ELEMENT *unit_command;
  char *id;
  char *class_base;
  char *attribute_class;
  char *class;
  STRING_LIST *classes;

  char *special_unit_variety;
  STRING_LIST *closed_strings;
  size_t count_in_file = 0;
  int level;
  char *formatted_footer;
  char *formatted_heading;

  if (html_in_string (self))
    return;

  special_unit_variety = output_unit->special_unit_variety;
  number = find_string (&self->special_unit_varieties,
                        special_unit_variety);

  closed_strings = html_close_registered_sections_level (self, 0);

  if (closed_strings->number)
    {
      int i;
      for (i = 0; i < closed_strings->number; i++)
        {
          text_append (result, closed_strings->list[i]);
          free (closed_strings->list[i]);
        }
      free (closed_strings->list);
    }
  free (closed_strings);

  text_init (&special_unit_body);
  text_append (&special_unit_body, "");

  (*self->special_unit_body_formatting[number -1].special_unit_body_formatting)
         (self, number, special_unit_variety, output_unit, &special_unit_body);

  /* This may happen with footnotes in regions that are not expanded,
     like @copying or @titlepage */
  if (special_unit_body.end == 0)
    {
      free (special_unit_body.text);
      return;
    }

  classes = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (classes, 0, sizeof (STRING_LIST));

  unit_command = output_unit->unit_command;
  id = html_command_id (self, unit_command);
  class_base = special_unit_info (self, SUI_type_class,
                                  special_unit_variety);
  xasprintf (&class, "element-%s", class_base);

  add_string (class, classes);
  free (class);
  attribute_class = html_attribute_class (self, "div", classes);
  clear_strings_list (classes);

  text_append (result, attribute_class);
  free (attribute_class);

  if (id && strlen (id))
    text_printf (result, " id=\"%s\"", id);
  text_append (result, ">\n");

  if (output_unit->unit_filename)
    {
      size_t file_index = self->special_unit_file_indices[output_unit->index];
      count_in_file
        = count_elements_in_filename (self, CEFT_current, file_index +1);
    }

  if (self->conf->HEADERS > 0
      /* first in page */
      || count_in_file == 1)
    {
      char *navigation_header =
        call_formatting_function_format_navigation_header (self,
                             self->conf->MISC_BUTTONS, 0, unit_command);
      text_append (result, navigation_header);
      free (navigation_header);
    }

  heading = html_command_text (self, unit_command, 0);
  level = self->conf->CHAPTER_HEADER_LEVEL;
  if (!strcmp (special_unit_variety, "footnotes"))
    level = self->conf->FOOTNOTE_SEPARATE_HEADER_LEVEL;

  xasprintf (&class, "%s-heading", class_base);

  add_string (class, classes);
  free (class);

  formatted_heading
    = call_formatting_function_format_heading_text (self, 0, classes, heading,
                                                    level, 0, 0, 0);
  destroy_strings_list (classes);
  text_append (result, formatted_heading);
  text_append_n (result, "\n", 1);

  free (formatted_heading);

  text_append (result, special_unit_body.text);
  free (special_unit_body.text);
  text_append (result, "</div>");

  formatted_footer
    = call_formatting_function_format_element_footer (self, unit_type,
                                         output_unit, content, unit_command);
  text_append (result, formatted_footer);

  free (formatted_footer);
}

static OUTPUT_UNIT_INTERNAL_CONVERSION output_units_internal_conversion_table[] = {
  {OU_special_unit, &convert_special_unit_type},
  {OU_unit, &convert_unit_type},
  {0, 0},
};

static void
command_conversion_external (CONVERTER *self, const enum command_id cmd,
                    const ELEMENT *element,
                    const HTML_ARGS_FORMATTED *args_formatted,
                    const char *content, TEXT *result)
{
  /* XS specific debug message */
  /*
  if (self->conf->DEBUG > 0)
    fprintf (stderr, "DEBUG: command conversion %s '%s'\n",
             builtin_command_data[cmd].cmdname, content);
   */

  FORMATTING_REFERENCE *formatting_reference
    = self->current_commands_conversion_function[cmd].formatting_reference;

  if (formatting_reference->status > 0)
    call_commands_conversion (self, cmd, formatting_reference,
                              element, args_formatted, content,
                              result);
}

static void
command_open_external (CONVERTER *self, const enum command_id cmd,
                       const ELEMENT *element, TEXT *result)
{
  if (self->commands_open[cmd].status > 0)
    call_commands_open (self, cmd, element, result);
}

static void
type_conversion_external (CONVERTER *self, const enum element_type type,
                          const ELEMENT *element, const char *content,
                          TEXT *result)
{
  FORMATTING_REFERENCE *formatting_reference
    = self->current_types_conversion_function[type].formatting_reference;
  if (formatting_reference->status > 0)
    call_types_conversion (self, type, formatting_reference,
                           element, content, result);
}

static void
type_open_external (CONVERTER *self, enum element_type type,
                    const ELEMENT *element, TEXT *result)
{
  if (self->types_open[type].status > 0)
    call_types_open (self, type, element, result);
}

static void
output_unit_conversion_external (CONVERTER *self,
                        const enum output_unit_type unit_type,
                        const OUTPUT_UNIT *output_unit, const char *content,
                        TEXT *result)
{
  if (self->output_units_conversion[unit_type].status > 0)
    call_output_units_conversion (self, unit_type, output_unit, content,
                                  result);
}

static void
special_unit_body_formatting_external (CONVERTER *self,
                               const size_t special_unit_number,
                               const char *special_unit_variety,
                               const OUTPUT_UNIT *output_unit,
                               TEXT *result)
{
  if (self->special_unit_body[special_unit_number -1].status > 0)
    call_special_unit_body_formatting (self, special_unit_number,
                                       special_unit_variety,
                                       output_unit, result);
}

void
reset_translated_special_unit_info_tree (CONVERTER *self)
{
  STRING_LIST *special_unit_varieties = &self->special_unit_varieties;
  int j;
  for (j = 0; translated_special_unit_info[j].tree_type != SUIT_type_none; j++)
    {
      int i;
      enum special_unit_info_tree tree_type
        = translated_special_unit_info[j].tree_type;
      for (i = 0; i < special_unit_varieties->number; i++)
        {
          if (self->special_unit_info_tree[tree_type][i])
            destroy_element_and_children (
              self->special_unit_info_tree[tree_type][i]);
          self->special_unit_info_tree[tree_type][i] = 0;
        }
    }
}

/* set information that is independent of customization, only called once */
void
html_format_init (void)
{
  int i;
  int nr_default_commands
    = sizeof (default_commands_args) / sizeof (default_commands_args[0]);
  int max_args = MAX_COMMAND_ARGS_NR;

  for (i = 0; i < nr_default_commands; i++)
    {
      /* we file the status for specified commands, to distinguish them
         but it is not actually used in the code, as we default to
         normal for unspecified commands too */
      enum command_id cmd = default_commands_args[i].cmd;
      command_args_flags[cmd].status = 1;
      memcpy (&command_args_flags[cmd].flags, &default_commands_args[i].flags,
              max_args * sizeof (unsigned long));
    }

  for (i = 0; small_block_associated_command[i][0]; i++)
    {
      enum command_id small_cmd = small_block_associated_command[i][0];
      enum command_id cmd = small_block_associated_command[i][1];
      if (builtin_command_data[cmd].flags & CF_preformatted)
        register_pre_class_command (small_cmd, cmd);
    }

  for (i = 1; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (builtin_command_data[i].flags & CF_block
          || builtin_command_data[i].flags & CF_root)
        register_format_context_command (i);

      if (builtin_command_data[i].flags & CF_preformatted
          || builtin_command_data[i].flags & CF_root)
        html_commands_data[i].flags |= HF_composition_context;

      if (builtin_command_data[i].flags & CF_block)
        {
          if (builtin_command_data[i].data == BLOCK_menu)
            html_commands_data[i].flags |= HF_composition_context;
          else if (builtin_command_data[i].data == BLOCK_format_raw)
            html_commands_data[i].flags |= HF_format_raw;
        }

      if (builtin_command_data[i].flags & CF_preformatted)
        {
          if (!(html_commands_data[i].flags & HF_pre_class))
            register_pre_class_command (i, 0);
        }
    }
  register_pre_class_command (CM_verbatim, 0);
  register_pre_class_command (CM_menu, 0);
  for (i = 0; additional_format_context_cmd[i]; i++)
    register_format_context_command (additional_format_context_cmd[i]);

  for (i = 0; HTML_align_cmd[i]; i++)
    {
      enum command_id cmd = HTML_align_cmd[i];
      html_commands_data[cmd].flags |= HF_HTML_align | HF_composition_context;
    }

  html_commands_data[CM_float].flags |= HF_composition_context;
}

void
register_type_conversion_function (TYPE_CONVERSION_FUNCTION *result,
                                   enum element_type type,
                                   FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->type_conversion = &type_conversion_external;
          result->formatting_reference = formatting_reference;
        }
    }
}

void
register_type_open_function (TYPE_OPEN_FUNCTION *result,
                             enum element_type type,
                             FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->type_open = &type_open_external;
          result->formatting_reference = formatting_reference;
        }
    }
}

void
register_command_conversion_function (COMMAND_CONVERSION_FUNCTION *result,
                         enum command_id cmd,
                         FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->command_conversion = &command_conversion_external;
          result->formatting_reference = formatting_reference;
        }
    }
}

void
register_command_open_function (COMMAND_OPEN_FUNCTION *result,
                                enum command_id cmd,
                                FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->command_open = &command_open_external;
          result->formatting_reference = formatting_reference;
        }
    }
}

void
register_output_unit_conversion_function
                                  (OUTPUT_UNIT_CONVERSION_FUNCTION *result,
                                   enum output_unit_type type,
                                   FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->output_unit_conversion = &output_unit_conversion_external;
          result->formatting_reference = formatting_reference;
        }
    }
}

void
register_special_unit_body_formatting_function
                                  (SPECIAL_UNIT_BODY_FORMATTING *result,
                                   const char *special_unit_variety,
                                   FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->special_unit_body_formatting
               = &special_unit_body_formatting_external;
          result->formatting_reference = formatting_reference;
        }
    }
}

/* most of the initialization is done by html_converter_initialize_sv
   in get_perl_info, the initialization that do not require information
   directly from perl data is done here.  This is called after information
   from perl has been gathered  */
void
html_converter_initialize (CONVERTER *self)
{
  int i;
  int nr_special_units;
  char *output_encoding;
  char *line_break_element;
  /* initialization needing some information from perl */

  output_encoding = self->conf->OUTPUT_ENCODING_NAME;

  for (i = 0; i < SC_non_breaking_space+1; i++)
    {
      char *unicode_point = special_characters_formatting[i][2];
      char *entity = special_characters_formatting[i][0];
      char *encoded_string = special_characters_formatting[i][1];
      char *numeric_entity = special_characters_formatting[i][3];
      char *special_character_string;

      if (self->conf->OUTPUT_CHARACTERS > 0
          && unicode_point_decoded_in_encoding (output_encoding,
                                                unicode_point))
        special_character_string = encoded_string;
      else if (self->conf->USE_NUMERIC_ENTITY > 0)
        special_character_string = numeric_entity;
      else
        special_character_string = entity;

      self->special_character[i].string = special_character_string;
      self->special_character[i].len = strlen (special_character_string);
    }

  if (self->conf->USE_XML_SYNTAX > 0)
    {
      /* here in perl something for rules but we already get that from perl */
      line_break_element = "<br/>";
    }
  else
    line_break_element = "<br>";

  self->line_break_element.string = line_break_element;
  self->line_break_element.len = strlen(line_break_element);

  nr_special_units = self->special_unit_varieties.number;

  /* allocate space for translated tree types, they will be created
     on-demand during the conversion */
  for (i = 0; i < SUIT_type_heading+1; i++)
    {
      self->special_unit_info_tree[i] = (ELEMENT **)
        malloc ((nr_special_units +1) * sizeof (ELEMENT *));
      memset (self->special_unit_info_tree[i], 0,
               (nr_special_units +1) * sizeof (ELEMENT *));
    }

  self->global_units_directions
    = (const OUTPUT_UNIT **) malloc ((D_Last + nr_special_units+1)
                               * sizeof (OUTPUT_UNIT));

  /* note that we allocate the same size as no_arg_formatted_cmd
     even though in general there are much less translated commands,
     for simplicity */
  if (self->no_arg_formatted_cmd.number)
    {
      self->no_arg_formatted_cmd_translated.list = (enum command_id *)
       malloc (self->no_arg_formatted_cmd.number * sizeof (enum command_id));
      memset (self->no_arg_formatted_cmd_translated.list, 0,
              self->no_arg_formatted_cmd.number * sizeof (enum command_id));
    }

  for (i = 0; command_special_unit_variety[i].cmd; i++)
    {
      char *special_unit_variety = command_special_unit_variety[i].variety;
      /* number is index +1 */
      size_t number = find_string (&self->special_unit_varieties,
                                   special_unit_variety);
      enum command_id cmd = command_special_unit_variety[i].cmd;
      html_commands_data[cmd].flags |= HF_special_variety;
      self->command_special_variety_name_index[i].cmd = cmd;
      self->command_special_variety_name_index[i].index = number - 1;
    }

  for (i = 0; i < TXI_TREE_TYPES_NUMBER; i++)
    {
      register_type_conversion_function (&self->type_conversion_function[i],
                                        i, &self->types_conversion[i]);
      register_type_open_function (&self->type_open_function[i],
                                   i, &self->types_open[i]);
      register_type_conversion_function (
             &self->css_string_type_conversion_function[i], i,
             &self->css_string_types_conversion[i]);
    }

  for (i = 0; types_internal_conversion_table[i].type_conversion; i++)
    {
      enum element_type type = types_internal_conversion_table[i].type;
      TYPE_CONVERSION_FUNCTION *type_conversion
         = &self->type_conversion_function[type];
      if (type_conversion->status == FRS_status_default_set)
        {
          type_conversion->formatting_reference = 0;
          type_conversion->status = FRS_status_internal;
          type_conversion->type_conversion
              = types_internal_conversion_table[i].type_conversion;
        }
    }

  for (i = 0; types_internal_open_table[i].type_open; i++)
    {
      enum element_type type = types_internal_open_table[i].type;
      TYPE_OPEN_FUNCTION *type_open = &self->type_open_function[type];
      if (type_open->status == FRS_status_default_set)
        {
          type_open->formatting_reference = 0;
          type_open->status = FRS_status_internal;
          type_open->type_open
              = types_internal_open_table[i].type_open;
        }
    }

  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      register_command_conversion_function (
           &self->command_conversion_function[i],
           i, &self->commands_conversion[i]);
      register_command_open_function (
           &self->command_open_function[i],
           i, &self->commands_open[i]);
      register_command_conversion_function (
            &self->css_string_command_conversion_function[i], i,
             &self->css_string_commands_conversion[i]);
    }

  for (i = 0; commands_internal_conversion_table[i].command_conversion; i++)
    {
      enum command_id cmd = commands_internal_conversion_table[i].cmd;
      COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
      if (command_conversion->status == FRS_status_default_set)
        {
          command_conversion->formatting_reference = 0;
          command_conversion->status = FRS_status_internal;
          command_conversion->command_conversion
              = commands_internal_conversion_table[i].command_conversion;
        }
    }

  for (i = 0; commands_internal_open_table[i].command_open; i++)
    {
      enum command_id cmd = commands_internal_open_table[i].cmd;
      COMMAND_OPEN_FUNCTION *command_open = &self->command_open_function[cmd];
      if (command_open->status == FRS_status_default_set)
        {
          command_open->formatting_reference = 0;
          command_open->status = FRS_status_internal;
          command_open->command_open
              = commands_internal_open_table[i].command_open;
        }
    }

  for (i = 0; i < OU_special_unit+1; i++)
    {
      register_output_unit_conversion_function
                                  (&self->output_unit_conversion_function[i],
                                        i, &self->output_units_conversion[i]);
    }

  for (i = 0;
     output_units_internal_conversion_table[i].output_unit_conversion; i++)
    {
      enum output_unit_type type
           = output_units_internal_conversion_table[i].type;
      OUTPUT_UNIT_CONVERSION_FUNCTION *output_unit_conversion
         = &self->output_unit_conversion_function[type];
      if (output_unit_conversion->status == FRS_status_default_set)
        {
          output_unit_conversion->formatting_reference = 0;
          output_unit_conversion->status = FRS_status_internal;
          output_unit_conversion->output_unit_conversion
           = output_units_internal_conversion_table[i].output_unit_conversion;
        }
    }

  self->special_unit_body_formatting = (SPECIAL_UNIT_BODY_FORMATTING *)
   malloc (nr_special_units * sizeof (SPECIAL_UNIT_BODY_FORMATTING));

  for (i = 0; i < nr_special_units; i++)
    {
      register_special_unit_body_formatting_function
                                  (&self->special_unit_body_formatting[i],
          self->special_unit_varieties.list[i], &self->special_unit_body[i]);
    }
}

/* called in the end of html_converter_prepare_output_sv */
void
html_converter_prepare_output (CONVERTER* self)
{
  qsort (self->css_element_class_styles.list,
         self->css_element_class_styles.number,
         sizeof (CSS_SELECTOR_STYLE), compare_selector_style);
}

void
reset_html_targets (CONVERTER *self, HTML_TARGET_LIST *targets)
{
  size_t i;

  if (targets->number)
    {
      for (i = 0; i < targets->number; i++)
        {
          int j;
          HTML_TARGET *html_target = &targets->list[i];
          /* setup before conversion */
          free (html_target->target);
          free (html_target->special_unit_filename);
          free (html_target->node_filename);
          free (html_target->section_filename);
          free (html_target->contents_target);
          free (html_target->shortcontents_target);

          for (j = 0; j < HCTT_string_nonumber+1; j++)
            free (html_target->command_text[j]);

          free_tree_added_elements (self, &html_target->tree);
          free_tree_added_elements (self, &html_target->tree_nonumber);
        }
      memset (targets->list, 0,
              sizeof (HTML_TARGET) * targets->number);
      targets->number = 0;
    }
}

void
html_initialize_output_state (CONVERTER *self, char *context)
{
  /* directions */
  memset (self->global_units_directions, 0,
    (D_Last + self->special_unit_varieties.number+1) * sizeof (OUTPUT_UNIT));


  self->current_formatting_references = &self->formatting_references[0];
  self->current_commands_conversion_function
     = &self->command_conversion_function[0];
  self->current_types_conversion_function = &self->type_conversion_function[0];

  /* FIXME now done through HTML _initialize_output_state, would need
     to readd when the HTML function is overriden
  html_new_document_context (self, context, 0, 0);
   */
}

void
html_finalize_output_state (CONVERTER *self)
{
  int i;
  reset_translated_special_unit_info_tree (self);
  /* targets */
  reset_html_targets (self, &self->html_targets);
  clear_strings_list (&self->seen_ids);
  for (i = 0; i < ST_footnote_location+1; i++)
    {
      reset_html_targets (self, &self->html_special_targets[i]);
    }

  free (self->tree_to_build.list);

  free (self->special_units_direction_name);
  self->special_units_direction_name = 0;
  free (self->output_unit_file_indices);
  self->output_unit_file_indices = 0;
  free (self->special_unit_file_indices);
  self->special_unit_file_indices = 0;
  free (self->title_titlepage);
  self->title_titlepage = 0;

  if (self->index_entries)
    {
      destroy_merged_indices (self->index_entries);
      self->index_entries = 0;
    }
  if (self->index_entries_by_letter)
    {
      destroy_indices_sorted_by_letter (self->index_entries_by_letter);
      self->index_entries_by_letter = 0;
    }

  clear_output_files_information (&self->output_files_information);
  clear_output_unit_files (&self->output_unit_files);

  free (self->page_name_number.list);
  memset (&self->page_name_number, 0, sizeof (PAGE_NAME_NUMBER_LIST));

  for (i = 0; i < self->page_css.number; i++)
    {
      int j;
      CSS_LIST *page_css_list = &self->page_css.list[i];

      for (j = 0; j < page_css_list->number; j++)
        free (page_css_list->list[j]);
      free (page_css_list->list);
    }
  free (self->page_css.list);

  /* should not be possible with default code, as
     close_registered_sections_level(0)
     is called at the end of processing or at the end of each file.
     However, it could happen if the conversion functions are user
     defined.
   */
  if (self->pending_closes.top > 0)
    {
      message_list_document_warn (&self->error_messages, self->conf,
         "%zu registered opened sections not closed",
          self->pending_closes.top);
      clear_string_stack (&self->pending_closes);
    }

  if (self->pending_inline_content.top > 0)
    {
      char *inline_content = html_get_pending_formatted_inline_content (self);
      message_list_document_warn (&self->error_messages, self->conf,
         "%zu registered inline contents: %s",
           self->pending_inline_content.top, inline_content);
      free (inline_content);
    }

  for (i = 0; i < self->associated_inline_content.number; i++)
    {
      HTML_ASSOCIATED_INLINE_CONTENT *associated_content
        = &self->associated_inline_content.list[i];
      if (associated_content->inline_content)
        {
          char *inline_content = associated_content->inline_content;
          message_list_document_warn (&self->error_messages, self->conf,
             "associated inline content not used: %s\n",
              inline_content);
          free (associated_content->inline_content);
        }
    }
  self->associated_inline_content.number = 0;

  self->shared_conversion_state.integers.info_number = 0;

  html_pop_document_context (self);

  /* could change to 0 in releases? */
  if (1)
    {
      if (self->tree_to_build.number > 0)
        fprintf (stderr, "BUG: tree_to_build: %zu\n",
                         self->tree_to_build.number);
      if (self->html_document_context.top > 0)
        fprintf (stderr, "BUG: document context top > 0: %zu\n",
                         self->html_document_context.top);
      if (self->document_global_context)
        fprintf (stderr, "BUG: document_global_context: %d\n",
                         self->document_global_context);
      if (self->ignore_notice)
        fprintf (stderr, "BUG: ignore_notice: %d\n",
                         self->ignore_notice);
    }
}

void
html_check_transfer_state_finalization (CONVERTER *self)
{
  /* could change to 0 in releases? */
  if (1)
    {
      /* check that all the state change have been transmitted */
      /*
      if (self->tree_to_build.number > 0)
        fprintf (stderr, "BUG: tree_to_build: %zu\n",
                         self->tree_to_build.number);
       */
      if (self->no_arg_formatted_cmd_translated.number)
        fprintf (stderr, "BUG: no_arg_formatted_cmd_translated: %zu\n",
                         self->no_arg_formatted_cmd_translated.number);
      if (self->reset_target_commands.number)
        fprintf (stderr, "BUG: reset_target_commands: %zu\n",
                         self->reset_target_commands.number);
      if (self->file_changed_counter.number)
        fprintf (stderr, "BUG: file_changed_counter: %zu\n",
                         self->file_changed_counter.number);
    }
}

void
html_free_converter (CONVERTER *self)
{
  int i;

  if (self->error_messages.number)
    {
      fprintf (stderr, "BUG: %zu ignored messages in HTML conversion\n",
                       self->error_messages.number);
    }

  free_generic_converter (self);

  free (self->special_unit_body);
  free (self->special_unit_body_formatting);

  free (self->global_units_directions);
  free (self->html_targets.list);
  free_strings_list (&self->seen_ids);
  for (i = 0; i < ST_footnote_location+1; i++)
    {
      free (self->html_special_targets[i].list);
    }
  for (i = 0; i < SUIT_type_heading+1; i++)
    {/* we assume that reset_translated_special_unit_info_tree
        has already been called */
      free (self->special_unit_info_tree[i]);
    }

  for (i = 1; i < TXI_TREE_TYPES_NUMBER; i++)
    {
      free (self->pre_class_types[i]);
    }

  for (i = 0; i < self->css_element_class_styles.number; i++)
    {
      CSS_SELECTOR_STYLE *selector_style
        = &self->css_element_class_styles.list[i];
      free (selector_style->selector);
      free (selector_style->style);
    }
  free (self->css_element_class_styles.list);

  for (i = 0; i < self->no_arg_formatted_cmd.number; i++)
    {
      enum command_id cmd = self->no_arg_formatted_cmd.list[i];
      enum conversion_context cctx;
      for (cctx = 0; cctx < HCC_type_css_string+1; cctx++)
        {
          HTML_COMMAND_CONVERSION *format_spec
                = &self->html_command_conversion[cmd][cctx];
          if (cctx == HCC_type_normal && format_spec->tree)
            destroy_element_and_children (format_spec->tree);
          free (format_spec->element);
          free (format_spec->text);
          free (format_spec->translated_converted);
          free (format_spec->translated_to_convert);
        }
    }

  for (i = 0; i < SUI_type_heading+1; i++)
    {
      int k;
      for (k = 0; k < self->special_unit_varieties.number; k++)
        {
          free (self->special_unit_info[i][k]);
        }
      free (self->special_unit_info[i]);
    }

  free (self->no_arg_formatted_cmd.list);

  free (self->pending_closes.stack);
  free (self->pending_inline_content.stack);

  free (self->associated_inline_content.list);

  destroy_associated_info (&self->shared_conversion_state.integers);

  free (self->no_arg_formatted_cmd_translated.list);
  free (self->reset_target_commands.list);
  free (self->file_changed_counter.list);

  free (self->referred_command_stack.list);

  free (self->html_document_context.stack);

  free_strings_list (&self->special_unit_varieties);
}


char *
html_convert_css_string (CONVERTER *self, const ELEMENT *element, char *explanation)
{
  char *result;
  HTML_DOCUMENT_CONTEXT *top_document_ctx;

  FORMATTING_REFERENCE *saved_formatting_references
     = self->current_formatting_references;
  COMMAND_CONVERSION_FUNCTION *saved_commands_conversion_function
     = self->current_commands_conversion_function;
  TYPE_CONVERSION_FUNCTION *saved_types_conversion_function
     = self->current_types_conversion_function;

  self->current_formatting_references
    = &self->css_string_formatting_references[0];
  self->current_commands_conversion_function
    = &self->css_string_command_conversion_function[0];
  self->current_types_conversion_function
    = &self->css_string_type_conversion_function[0];

  html_new_document_context (self, "css_string", 0, 0);
  top_document_ctx = html_top_document_context (self);
  top_document_ctx->string_ctx++;

  result = html_convert_tree (self, element, explanation);

  html_pop_document_context (self);

  self->current_formatting_references = saved_formatting_references;
  self->current_commands_conversion_function
    = saved_commands_conversion_function;
  self->current_types_conversion_function = saved_types_conversion_function;

  return result;
}

static void
reset_unset_no_arg_commands_formatting_context (CONVERTER *self,
               enum command_id cmd, enum conversion_context reset_context,
               enum conversion_context ref_context, int translate)
{
  HTML_COMMAND_CONVERSION *no_arg_command_context;
  HTML_COMMAND_CONVERSION *conversion_contexts
    = self->html_command_conversion[cmd];
  no_arg_command_context = &conversion_contexts[reset_context];
  if (ref_context >= 0)
    {
      if (no_arg_command_context->unset)
        {
          HTML_COMMAND_CONVERSION *no_arg_ref
            = &conversion_contexts[ref_context];

          if (no_arg_ref->text)
            {
              free (no_arg_command_context->text);
              no_arg_command_context->text = strdup (no_arg_ref->text);
            }
          if (no_arg_ref->tree)
            no_arg_command_context->tree = no_arg_ref->tree;
          if (no_arg_ref->translated_converted)
            {
              free (no_arg_command_context->translated_converted);
              no_arg_command_context->translated_converted
                = strdup (no_arg_ref->translated_converted);
            }
          if (no_arg_ref->translated_to_convert)
            {
              free (no_arg_command_context->translated_to_convert);
              no_arg_command_context->translated_to_convert
                = strdup (no_arg_ref->translated_to_convert);
            }
        }
    }

  if (translate
      && no_arg_command_context->tree
      && !no_arg_command_context->translated_converted)
    {
      char *translation_result = 0;
      char *explanation;
      char *context;
      ELEMENT *tree_built = 0;
      ELEMENT *translated_tree = no_arg_command_context->tree;
      if (!translated_tree->hv)
        {
          add_element_if_not_in_list (&self->tree_to_build, translated_tree);
          tree_built = translated_tree;
        }
      xasprintf (&explanation, "Translated NO ARG @%s ctx %s",
                 builtin_command_data[cmd].cmdname,
                 html_conversion_context_type_names[reset_context]);
      xasprintf (&context, "Tr %s ctx %s",
                 builtin_command_data[cmd].cmdname,
                 html_conversion_context_type_names[reset_context]);
      if (reset_context == HCC_type_normal)
        {
          translation_result = html_convert_tree (self, translated_tree,
                                                  explanation);
        }
      else if (reset_context == HCC_type_preformatted)
        {
          enum command_id preformated_cmd = CM_example;
          HTML_DOCUMENT_CONTEXT *top_document_ctx;
          html_new_document_context (self, context, 0, 0);

          top_document_ctx = html_top_document_context (self);

          /* there does not seems to be anything simpler... */
          push_command_or_type (&top_document_ctx->composition_context,
                                preformated_cmd, 0);
      /* should not be needed for at commands no brace translation strings */
          push_string_stack_string (&top_document_ctx->preformatted_classes,
                              html_commands_data[preformated_cmd].pre_class);
          push_integer_stack_integer (&top_document_ctx->preformatted_context,
                                      1);
          top_document_ctx->inside_preformatted++;

          translation_result = html_convert_tree (self, translated_tree,
                                                  explanation);
          top_document_ctx->inside_preformatted--;
          pop_integer_stack (&top_document_ctx->preformatted_context);
          pop_command_or_type (&top_document_ctx->composition_context);
          pop_string_stack (&top_document_ctx->preformatted_classes);
          html_pop_document_context (self);
        }
      else if (reset_context == HCC_type_string)
        {
          HTML_DOCUMENT_CONTEXT *top_document_ctx;

          html_new_document_context (self, context, 0, 0);

          top_document_ctx = html_top_document_context (self);
          top_document_ctx->string_ctx++;

          translation_result = html_convert_tree (self, translated_tree,
                                                  explanation);
          html_pop_document_context (self);
        }
      else if (reset_context == HCC_type_css_string)
        {
          translation_result = html_convert_css_string (self, translated_tree,
                                                        0);
        }
      free (explanation);
      free (context);
      if (no_arg_command_context->text)
        free (no_arg_command_context->text);
      no_arg_command_context->text = translation_result;
      if (tree_built)
        remove_element_from_list (&self->tree_to_build, tree_built);
    }
}

static void
complete_no_arg_commands_formatting (CONVERTER *self, enum command_id cmd,
                                     int translate)
{
  reset_unset_no_arg_commands_formatting_context (self, cmd, HCC_type_normal,
                                                  -1, translate);
  reset_unset_no_arg_commands_formatting_context (self, cmd,
                                                  HCC_type_preformatted,
                                                  HCC_type_normal, translate);
  reset_unset_no_arg_commands_formatting_context (self, cmd, HCC_type_string,
                                                  HCC_type_preformatted, translate);
  reset_unset_no_arg_commands_formatting_context (self, cmd, HCC_type_css_string,
                                                  HCC_type_string, translate);
}

void
html_translate_names (CONVERTER *self)
{
  int j;
  STRING_LIST *special_unit_varieties = &self->special_unit_varieties;

  if (self->conf->DEBUG > 0)
    {
      fprintf (stderr, "\nXS|TRANSLATE_NAMES encoding_name: %s"
               " documentlanguage: %s\n",
               self->conf->OUTPUT_ENCODING_NAME, self->conf->documentlanguage);
    }

  /* reset strings such that they are translated when needed. */
  #define tds_type(name) self->directions_strings[TDS_type_ ## name] = 0;
   TDS_TRANSLATED_TYPES_LIST
  #undef tds_type

  /* reset trees such that they are created based on Texinfo code string
     translation on-demand */
  reset_translated_special_unit_info_tree (self);

  /* delete the tree and formatted results for special elements
     such that they are redone with the new tree when needed. */
  /* if reset_target_commands was still set, we will fill with the
     same elements again, but it is not a big deal as we need to go
     through the loop anyway and the memory will be reused */
  self->reset_target_commands.number = 0;
  for (j = 0; j < special_unit_varieties->number; j++)
    {
      char *special_unit_variety = special_unit_varieties->list[j];
      int special_unit_direction_index
       = special_unit_variety_direction_index (self, special_unit_variety);
      if (special_unit_direction_index >= 0)
        {
          const OUTPUT_UNIT *special_unit
           = self->global_units_directions[special_unit_direction_index];
          if (special_unit)
             {
               ELEMENT *command = special_unit->unit_command;
               if (command)
                 {
                   HTML_TARGET *target
                     = find_element_target (&self->html_targets, command);
                   if (target)
                     {
       /* the tree is a reference to special_unit_info_tree, so it should
          not be freed, but need to be reset to trigger the creation of the
          special_unit_info_tree tree when needed */
                       clear_tree_added_elements (self, &target->tree);
                       free (target->command_text[HCTT_string]);
                       target->command_text[HCTT_string] = 0;
                       free (target->command_text[HCTT_text]);
                       target->command_text[HCTT_text] = 0;
                       /* gather elements to pass information to perl */
                       add_to_element_list (&self->reset_target_commands,
                                            command);
                     }
                 }
             }
        }
    }

  /* self->no_arg_formatted_cmd_translated is used here to hold the translated
     commands, and the information is kept as it is also used to pass
     translated commands results to perl */
  if (self->no_arg_formatted_cmd.number)
    {
      int translated_nr = 0;
      COMMAND_ID_LIST *translated_cmds = &self->no_arg_formatted_cmd_translated;
      /* in general this is done in build_html_translated_names.  Still need
         to do it here if build_html_translated_names is never called */
      if (translated_cmds->number)
        {
          memset (translated_cmds->list, 0, translated_cmds->number
                * sizeof (enum command_id));
        }

      for (j = 0; j < self->no_arg_formatted_cmd.number; j++)
        {
          enum command_id cmd = self->no_arg_formatted_cmd.list[j];
          enum conversion_context cctx;
          int add_cmd = 0;
          for (cctx = 0; cctx < HCC_type_css_string+1; cctx++)
            {
              HTML_COMMAND_CONVERSION *format_spec
                = &self->html_command_conversion[cmd][cctx];
              if (format_spec->translated_converted
                  && !format_spec->unset)
                {
                  add_cmd = 1;
                  free (format_spec->text);
                  format_spec->text
                   = html_gdt_string (format_spec->translated_converted, self,
                                 0, 0, 0);
                }
              else if (cctx == HCC_type_normal)
                {
                  ELEMENT *translated_tree = 0;
                  if (format_spec->translated_to_convert)
                    {/* FIXME use document associated to converter? */
                      translated_tree =
                        html_gdt_tree (format_spec->translated_to_convert,
                                   0, self, 0, 0, 0);
                    }
                  else
                    translated_tree = translated_command_tree (self, cmd);

                  if (translated_tree)
                    {
                      add_cmd = 1;
                      if (format_spec->tree)
                        destroy_element_and_children (format_spec->tree);

                      format_spec->tree = translated_tree;
                    }
                }
            }
          if (add_cmd)
            {
              translated_cmds->list[translated_nr] = cmd;
              translated_nr++;
            }
        }

      translated_cmds->number = translated_nr;
      for (j = 0; j < translated_nr; j++)
        {
          enum command_id cmd = translated_cmds->list[j];
          complete_no_arg_commands_formatting (self, cmd, 1);
        }
    }

  if (self->conf->DEBUG > 0)
    fprintf (stderr, "END TRANSLATE_NAMES\n\n");

  self->modified_state |= HMSF_translations;
}


void
destroy_args_formatted (HTML_ARGS_FORMATTED *args_formatted)
{
  if (args_formatted)
    {
      int i;
      for (i = 0; i < args_formatted->number; i++)
        {
          int j;
          HTML_ARG_FORMATTED *arg_formatted = &args_formatted->args[i];
          if (arg_formatted->tree)
            {
              for (j = 0; j < AFT_type_raw+1; j++)
                free (arg_formatted->formatted[j]);
            }
        }
      free (args_formatted->args);
    }
  free (args_formatted);
}


int
html_open_command_update_context (CONVERTER *self, enum command_id data_cmd)
{
  int convert_to_latex = 0;
  int preformatted = 0;

  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;

  if (builtin_command_data[data_cmd].flags & CF_brace
      && builtin_command_data[data_cmd].data == BRACE_context)
    {
      html_new_document_context (self,
                       builtin_command_data[data_cmd].cmdname, 0, 0);

    }
  top_document_ctx = html_top_document_context (self);

  if (html_commands_data[data_cmd].flags & HF_format_context)
    {
      char *context_str;
      xasprintf (&context_str, "@%s",
                 builtin_command_data[data_cmd].cmdname);
      push_html_formatting_context (
                 &top_document_ctx->formatting_context,
                 context_str);
      free (context_str);
    }

  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);

  if (builtin_command_data[data_cmd].flags & CF_block)
    {
      push_command (&top_document_ctx->block_commands, data_cmd);
    }

  if (html_commands_data[data_cmd].flags & HF_pre_class)
    {
      push_string_stack_string (&top_document_ctx->preformatted_classes,
                                html_commands_data[data_cmd].pre_class);
      if (builtin_command_data[data_cmd].flags & CF_preformatted)
        {
          preformatted = 1;
          top_document_ctx->inside_preformatted++;
        }
      else if (builtin_command_data[data_cmd].data == BLOCK_menu
               && top_document_ctx->inside_preformatted)
        preformatted = 1;
    }

  if (html_commands_data[data_cmd].flags & HF_composition_context)
    {
      push_command_or_type (&top_document_ctx->composition_context,
                            data_cmd, 0);
      push_integer_stack_integer (&top_document_ctx->preformatted_context,
                                preformatted);
    }

  if (html_commands_data[data_cmd].flags & HF_format_raw)
    {
      top_document_ctx->raw_ctx++;
    }
  else if (data_cmd == CM_verbatim)
    {
      top_document_ctx->verbatim_ctx++;
    }

  if (builtin_command_data[data_cmd].other_flags & CF_brace_code
      || builtin_command_data[data_cmd].flags & CF_preformatted_code)
    {
      push_integer_stack_integer (&top_document_ctx->monospace, 1);
    }
  else if (builtin_command_data[data_cmd].flags & CF_brace
           && builtin_command_data[data_cmd].data == BRACE_style_no_code)
    {
      push_integer_stack_integer (&top_document_ctx->monospace, 0);
    }
  else if (self->upper_case[data_cmd])
    {
      top_formating_ctx->upper_case_ctx++;
    }
  else if (builtin_command_data[data_cmd].flags & CF_math)
    {
      top_document_ctx->math_ctx++;
      if (self->conf->CONVERT_TO_LATEX_IN_MATH > 0)
        convert_to_latex = 1;
    }
  if (data_cmd == CM_verb)
    {
      top_formating_ctx->space_protected++;
    }
  else if (data_cmd == CM_w)
    {
      top_formating_ctx->no_break++;
    }
  return convert_to_latex;
}

void
html_convert_command_update_context (CONVERTER *self, enum command_id data_cmd)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx;
  HTML_FORMATTING_CONTEXT *top_formating_ctx;

  top_document_ctx = html_top_document_context (self);

  top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);

  if (html_commands_data[data_cmd].flags & HF_composition_context)
    {
      pop_command_or_type (&top_document_ctx->composition_context);
      pop_integer_stack (&top_document_ctx->preformatted_context);
    }

  if (html_commands_data[data_cmd].flags & HF_pre_class)
    {
      pop_string_stack (&top_document_ctx->preformatted_classes);
      if (builtin_command_data[data_cmd].flags & CF_preformatted)
        top_document_ctx->inside_preformatted--;
    }

  if (data_cmd == CM_verb)
    {
      top_formating_ctx->space_protected--;
    }
  else if (data_cmd == CM_w)
    {
      top_formating_ctx->no_break--;
    }

  if (builtin_command_data[data_cmd].flags & CF_preformatted_code
      || (builtin_command_data[data_cmd].flags & CF_brace
          && builtin_command_data[data_cmd].data == BRACE_style_no_code)
      || builtin_command_data[data_cmd].other_flags & CF_brace_code)
    {
      pop_integer_stack (&top_document_ctx->monospace);
    }
  else if (self->upper_case[data_cmd])
    {
      top_formating_ctx->upper_case_ctx--;
    }
  else if (builtin_command_data[data_cmd].flags & CF_math)
    {
      top_document_ctx->math_ctx--;
    }

  if (html_commands_data[data_cmd].flags & HF_format_raw)
    {
      top_document_ctx->raw_ctx--;
    }
  else if (data_cmd == CM_verbatim)
    {
      top_document_ctx->verbatim_ctx--;
    }

  if (builtin_command_data[data_cmd].flags & CF_block)
    {
      pop_command (&top_document_ctx->block_commands);
    }

  if (html_commands_data[data_cmd].flags & HF_format_context)
    {
      pop_html_formatting_context (
                 &top_document_ctx->formatting_context);
    }

  if (builtin_command_data[data_cmd].flags & CF_brace
      && builtin_command_data[data_cmd].data == BRACE_context)
    {
      html_pop_document_context (self);
    }
}

void
html_open_type_update_context (CONVERTER *self, enum element_type type)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx = html_top_document_context (self);
  HTML_FORMATTING_CONTEXT *top_formating_ctx
    = html_top_formatting_context (&top_document_ctx->formatting_context);

  if (type == ET_paragraph)
    {
      top_formating_ctx->paragraph_number++;
    }
  else if (type == ET_preformatted || type == ET_rawpreformatted)
    {
      top_formating_ctx->preformatted_number++;
    }
  else if (self->pre_class_types[type])
    {
      push_string_stack_string (&top_document_ctx->preformatted_classes,
                                self->pre_class_types[type]);
      push_command_or_type (&top_document_ctx->composition_context,
                            0, type);
      push_integer_stack_integer (&top_document_ctx->preformatted_context, 1);
    }

  if (self->code_types[type])
    {
      push_integer_stack_integer (&top_document_ctx->monospace, 1);
    }

  if (type == ET__string)
    {
      top_document_ctx->string_ctx++;
    }
}

void
html_convert_type_update_context (CONVERTER *self, enum element_type type)
{
  HTML_DOCUMENT_CONTEXT *top_document_ctx = html_top_document_context (self);

  if (self->code_types[type])
    {
      pop_integer_stack (&top_document_ctx->monospace);
    }

  if (type == ET__string)
    {
      top_document_ctx->string_ctx--;
    }

  if (self->pre_class_types[type])
    {
      pop_string_stack (&top_document_ctx->preformatted_classes);
      pop_command_or_type (&top_document_ctx->composition_context);
      pop_integer_stack (&top_document_ctx->preformatted_context);
    }
}

#define ADD(x) text_append (result, x)

char *
debug_print_html_contexts (CONVERTER *self)
{
  int i;
  TEXT contexts_str;
  text_init (&contexts_str);
  text_append (&contexts_str, "[");
  HTML_DOCUMENT_CONTEXT_STACK *document_context_stack
    = &self->html_document_context;
  HTML_DOCUMENT_CONTEXT *top_document_ctx
    = html_top_document_context (self);
  HTML_FORMATTING_CONTEXT_STACK *formatting_context_stack
    = &top_document_ctx->formatting_context;

  for (i = 0; i < document_context_stack->top; i++)
    {
      HTML_DOCUMENT_CONTEXT *document_context
        = &document_context_stack->stack[i];
      if (i != 0)
        text_append (&contexts_str, "|");
      if (document_context->context)
        text_append (&contexts_str, document_context->context);
      else
        text_append (&contexts_str, "UNDEF");
    }
  text_append (&contexts_str, "](");

  for (i = 0; i < formatting_context_stack->top; i++)
    {
      HTML_FORMATTING_CONTEXT *formatting_context
       = &formatting_context_stack->stack[i];
      if (i != 0)
        text_append (&contexts_str, "|");
      if (formatting_context->context_name)
        text_append (&contexts_str, formatting_context->context_name);
      else
        text_append (&contexts_str, "UNDEF");

    }
  text_append (&contexts_str, ")");
   /*
  text_append (&contexts_str, "{");
  for (i = 0; i < top_document_ctx->block_commands.top; i++)
    {
      enum command_id cmd = top_document_ctx->block_commands.stack[i];
      if (i != 0)
        text_append (&contexts_str, "|");
      text_append (&contexts_str, builtin_command_name (cmd));
    }
  text_append (&contexts_str, "}");
    */
  return contexts_str.text;
}

/* EXPLANATION is used for debugging */
void
convert_to_html_internal (CONVERTER *self, const ELEMENT *element,
                          TEXT *result, char *explanation)
{
  /* for debugging, for explanations */
  TEXT command_type;
  char *debug_str;
  char *command_name = element_command_name (element);
  enum command_id cmd = element_builtin_cmd (element);

  text_init (&command_type);
  if (command_name)
    text_printf (&command_type, "@%s ", command_name);

  if (element->type)
    text_append (&command_type, element_type_names[element->type]);

  if (self->conf->DEBUG > 0)
    {
      TEXT debug_str;
      char *contexts_str = debug_print_html_contexts (self);
      text_init (&debug_str);
      text_printf (&debug_str, "XS|ELEMENT(%s) %s, ->", explanation,
                                                       contexts_str);
      free (contexts_str);
      if (command_name)
        text_printf (&debug_str, " cmd: %s,", command_name);
      if (element->type)
        text_printf (&debug_str, " type: %s",
                     element_type_names[element->type]);
      if (element->text.end > 0)
        {
          int allocated;
          char *text = debug_protect_eol (element->text.text, &allocated);
          text_printf (&debug_str, " text: %s", text);
          if (allocated)
            free (text);
        }
      text_append (&debug_str, "\n");
      fprintf (stderr, "%s", debug_str.text);
      free (debug_str.text);
    }

  if ((element->type
       && self->current_types_conversion_function[element->type].status
                                                         == FRS_status_ignored)
      || (cmd
          && self->current_commands_conversion_function[cmd].status
                                                         == FRS_status_ignored))
    {
      if (self->conf->DEBUG > 0)
        {
          fprintf (stderr, "IGNORED %s\n", command_type.text);
        }
      goto out;
    }

  /* Process text */

  if (element->text.space > 0)
    {
      TEXT text_result;
      text_init (&text_result);
      text_append (&text_result, "");

      /* already converted to html, keep it as is, assume it cannot be NULL */
      if (element->type == ET__converted)
        text_append (&text_result, element->text.text);
      else if (element->type == ET_untranslated)
        {
          char *translation_context
            = lookup_extra_string (element, "translation_context");
          const ELEMENT *translated = html_gdt_tree (element->text.text,
                                      self->document,
                                      self, 0, translation_context, 0);

          convert_to_html_internal (self, translated, &text_result,
                                    "translated TEXT");
        }
      else
        {
          (*(self->current_types_conversion_function[ET_text].type_conversion))
                    (self, ET_text, element, element->text.text, &text_result);
        }

      if (self->conf->DEBUG > 0)
        {
          fprintf (stderr, "XS|DO TEXT => `%s'\n", text_result.text);
        }

      ADD(text_result.text);
      free (text_result.text);
      goto out;
    }

  if (element->cmd
      && (element->type != ET_def_line
          && element->type != ET_definfoenclose_command
          && element->type != ET_index_entry_command))
    {
      enum command_id data_cmd = element_builtin_data_cmd (element);
      /* XS only debug message */
      /*
      if (self->conf->DEBUG > 0)
        fprintf (stderr, "COMMAND: %s %s\n",
                 builtin_command_data[data_cmd].cmdname,
                 builtin_command_data[cmd].cmdname);
      */

      if (builtin_command_data[data_cmd].flags & CF_root)
        {
          self->current_root_command = element;
          self->modified_state |= HMSF_current_root;
        }

      if (self->current_commands_conversion_function[cmd].command_conversion)
        {
          TEXT content_formatted;
          HTML_ARGS_FORMATTED *args_formatted = 0;

          int convert_to_latex
               = html_open_command_update_context (self, data_cmd);

          if (self->command_open_function[cmd].command_open)
            {
              (*self->command_open_function[cmd].command_open)
                                (self, data_cmd, element, result);
            }

          text_init (&content_formatted);
          text_append (&content_formatted, "");

          if (element->contents.number > 0)
            {

              if (convert_to_latex
                  && !(builtin_command_data[data_cmd].flags & CF_brace))
                {
                  ELEMENT *tmp = new_element (ET_NONE);
                  char *latex_content;

                  tmp->contents = element->contents;
                  latex_content = call_latex_convert_to_latex_math (self,
                                                                    tmp);
                  tmp->contents.list = 0;
                  destroy_element (tmp);

                  if (latex_content)
                    {
                      text_append (&content_formatted, latex_content);
                      free (latex_content);
                    }
                }
              else
                {
                  int content_idx;
                  text_append (&content_formatted, "");
                  for (content_idx = 0; content_idx < element->contents.number;
                       content_idx++)
                    {
                      const ELEMENT *content = element->contents.list[content_idx];
                      char *explanation;
                      xasprintf (&explanation, "%s c[%d]", command_type.text,
                                content_idx);
                      convert_to_html_internal (self, content, &content_formatted,
                                                explanation);
                      free (explanation);
                    }
                }
            }

          if ((builtin_command_data[data_cmd].flags & CF_brace)
              || (builtin_command_data[data_cmd].flags & CF_line
                  && builtin_command_data[data_cmd].data == LINE_line)
              || ((cmd == CM_item || cmd == CM_itemx)
                  && element->parent->type == ET_table_term)
              || (cmd == CM_quotation || cmd == CM_smallquotation)
              || cmd == CM_float
              || cmd == CM_cartouche)
            {
              if (element->args.number > 0)
                {
                  TEXT formatted_arg;
                  int arg_idx;

                  text_init (&formatted_arg);

                  args_formatted = (HTML_ARGS_FORMATTED *)
                    malloc (sizeof (HTML_ARGS_FORMATTED));
                  args_formatted->number = element->args.number;
                  args_formatted->args = (HTML_ARG_FORMATTED *)
                 malloc (args_formatted->number * sizeof (HTML_ARG_FORMATTED));
                  memset (args_formatted->args, 0,
                        args_formatted->number * sizeof (HTML_ARG_FORMATTED));

                  for (arg_idx = 0; arg_idx < element->args.number; arg_idx++)
                    {
                      char *explanation;
                      unsigned long arg_flags = 0;
                      /* actually const, but cannot be marked as such because
                         the argument of call_latex_convert_to_latex_math
                         cannot be const in case perl element has to be built */
                      ELEMENT *arg = element->args.list[arg_idx];
                      HTML_ARG_FORMATTED *arg_formatted
                         = &args_formatted->args[arg_idx];

                      if (arg->contents.number <= 0)
                        {
                          continue;
                        }
                      /* NOTE that commands with F_AFT_none as only flag do not
                         have their flag reset to F_AFT_normal here, such that
                         their argument is not converter here */
                      if (arg_idx < MAX_COMMAND_ARGS_NR
                          /* could check command_args_flags[cmd].status,
                             but it is probably faster not to */
                          && command_args_flags[cmd].flags[arg_idx])
                        arg_flags = command_args_flags[cmd].flags[arg_idx];
                      else
                        arg_flags = F_AFT_normal;

                      arg_formatted->tree = arg;

                      if (arg_flags & F_AFT_normal)
                        {
                          text_reset (&formatted_arg);
                          if (convert_to_latex)
                            {
                              char *latex_content
                                = call_latex_convert_to_latex_math (self,
                                                                    arg);
                              if (latex_content)
                                {
                                  text_append (&formatted_arg, latex_content);
                                  free (latex_content);
                                }
                            }
                          else
                            {
                              xasprintf (&explanation, "%s A[%d]normal",
                                                   command_type.text, arg_idx);
                              convert_to_html_internal (self, arg,
                                                        &formatted_arg,
                                                        explanation);
                              free (explanation);
                            }
                          arg_formatted->formatted[AFT_type_normal]
                            = strdup (formatted_arg.text);
                        }
                      if (arg_flags & F_AFT_monospace)
                        {
                          HTML_DOCUMENT_CONTEXT *top_document_ctx
                            = html_top_document_context (self);
                          text_reset (&formatted_arg);
                          xasprintf (&explanation, "%s A[%d]monospace",
                                                   command_type.text, arg_idx);
                          push_integer_stack_integer (
                                          &top_document_ctx->monospace, 1);

                          convert_to_html_internal (self, arg, &formatted_arg,
                                                    explanation);
                          pop_integer_stack
                              (&top_document_ctx->monospace);

                          free (explanation);
                          arg_formatted->formatted[AFT_type_monospace]
                           = strdup (formatted_arg.text);
                        }
                      if (arg_flags & F_AFT_string)
                        {
                          HTML_DOCUMENT_CONTEXT *string_document_ctx;
                          text_reset (&formatted_arg);
                          html_new_document_context (self, command_type.text,
                                                     0, 0);
                          string_document_ctx = html_top_document_context (self);
                          string_document_ctx->string_ctx++;

                          xasprintf (&explanation, "%s A[%d]string",
                                                   command_type.text, arg_idx);
                          convert_to_html_internal (self, arg, &formatted_arg,
                                                    explanation);

                          free (explanation);

                          html_pop_document_context (self);

                          arg_formatted->formatted[AFT_type_string]
                           = strdup (formatted_arg.text);
                        }
                      if (arg_flags & F_AFT_monospacestring)
                        {
                          HTML_DOCUMENT_CONTEXT *string_document_ctx;
                          text_reset (&formatted_arg);
                          html_new_document_context (self, command_type.text,
                                                     0, 0);
                          string_document_ctx = html_top_document_context (self);
                          string_document_ctx->string_ctx++;
                          push_integer_stack_integer (
                               &string_document_ctx->monospace, 1);
                          xasprintf (&explanation, "%s A[%d]monospacestring",
                                                   command_type.text, arg_idx);
                          convert_to_html_internal (self, arg, &formatted_arg,
                                                    explanation);

                          free (explanation);
                          pop_integer_stack
                              (&string_document_ctx->monospace);
                          html_pop_document_context (self);
                          arg_formatted->formatted[AFT_type_monospacestring]
                           = strdup (formatted_arg.text);
                        }
                      if (arg_flags & F_AFT_monospacetext)
                        {
                          char *text;
                          TEXT_OPTIONS *text_conv_options
                            = copy_options_for_convert_text (self, 0);
                          text_conv_options->code_state = 1;

                          text = convert_to_text (arg, text_conv_options);

                          free (text_conv_options);

                          arg_formatted->formatted[AFT_type_monospacetext]
                            = text;
                        }
                      if (arg_flags & F_AFT_filenametext)
                        {
                          char *text;
                          /* Always use encoded characters for file names */
                          TEXT_OPTIONS *text_conv_options
                            = copy_options_for_convert_text (self, 1);
                          text_conv_options->code_state = 1;

                          text = convert_to_text (arg, text_conv_options);

                          free (text_conv_options);

                          arg_formatted->formatted[AFT_type_filenametext] = text;
                        }
                      if (arg_flags & F_AFT_url)
                        {
                          char *text;
           /* set the encoding to UTF-8 to always have a string that is suitable
              for percent encoding. */
                          TEXT_OPTIONS *text_conv_options
                            = copy_options_for_convert_text (self, 1);
                          text_conv_options->code_state = 1;
                          text_conv_options->encoding = "utf-8";

                          text = convert_to_text (arg, text_conv_options);

                          free (text_conv_options);

                          arg_formatted->formatted[AFT_type_url] = text;
                        }
                      if (arg_flags & F_AFT_raw)
                        {
                          HTML_DOCUMENT_CONTEXT *top_document_ctx
                            = html_top_document_context (self);
                          text_reset (&formatted_arg);
                          top_document_ctx->raw_ctx++;
                          xasprintf (&explanation, "%s A[%d]raw",
                                                   command_type.text, arg_idx);
                          convert_to_html_internal (self, arg, &formatted_arg,
                                                    explanation);

                          free (explanation);
                          top_document_ctx->raw_ctx--;
                          arg_formatted->formatted[AFT_type_raw]
                            = strdup (formatted_arg.text);
                        }
                    }
                  free (formatted_arg.text);
                }
            }

          html_convert_command_update_context (self, data_cmd);

          if (element->cmd == CM_node)
            {
              self->current_node = element;
              self->modified_state |= HMSF_current_node;
            }

          /* args are formatted, now format the command itself */
          if (self->current_commands_conversion_function[cmd].command_conversion)
            {
       (*self->current_commands_conversion_function[cmd].command_conversion)
                   (self, cmd, element, args_formatted,
                    content_formatted.text, result);
            }
          else if (args_formatted)
            fprintf (stderr, "No command_conversion for %s\n",
                             command_name);
          if (args_formatted)
            destroy_args_formatted (args_formatted);

          if (cmd == CM_documentlanguage)
            {
              html_translate_names (self);
            }

          free (content_formatted.text);

          goto out;
        }
      else
        {
          if (self->conf->DEBUG > 0 || self->conf->VERBOSE > 0)
            fprintf (stderr, "Command not converted: %s\n", command_name);
          if (builtin_command_data[data_cmd].flags & CF_root)
            {
              self->current_root_command = 0;
              self->modified_state |= HMSF_current_root;
            }
          goto out;
        }

      if (builtin_command_data[data_cmd].flags & CF_root)
        {
          self->current_root_command = 0;
          self->modified_state |= HMSF_current_root;
        }
    }
  else if (element->type)
    {
      enum element_type type = element->type;
      TEXT type_result;
      TEXT content_formatted;

      text_init (&type_result);
      text_append (&type_result, "");

      html_open_type_update_context(self, type);

      if (self->type_open_function[type].type_open)
        (*self->type_open_function[type].type_open)
               (self, type, element, &type_result);

      text_init (&content_formatted);

      if (type == ET_definfoenclose_command)
        {
          if (element->args.number > 0)
            {
              convert_to_html_internal (self, element->args.list[0],
                                        &content_formatted, 0);
            }
        }
      else if (element->contents.number > 0)
        {
          int content_idx;
          text_append (&content_formatted, "");
          for (content_idx = 0; content_idx < element->contents.number;
               content_idx++)
            {
              const ELEMENT *content = element->contents.list[content_idx];
              char *explanation;
              xasprintf (&explanation, "%s c[%d]", command_type.text,
                        content_idx);
              convert_to_html_internal (self, content, &content_formatted,
                                        explanation);
              free (explanation);
            }
        }

      html_convert_type_update_context (self, type);

      if (self->current_types_conversion_function[type].type_conversion)
        {
          (*self->current_types_conversion_function[type].type_conversion)
               (self, type, element, content_formatted.text, &type_result);
        }
      else if (content_formatted.end > 0)
        {
          text_append (&type_result, content_formatted.text);
        }
      free (content_formatted.text);

      if (self->conf->DEBUG > 0)
        {
          fprintf (stderr, "XS|DO type (%s) => `%s'\n", element_type_names[type],
                           type_result.text);
        }
      ADD(type_result.text);
      free (type_result.text);

      goto out;
    }
  else if (element->contents.number > 0)
    {
      /* no type, no cmdname, but contents. */
      /* this happens inside accents, for section/node names, for @images. */
      TEXT content_formatted;

      text_init (&content_formatted);
      text_append (&content_formatted, "");

      int content_idx;
      for (content_idx = 0; content_idx < element->contents.number;
           content_idx++)
        {
          const ELEMENT *content = element->contents.list[content_idx];
          char *explanation;
          xasprintf (&explanation, "%s c[%d]", command_type.text,
                     content_idx);
          convert_to_html_internal (self, content, &content_formatted,
                                    explanation);
          free (explanation);
        }

      if (self->conf->DEBUG > 0)
        fprintf (stderr, "UNNAMED HOLDER => `%s'\n", content_formatted.text);
      ADD(content_formatted.text);
      goto out;
    }
  else
    {
      if (self->conf->DEBUG > 0)
        fprintf (stderr, "UNNAMED empty\n");
      if (self->current_types_conversion_function[0].type_conversion)
        {
          (*self->current_types_conversion_function[0].type_conversion)
                           (self, 0, element, "", result);
        }

      goto out;
    }
  debug_str = print_element_debug (element, 0);
  fprintf (stderr, "DEBUG: HERE!(%p:%s)\n", element, debug_str);
  free (debug_str);

 out:
  free (command_type.text);
}
#undef ADD

void
convert_output_unit (CONVERTER *self, const OUTPUT_UNIT *output_unit,
                     char *explanation, TEXT *result)
{
  TEXT content_formatted;
  /* store this to be able to show only what was added in debug message */
  size_t input_result_end = result->end;
  enum output_unit_type unit_type = output_unit->unit_type;

  if (self->output_units_conversion[unit_type].status == FRS_status_ignored)
    {
      if (self->conf->DEBUG > 0)
        {
          fprintf (stderr, "IGNORED OU %s\n",
                           output_unit_type_names[unit_type]);
        }
      return;
    }

  if (self->conf->DEBUG > 0)
    {
      char *output_unit_txi = output_unit_texi (output_unit);
      fprintf (stderr, "XS|UNIT(%s) -> ou: %s '%s'\n", explanation,
                  output_unit_type_names[unit_type],
                  output_unit_txi);
      free (output_unit_txi);
    }

  self->current_output_unit = output_unit;
  self->modified_state |= HMSF_current_output_unit;

  text_init (&content_formatted);
  text_append (&content_formatted, "");

  if (output_unit->unit_contents.number > 0)
    {
      int content_idx;
      for (content_idx = 0; content_idx < output_unit->unit_contents.number;
           content_idx++)
       {
         const ELEMENT *content = output_unit->unit_contents.list[content_idx];
         char *explanation;
         xasprintf (&explanation, "%s c[%d]",
                    output_unit_type_names[unit_type], content_idx);
         convert_to_html_internal (self, content, &content_formatted,
                                   explanation);
         free (explanation);
       }
    }

  if (self->output_units_conversion[unit_type].status)
    {
  (*(self->output_unit_conversion_function[unit_type].output_unit_conversion))
                             (self, unit_type, output_unit,
                              content_formatted.text, result);
    }
   else
    {
      text_append (result, content_formatted.text);
    }

  free (content_formatted.text);

  self->current_output_unit = 0;
  self->modified_state |= HMSF_current_output_unit;

  if (self->conf->DEBUG > 0)
    fprintf (stderr, "DOUNIT (%s) => `%s'\n", output_unit_type_names[unit_type],
                     result->text + input_result_end);
}

/* wrapper to avoid code repetition and use similar functions as in perl */
void
convert_convert_output_unit_internal (CONVERTER *self, TEXT *result,
                                   const OUTPUT_UNIT *output_unit, int unit_nr,
                                   char *debug_str, char *explanation_str)
{
  char *explanation;

  if (self->conf->DEBUG > 0)
    fprintf (stderr, "\n%s %d\n", debug_str, unit_nr);

  xasprintf (&explanation, "%s %d", explanation_str, unit_nr);
  convert_output_unit (self, output_unit, explanation, result);
  free (explanation);
}

char *
html_convert_convert (CONVERTER *self, const ELEMENT *root,
                      int output_units_descriptor,
                      int special_units_descriptor)
{
  TEXT result;

  const OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  const OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);

  text_init (&result);

  self->current_filename.filename = "";
  self->current_filename.file_number = 1;
  self->modified_state |= HMSF_current_filename;

  if (!output_units || !output_units->number)
    {
      if (self->conf->DEBUG > 0)
        fprintf (stderr, "\nC NO UNIT\n");

      convert_to_html_internal (self, root, &result,
                                "convert no unit");

      format_footnotes_segment (self, &result);
    }
  else
    {
      int unit_nr = 0;
      int i;
      for (i = 0; i < output_units->number; i++)
        {
          const OUTPUT_UNIT *output_unit = output_units->list[i];
          convert_convert_output_unit_internal (self, &result, output_unit,
                                unit_nr, "C UNIT", "convert unit");
          unit_nr++;
        }
      if (special_units && special_units->number)
        {
          for (i = 0; i < special_units->number; i++)
            {
              const OUTPUT_UNIT *special_unit = special_units->list[i];
              convert_convert_output_unit_internal (self, &result,
                        special_unit, unit_nr, "C UNIT", "convert unit");
              unit_nr++;
            }
        }
    }
  self->current_filename.filename = 0;
  self->modified_state |= HMSF_current_filename;

  return result.text;
}

int
convert_output_output_unit_internal (CONVERTER *self,
                                     ENCODING_CONVERSION *conversion,
                                     TEXT *text,
                                     const OUTPUT_UNIT *output_unit,
                                     int unit_nr)
{
  FILE_NAME_PATH_COUNTER *unit_file = 0;
  size_t file_index;
  int empty_body = 0; /* set if body is empty and it is a special unit */
  char *output_unit_filename = output_unit->unit_filename;

  self->current_filename.filename = output_unit_filename;
  self->modified_state |= HMSF_current_filename;

  text_reset (text);
  text_append (text, "");

  if (output_unit->unit_type == OU_special_unit)
    {
      char *debug_str;
      char *special_unit_variety = output_unit->special_unit_variety;

      file_index = self->special_unit_file_indices[output_unit->index];
      self->current_filename.file_number = file_index +1;
      unit_file = &self->output_unit_files.list[file_index];

      xasprintf (&debug_str, "UNIT SPECIAL %s", special_unit_variety);
      convert_convert_output_unit_internal (self, text,
                    output_unit, unit_nr, debug_str, "output s-unit");
      free (debug_str);

      if (!strcmp (text->text, ""))
        empty_body = 1;
    }
  else
    {
      file_index = self->output_unit_file_indices[output_unit->index];
      self->current_filename.file_number = file_index +1;
      unit_file = &self->output_unit_files.list[file_index];

      convert_convert_output_unit_internal (self, text, output_unit,
                                            unit_nr, "UNIT", "output unit");
    }

  unit_file->counter--;
  if (!unit_file->counter_changed)
    {
      self->file_changed_counter.list[self->file_changed_counter.number]
        = file_index;
      self->file_changed_counter.number++;
      unit_file->counter_changed = 1;
      self->modified_state |= HMSF_file_counter;
    }

      /* register the output but do not print anything. Printing
         only when file_counters reach 0, to be sure that all the
         elements have been converted before headers are done. */

  if (!empty_body)
    {
      if (!unit_file->first_unit)
        {
          unit_file->first_unit = output_unit;
          text_init (&unit_file->body);
        }
      text_append (&unit_file->body, text->text);
    }
  else
    {
      if (!unit_file->first_unit
          || unit_file->body.end == 0)
        {
          return 1;
        }
    }

  if (unit_file->counter == 0)
    {
      const OUTPUT_UNIT *file_output_unit = unit_file->first_unit;
      char *file_end;
      char *file_beginning;
      char *out_filepath = unit_file->filepath;
      char *path_encoding;
      char *open_error_message;

      char *encoded_out_filepath = encoded_output_file_name (self->conf,
                               self->document->global_info, out_filepath,
                                                       &path_encoding, 0);
      FILE *file_fh = output_files_open_out (&self->output_files_information,
                               encoded_out_filepath, &open_error_message, 0);
      free (path_encoding);
      if (!file_fh)
        {
          message_list_document_error (&self->error_messages, self->conf,
                             "could not open %s for writing: %s",
                             out_filepath, open_error_message);
          free (encoded_out_filepath);
          return 0;
        }

      /* do end file first in case it requires some CSS */
      file_end = call_formatting_function_format_end_file (self,
                                             output_unit_filename, output_unit);
      file_beginning = call_formatting_function_format_begin_file (self,
                                        output_unit_filename, file_output_unit);
      text_reset (text);
      if (file_beginning)
        {
          text_append (text, file_beginning);
          free (file_beginning);
        }
      if (unit_file->body.end)
        {
          text_append (text, unit_file->body.text);
        }
      if (file_end)
        {
          text_append (text, file_end);
          free (file_end);
        }
      if (text->end)
        {
          char *result;
          size_t res_len;
          size_t write_len;

          if (conversion)
            {
              result = encode_with_iconv (conversion->iconv, text->text, 0);
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
              return 0;
            }
        }
      /* NOTE do not close STDOUT here to be in line with perl code */
      if (strcmp (out_filepath, "-"))
        {
          output_files_register_closed (&self->output_files_information,
                                        encoded_out_filepath);
          if (fclose (file_fh))
            {
              message_list_document_error (&self->error_messages, self->conf,
                             "error on closing %s: %s",
                             out_filepath, strerror (errno));
              free (encoded_out_filepath);
              return 0;
            }
        }
      free (encoded_out_filepath);
    }
  return 1;
}

void
html_prepare_title_titlepage (CONVERTER *self, int output_units_descriptor,
                              char *output_file, char *output_filename)
{
  char *title_titlepage;
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  if (strlen (output_file))
    {
      self->current_filename.filename = output_units->list[0]->unit_filename;
      self->current_filename.file_number
        = self->output_unit_file_indices[0]+1;
    }
  else
    {
      /* case of convert() call.  Need to setup the page here */
      if (self->page_name_number.number <= 0)
         setup_output_simple_page (self, output_filename);
      self->current_filename.filename = output_filename;
      self->current_filename.file_number = 1;
    }

  self->modified_state |= HMSF_current_filename;

  title_titlepage
    = call_formatting_function_format_title_titlepage (self);
  self->title_titlepage = title_titlepage;
  memset (&self->current_filename, 0, sizeof (CURRENT_FILE_INFO));
  self->modified_state |= HMSF_current_filename;
}

char *
html_convert_output (CONVERTER *self, const ELEMENT *root,
                     int output_units_descriptor,
                     int special_units_descriptor,
                     char *output_file, char *destination_directory,
                     char *output_filename, char *document_name)
{
  int status = 1;
  TEXT result;
  TEXT text; /* reused for all the output units */

  const OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  const OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);

  text_init (&result);
  text_init (&text);

  text_append (&result, "");


  if (!strlen (output_file))
    {
      char *file_end;
      char *file_beginning;

      self->current_filename.filename = output_filename;
      self->current_filename.file_number = 1;
      self->modified_state |= HMSF_current_filename;

      text_append (&text, "");

      if (output_units && output_units->number)
        {
          int unit_nr = 0;
          int i;
          for (i = 0; i < output_units->number; i++)
            {
              const OUTPUT_UNIT *output_unit = output_units->list[i];
              convert_convert_output_unit_internal (self, &text, output_unit,
                             unit_nr, "UNIT NO-PAGE", "no-page output unit");
              unit_nr++;
            }
      /* TODO there is no rule before the footnotes special element in
         case of separate footnotes in the default formatting style.
         Not sure if it is an issue. */
          if (special_units && special_units->number)
            {
              for (i = 0; i < special_units->number; i++)
                {
                  const OUTPUT_UNIT *special_unit = special_units->list[i];
                  convert_convert_output_unit_internal (self, &text,
                                 special_unit, unit_nr, "UNIT NO-PAGE",
                                 "no-page output unit");
                  unit_nr++;
                }
            }
        }
      else
        {
          if (self->conf->DEBUG > 0)
            fprintf (stderr, "\nNO UNIT NO PAGE\n");

          text_append (&text, self->title_titlepage);
          convert_to_html_internal (self, root, &text,
                                     "no-page output no unit");
          format_footnotes_segment (self, &result);
        }

      /* do end file first, in case it needs some CSS */
      file_end = call_formatting_function_format_end_file (self,
                                                     output_filename, 0);
      file_beginning = call_formatting_function_format_begin_file (self,
                                                     output_filename, 0);
      if (file_beginning)
        {
          text_append (&result, file_beginning);
          free (file_beginning);
        }
      text_append (&result, text.text);
      if (file_end)
        {
          text_append (&result, file_end);
          free (file_end);
        }
      self->current_filename.filename = 0;
      self->modified_state |= HMSF_current_filename;
    }
  else
    {
      int unit_nr = 0;
      int i;
      ENCODING_CONVERSION *conversion = 0;

      if (self->conf->OUTPUT_ENCODING_NAME)
        {
          conversion
             = get_encoding_conversion (self->conf->OUTPUT_ENCODING_NAME,
                                              &output_conversions);
        }

      if (self->conf->DEBUG > 0)
        fprintf (stderr, "DO Units with filenames\n");

      for (i = 0; i < output_units->number; i++)
        {
          const OUTPUT_UNIT *output_unit = output_units->list[i];
          status = convert_output_output_unit_internal (self, conversion,
                                               &text, output_unit, unit_nr);
          if (!status)
            {
              /*
              fprintf (stderr, "   FAILED U(%d %d): %s\n", i, unit_nr,
                       output_unit_texi (output_unit));
               */
              goto out;
            }
          unit_nr++;
        }
      if (special_units && special_units->number)
        {
          for (i = 0; i < special_units->number; i++)
            {
              const OUTPUT_UNIT *special_unit = special_units->list[i];
              status = convert_output_output_unit_internal (self, conversion,
                                                &text, special_unit, unit_nr);
              if (!status)
                goto out;
              unit_nr++;
            }
        }
      memset (&self->current_filename, 0, sizeof (CURRENT_FILE_INFO));
      self->modified_state |= HMSF_current_filename;
    }

 out:
  free (text.text);

  if (status)
    return result.text;
  else
    {
      free (result.text);
      return 0;
    }
}
