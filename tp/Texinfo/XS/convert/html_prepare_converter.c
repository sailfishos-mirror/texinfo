/* Copyright 2010-2024 Free Software Foundation, Inc.

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

#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "converter_types.h"
#include "conversion_data.h"
/* new_element */
#include "tree.h"
#include "utils.h"
/* unicode_character_brace_no_arg_commands */
#include "unicode.h"
#include "builtin_commands.h"
#include "command_stack.h"
#include "customization_options.h"
/* nobrace_symbol_text text_brace_no_arg_commands */
#include "convert_to_text.h"
#include "output_unit.h"
#include "html_conversion_state.h"
/* no_brace_command_accent_upper_case
   xml_text_entity_no_arg_commands_formatting */
#include "converter.h"
#include "call_html_perl_function.h"
#include "convert_html.h"
#include "html_prepare_converter.h"

typedef struct CMD_VARIETY {
    enum command_id cmd;
    char *variety;
} CMD_VARIETY;

typedef struct COMMAND_ID_ARGS_SPECIFICATION {
    enum command_id cmd;
    unsigned long flags[MAX_COMMAND_ARGS_NR];
} COMMAND_ID_ARGS_SPECIFICATION;

/* in main/conversion_data.c */
extern const CSS_SELECTOR_STYLE base_default_css_element_class_styles[];

static CSS_SELECTOR_STYLE_LIST default_css_element_class_styles;

COMMAND_ARGS_SPECIFICATION html_command_args_flags[BUILTIN_CMD_NUMBER];

const char *htmlxref_split_type_names[htmlxref_split_type_chapter + 1] =
{
  "mono", "node", "section", "chapter"
};

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
  {CM_abbr, {F_AFT_normal, F_AFT_string | F_AFT_normal}},
  {CM_acronym, {F_AFT_normal, F_AFT_string | F_AFT_normal}},
};

/* types that are in code style in the default case.  '_code' is not
   a type that can appear in the tree built from Texinfo code, it is used
   to format a tree fragment as if it was in a @code @-command.  */
static enum element_type default_code_types[] = {
  ET__code, 0,
};

const PRE_CLASS_TYPE_INFO default_pre_class_types[] = {
  {ET_menu_comment, "menu-comment"},
  {0, 0}
};

static enum command_id quoted_style_commands[] = {
  CM_samp, 0
};

static enum command_id HTML_align_cmd[] = {
   CM_raggedright, CM_flushleft, CM_flushright, CM_center, 0
};

static enum command_id additional_format_context_cmd[] = {
   CM_tab, CM_item, CM_itemx, CM_headitem, 0
 };

/* should correspond to enum html_special_character */
/* HTML textual entity, UTF-8 encoded, unicode point, HTML numeric entity */
char *special_characters_formatting[SC_non_breaking_space+1][4] = {
  {"&para;", "\xC2\xB6", "00B6", "&#182;"},
  {"&lsquo;", "\xE2\x80\x98", "2018", "&#8216;"},
  {"&rsquo;", "\xE2\x80\x99", "2019", "&#8217;"},
  {"&bull;", "\xE2\x80\xA2", "2022", "&#8226;"},
  {"&nbsp;", "\xC2\xA0", "00A0", "&#160;"},
};

CMD_VARIETY command_special_unit_variety[] = {
                                {CM_contents, "contents"},
                                {CM_shortcontents, "shortcontents"},
                                {CM_summarycontents, "shortcontents"},
                                {CM_footnote, "footnotes"},
                                {0, 0},
};

static const enum command_id conf_for_special_units[]
                          = {CM_footnotestyle, 0};

static enum element_type ignored_types[] = {
    ET_ignorable_spaces_after_command,
    ET_postamble_after_end,
    ET_preamble_before_beginning,
    ET_preamble_before_setfilename,
    ET_spaces_at_end,
    ET_spaces_before_paragraph,
    ET_spaces_after_close_brace, 0
};

HTML_COMMAND_STRUCT html_commands_data[BUILTIN_CMD_NUMBER];

static HTML_NO_ARG_COMMAND_CONVERSION default_no_arg_commands_formatting
                              [BUILTIN_CMD_NUMBER][NO_ARG_COMMAND_CONTEXT_NR];

static HTML_STYLE_COMMAND_CONVERSION default_style_commands_formatting
                               [BUILTIN_CMD_NUMBER][STYLE_COMMAND_CONTEXT_NR];

static COMMAND_STACK preformatted_cmd_list;
static COMMAND_STACK def_cmd_list;

static char *unicode_entities[BUILTIN_CMD_NUMBER];

COMMAND_ID_LIST no_arg_formatted_cmd;
COMMAND_ID_LIST style_formatted_cmd;
COMMAND_ID_LIST accent_cmd;
COMMAND_ID_LIST format_raw_cmd;

void
register_format_context_command (enum command_id cmd)
{
  html_commands_data[cmd].flags |= HF_format_context;
}

void register_pre_class_command (enum command_id cmd, enum command_id main_cmd)
{
  if (main_cmd)
    html_commands_data[cmd].pre_class_cmd = main_cmd;
  else
    html_commands_data[cmd].pre_class_cmd = cmd;

  html_commands_data[cmd].flags |= HF_pre_class;
}

/* NOTE relatively generic */
static void
initialize_cmd_list (COMMAND_ID_LIST *cmd_list, size_t size, size_t number)
{
  cmd_list->list = (enum command_id *) malloc
    (size * sizeof (enum command_id));
  cmd_list->number = number;
  if (number)
    {
      memset (cmd_list->list, 0, number * sizeof (enum command_id));
    }
}

static void
set_no_arg_commands_formatting (HTML_NO_ARG_COMMAND_CONVERSION *spec,
                                char *text)
{
  spec->text = text;
  spec->unset = 0;
}

static char *
get_special_list_mark_css_string_no_arg_command (enum command_id cmd)
{
  int s;
  for (s = 0;
       special_list_mark_css_string_no_arg_command[s].cmd > 0;
       s++)
    {
       if (special_list_mark_css_string_no_arg_command[s].cmd == cmd)
        {
           return special_list_mark_css_string_no_arg_command[s].string;
           break;
        }
    }
  return 0;
}

/* set information that is independent of customization, only called once */
void
html_format_setup (void)
{
  int i;
  int no_arg_formatted_cmd_nr = 0;
  int accent_cmd_nr = 0;
  int style_formatted_cmd_nr = 0;
  int format_raw_cmd_nr = 0;
  int no_arg_formatted_cmd_idx;
  int default_commands_args_nr
    = sizeof (default_commands_args) / sizeof (default_commands_args[0]);
  int max_args = MAX_COMMAND_ARGS_NR;
  CSS_SELECTOR_STYLE *css_selector_style;
  TEXT css_string_text;

  const enum command_id indented_format[] = {
    CM_example, CM_display, CM_lisp, 0
  };

  initialize_css_selector_style_list (&default_css_element_class_styles,
                                      BASE_DEFAULT_CSS_ELEMENT_CLASS_STYLE_NR);
  for (i = 0; i < BASE_DEFAULT_CSS_ELEMENT_CLASS_STYLE_NR; i++)
    {
      CSS_SELECTOR_STYLE *selector_style
        = &default_css_element_class_styles.list[i];
      selector_style->selector
        = base_default_css_element_class_styles[i].selector;
      selector_style->style
        = base_default_css_element_class_styles[i].style;
    }
  sort_css_element_class_styles (&default_css_element_class_styles);

  css_selector_style
    = find_css_selector_style (&default_css_element_class_styles,
                               "pre.display-preformatted");
  html_css_set_selector_style (&default_css_element_class_styles,
                               "pre.format-preformatted",
                               css_selector_style->style);

  for (i = 0; i < default_commands_args_nr; i++)
    {
      /* we file the status for specified commands, to distinguish them
         but it is not actually used in the code, as we default to
         normal for unspecified commands too */
      enum command_id cmd = default_commands_args[i].cmd;
      html_command_args_flags[cmd].status = 1;
      memcpy (&html_command_args_flags[cmd].flags,
              &default_commands_args[i].flags,
              max_args * sizeof (unsigned long));
    }

  for (i = 0; indented_format[i]; i++)
    {
      char *css_selector;
      enum command_id cmd = indented_format[i];
      html_commands_data[cmd].flags |= HF_indented_preformatted;

      xasprintf (&css_selector, "div.%s", builtin_command_name (cmd));
      html_css_set_selector_style (&default_css_element_class_styles,
                                  css_selector,
                                  "margin-left: 3.2em");
      free (css_selector);
    }
  /* output as div.example instead */
  html_css_set_selector_style (&default_css_element_class_styles,
                               "div.lisp", 0);

  for (i = 0; small_block_associated_command[i][0]; i++)
    {
      enum command_id small_cmd = small_block_associated_command[i][0];
      enum command_id cmd = small_block_associated_command[i][1];
      if (builtin_command_data[cmd].flags & CF_preformatted)
        {
          register_pre_class_command (small_cmd, cmd);
        }
      html_commands_data[small_cmd].flags |= HF_small_block_command;
      if (html_commands_data[cmd].flags & HF_indented_preformatted)
        html_commands_data[small_cmd].flags |= HF_indented_preformatted;
    }

  for (i = 0; no_brace_command_accent_upper_case[i][0]; i++)
    {
      enum command_id cmd = no_brace_command_accent_upper_case[i][0];
      enum command_id upper_case_cmd = no_brace_command_accent_upper_case[i][1];
      html_commands_data[cmd].upper_case_cmd = upper_case_cmd;
    }

  /* set flags */
  /* also count the number of no_arg_formatted_cmd, style_formatted_cmd and
     accent_cmd commands and other types of commands */
  for (i = 1; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (xml_text_entity_no_arg_commands_formatting[i])
        no_arg_formatted_cmd_nr++;

      if (html_style_commands_element[i]
          || (builtin_command_data[i].flags & CF_brace
              && (builtin_command_data[i].data == BRACE_style_other
                  || builtin_command_data[i].data == BRACE_style_code
                  || builtin_command_data[i].data == BRACE_style_no_code)))
        {
          html_commands_data[i].flags |= HF_style_command;
          style_formatted_cmd_nr++;
        }

      if (builtin_command_data[i].flags & CF_accent)
        accent_cmd_nr++;

      if ((builtin_command_data[i].flags & CF_block
           && builtin_command_data[i].data != BLOCK_format_raw)
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
            {
              html_commands_data[i].flags |= HF_format_raw;
              format_raw_cmd_nr++;
            }
        }

      if (builtin_command_data[i].flags & CF_preformatted)
        {
          if (!(html_commands_data[i].flags & HF_pre_class))
            register_pre_class_command (i, 0);
          push_command (&preformatted_cmd_list, i);
        }

      if (builtin_command_data[i].flags & CF_def)
        push_command (&def_cmd_list, i);
    }
  register_pre_class_command (CM_verbatim, 0);
  register_pre_class_command (CM_menu, 0);
  for (i = 0; additional_format_context_cmd[i]; i++)
    register_format_context_command (additional_format_context_cmd[i]);

  /* do not consider indicateurl to be a style command, it has a different
     formatting function */
  html_commands_data[CM_indicateurl].flags &= ~HF_style_command;

  for (i = 0; HTML_align_cmd[i]; i++)
    {
      enum command_id cmd = HTML_align_cmd[i];
      html_commands_data[cmd].flags |= HF_HTML_align | HF_composition_context;
    }

  html_commands_data[CM_float].flags |= HF_composition_context;

  initialize_cmd_list (&no_arg_formatted_cmd, no_arg_formatted_cmd_nr,
                       no_arg_formatted_cmd_nr);
  initialize_cmd_list (&accent_cmd, accent_cmd_nr, 0);
  initialize_cmd_list (&style_formatted_cmd, style_formatted_cmd_nr, 0);
  initialize_cmd_list (&format_raw_cmd, format_raw_cmd_nr, 0);

  for (i = 0; quoted_style_commands[i]; i++)
    {
      enum command_id cmd = quoted_style_commands[i];
      enum conversion_context cctx;
      for (cctx = 0; cctx < STYLE_COMMAND_CONTEXT_NR; cctx++)
        {
          default_style_commands_formatting[cmd][cctx].quote = 1;
        }
    }

  no_arg_formatted_cmd_idx = 0;
  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (builtin_command_data[i].flags & CF_accent)
        {
          accent_cmd.list[accent_cmd.number] = i;
          accent_cmd.number++;
        }
      else if (html_commands_data[i].flags & HF_format_raw)
        {
          format_raw_cmd.list[format_raw_cmd.number] = i;
          format_raw_cmd.number++;
        }

      if (html_commands_data[i].flags & HF_style_command)
        {
          style_formatted_cmd.list[style_formatted_cmd.number] = i;
          style_formatted_cmd.number++;

          if (html_style_commands_element[i])
            {
              enum conversion_context cctx;
              for (cctx = 0; cctx < STYLE_COMMAND_CONTEXT_NR; cctx++)
                {
       /* the default_style_commands_formatting contains const char only
          but the type is not const, so drop the const with a cast */
                  default_style_commands_formatting[i][cctx].element
                    = (char *) html_style_commands_element[i];
                }
            }
        }

      if (xml_text_entity_no_arg_commands_formatting[i])
        {
          /* the value is never modified but the struct field type is not const
             so need to cast to drop const */
          default_no_arg_commands_formatting[i][HCC_type_normal].text
             = (char *)xml_text_entity_no_arg_commands_formatting[i];

          no_arg_formatted_cmd.list[no_arg_formatted_cmd_idx] = i;
          no_arg_formatted_cmd_idx++;

          /* preset unset for string and preformatted contexts */
          /* css_string coverage is checked when setting css string context
             values below and unset is set explicitely if needed */
          default_no_arg_commands_formatting[i][HCC_type_string].unset = 1;
          default_no_arg_commands_formatting[i][HCC_type_preformatted].unset = 1;
        }
    }

  default_style_commands_formatting[CM_sc][HCC_type_preformatted].element
      = "span";

  /* modify normal context values and add other contexts values, removing
     unset.  Should only be for commands with normal context already set.
   */
  default_no_arg_commands_formatting[CM_SPACE][HCC_type_normal].text = "&nbsp;";
  default_no_arg_commands_formatting[CM_TAB][HCC_type_normal].text = "&nbsp;";
  default_no_arg_commands_formatting[CM_NEWLINE][HCC_type_normal].text = "&nbsp;";

  default_no_arg_commands_formatting[CM_enddots][HCC_type_normal].text = "...";
  default_no_arg_commands_formatting[CM_enddots][HCC_type_normal].element
     = "small";

  set_no_arg_commands_formatting (
   &default_no_arg_commands_formatting[CM_dots][HCC_type_preformatted], "...");
  set_no_arg_commands_formatting (
   &default_no_arg_commands_formatting[CM_enddots][HCC_type_preformatted], "...");

  default_no_arg_commands_formatting[CM_ASTERISK][HCC_type_normal].text = "<br>";
  set_no_arg_commands_formatting (
   &default_no_arg_commands_formatting[CM_ASTERISK][HCC_type_preformatted], "\n");

  for (i = 0; i < no_arg_formatted_cmd_nr; i++)
    {
      enum command_id cmd = no_arg_formatted_cmd.list[i];
      /* prepare unicode numeric entities.  Freed at exit */
      if (unicode_character_brace_no_arg_commands[cmd].codepoint)
        {
          unsigned long point_nr
           = strtoul (unicode_character_brace_no_arg_commands[cmd].codepoint,
                      NULL, 16);
          char *entity;
          xasprintf (&entity, "&#%lu;", point_nr);
          unicode_entities[cmd] = entity;
        }

      /* css_strings */
      if (cmd == CM_ASTERISK)
        default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
          = "\\A ";
      else if (cmd == CM_error)
        {
          default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
            = 0;
          default_no_arg_commands_formatting[cmd][HCC_type_css_string].unset
            = 1;
        }
      else if (unicode_character_brace_no_arg_commands[cmd].css_string)
        {
          unsigned long point_nr
           = strtoul (unicode_character_brace_no_arg_commands[cmd].codepoint,
                      NULL, 16);
          if (point_nr < 128) /* 7bit ascii */
            default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
              = (char *)unicode_character_brace_no_arg_commands[cmd].text;
          else
          /* the value is never modified but the struct field type is not const
             so need to cast to drop const */
            default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
              = (char *)unicode_character_brace_no_arg_commands[cmd].css_string;
        }
      else if (nobrace_symbol_text[cmd])
        default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
          /* the value is never modified but the struct field type is not const
             so need to cast to drop const */
          = (char *)nobrace_symbol_text[cmd];
      else if (text_brace_no_arg_commands[cmd])
          /* the value is never modified but the struct field type is not const
             so need to cast to drop const */
        default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
          = (char *)text_brace_no_arg_commands[cmd];
      else
        fprintf (stderr, "BUG: %s: no css_string\n",
                         builtin_command_data[cmd].cmdname);
    }

  /* w not in css_string, set the corresponding default_css_element_class_styles
     especially, which also has none and not w in the class */
  html_css_set_selector_style (&default_css_element_class_styles,
                               "ul.mark-none", "list-style-type: none");

  text_init (&css_string_text);
  /* setup default_css_element_class_styles for mark commands based on
     css strings */
  for (i = 0; i < no_arg_formatted_cmd_nr; i++)
    {
      enum command_id cmd = no_arg_formatted_cmd.list[i];
      if (default_no_arg_commands_formatting[cmd][HCC_type_css_string].text
          && builtin_command_data[cmd].flags & CF_brace)
        {
          char *selector;
          text_append_n (&css_string_text, "list-style-type: ", 17);
          if (cmd == CM_bullet)
            text_append_n (&css_string_text, "disc", 4);
          else
            {
              char *css_string;
              const char *p;
              char *special_list_mark_command
                = get_special_list_mark_css_string_no_arg_command (cmd);
              if (special_list_mark_command)
                css_string = special_list_mark_command;
              else
                css_string
        = default_no_arg_commands_formatting[cmd][HCC_type_css_string].text;
              p = html_after_escaped_characters (css_string);
              text_append_n (&css_string_text, "\"", 1);
              if (p && !*p)
                {
                  text_append_n (&css_string_text, css_string,
                                 p - css_string - 1);
                }
              else
                text_append (&css_string_text, css_string);
              text_append_n (&css_string_text, "\"", 1);
            }
          xasprintf (&selector, "ul.mark-%s", builtin_command_name (cmd));
          html_css_set_selector_style (&default_css_element_class_styles,
                                       selector, css_string_text.text);
          free (selector);
          text_reset (&css_string_text);
        }
    }
  free (css_string_text.text);
}

void
html_converter_init_special_unit (CONVERTER *self)
{
  size_t nr_special_units;

  /* NOTE if the special units can be customized, then
     self->special_unit_varieties should be used directly instead.
     Also default special units and special units indices should be
     mapped instead of assuming that they are the same when setting
     self->special_unit_info */
  copy_strings (&self->special_unit_varieties, &default_special_unit_varieties);

  nr_special_units = self->special_unit_varieties.number;

  /* special units info */
  /* set to defaults */
  if (nr_special_units > 0)
    {
      size_t i;
      enum special_unit_info_type j;
      for (j = 0; j < SPECIAL_UNIT_INFO_TYPE_NR; j++)
        {
          size_t k;

          self->special_unit_info[j]
            = new_special_unit_info_type (nr_special_units);
          for (k = 0; k < nr_special_units; k++)
            {
              if (default_special_unit_info[j][k])
                self->special_unit_info[j][k]
                  = strdup (default_special_unit_info[j][k]);
            }
        }
      /* apply customization */
      for (i = 0; i < self->customized_special_unit_info.number; i++)
        {
          SPECIAL_UNIT_INFO *special_unit_info
            = &self->customized_special_unit_info.list[i];
          size_t variety_idx = special_unit_info->variety_nr -1;
          enum special_unit_info_type type = special_unit_info->type;

          free (self->special_unit_info[type][variety_idx]);

          if (special_unit_info->value)
            self->special_unit_info[type][variety_idx]
              = strdup (special_unit_info->value);
          else
            self->special_unit_info[type][variety_idx] = 0;
        }
    }
}

static HTML_DIRECTION_STRING_TRANSLATED *
new_directions_strings_translated_type (int nr_string_directions)
{
  HTML_DIRECTION_STRING_TRANSLATED *result
    = (HTML_DIRECTION_STRING_TRANSLATED *) malloc
        (nr_string_directions * sizeof (HTML_DIRECTION_STRING_TRANSLATED));
  memset (result, 0,
          nr_string_directions * sizeof (HTML_DIRECTION_STRING_TRANSLATED));
  return result;
}

static int *
determine_non_default_special_unit_directions (const CONVERTER *self)
{
  size_t i;
  size_t nr_special_units = self->special_unit_varieties.number;
  int *non_default_special_unit_directions = 0;
  /* determine the special units directions that are not the same as
     the default units directions.  If not the same as the defaults,
     the default direction info should not be used as they are not for
     the customized special unit direction */
  if (nr_special_units > 0)
    {
      non_default_special_unit_directions = (int *)
                      malloc (nr_special_units * sizeof (int));
      memset (non_default_special_unit_directions, 0,
              nr_special_units * sizeof (int));

      for (i = 0; i < nr_special_units; i++)
        {
          if (strcmp (self->special_unit_info[SUI_type_direction][i],
                  default_special_unit_info[SUI_type_direction][i]))
            non_default_special_unit_directions[i] = 1;
        }
    }
  return non_default_special_unit_directions;
}

static int
register_type_conversion_function (TYPE_CONVERSION_FUNCTION *result,
                                   enum element_type type,
                                   FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->type_conversion = &html_type_conversion_external;
          result->formatting_reference = formatting_reference;
          return 1;
        }
    }
  return 0;
}

static int
register_type_open_function (TYPE_OPEN_FUNCTION *result,
                             enum element_type type,
                             FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->type_open = &html_type_open_external;
          result->formatting_reference = formatting_reference;
          return 1;
        }
    }
  return 0;
}

static int
register_command_conversion_function (COMMAND_CONVERSION_FUNCTION *result,
                         enum command_id cmd,
                         FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->command_conversion = &html_command_conversion_external;
          result->formatting_reference = formatting_reference;
          return 1;
        }
    }
  return 0;
}

static int
register_command_open_function (COMMAND_OPEN_FUNCTION *result,
                                enum command_id cmd,
                                FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->command_open = &html_command_open_external;
          result->formatting_reference = formatting_reference;
          return 1;
        }
    }
  return 0;
}

static int
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
          result->output_unit_conversion
            = &html_output_unit_conversion_external;
          result->formatting_reference = formatting_reference;
          return 1;
        }
    }
  return 0;
}

static int
register_special_unit_body_formatting_function
                                  (SPECIAL_UNIT_BODY_FORMATTING *result,
                                   const char *special_unit_variety,
                                   FORMATTING_REFERENCE *formatting_reference)
{
  if (formatting_reference && formatting_reference->status > 0)
    {
      result->status = formatting_reference->status;
      if (formatting_reference->status != FRS_status_ignored)
        {
          result->special_unit_body_formatting
               = &html_special_unit_body_formatting_external;
          result->formatting_reference = formatting_reference;
          return 1;
        }
    }
  return 0;
}

static int
compare_htmlxref_manual (const void *a, const void *b)
{
  const HTMLXREF_MANUAL *hxfm_a = (const HTMLXREF_MANUAL *) a;
  const HTMLXREF_MANUAL *hxfm_b = (const HTMLXREF_MANUAL *) b;

  return strcmp (hxfm_a->manual, hxfm_b->manual);
}

typedef struct COMMAND_INTERNAL_CONVERSION {
    enum command_id cmd;
    void (* command_conversion) (struct CONVERTER *self,
                                 const enum command_id cmd,
                                 const ELEMENT *element,
                                 const HTML_ARGS_FORMATTED *args_formatted,
                                 const char *content, TEXT *result);
} COMMAND_INTERNAL_CONVERSION;

/* associate command to the C function implementing the conversion */
static const COMMAND_INTERNAL_CONVERSION commands_internal_conversion_table[] = {
  {CM_today, &html_convert_today_command},
  {CM_w, &html_convert_w_command},
  {CM_value, &html_convert_value_command},
  {CM_email, &html_convert_email_command},
  {CM_abbr, &html_convert_explained_command},
  {CM_acronym, &html_convert_explained_command},
  {CM_anchor, &html_convert_anchor_command},
  {CM_footnote, &html_convert_footnote_command},
  {CM_uref, &html_convert_uref_command},
  {CM_url, &html_convert_uref_command},
  {CM_image, &html_convert_image_command},
  {CM_math, &html_convert_math_command},
  /* note that if indicateurl had been in style_formatted_cmd this
     would have prevented indicateurl to be associated to
     convert_style_command */
  {CM_indicateurl, &html_convert_indicateurl_command},
  {CM_titlefont, &html_convert_titlefont_command},
  {CM_U, &html_convert_U_command},

  {CM_inlineraw, &html_convert_inline_command},
  {CM_inlinefmt, &html_convert_inline_command},
  {CM_inlinefmtifelse, &html_convert_inline_command},
  {CM_inlineifclear, &html_convert_inline_command},
  {CM_inlineifset, &html_convert_inline_command},

  {CM_inforef, &html_convert_xref_command},
  {CM_link, &html_convert_xref_command},
  {CM_xref, &html_convert_xref_command},
  {CM_ref, &html_convert_xref_command},
  {CM_pxref, &html_convert_xref_command},

  {CM_html, &html_convert_raw_command},
  {CM_tex, &html_convert_raw_command},
  {CM_xml, &html_convert_raw_command},
  {CM_docbook, &html_convert_raw_command},
  {CM_latex, &html_convert_raw_command},

  {CM_indentedblock, &html_convert_indented_command},
  {CM_smallindentedblock, &html_convert_indented_command},
  {CM_verbatim, &html_convert_verbatim_command},
  {CM_displaymath, &html_convert_displaymath_command},
  {CM_raggedright, &html_convert_simple_block_command},
  {CM_flushleft, &html_convert_simple_block_command},
  {CM_flushright, &html_convert_simple_block_command},
  {CM_group, &html_convert_simple_block_command},
  {CM_menu, &html_convert_menu_command},
  {CM_detailmenu, &html_convert_menu_command},
  {CM_float, &html_convert_float_command},
  {CM_quotation, &html_convert_quotation_command},
  {CM_smallquotation, &html_convert_quotation_command},
  {CM_cartouche, &html_convert_cartouche_command},
  {CM_itemize, &html_convert_itemize_command},
  {CM_enumerate, &html_convert_enumerate_command},
  {CM_multitable, &html_convert_multitable_command},
  {CM_table, &html_convert_xtable_command},
  {CM_ftable, &html_convert_xtable_command},
  {CM_vtable, &html_convert_xtable_command},

  {CM_verbatiminclude, &html_convert_verbatiminclude_command},
  {CM_sp, &html_convert_sp_command},
  {CM_exdent, &html_convert_exdent_command},
  {CM_center, &html_convert_center_command},
  {CM_author, &html_convert_author_command},
  {CM_title, &html_convert_title_command},
  {CM_subtitle, &html_convert_subtitle_command},
  {CM_item, &html_convert_item_command},
  {CM_headitem, &html_convert_item_command},
  {CM_itemx, &html_convert_item_command},
  {CM_tab, &html_convert_tab_command},
  {CM_insertcopying, &html_convert_insertcopying_command},
  {CM_listoffloats, &html_convert_listoffloats_command},
  {CM_printindex, &html_convert_printindex_command},
  /* @informative_global_commands in perl */
  {CM_documentlanguage, &html_convert_informative_command},
  {CM_footnotestyle, &html_convert_informative_command},
  {CM_xrefautomaticsectiontitle, &html_convert_informative_command},
  {CM_deftypefnnewline, &html_convert_informative_command},

  {CM_contents, &html_convert_contents_command},
  {CM_shortcontents, &html_convert_contents_command},
  {CM_summarycontents, &html_convert_contents_command},

  /* other @def* commands are handled together */
  {CM_defblock, &html_convert_def_command},

  {CM_node, &html_convert_heading_command},
  {CM_top, &html_convert_heading_command},
  {CM_chapter, &html_convert_heading_command},
  {CM_unnumbered, &html_convert_heading_command},
  {CM_chapheading, &html_convert_heading_command},
  {CM_appendix, &html_convert_heading_command},
  {CM_section, &html_convert_heading_command},
  {CM_unnumberedsec, &html_convert_heading_command},
  {CM_heading, &html_convert_heading_command},
  {CM_appendixsec, &html_convert_heading_command},
  {CM_subsection, &html_convert_heading_command},
  {CM_unnumberedsubsec, &html_convert_heading_command},
  {CM_subheading, &html_convert_heading_command},
  {CM_appendixsubsec, &html_convert_heading_command},
  {CM_subsubsection, &html_convert_heading_command},
  {CM_unnumberedsubsubsec, &html_convert_heading_command},
  {CM_subsubheading, &html_convert_heading_command},
  {CM_appendixsubsubsec, &html_convert_heading_command},
  {CM_part, &html_convert_heading_command},
  {CM_appendixsection, &html_convert_heading_command},
  {CM_majorheading, &html_convert_heading_command},
  {CM_centerchap, &html_convert_heading_command},

  {0, 0},
};

typedef struct COMMAND_INTERNAL_OPEN {
    enum command_id cmd;
    void (* command_open) (CONVERTER *self, const enum command_id cmd,
                           const ELEMENT *element, TEXT *result);
} COMMAND_INTERNAL_OPEN;

/* associate command to the C function implementing the opening */
static const COMMAND_INTERNAL_OPEN commands_internal_open_table[] = {
  {CM_quotation, &html_open_quotation_command},
  {CM_smallquotation, &html_open_quotation_command},
  {0, 0},
};

typedef struct TYPE_INTERNAL_CONVERSION {
    enum element_type type;
    void (* type_conversion) (CONVERTER *self, const enum element_type type,
                              const ELEMENT *element, const char *content,
                              TEXT *result);
} TYPE_INTERNAL_CONVERSION;

/* associate type to the C function implementing the conversion */
static const TYPE_INTERNAL_CONVERSION types_internal_conversion_table[] = {
  {ET_text, &html_convert_text},
  {ET_paragraph, &html_convert_paragraph_type},
  {ET_preformatted, &html_convert_preformatted_type},
  {ET_balanced_braces, &html_convert_balanced_braces_type},
  {ET_index_entry_command, &html_convert_index_entry_command_type},
  {ET_definfoenclose_command, &html_convert_definfoenclose_type},
  {ET_untranslated_def_line_arg,
   &html_convert_untranslated_def_line_arg_type},
  {ET_row, &html_convert_row_type},
  {ET_multitable_head, &html_convert_multitable_head_type},
  {ET_multitable_body, &html_convert_multitable_body_type},
  {ET_menu_entry, &html_convert_menu_entry_type},
  {ET_menu_comment, &html_convert_menu_comment_type},
  {ET_before_item, &html_convert_before_item_type},
  {ET_table_term, &html_convert_table_term_type},
  {ET_def_line, &html_convert_def_line_type},
  {ET_def_item, &html_convert_def_item_type},
  {ET_inter_def_item, &html_convert_def_item_type},
  {ET_before_defline, &html_convert_def_item_type},
  {ET_table_definition, &html_convert_table_definition_type},
  {ET_inter_item, &html_convert_table_definition_type},

  {0, 0},
};

typedef struct TYPE_INTERNAL_OPEN {
    enum element_type type;
    void (* type_open) (CONVERTER *self, const enum element_type type,
                        const ELEMENT *element, TEXT *result);
} TYPE_INTERNAL_OPEN;

/* associate type to the C function implementing the opening */
static const TYPE_INTERNAL_OPEN types_internal_open_table[] = {
  {ET_paragraph, &html_open_inline_container_type},
  {ET_preformatted, &html_open_inline_container_type},
  {0, 0},
};

typedef struct OUTPUT_UNIT_INTERNAL_CONVERSION {
    enum output_unit_type type;
    void (* output_unit_conversion) (CONVERTER *self,
                        const enum output_unit_type unit_type,
                        const OUTPUT_UNIT *output_unit, const char *content,
                        TEXT *result);
} OUTPUT_UNIT_INTERNAL_CONVERSION;

static const OUTPUT_UNIT_INTERNAL_CONVERSION output_units_internal_conversion_table[] = {
  {OU_special_unit, &html_convert_special_unit_type},
  {OU_unit, &html_convert_unit_type},
  {0, 0},
};

typedef struct SPECIAL_UNIT_BODY_INTERNAL_CONVERSION {
    char *special_unit_variety;
    void (* special_unit_body_formatting) (CONVERTER *self,
                               const size_t special_unit_number,
                               const char *special_unit_variety,
                               const OUTPUT_UNIT *output_unit,
                               TEXT *result);
} SPECIAL_UNIT_BODY_INTERNAL_CONVERSION;

static const SPECIAL_UNIT_BODY_INTERNAL_CONVERSION
   special_unit_body_internal_formatting_table[] = {
  {"contents", &html_default_format_special_body_contents},
  {"shortcontents", &html_default_format_special_body_shortcontents},
  {"footnotes", &html_default_format_special_body_footnotes},
  {"about", &html_default_format_special_body_about},
  {0, 0},
};

/* When initializing from Perl, html_converter_initialize_sv is called first
   to set customization information based on Perl data.  Then this function
   is called for the remainder of initialization that requires customization
   information.
 */
void
html_converter_customize (CONVERTER *self)
{
  size_t i;
  int l;
  enum direction_string_type DS_type;
  size_t nr_special_units = self->special_unit_varieties.number;
  /* The corresponding direction without FirstInFile are used instead
     of FirstInFile*, so the directions_strings are not set */
  int nr_string_directions = NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR
                             + (int) nr_special_units;
  int nr_dir_str_contexts = TDS_context_string +1;
  int *non_default_special_unit_directions =
     determine_non_default_special_unit_directions (self);

  /* counters of external formatting functions */
  int external_special_unit_body_formatting_function = 0;
  int external_output_unit_conversion_function = 0;
  int external_command_conversion_function = 0;
  int external_command_open_function = 0;
  int external_type_conversion_function = 0;
  int external_type_open_function = 0;
  int external_formatting_function = 0;

  if (self->ids_data_type == IDT_perl_hashmap)
    init_registered_ids_hv (self);
  else
    self->registered_ids = new_string_list ();

  /* for @sc */
  for (l = 0; default_upper_case_commands[l]; l++)
    self->upper_case[default_upper_case_commands[l]] = 1;

  for (l = 0; default_code_types[l]; l++)
    self->code_types[default_code_types[l]] = 1;

  for (l = 0; default_pre_class_types[l].type; l++)
    {
      const PRE_CLASS_TYPE_INFO *pre_class_type = &default_pre_class_types[l];
      self->pre_class_types[pre_class_type->type]
        = strdup (pre_class_type->pre_class);
    }

  for (l = 0; xml_accent_text_entities[l].cmd; l++)
    {
      enum command_id cmd = xml_accent_text_entities[l].cmd;
      const ACCENT_ENTITY_INFO *xml_accent_info
        = &xml_accent_text_entities[l].accent_entity_info;
      ACCENT_ENTITY_INFO *accent_info = &self->accent_entities[cmd];

      if (xml_accent_info->entity)
        accent_info->entity = strdup (xml_accent_info->entity);
      if (xml_accent_info->characters)
        accent_info->characters = strdup (xml_accent_info->characters);
    }

  for (i = 0; i < style_formatted_cmd.number; i++)
    {
      enum command_id cmd = style_formatted_cmd.list[i];
      enum conversion_context cctx;
      for (cctx = 0; cctx < STYLE_COMMAND_CONTEXT_NR; cctx++)
        {
          HTML_STYLE_COMMAND_CONVERSION *format_spec
            = &self->html_style_command_conversion[cmd][cctx];
          HTML_STYLE_COMMAND_CONVERSION *default_spec
            = &default_style_commands_formatting[cmd][cctx];

          if (default_spec->element)
            format_spec->element = strdup (default_spec->element);
          format_spec->quote = default_spec->quote;
        }
    }

  /* apply customization (from Perl) */

  if (self->html_customized_upper_case_commands)
    {
      for (l = 0; self->html_customized_upper_case_commands[l].cmd; l++)
        {
          COMMAND_INTEGER_INFORMATION *customized_upper
            = &self->html_customized_upper_case_commands[l];
          self->upper_case[customized_upper->cmd] = customized_upper->integer;
        }
    }

  if (self->html_customized_code_types)
    {
      for (l = 0; self->html_customized_code_types[l].type; l++)
        {
          TYPE_INTEGER_INFORMATION *customized_code
            = &self->html_customized_code_types[l];
          self->code_types[customized_code->type] = customized_code->integer;
        }
    }

  if (self->html_customized_pre_class_types)
    {
      for (l = 0; self->html_customized_pre_class_types[l].type; l++)
        {
          PRE_CLASS_TYPE_INFO *customized_pre_class
            = &self->html_customized_pre_class_types[l];
          enum element_type type = customized_pre_class->type;

          free (self->pre_class_types[type]);
          self->pre_class_types[type]
             = strdup (customized_pre_class->pre_class);
        }
    }

  if (self->html_customized_accent_entity_info)
    {
      for (l = 0; self->html_customized_accent_entity_info[l].cmd; l++)
        {
          enum command_id cmd = self->html_customized_accent_entity_info[l].cmd;
          const ACCENT_ENTITY_INFO *custom_accent_info
            = &self->html_customized_accent_entity_info[l].accent_entity_info;
          ACCENT_ENTITY_INFO *accent_info = &self->accent_entities[cmd];

          if (custom_accent_info->entity)
            {
              free (accent_info->entity);
              if (strlen (custom_accent_info->entity))
                accent_info->entity = strdup (custom_accent_info->entity);
              else
                accent_info->entity = 0;
            }
          if (custom_accent_info->characters)
            {
              free (accent_info->characters);
              accent_info->characters = strdup (custom_accent_info->characters);
            }
        }
    }

  if (self->html_customized_style_commands)
    {
      for (l = 0; self->html_customized_style_commands[l].cmd; l++)
        {
          enum conversion_context cctx;
          enum command_id cmd = self->html_customized_style_commands[l].cmd;
          /* should not happen thanks to checks in perl
          if (!(html_commands_data[cmd].flags & HF_style_command))
            fprintf (stderr, "ERROR: %s: customized as style command\n",
                     builtin_command_name (cmd));
           */

          for (cctx = 0; cctx < STYLE_COMMAND_CONTEXT_NR; cctx++)
            {
              if (self->html_customized_style_commands[l].conversion[cctx])
                {
                  HTML_STYLE_COMMAND_CONVERSION *format_spec
                    = &self->html_style_command_conversion[cmd][cctx];
                  HTML_STYLE_COMMAND_CONVERSION *custom_spec
                    = self->html_customized_style_commands[l].conversion[cctx];

                  free (format_spec->element);

                  if (custom_spec->element)
                    format_spec->element = strdup (custom_spec->element);
                  else
                    format_spec->element = 0;
                  format_spec->quote = custom_spec->quote;
                }
            }
        }
    }

  /* initialization needing some information not available before.  Besides
     customized information, mainly nr_special_units, which we
     pretend could be customize (even though it cannot for now) */

  self->direction_unit_direction_name = (const char **) malloc
     ((nr_special_units + NON_SPECIAL_DIRECTIONS_NR +1) * sizeof (char *));
  memcpy (self->direction_unit_direction_name, html_button_direction_names,
          NON_SPECIAL_DIRECTIONS_NR * sizeof (char *));
  memcpy (self->direction_unit_direction_name + NON_SPECIAL_DIRECTIONS_NR,
          self->special_unit_info[SUI_type_direction],
          nr_special_units * sizeof (char *));
  self->direction_unit_direction_name[
               nr_special_units + NON_SPECIAL_DIRECTIONS_NR] = 0;
  /*
  for (l = 0; self->direction_unit_direction_name[l]; l++)
    fprintf (stderr, "DEBUG: direction unit names: %d '%s'\n", l,
             self->direction_unit_direction_name[l]);
   */



  /* setup translated_direction_strings */
  for (DS_type = 0; DS_type < TDS_TRANSLATED_MAX_NR; DS_type++)
    {
      self->translated_direction_strings[DS_type]
        = new_directions_strings_translated_type (nr_string_directions);
      for (l = 0; l < nr_string_directions; l++)
        {
          HTML_DIRECTION_STRING_TRANSLATED *dir_string_translated
            = &self->translated_direction_strings[DS_type][l];
          if (self->customized_translated_direction_strings[DS_type]
              && self->customized_translated_direction_strings[DS_type][l])
            {
              HTML_DIRECTION_STRING_TRANSLATED *custom_dir_translated
                = self->customized_translated_direction_strings[DS_type][l];
              if (custom_dir_translated->to_convert)
                dir_string_translated->to_convert
                  = strdup (custom_dir_translated->to_convert);
              else
                {
                  int j;

                  for (j = 0; j < nr_dir_str_contexts; j++)
                    if (custom_dir_translated->converted[j])
                      dir_string_translated->converted[j]
                        = strdup (custom_dir_translated->converted[j]);
                }
            }
          else if (l < NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR
                  || !non_default_special_unit_directions[
                       l - (NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR)])
            {
              const HTML_DEFAULT_DIRECTION_STRING_TRANSLATED *default_dir_translated
                = &default_translated_directions_strings[DS_type][l];
              if (default_dir_translated->to_convert)
                dir_string_translated->to_convert
                  = strdup (default_dir_translated->to_convert);
              else
                {
                  if (default_dir_translated->converted)
                    {
                      int j;

                      for (j = 0; j < nr_dir_str_contexts; j++)
                          dir_string_translated->converted[j]
                            = strdup (default_dir_translated->converted);
                    }
                }
            }
        }
    }

  free (non_default_special_unit_directions);


  /* allocate space for translated tree types, they will be created
     on-demand during the conversion */
  for (l = 0; l < SUIT_type_heading+1; l++)
    {
      self->special_unit_info_tree[l] = (ELEMENT **)
        malloc ((nr_special_units +1) * sizeof (ELEMENT *));
      memset (self->special_unit_info_tree[l], 0,
               (nr_special_units +1) * sizeof (ELEMENT *));
    }

  self->global_units_directions
    = (const OUTPUT_UNIT **) malloc ((D_Last + nr_special_units+1)
                               * sizeof (OUTPUT_UNIT));

  /* note that we allocate the same size as no_arg_formatted_cmd
     even though in general there are much less translated commands,
     for simplicity */
  if (no_arg_formatted_cmd.number)
    {
      self->no_arg_formatted_cmd_translated.list = (enum command_id *)
       malloc (no_arg_formatted_cmd.number * sizeof (enum command_id));
      memset (self->no_arg_formatted_cmd_translated.list, 0,
              no_arg_formatted_cmd.number * sizeof (enum command_id));
    }

  for (l = 0; command_special_unit_variety[l].cmd; l++)
    {
      char *special_unit_variety = command_special_unit_variety[l].variety;
      /* number is index +1 */
      size_t number = find_string (&self->special_unit_varieties,
                                   special_unit_variety);
      enum command_id cmd = command_special_unit_variety[l].cmd;
      html_commands_data[cmd].flags |= HF_special_variety;
      self->command_special_variety_name_index[l].cmd = cmd;
      self->command_special_variety_name_index[l].index = number - 1;
    }

  for (l = 0; ignored_types[l]; l++)
    {
      enum element_type type = ignored_types[l];
      self->type_conversion_function[type].status = FRS_status_ignored;
    }

  for (l = 0; l < TXI_TREE_TYPES_NUMBER; l++)
    {
      int status = register_type_conversion_function (
                                        &self->type_conversion_function[l],
                                        l, &self->types_conversion[l]);
      external_type_conversion_function += status;

      status = register_type_open_function (&self->type_open_function[l],
                                   l, &self->types_open[l]);
      external_type_open_function += status;

      register_type_conversion_function (
             &self->css_string_type_conversion_function[l], l,
             &self->css_string_types_conversion[l]);
    }

  for (l = 0; l < BUILTIN_CMD_NUMBER; l++)
    {
      int status = register_command_conversion_function (
                            &self->command_conversion_function[l],
                            l, &self->commands_conversion[l]);
      external_command_conversion_function += status;

      status = register_command_open_function (
                            &self->command_open_function[l],
                            l, &self->commands_open[l]);
      external_command_open_function += status;

      register_command_conversion_function (
            &self->css_string_command_conversion_function[l], l,
             &self->css_string_commands_conversion[l]);
    }

  for (l = 0; l < OU_special_unit+1; l++)
    {
      int status = register_output_unit_conversion_function
                                  (&self->output_unit_conversion_function[l],
                                        l, &self->output_units_conversion[l]);
      external_output_unit_conversion_function += status;
    }

  self->special_unit_body_formatting = (SPECIAL_UNIT_BODY_FORMATTING *)
    malloc (nr_special_units * sizeof (SPECIAL_UNIT_BODY_FORMATTING));
  memset (self->special_unit_body_formatting, 0,
          nr_special_units * sizeof (SPECIAL_UNIT_BODY_FORMATTING));

  for (i = 0; i < nr_special_units; i++)
    {
      int status;
      FORMATTING_REFERENCE *formatting_reference = 0;
      if (self->special_unit_body)
        {
          formatting_reference = &self->special_unit_body[i];
        }
      status = register_special_unit_body_formatting_function
                                  (&self->special_unit_body_formatting[i],
          self->special_unit_varieties.list[i], formatting_reference);
      external_special_unit_body_formatting_function += status;
    }

  qsort (self->htmlxref.list, self->htmlxref.number,
         sizeof (HTMLXREF_MANUAL), compare_htmlxref_manual);

  /* set to customization such that it is not replaced by C functions */
  if (self->conf->XS_EXTERNAL_FORMATTING.o.integer > 0)
    {
      for (l = 0; l < FR_format_translate_message+1; l++)
        if (self->formatting_references[l].status == FRS_status_default_set)
          {
            self->formatting_references[l].status
                                   = FRS_status_customization_set;
            external_formatting_function++;
          }
    }
  else
    { /* count the functions implemented in perl */
      for (l = 0; l < FR_format_translate_message+1; l++)
        if (self->formatting_references[l].status
                  == FRS_status_customization_set)
          external_formatting_function++;
    }

  /* remaining of the file is for the replacement of call to external
     functions by internal functions in C.
   */
  if (self->conf->XS_EXTERNAL_CONVERSION.o.integer > 0)
    goto out;

  for (i = 0; types_internal_conversion_table[i].type_conversion; i++)
    {
      enum element_type type = types_internal_conversion_table[i].type;
      TYPE_CONVERSION_FUNCTION *type_conversion
         = &self->type_conversion_function[type];
      TYPE_CONVERSION_FUNCTION *css_string_type_conversion
         = &self->css_string_type_conversion_function[type];
      if (type_conversion->status == FRS_status_default_set
          || type_conversion->status == FRS_status_none)
        {
          type_conversion->formatting_reference = 0;
          type_conversion->status = FRS_status_internal;
          type_conversion->type_conversion
              = types_internal_conversion_table[i].type_conversion;
          if (type_conversion->status == FRS_status_default_set)
            external_type_conversion_function--;
        }
      css_string_type_conversion->formatting_reference = 0;
      css_string_type_conversion->status = FRS_status_internal;
      if (type == ET_text)
        css_string_type_conversion->type_conversion
          = &html_css_string_convert_text;
      else
        css_string_type_conversion->type_conversion
          = types_internal_conversion_table[i].type_conversion;
    }

  for (i = 0; types_internal_open_table[i].type_open; i++)
    {
      enum element_type type = types_internal_open_table[i].type;
      TYPE_OPEN_FUNCTION *type_open = &self->type_open_function[type];
      if (type_open->status == FRS_status_default_set
          || type_open->status == FRS_status_none)
        {
          type_open->formatting_reference = 0;
          type_open->status = FRS_status_internal;
          type_open->type_open
              = types_internal_open_table[i].type_open;
          if (type_open->status == FRS_status_default_set)
            external_type_open_function--;
        }
    }

  for (i = 0; commands_internal_conversion_table[i].command_conversion; i++)
    {
      enum command_id cmd = commands_internal_conversion_table[i].cmd;
      COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
      COMMAND_CONVERSION_FUNCTION *css_string_command_conversion
               = &self->css_string_command_conversion_function[cmd];
      if (command_conversion->status == FRS_status_default_set
          || command_conversion->status == FRS_status_none)
        {
          command_conversion->formatting_reference = 0;
          command_conversion->status = FRS_status_internal;
          command_conversion->command_conversion
              = commands_internal_conversion_table[i].command_conversion;
          if (command_conversion->status == FRS_status_default_set)
            external_command_conversion_function--;
        }
      css_string_command_conversion->formatting_reference = 0;
      css_string_command_conversion->status = FRS_status_internal;
      css_string_command_conversion->command_conversion
              = commands_internal_conversion_table[i].command_conversion;
    }

  if (strcmp (self->conf->FORMAT_MENU.o.string, "menu"))
    {
      static enum command_id menu_cmd_list[]
       = {CM_menu, CM_detailmenu, 0};
      int j;
      for (j = 0; menu_cmd_list[j]; j++)
        {
          enum command_id cmd = menu_cmd_list[j];
          COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
          if (command_conversion->status == FRS_status_internal)
            command_conversion->status = FRS_status_ignored;
        }
    }
  for (i = 0; i < format_raw_cmd.number; i++)
    {
      enum command_id cmd = format_raw_cmd.list[i];
      COMMAND_CONVERSION_FUNCTION *command_conversion
        = &self->command_conversion_function[cmd];
      if (command_conversion->status == FRS_status_internal)
        {
          const char *format = builtin_command_name (cmd);
          if (!format_expanded_p (self->expanded_formats, format))
            command_conversion->status = FRS_status_ignored;
        }
    }

  /* all the no arg formatted commands are implemented in C */
  for (i = 0; i < no_arg_formatted_cmd.number; i++)
    {
      enum command_id cmd = no_arg_formatted_cmd.list[i];
      COMMAND_CONVERSION_FUNCTION *command_conversion
           = &self->command_conversion_function[cmd];
      COMMAND_CONVERSION_FUNCTION *css_string_command_conversion
           = &self->css_string_command_conversion_function[cmd];
      if (command_conversion->status == FRS_status_default_set
          || command_conversion->status == FRS_status_none)
        {
          command_conversion->formatting_reference = 0;
          command_conversion->status = FRS_status_internal;
          command_conversion->command_conversion
            = &html_convert_no_arg_command;
          if (command_conversion->status == FRS_status_default_set)
            external_command_conversion_function--;
        }

      css_string_command_conversion->formatting_reference = 0;
      css_string_command_conversion->status = FRS_status_internal;
      css_string_command_conversion->command_conversion
        = &html_css_string_convert_no_arg_command;
    }

  /* accents commands implemented in C */
  if (accent_cmd.number)
    {
      for (i = 0; i < accent_cmd.number; i++)
        {
          enum command_id cmd = accent_cmd.list[i];
          COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
          COMMAND_CONVERSION_FUNCTION *css_string_command_conversion
               = &self->css_string_command_conversion_function[cmd];
          if (command_conversion->status == FRS_status_default_set
              || command_conversion->status == FRS_status_none)
            {
              command_conversion->formatting_reference = 0;
              command_conversion->status = FRS_status_internal;
              command_conversion->command_conversion
                = &html_convert_accent_command;
              if (command_conversion->status == FRS_status_default_set)
                external_command_conversion_function--;
            }
          css_string_command_conversion->formatting_reference = 0;
          css_string_command_conversion->status = FRS_status_internal;
          css_string_command_conversion->command_conversion
            = &html_css_string_convert_accent_command;
        }
    }

  /* all the commands in style_formatted_cmd are implemented in C.
     It is not only the style commands, some others too.  indicateurl
     is not in style_formatted_cmd for now either */
  if (style_formatted_cmd.number)
    {
      for (i = 0; i < style_formatted_cmd.number; i++)
        {
          enum command_id cmd = style_formatted_cmd.list[i];
          COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
          COMMAND_CONVERSION_FUNCTION *css_string_command_conversion
               = &self->css_string_command_conversion_function[cmd];

          if (command_conversion->status == FRS_status_default_set
              || command_conversion->status == FRS_status_none)
            {
              command_conversion->formatting_reference = 0;
              command_conversion->status = FRS_status_internal;
              command_conversion->command_conversion
                = &html_convert_style_command;
              if (command_conversion->status == FRS_status_default_set)
                external_command_conversion_function--;
            }

          css_string_command_conversion->formatting_reference = 0;
          css_string_command_conversion->status = FRS_status_internal;
          css_string_command_conversion->command_conversion
            = &html_convert_style_command;
        }
    }

  /* preformatted commands are implemented in C */
  if (preformatted_cmd_list.top > 0)
    {
      for (i = 0; i < preformatted_cmd_list.top; i++)
        {
          enum command_id cmd = preformatted_cmd_list.stack[i];
          COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
          COMMAND_CONVERSION_FUNCTION *css_string_command_conversion
               = &self->css_string_command_conversion_function[cmd];

          if (command_conversion->status == FRS_status_default_set
              || command_conversion->status == FRS_status_none)
            {
              command_conversion->formatting_reference = 0;
              command_conversion->status = FRS_status_internal;
              command_conversion->command_conversion
                = &html_convert_preformatted_command;
              if (command_conversion->status == FRS_status_default_set)
                external_command_conversion_function--;
            }

          css_string_command_conversion->formatting_reference = 0;
          css_string_command_conversion->status = FRS_status_internal;
          css_string_command_conversion->command_conversion
            = &html_convert_preformatted_command;
        }
    }
  /* def commands are implemented in C */
  if (def_cmd_list.top > 0)
    {
      for (i = 0; i < def_cmd_list.top; i++)
        {
          enum command_id cmd = def_cmd_list.stack[i];
          COMMAND_CONVERSION_FUNCTION *command_conversion
               = &self->command_conversion_function[cmd];
          COMMAND_CONVERSION_FUNCTION *css_string_command_conversion
               = &self->css_string_command_conversion_function[cmd];

          if (command_conversion->status == FRS_status_default_set
              || command_conversion->status == FRS_status_none)
            {
              command_conversion->formatting_reference = 0;
              command_conversion->status = FRS_status_internal;
              command_conversion->command_conversion
                = &html_convert_def_command;
              if (command_conversion->status == FRS_status_default_set)
                external_command_conversion_function--;
            }

          css_string_command_conversion->formatting_reference = 0;
          css_string_command_conversion->status = FRS_status_internal;
          css_string_command_conversion->command_conversion
            = &html_convert_def_command;
        }
    }

  for (i = 0; commands_internal_open_table[i].command_open; i++)
    {
      enum command_id cmd = commands_internal_open_table[i].cmd;
      COMMAND_OPEN_FUNCTION *command_open = &self->command_open_function[cmd];
      if (command_open->status == FRS_status_default_set
          || command_open->status == FRS_status_none)
        {
          command_open->formatting_reference = 0;
          command_open->status = FRS_status_internal;
          command_open->command_open
              = commands_internal_open_table[i].command_open;
          if (command_open->status == FRS_status_default_set)
            external_command_open_function--;
        }
    }

  for (i = 0;
     output_units_internal_conversion_table[i].output_unit_conversion; i++)
    {
      enum output_unit_type type
           = output_units_internal_conversion_table[i].type;
      OUTPUT_UNIT_CONVERSION_FUNCTION *output_unit_conversion
         = &self->output_unit_conversion_function[type];
      if (output_unit_conversion->status == FRS_status_default_set
          || output_unit_conversion->status == FRS_status_none)
        {
          output_unit_conversion->formatting_reference = 0;
          output_unit_conversion->status = FRS_status_internal;
          output_unit_conversion->output_unit_conversion
           = output_units_internal_conversion_table[i].output_unit_conversion;
          if (output_unit_conversion->status == FRS_status_default_set)
            external_output_unit_conversion_function--;
        }
    }

  for (i = 0;
    special_unit_body_internal_formatting_table[i].special_unit_variety; i++)
    {
      const SPECIAL_UNIT_BODY_INTERNAL_CONVERSION *internal_conversion
        = &special_unit_body_internal_formatting_table[i];
      /* number is index +1 */
      size_t number = find_string (&self->special_unit_varieties,
                                   internal_conversion->special_unit_variety);
      int j = number -1;
      if (j >= 0)
        {
          SPECIAL_UNIT_BODY_FORMATTING *body_formatting
            = &self->special_unit_body_formatting[j];
          if (body_formatting->status == FRS_status_default_set
              || body_formatting->status == FRS_status_none)
            {
              body_formatting->formatting_reference = 0;
              body_formatting->status = FRS_status_internal;
              body_formatting->special_unit_body_formatting
                = internal_conversion->special_unit_body_formatting;
              if (body_formatting->status == FRS_status_default_set)
                external_special_unit_body_formatting_function--;
            }
        }
    }

 out:
  self->external_references_number = self->conf->BIT_user_function_number
        + self->file_id_setting_ref_number
        + external_special_unit_body_formatting_function
        + external_output_unit_conversion_function
        + external_command_conversion_function
        + external_command_open_function
        + external_type_conversion_function
        + external_type_open_function
        + external_formatting_function;

   /*
  fprintf (stderr, "TOTAL: %d. conf %zu fi %d sbf %d ouc %d cc %d co %d tc %d to %d f %d\n",
           self->external_references_number,
           self->conf->BIT_user_function_number,
           self->file_id_setting_ref_number,
           external_special_unit_body_formatting_function,
           external_output_unit_conversion_function,
           external_command_conversion_function,
           external_command_open_function,
           external_type_conversion_function,
           external_type_open_function,
           external_formatting_function);
    */
}

static void
copy_html_no_arg_command_conversion (HTML_NO_ARG_COMMAND_CONVERSION *to,
                                     HTML_NO_ARG_COMMAND_CONVERSION *from)
{
  if (from->element)
    to->element = strdup (from->element);
  to->unset = from->unset;
  if (from->text)
    to->text = strdup (from->text);
  if (from->translated_converted)
    to->translated_converted = strdup (from->translated_converted);
  if (from->translated_to_convert)
    to->translated_to_convert = strdup (from->translated_to_convert);
}

char ***
new_directions_strings_type (int nr_string_directions,
                             int nr_dir_str_contexts)
{
  int i;
  char ***result = (char ***)
        malloc (nr_string_directions * sizeof (char **));
  memset (result, 0,
          nr_string_directions * sizeof (char **));

  for (i = 0; i < nr_string_directions; i++)
    {
      result[i] = (char **)
         malloc (nr_dir_str_contexts * sizeof (char *));
      memset (result[i], 0,
              nr_dir_str_contexts * sizeof (char *));
    }

  return result;
}

/* transform <hr> to <hr/>
   main effect is s/^(<[a-zA-Z]+[^<>]*)>$/$1\/>/ */
static char *
xhtml_re_close_lone_element (const char *input)
{
  size_t len = strlen (input);
  size_t n;
  const char *p;
  char *result;
  if (len < 3 || input[len -1] != '>' || input[0] != '<'
      || !isascii_alpha (input[1]))
    return strdup (input);

  /* before > */
  p = input + len - 2;
  while (p > input +1)
    {
      if (*p == '/')
        /* already a closed lone element */
        return strdup (input);
      if (strchr (whitespace_chars, *p))
        p--;
      else
        break;
    }

  p = input + 2;
  n = strcspn (p, "<>");
  if (n +2 != len -1)
    return strdup (input);

  result = (char *) malloc ((len +1 +1) * sizeof (char));
  memcpy (result, input, (len -1) * sizeof (char));
  result[len -1] = '/';
  result[len] = '>';
  result[len+1] = '\0';

  return result;
}

static void
close_lone_conf_element (OPTION *option)
{
  const char *variable_value = option->o.string;
  if (variable_value)
    {
      char *closed_lone_element = xhtml_re_close_lone_element (variable_value);
      if (strcmp (closed_lone_element, variable_value))
        {
          option_force_conf (option, 0, closed_lone_element);
        }
      free (closed_lone_element);
    }
}

int
compare_index_name (const void *a, const void *b)
{
  const INDEX **idx_a = (const INDEX **) a;
  const INDEX **idx_b = (const INDEX **) b;

  return strcmp ((*idx_a)->name, (*idx_b)->name);
}

const enum command_id spaces_cmd[] = {CM_SPACE, CM_TAB, CM_NEWLINE, CM_tie};

/* called very early in conversion functions, before updating
   customization, before calling user-defined functions...  */
void
html_initialize_output_state (CONVERTER *self, const char *context)
{
  int i;
  size_t j;
  const char *output_encoding;
  int nr_special_units = self->special_unit_varieties.number;
  /* The corresponding direction without FirstInFile are used instead
     of FirstInFile*, so the directions_strings are not set */
  int nr_string_directions = NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR
                     + nr_special_units;
  int nr_dir_str_contexts = TDS_context_string + 1;
  enum direction_string_type DS_type;
  const char *line_break_element;
  int css_style_idx = 0;
  int *non_default_special_unit_directions =
     determine_non_default_special_unit_directions (self);

  if (!self->document && self->conf->DEBUG.o.integer > 0)
    {
      fprintf (stderr, "REMARK: html_initialize_output_state: no document");
    }

  /* corresponds with default_no_arg_commands_formatting
     + conf_default_no_arg_commands_formatting_normal in Perl */
  HTML_NO_ARG_COMMAND_CONVERSION
   output_no_arg_commands_formatting[BUILTIN_CMD_NUMBER]
                                              [NO_ARG_COMMAND_CONTEXT_NR];

  output_encoding = self->conf->OUTPUT_ENCODING_NAME.o.string;

  for (i = 0; i < SC_non_breaking_space+1; i++)
    {
      const char *unicode_point = special_characters_formatting[i][2];
      const char *entity = special_characters_formatting[i][0];
      const char *encoded_string = special_characters_formatting[i][1];
      const char *numeric_entity = special_characters_formatting[i][3];
      const char *special_character_string;

      if (self->conf->OUTPUT_CHARACTERS.o.integer > 0
          && unicode_point_decoded_in_encoding (output_encoding,
                                                unicode_point))
        special_character_string = encoded_string;
      else if (self->conf->USE_NUMERIC_ENTITY.o.integer > 0)
        special_character_string = numeric_entity;
      else
        special_character_string = entity;

      self->special_character[i].string = special_character_string;
      self->special_character[i].len = strlen (special_character_string);
    }

  if (!self->conf->OPEN_QUOTE_SYMBOL.o.string)
    {
      int set = option_set_conf (&self->conf->OPEN_QUOTE_SYMBOL, 0,
                                 self->special_character[SC_left_quote].string);
      /* override undef set in init file/command line */
      if (!set)
        option_force_conf (&self->conf->OPEN_QUOTE_SYMBOL, 0, "");
    }
  if (!self->conf->CLOSE_QUOTE_SYMBOL.o.string)
    {
      int set = option_set_conf (&self->conf->CLOSE_QUOTE_SYMBOL, 0,
                              self->special_character[SC_right_quote].string);
      /* override undef set in init file/command line */
      if (!set)
        option_force_conf (&self->conf->CLOSE_QUOTE_SYMBOL, 0, "");
    }
  if (!self->conf->MENU_SYMBOL.o.string)
    {
      int set = option_set_conf (&self->conf->MENU_SYMBOL, 0,
                                 self->special_character[SC_bullet].string);
      /* override undef set in init file/command line */
      if (!set)
        option_force_conf (&self->conf->MENU_SYMBOL, 0, "");
    }

  if (self->conf->USE_XML_SYNTAX.o.integer > 0)
    {
      close_lone_conf_element (&self->conf->BIG_RULE);
      close_lone_conf_element (&self->conf->DEFAULT_RULE);
      line_break_element = "<br/>";
    }
  else
    line_break_element = "<br>";

  self->line_break_element.string = line_break_element;
  self->line_break_element.len = strlen (line_break_element);

  memcpy (output_no_arg_commands_formatting, default_no_arg_commands_formatting,
          sizeof (default_no_arg_commands_formatting));

  /* if not the textual entity */
  if (strcmp(self->special_character[SC_non_breaking_space].string,
             special_characters_formatting[SC_non_breaking_space][0]))
    {
      for (j = 0; j < sizeof (spaces_cmd) / sizeof (spaces_cmd[0]); j++)
        {
          enum command_id cmd = spaces_cmd[j];
          /* cast to drop const */
          output_no_arg_commands_formatting[cmd][HCC_type_normal].text
            = (char *)self->special_character[SC_non_breaking_space].string;
        }
    }

  if (self->conf->USE_NUMERIC_ENTITY.o.integer > 0)
    {
      for (j = 0; j < no_arg_formatted_cmd.number; j++)
        {
          enum command_id cmd = no_arg_formatted_cmd.list[j];
          if (unicode_entities[cmd])
            output_no_arg_commands_formatting[cmd][HCC_type_normal].text
              = unicode_entities[cmd];
        }
    }

  /* cast to discard const */
  output_no_arg_commands_formatting[CM_ASTERISK][HCC_type_normal].text
    = (char *)self->line_break_element.string;

  initialize_css_selector_style_list (&self->css_element_class_styles,
                                      default_css_element_class_styles.number);
  for (j = 0; j < default_css_element_class_styles.number; j++)
    {
      CSS_SELECTOR_STYLE *default_selector_style
        = &default_css_element_class_styles.list[j];
      if (default_selector_style->style)
        {
          CSS_SELECTOR_STYLE *selector_style
            = &self->css_element_class_styles.list[css_style_idx];
          selector_style->selector = strdup (default_selector_style->selector);
          selector_style->style = strdup (default_selector_style->style);
          css_style_idx++;
        }
      else
        self->css_element_class_styles.number--;
    }

  for (j = 0; j < no_arg_formatted_cmd.number; j++)
    {
      enum command_id cmd = no_arg_formatted_cmd.list[j];
      enum conversion_context cctx;
      for (cctx = 0; cctx < NO_ARG_COMMAND_CONTEXT_NR; cctx++)
        {
          HTML_NO_ARG_COMMAND_CONVERSION *customized_no_arg_cmd
            = self->customized_no_arg_commands_formatting[cmd][cctx];
          HTML_NO_ARG_COMMAND_CONVERSION *result
            = &self->html_no_arg_command_conversion[cmd][cctx];
          if (customized_no_arg_cmd)
            {
              copy_html_no_arg_command_conversion (result,
                                                   customized_no_arg_cmd);
            }
          else if (!output_no_arg_commands_formatting[cmd][cctx].unset)
            {
              const char *unicode_brace_no_arg_formatting = 0;
              if (self->conf->OUTPUT_CHARACTERS.o.integer > 0)
                {
                  unicode_brace_no_arg_formatting
                    = unicode_brace_no_arg_command (cmd,
                         self->conf->OUTPUT_ENCODING_NAME.o.string);
                }
              if (unicode_brace_no_arg_formatting)
                {
                  memset (result, 0, sizeof (HTML_NO_ARG_COMMAND_CONVERSION));
                  result->text
                    = strdup (unicode_brace_no_arg_formatting);

                  /* reset CSS for itemize command arguments */
                  if (cctx == HCC_type_css_string
                      && builtin_command_data[cmd].flags & CF_brace
                      && cmd != CM_bullet && cmd != CM_w)
                    {
                      const char *special_list_mark_command
                       = get_special_list_mark_css_string_no_arg_command (cmd);

                      if (!special_list_mark_command)
                        {
                           char *selector;
                           char *style;
                           xasprintf (&selector, "ul.mark-%s",
                                      builtin_command_name (cmd));
                           xasprintf (&style, "list-style-type: \"%s\"",
                                      result->text);
                           html_css_set_selector_style (
                                         &self->css_element_class_styles,
                                                        selector, style);
                           free (selector);
                           free (style);
                        }
                    }
                }
              else
                {
                  copy_html_no_arg_command_conversion (result,
                     &output_no_arg_commands_formatting[cmd][cctx]);
                }
            }
          else
            {
              copy_html_no_arg_command_conversion (result,
                &output_no_arg_commands_formatting[cmd][cctx]);
            }
        }
    }

  for (j = 0; j < no_arg_formatted_cmd.number; j++)
    {
      enum command_id cmd = no_arg_formatted_cmd.list[j];
      COMMAND_CONVERSION_FUNCTION *command_conversion
        = &self->command_conversion_function[cmd];
      if (command_conversion->status == FRS_status_default_set
          || command_conversion->status == FRS_status_internal)
        {
          html_complete_no_arg_commands_formatting (self, cmd, 0);
        }
    }

  for (DS_type = 0; DS_type < TDS_TYPE_MAX_NR; DS_type++)
    {
      int i;
      const char * const*default_converted_dir_str;
      char ***customized_type_dir_strings;

      self->directions_strings[DS_type]
        = new_directions_strings_type (nr_string_directions,
                                       nr_dir_str_contexts);

      /* those will be determined from translatable strings */
      if (DS_type < TDS_TRANSLATED_MAX_NR)
        continue;

      default_converted_dir_str =
        default_converted_directions_strings[
                                       DS_type - (TDS_TRANSLATED_MAX_NR)];
      customized_type_dir_strings = self->customized_directions_strings[
                                       DS_type - (TDS_TRANSLATED_MAX_NR)];
      for (i = 0; i < nr_string_directions; i++)
        {
          if (customized_type_dir_strings && customized_type_dir_strings[i])
            {
              int j;
              for (j = 0; j < nr_dir_str_contexts; j++)
                {
                  if (customized_type_dir_strings[i][j])
                    self->directions_strings[DS_type][i][j]
                      = html_substitute_non_breaking_space (self,
                                     customized_type_dir_strings[i][j]);
                }
            }
          else if (default_converted_dir_str[i])
            {
              if (i < NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR
                  || !non_default_special_unit_directions[
                       i - (NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR)])
                self->directions_strings[DS_type][i][TDS_context_normal]
                  = html_substitute_non_breaking_space (self,
                                            default_converted_dir_str[i]);
            }

          if (self->directions_strings[DS_type][i][TDS_context_normal]
              && !self->directions_strings[DS_type][i][TDS_context_string])
            {
              self->directions_strings[DS_type][i][TDS_context_string]
                 = strdup (
               self->directions_strings[DS_type][i][TDS_context_normal]);
            }
        }
    }

  free (non_default_special_unit_directions);

  sort_css_element_class_styles (&self->css_element_class_styles);

  /* set the htmlxref type split of the document */
  self->document_htmlxref_split_type = htmlxref_split_type_mono;

  if (self->conf->SPLIT.o.string && strlen (self->conf->SPLIT.o.string))
    {
      int i;
      for (i = 1; i < htmlxref_split_type_chapter+1; i++)
        {
          if (!strcmp (self->conf->SPLIT.o.string,
                       htmlxref_split_type_names[i]))
            {
              self->document_htmlxref_split_type = i;
              break;
            }
        }
    }

  /* directions */
  memset (self->global_units_directions, 0,
    (D_Last + self->special_unit_varieties.number+1) * sizeof (OUTPUT_UNIT));

  if (self->conf->NODE_NAME_IN_INDEX.o.integer < 0)
    option_set_conf (&self->conf->NODE_NAME_IN_INDEX,
                     self->conf->USE_NODES.o.integer, 0);

  if (self->conf->HTML_MATH.o.string
      && self->conf->CONVERT_TO_LATEX_IN_MATH.o.integer < 0)
    {
      option_set_conf (&self->conf->CONVERT_TO_LATEX_IN_MATH, 1, 0);
    }

  if (self->conf->NO_TOP_NODE_OUTPUT.o.integer > 0
      && self->conf->SHOW_TITLE.o.integer < 0)
    option_set_conf (&self->conf->SHOW_TITLE, 1, 0);


  self->current_formatting_references = &self->formatting_references[0];
  self->current_commands_conversion_function
     = &self->command_conversion_function[0];
  self->current_types_conversion_function = &self->type_conversion_function[0];
  self->current_format_protect_text = &html_default_format_protect_text;

  html_new_document_context (self, context, 0, 0);

  if (self->document && self->document->indices_info.number)
    {
      size_t i;
      size_t j;
      INDEX_LIST *indices_info = &self->document->indices_info;
      const INDEX **sorted_index_names;
      size_t index_nr = indices_info->number;
      size_t non_empty_index_nr = 0;
      size_t idx_non_empty = 0;

      for (i = 0; i < index_nr; i++)
        {
          INDEX *idx = indices_info->list[i];
          if (idx->entries_number > 0)
            non_empty_index_nr++;
        }

      sorted_index_names = (const INDEX **) malloc (index_nr * sizeof (INDEX *));

      memcpy (sorted_index_names, indices_info->list,
              index_nr * sizeof (INDEX *));
      qsort (sorted_index_names, index_nr, sizeof (INDEX *),
             compare_index_name);

      /* store only non empty indices in sorted_index_names */
      self->sorted_index_names.number = non_empty_index_nr;
      self->sorted_index_names.list = (const INDEX **)
         malloc (self->sorted_index_names.number * sizeof (INDEX *));
      for (j = 0; j < index_nr; j++)
        {
          if (sorted_index_names[j]->entries_number > 0)
            {
              self->sorted_index_names.list[idx_non_empty]
                  = sorted_index_names[j];
              idx_non_empty++;
            }
        }
      free (sorted_index_names);
    }

  if (self->document)
    {
      const LISTOFFLOATS_TYPE_LIST *listoffloats
         = &self->document->listoffloats;

      if (listoffloats->number)
        {
          self->shared_conversion_state.formatted_listoffloats_nr
           = (int *) malloc (listoffloats->number * sizeof (int));
          memset (self->shared_conversion_state.formatted_listoffloats_nr,
              0, listoffloats->number * sizeof (int));
        }
    }
}

static OUTPUT_UNIT *
register_special_unit (CONVERTER *self, char *special_unit_variety)
{
  ELEMENT *unit_command = new_element (ET_special_unit_element);
  OUTPUT_UNIT *special_unit = new_output_unit (OU_special_unit);

  special_unit->special_unit_variety = special_unit_variety;
  unit_command->e.c->associated_unit = special_unit;
  special_unit->uc.special_unit_command = unit_command;

  return special_unit;
}

typedef struct SPECIAL_UNIT_ORDER {
    const char *order;
    const char *variety;
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
prepare_special_units (CONVERTER *self, size_t output_units_descriptor)
{
  size_t i;
  STRING_LIST *special_unit_varieties = &self->special_unit_varieties;
  SPECIAL_UNIT_ORDER *special_units_order;
  OUTPUT_UNIT *previous_output_unit = 0;

  size_t special_units_descriptor
         = new_output_units_descriptor (self->document);
  size_t associated_special_units_descriptor
         = new_output_units_descriptor (self->document);

  /* retrieve after reallocating */

  OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (self->document, special_units_descriptor);

  OUTPUT_UNIT_LIST *associated_special_units
    = retrieve_output_units (self->document,
                             associated_special_units_descriptor);

  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (self->document, output_units_descriptor);

  /* for separate special output units */
  STRING_LIST *do_special = new_string_list ();

  self->output_units_descriptors[OUDT_special_units] = special_units_descriptor;
  self->output_units_descriptors[OUDT_associated_special_units]
     = associated_special_units_descriptor;

  if (self->document->sections_list
      && self->document->sections_list->number > 1)
    {
      enum command_id contents_cmds[2] = {CM_shortcontents, CM_contents};
      int i;
      for (i = 0; i < 2; i++)
        {
          int contents_set = 0;
          enum command_id cmd = contents_cmds[i];
          OPTION *contents_option_ref = get_command_option (self->conf, cmd);
          if (contents_option_ref->o.integer > 0)
            contents_set = 1;
          if (contents_set)
            {
              int j;
              char *special_unit_variety = 0;
              char *contents_location
                = self->conf->CONTENTS_OUTPUT_LOCATION.o.string;

              for (j = 0; command_special_unit_variety[j].cmd; j++)
                {
                  if (command_special_unit_variety[j].cmd == cmd)
                    {
                      special_unit_variety
                        = command_special_unit_variety[j].variety;
                      break;
                    }
                }
              if (contents_location
                  && !strcmp (contents_location, "separate_element"))
                add_string (special_unit_variety, do_special);
              else
                {
                  OUTPUT_UNIT *special_output_unit = 0;
                  const OUTPUT_UNIT *associated_output_unit = 0;
                  if (contents_location
                      && !strcmp (contents_location, "after_title"))
                    {
                      associated_output_unit = output_units->list[0];
                    }
                  else if (contents_location
                           && !strcmp (contents_location, "after_top"))
                    {
                      if (self->document->global_commands.top)
                        {/* note that top is a uniq command */
                          const ELEMENT *section_top
                             = self->document->global_commands.top;

                          if (section_top->e.c->associated_unit)
                            associated_output_unit
                                 = section_top->e.c->associated_unit;
                        }
                      if (!associated_output_unit)
                        continue;
                    }
                  else if (contents_location
                           && !strcmp (contents_location, "inline"))
                    {
                      const ELEMENT_LIST *global_command
                       = get_cmd_global_multi_command (
                                      &self->document->global_commands, cmd);
                      if (global_command->number > 0)
                        {
                          size_t i;
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

  if (self->document->global_commands.footnotes.number > 0
      && self->conf->footnotestyle.o.string
      && !strcmp (self->conf->footnotestyle.o.string, "separate")
      && output_units->number > 1)
    add_string ("footnotes", do_special);

  if ((self->conf->DO_ABOUT.o.integer < 0
       && output_units->number > 1
       && ((self->conf->SPLIT.o.string && strlen (self->conf->SPLIT.o.string))
           || self->conf->HEADERS.o.integer > 0))
      || self->conf->DO_ABOUT.o.integer > 0)
    add_string ("about", do_special);

  special_units_order = (SPECIAL_UNIT_ORDER *)
    malloc (sizeof (SPECIAL_UNIT_ORDER) * do_special->number);
  for (i = 0; i < do_special->number; i++)
    {
      char *special_unit_variety = do_special->list[i];
      special_units_order[i].order = html_special_unit_info (self,
                                                        SUI_type_order,
                                                        special_unit_variety);
      special_units_order[i].variety = special_unit_variety;
    }

  qsort (special_units_order, do_special->number, sizeof (SPECIAL_UNIT_ORDER),
         compare_special_units);

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

void
html_prepare_conversion_units (CONVERTER *self)
{
  size_t output_units_descriptor;

  if (self->conf->USE_NODES.o.integer > 0)
    output_units_descriptor = split_by_node (self->document);
  else
    output_units_descriptor = split_by_section (self->document);
  self->output_units_descriptors[OUDT_units] = output_units_descriptor;

  /* configuration used to determine if a special element is to be done
     (in addition to contents) */
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
  prepare_special_units (self, output_units_descriptor);

  /* reset to the default */
  set_global_document_commands (self, CL_before, conf_for_special_units);
}
