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

/* In sync with Texinfo::Convert::Text */

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <time.h>
#include <stdio.h>

#include "tree_types.h"
#include "command_ids.h"
#include "options_types.h"
#include "converter_types.h"
#include "tree.h"
#include "text.h"
#include "utils.h"
#include "convert_utils.h"
#include "builtin_commands.h"
#include "extra.h"
#include "unicode.h"
#include "document.h"
#include "convert_to_texinfo.h"
#include "debug.h"
#include "convert_to_text.h"

#include "cmd_symbol.c"
#include "cmd_text.c"

char *
ascii_accent (const char *text, const ELEMENT *command, int set_case)
{
  const enum command_id cmd = command->cmd;
  TEXT accent_text;

  text_init (&accent_text);

  if (cmd == CM_udotaccent)
    {
      text_append (&accent_text, ".");
      text_append (&accent_text, text);
    }
  else
    {
      text_append (&accent_text, text);
      if (cmd == CM_H)
        text_append (&accent_text, "''");
      else if (cmd == CM_dotaccent)
        text_append (&accent_text, ".");
      else if (cmd == CM_ringaccent)
        text_append (&accent_text, "*");
      else if (cmd == CM_tieaccent)
        text_append (&accent_text, "[");
      else if (cmd == CM_u)
        text_append (&accent_text, "(");
      else if (cmd == CM_ubaraccent)
        text_append (&accent_text, "_");
      else if (cmd == CM_v)
        text_append (&accent_text, "<");
      else if (cmd == CM_ogonek)
        text_append (&accent_text, ";");
      else if (cmd != CM_dotless)
        text_append (&accent_text, builtin_command_name (cmd));
    }
  return accent_text.text;
}

char *
ascii_accents_internal (const char *text, const ELEMENT_STACK *stack,
                        int set_case)
{
  char *result;
  int i;

  if (set_case)
    result = to_upper_or_lower_multibyte (text, set_case);
  else
    result = strdup (text);

  for (i = stack->top - 1; i >= 0; i--)
    {
      const ELEMENT *accent_command = stack->stack[i];
      char *formatted_accent = ascii_accent (result, accent_command, set_case);
      free (result);
      result = formatted_accent;
    }

  return result;
}

TEXT_OPTIONS *
new_text_options (void)
{
  TEXT_OPTIONS *options = malloc (sizeof (TEXT_OPTIONS));
  memset (options, 0, sizeof (TEXT_OPTIONS));
  options->expanded_formats = new_expanded_formats ();
  options->NUMBER_SECTIONS = -1;
  memset (&options->include_directories, 0, sizeof (STRING_LIST));
  return options;
}

void
destroy_text_options (TEXT_OPTIONS *text_options)
{
  free (text_options->encoding);
  free (text_options->expanded_formats);
  free_strings_list (&text_options->include_directories);
  if (text_options->other_converter_options)
    {
      free_options (text_options->other_converter_options);
      free (text_options->other_converter_options);
    }
  if (text_options->self_converter_options)
    {
      free_options (text_options->self_converter_options);
      free (text_options->self_converter_options);
    }
  free (text_options);
}

#define TEXT_INDICATOR_CONVERTER_OPTIONS \
  tico_option_name(NUMBER_SECTIONS) \
  tico_option_name(ASCII_GLYPH) \
  tico_option_name(TEST)

/* note that nothing is copied */
TEXT_OPTIONS *
copy_options_for_convert_text (CONVERTER *self,
                               int enable_encoding_if_not_ascii)
{
  TEXT_OPTIONS *options = new_text_options ();
  int text_indicator_option;

  if ((self->conf->ENABLE_ENCODING > 0
       && self->conf->OUTPUT_ENCODING_NAME)
      || (enable_encoding_if_not_ascii
          && self->conf->OUTPUT_ENCODING_NAME
          && strcmp (self->conf->OUTPUT_ENCODING_NAME, "us-ascii")))
    {
      options->encoding = self->conf->OUTPUT_ENCODING_NAME;
    }

  #define tico_option_name(name) \
  text_indicator_option = self->conf->name; \
  if (text_indicator_option > 0) { options->name = 1; } \
  else if (text_indicator_option >= 0) { options->name = 0; }
   TEXT_INDICATOR_CONVERTER_OPTIONS
  #undef tico_option_name

  free (options->expanded_formats);
  options->expanded_formats = self->expanded_formats;

  memcpy (&options->include_directories, &self->conf->INCLUDE_DIRECTORIES,
          sizeof (STRING_LIST));

  options->other_converter_options = self->conf;

  return options;
}

/* format an accent command and nested accents within as Text. */
char *
text_accents (const ELEMENT *accent, char *encoding, int set_case)
{
  ACCENTS_STACK *accent_stack = find_innermost_accent_contents (accent);
  char *text;
  char *result;
  TEXT_OPTIONS *text_options = new_text_options ();

  if (encoding)
    text_options->encoding = strdup (encoding);
  text_options->set_case = set_case;

  if (accent_stack->argument)
    text = convert_to_text (accent_stack->argument, text_options);
  else
    text = strdup ("");

  result = encoded_accents (text, &accent_stack->stack, encoding,
                            ascii_accent, set_case);

  if (!result)
    result = ascii_accents_internal (text, &accent_stack->stack, set_case);
  free (text);
  destroy_accent_stack (accent_stack);
  destroy_text_options (text_options);
  return result;
}

/* result to be freed by caller */
char *
brace_no_arg_command (const ELEMENT *e, TEXT_OPTIONS *options)
{
  char *result = 0;
  enum command_id cmd = e->cmd;
  char *encoding = 0;

  if (options->encoding)
    encoding = options->encoding;

  if (cmd == CM_click)
    {
      char *clickstyle = lookup_extra_string (e, "clickstyle");
      if (clickstyle)
        {
          enum command_id clickstyle_cmd = lookup_builtin_command (clickstyle);
          if (clickstyle_cmd && text_brace_no_arg_commands[clickstyle_cmd])
            {
              cmd = clickstyle_cmd;
            }
        }
    }

  if (!(options->ASCII_GLYPH)
      || !(unicode_character_brace_no_arg_commands[cmd].is_extra > 0))
    {
      char *brace_no_arg_unicode = unicode_brace_no_arg_command (cmd, encoding);
      if (brace_no_arg_unicode)
        result = strdup (brace_no_arg_unicode);
    }

  /* TODO to do when it is possible to test
  if (!defined($result) and $options and $options->{'converter'}) {
    my $tree
     = Texinfo::Convert::Utils::translated_command_tree($options->{'converter'},
                                                        $command);
    if ($tree) {
      $result = _convert($tree, $options);
    }
  }
  */
  if (!result)
    {
      if (options->sort_string
          && sort_brace_no_arg_commands[cmd]
          && strlen (sort_brace_no_arg_commands[cmd]))
        result = strdup (sort_brace_no_arg_commands[cmd]);
      else
        result = strdup (text_brace_no_arg_commands[cmd]);
    }

  if (options->set_case
      && (command_other_flags (e) & CF_letter_no_arg))
    {
      char *cased = to_upper_or_lower_multibyte (result, options->set_case);
      free (result);
      result = cased;
    }

  return result;
}

static const char *underline_symbol[5] = {"*", "*", "=", "-", "."};

/* Return the text of an underlined heading, possibly indented. */
/* return to be freed by caller */
char *
text_heading (const ELEMENT *current, const char *text, OPTIONS *options,
              int numbered, int indent_length)
{
  int i;
  TEXT result;
  int level;
  int status;
  int text_width;
  char *heading = strdup (text);
  char *heading_with_number;

  /* end of lines spaces are ignored in conversion.  However in
     rare cases, invalid nestings leave an end of line, so we chomp.
  if (result.end > 0 && result.text[result.end - 1] == '\n')
    result.text[--result.end] = '\0';
   */
  if (strlen (heading))
    if (heading[strlen (heading) - 1] == '\n')
      heading[strlen (heading) - 1] = '\0';

  heading_with_number = add_heading_number (options, current, heading,
                                            numbered);

  free (heading);

  if (heading_with_number[
           strspn (heading_with_number, whitespace_chars)] == '\0')
    {
      free (heading_with_number);
      return strdup ("");
    }

  text_init (&result);
  text_append (&result, heading_with_number);

  text_append (&result, "\n");

  if (indent_length > 0)
    {
      for (i = 0; i < indent_length; i++)
        text_append_n (&result, " ", 1);
    }
  else
   indent_length = 0;

  level = lookup_extra_integer (current, "section_level", &status);
  /* could also be status < 0 */
  if (status != 0)
    level = section_level (current);

  text_width = width_multibyte (heading_with_number);

  free (heading_with_number);

  /* result is indented if indent_length is set, so indent_length needs to
     be substracted to have the width of heading only. */
  for (i = 0; i < text_width - indent_length; i++)
    text_append (&result, underline_symbol[level]);

  text_append (&result, "\n");

  return result.text;
}

#define ADD(x) text_append (result, x)

void
convert_to_text_internal (const ELEMENT *element, TEXT_OPTIONS *text_options,
                          TEXT *result);

void
convert_to_text_internal (const ELEMENT *element, TEXT_OPTIONS *text_options,
                          TEXT *result)
{
  enum command_id data_cmd = 0;

  /*
  fprintf (stderr, "CTTI: %s '%.20s'\n", print_element_debug (element, 1),
           result->text);
   */

  /* in data_cmd, user-defined commands are mapped to internal commands
     with the right flags.  If an element can be a user-defined element,
     data_cmd need to be used for all access to arrays of command_id to
     avoid an index > max index of builtin command  */
  if (element->cmd)
      data_cmd = element_builtin_data_cmd (element);

  if (!(element->type == ET_def_line)
      && ((element->type == ET_ignorable_spaces_after_command
           || element->type == ET_postamble_after_end
           || element->type == ET_preamble_before_beginning
           || element->type == ET_spaces_at_end
           || element->type == ET_spaces_before_paragraph
           || element->type == ET_spaces_after_close_brace)
          || (element->cmd
              && ((element->cmd == CM_anchor /* ignored_brace_commands */
                   || element->cmd == CM_sortas
                   || element->cmd == CM_seealso
                   || element->cmd == CM_seeentry
                   || element->cmd == CM_footnote
                   || element->cmd == CM_shortcaption
                   || element->cmd == CM_caption
                   || element->cmd == CM_hyphenation
                   || element->cmd == CM_errormsg
                   || element->cmd == CM_titlepage /* ignored_block_commands */
                   || element->cmd == CM_copying
                   || element->cmd == CM_documentdescription
                   || element->cmd == CM_ignore
                   || element->cmd == CM_macro
                   || element->cmd == CM_rmacro
                   || element->cmd == CM_linemacro
                   || element->cmd == CM_nodedescriptionblock)
                  || ((element->cmd == CM_html
                       || element->cmd == CM_html
                       || element->cmd == CM_tex
                       || element->cmd == CM_xml
                       || element->cmd == CM_docbook
                       || element->cmd == CM_latex)
                      && !format_expanded_p (text_options->expanded_formats,
                                        builtin_command_name (element->cmd)))
               /* here ignore most of the line commands */
                  || (element->args.number > 0
                      && (element->args.list[0]->type == ET_line_arg
                          || element->args.list[0]->type == ET_rawline_arg)
                      && !(builtin_command_data[data_cmd].other_flags
                                                         & CF_formatted_line)
                      && !(element->cmd == CM_sp
                           || element->cmd == CM_verbatiminclude))))))
    return;

  if (data_cmd
      && builtin_command_data[data_cmd].flags & CF_brace
      && builtin_command_data[data_cmd].data == BRACE_inline
      && element->cmd != CM_inlinefmtifelse)
    if (builtin_command_data[data_cmd].other_flags & CF_inline_format)
      {
        char *format = lookup_extra_string (element, "format");
        if (!format
            || !format_expanded_p (text_options->expanded_formats, format))
          return;
      }
    else
      {
        int status;
        int expand_index = lookup_extra_integer (element, "expand_index",
                                                 &status);
        if (!expand_index)
          return;
      }

  /* or element->text.space? */
  if (element->text.end > 0)
    {
/*
    if ($element->{'type'} and $element->{'type'} eq 'untranslated'
        and $options and $options->{'converter'}) {
      # the tree documentlanguage corresponds to the documentlanguage
      # at the place of the tree, but the converter may want to use
      # another documentlanguage, for instance the documentlanguage at
      # the end of the preamble, so we let the converter set it.
      #my $tree = $options->{'converter'}->gdt($element->{'text'}, undef,
      #                  undef, $element->{'extra'}->{'documentlanguage'});
      my $tree = $options->{'converter'}->gdt($element->{'text'});
      $result = _convert($tree, $options);
    } else
*/
        {
          char *p;
          if (element->type == ET_raw
              || text_options->raw_state)
            ADD(element->text.text);
          else
            {
              char *cased = 0;
              char *text;

              if (text_options->set_case)
                {
                  cased
                    = to_upper_or_lower_multibyte (element->text.text,
                                                   text_options->set_case);
                  text = cased;
                }
              else
                {
                  text = element->text.text;
                }

              if (text_options->code_state)
                ADD(text);
              else
                {
                  p = text;
                  while (*p)
                    {
                      int before_sep_nr = strcspn (p, "-'`");
                      if (before_sep_nr)
                        {
                          text_append_n (result, p, before_sep_nr);
                          p += before_sep_nr;
                        }
                      if (!*p)
                        break;
                      if ((strlen (p) > 1) && (!strncmp (p, "``", 2)
                                             || !strncmp (p, "''", 2)))
                        {
                          ADD("\"");
                          p += 2;
                        }
                      else if ((strlen (p) > 2) && !strncmp (p, "---", 3))
                        {
                          ADD("--");
                          p += 3;
                        }
                      else if ((strlen (p) > 1) && !strncmp (p, "--", 2))
                        {
                          ADD("-");
                          p += 2;
                        }
                      else
                        {
                          text_append_n (result, p, 1);
                          p++;
                        }
                    }
                }

              if (cased)
                free (cased);
            }
        }
    }
  if (data_cmd)
    {
      if (nobrace_symbol_text[data_cmd])
        {
          ADD(nobrace_symbol_text[data_cmd]);
          return;
        }
      else if (data_cmd == CM_today)
        {
          if (text_options->sort_string
              && sort_brace_no_arg_commands[data_cmd])
            {
              ADD(sort_brace_no_arg_commands[data_cmd]);
              return;
            }
/* TODO when this can be tested with other converters
      elsif ($options->{'converter'}) {
        return _convert(Texinfo::Convert::Utils::expand_today(
                                         $options->{'converter'}),
                        $options);
      }
*/
          else if (text_options->TEST)
            {
              ADD("a sunny day");
              return;
            }
          else
            {
              time_t tloc;
              struct tm *time_tm;
              int year;
              time (&tloc);
              time_tm = localtime (&tloc);
              year = time_tm->tm_year + 1900;
              text_printf (result, "%s %d, %d",
                           convert_utils_month_name[time_tm->tm_mon],
                           time_tm->tm_mday, year);
              return;
            }
        }
      else if (text_brace_no_arg_commands[data_cmd])
        {
          char *brace_no_args_text
            = brace_no_arg_command (element, text_options);
          ADD(brace_no_args_text);
          free (brace_no_args_text);
          return;
        }
      else if (builtin_command_data[data_cmd].flags & CF_accent)
        {
          char *text = text_accents (element, text_options->encoding,
                                     text_options->set_case);
          ADD(text);
          free (text);
        }
      else if (element->cmd == CM_image)
        {
          text_options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    text_options, result);
          text_options->code_state--;
          return;
        }
      else if (element->cmd == CM_email)
        {
          if (element->args.number >= 2)
            {
              TEXT replacement;
              text_init (&replacement);
              convert_to_text_internal (element->args.list[1],
                                        text_options, &replacement);
              if (replacement.end > 0)
                {
                  ADD(replacement.text);
                  free (replacement.text);
                  return;
                }
            }
          text_options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    text_options, result);
          text_options->code_state--;
          return;
        }
      else if (element->cmd == CM_uref || element->cmd == CM_url)
        {
          TEXT url_text;

          if (element->args.number >= 3)
            {
              TEXT replacement;
              text_init (&replacement);
              convert_to_text_internal (element->args.list[2],
                                        text_options, &replacement);
              if (replacement.end > 0)
                {
                  ADD(replacement.text);
                  free (replacement.text);
                  return;
                }
            }

          text_init (&url_text);
          text_append (&url_text, "");
          text_options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    text_options, &url_text);
          text_options->code_state--;
          if (element->args.number >= 2)
            {
              TEXT text;
              text_init (&text);
              convert_to_text_internal (element->args.list[1],
                                        text_options, &text);
              if (text.end > 0)
                {
                  text_printf (result, "%s (%s)", url_text.text, text.text);
                  free (text.text);
                  free (url_text.text);
                  return;
                }
            }

          if (url_text.text)
            {
              ADD(url_text.text);
              free (url_text.text);
            }
          return;
        }
      else if ((builtin_command_data[data_cmd].other_flags & CF_explained)
               && element->args.number >= 2)
        {
          TEXT explanation;
          text_init (&explanation);
          convert_to_text_internal (element->args.list[1],
                                    text_options, &explanation);

          convert_to_text_internal (element->args.list[0],
                                    text_options, result);
          if (explanation.end > 0)
            {
              text_printf (result, " (%s)", explanation.text);
              free (explanation.text);
            }
          return;
        }
      else if ((builtin_command_data[data_cmd].flags & CF_brace)
               && builtin_command_data[data_cmd].data == BRACE_inline)
        {
          int arg_index = 1;
          if (element->cmd == CM_inlineraw)
            text_options->raw_state++;

          if (element->cmd == CM_inlinefmtifelse)
            {
              char *format = lookup_extra_string (element, "format");
              if (!format
                  || !format_expanded_p (text_options->expanded_formats,
                                         format))
                arg_index = 2;
            }

          if (element->args.number > arg_index)
            convert_to_text_internal (element->args.list[arg_index],
                                      text_options, result);

          if (element->cmd == CM_inlineraw)
            text_options->raw_state--;
          return;
        }
      else if (element->args.number > 0
                && (element->args.list[0]->type == ET_brace_command_arg
                    || (builtin_command_data[data_cmd].flags & CF_brace
                        && builtin_command_data[data_cmd].flags & CF_math)))
        {
          int in_code = 0;
          if (element->cmd == CM_sc)
            text_options->set_case++;

          if (builtin_command_data[data_cmd].other_flags & CF_brace_code
              || builtin_command_data[data_cmd].flags & CF_math)
            in_code = 1;

          if (in_code)
            text_options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    text_options, result);
          if (in_code)
            text_options->code_state--;

          if (element->cmd == CM_sc)
            text_options->set_case--;
          return;
        }
      /* block commands */
      else if (element->cmd == CM_quotation
               || element->cmd == CM_smallquotation
               || element->cmd == CM_float
               || element->cmd == CM_cartouche)
        {
          if (element->args.number >= 0)
            {
              int i;
              TEXT args_line;
              text_init (&args_line);
              for (i = 0; i < element->args.number; i++)
                {
                  const ELEMENT *arg = element->args.list[i];
                  TEXT converted_arg;
                  text_init (&converted_arg);
                  convert_to_text_internal (arg, text_options, &converted_arg);
                  if (converted_arg.end > 0)
                    {
                      int spaces_nr
                        = strspn (converted_arg.text, whitespace_chars);
                      if (converted_arg.text[spaces_nr])
                        {
                          if (args_line.end > 0 && i > 0)
                            text_append (&args_line, ", ");
                          text_append (&args_line, converted_arg.text);
                        }
                      free (converted_arg.text);
                    }
                }
              /* remain 0, args_line.space 0 if all args are empty */
              if (args_line.text)
                {
                  size_t spaces_nr;
                  if (args_line.end > 0
                      && args_line.text[args_line.end - 1] == '\n')
                  args_line.text[--args_line.end] = '\0';

                  spaces_nr = strspn (args_line.text, whitespace_chars);
                  if (args_line.text[spaces_nr] != '\0')
                    text_append (&args_line, "\n");
                  ADD(args_line.text);
                  free (args_line.text);
                }
            }
        }
      else if (builtin_command_data[data_cmd].other_flags & CF_formatted_line)
              /*  && element->args.number > 0) */
        {
          if (element->cmd != CM_node)
            {
              TEXT text;
              text_init (&text);
              text_append (&text, "");
              if (element->cmd != CM_page)
                convert_to_text_internal (element->args.list[0],
                                          text_options, &text);
              if (builtin_command_data[data_cmd].flags & CF_sectioning_heading)
                {
                  char *heading
                    = text_heading (element, text.text,
                                    text_options->other_converter_options,
                                    text_options->NUMBER_SECTIONS, 0);
                  ADD(heading);
                  free (heading);
                }
              else
                {
                  if (!(text.end > 0 && text.text[text.end - 1] == '\n'))
                    text_append (&text, "\n");
                  ADD(text.text);
                }
              free (text.text);
            }
        }
      else if (element->cmd == CM_sp)
        {
          const ELEMENT *misc_args = lookup_extra_element (element, "misc_args");
          /* misc_args can be 0 with invalid args */
          if (misc_args && misc_args->contents.number > 0)
            {
              char *sp_arg = misc_args->contents.list[0]->text.text;
              int sp_nr = strtoul (sp_arg, NULL, 10);
              int i;
              if (sp_nr > 0)
                for (i = 0; i < sp_nr; i++)
                  ADD("\n");
            }
        }
      else if (element->cmd == CM_verbatiminclude)
        {
          ELEMENT *verbatim_include_verbatim = 0;
          if (text_options->other_converter_options) {
            /* TODO retrieve other converter document information
               and error messages */
            verbatim_include_verbatim
             = expand_verbatiminclude (0, text_options->other_converter_options,
                                       0, element);
          } else {
            GLOBAL_INFO *global_information = 0;
            if (text_options->document_descriptor) {
              DOCUMENT *document
                = retrieve_document (text_options->document_descriptor);
              if (document)
                global_information = document->global_info;
            }
            verbatim_include_verbatim
              = expand_verbatiminclude (0, text_options->self_converter_options,
                                        global_information, element);
          }
          if (verbatim_include_verbatim)
            {
              convert_to_text_internal (verbatim_include_verbatim,
                                        text_options, result);
              destroy_element_and_children (verbatim_include_verbatim);
            }
        }
      else if (element->cmd && CM_item
               && element->parent->cmd == CM_enumerate)
        {
          int status;
          char *enumerate_specification = lookup_extra_string (element->parent,
                                               "enumerate_specification");
          int item_number = lookup_extra_integer (element, "item_number",
                                                  &status);
          char *spec = enumerate_item_representation (enumerate_specification,
                                                      item_number);
          ADD(spec);
          ADD(". ");
          free (spec);
        }
    }
  if (element->type == ET_def_line)
    {
      PARSED_DEF *parsed_def = definition_arguments_content (element);
      ELEMENT *parsed_definition_category
         = definition_category_tree (0, /* $options->{'converter'} */
                                     element);
      if (parsed_definition_category)
        {
          ELEMENT *converted_element = new_element (ET_NONE);
          ELEMENT *text_colon = new_element (ET_NONE);
          ELEMENT *text_eol = new_element (ET_NONE);
          ELEMENT *type_text_space;
          ELEMENT *args_text_space;
          add_to_contents_as_array (converted_element,
                                    parsed_definition_category);
          text_append (&text_colon->text, ": ");
          add_to_contents_as_array (converted_element, text_colon);
          if (parsed_def->type)
            {
              type_text_space = new_element (ET_NONE);
              add_to_contents_as_array (converted_element, parsed_def->type);
              text_append (&type_text_space->text, " ");
              add_to_contents_as_array (converted_element, type_text_space);
            }
          if (parsed_def->name)
            add_to_contents_as_array (converted_element, parsed_def->name);
          if (parsed_def->args)
            {
              args_text_space = new_element (ET_NONE);
              text_append (&args_text_space->text, " ");
              add_to_contents_as_array (converted_element, args_text_space);
              add_to_contents_as_array (converted_element, parsed_def->args);
            }
          text_append (&text_eol->text, "\n");
          add_to_contents_as_array (converted_element, text_eol);

          text_options->code_state++;
          convert_to_text_internal (converted_element,
                                    text_options, result);
          text_options->code_state--;

          destroy_element (converted_element);
          destroy_element (text_colon);
          destroy_element_and_children (parsed_definition_category);
          destroy_element (text_eol);
          if (parsed_def->type)
            {
              destroy_element (type_text_space);
            }
          if (parsed_def->args)
            {
              destroy_element (args_text_space);
            }
        }
      destroy_parsed_def (parsed_def);
    }
  if (element->contents.number)
    {
      int i;
      int in_code = 0;
      int in_raw = 0;
      if ((data_cmd
           && (builtin_command_data[data_cmd].flags & CF_preformatted_code)
               || builtin_command_data[data_cmd].flags & CF_math
               || (builtin_command_data[data_cmd].flags & CF_block
                   && builtin_command_data[element->cmd].data == BLOCK_raw))
          || element->type == ET_menu_entry_node)
        in_code = 1;
      else if (element->cmd
               && builtin_command_data[data_cmd].flags & CF_block
               && builtin_command_data[element->cmd].data == BLOCK_format_raw)
        in_raw = 1;

      if (in_raw)
        text_options->raw_state++;
      if (in_code)
        text_options->code_state++;

      for (i = 0; i < element->contents.number; i++)
        {
          const ELEMENT *content = element->contents.list[i];
          convert_to_text_internal (content,
                                    text_options, result);
        }

      if (in_raw)
        text_options->raw_state--;
      if (in_code)
        text_options->code_state--;
    }
  if (element->type == ET_menu_entry
      && element->parent->type != ET_preformatted
      && element->parent->type != ET_rawpreformatted)
    {
      if (result->end == 0 || result->text[result->end - 1] != '\n')
        ADD("\n");
    }
}
#undef ADD

/* Return value to be freed by caller. */
char *
convert_to_text (const ELEMENT *root, TEXT_OPTIONS *text_options)
{
  TEXT result;

  text_init (&result);
  text_append (&result, "");

  convert_to_text_internal (root, text_options, &result);
  return result.text;
}
