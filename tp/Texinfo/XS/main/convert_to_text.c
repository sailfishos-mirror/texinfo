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

#include "tree_types.h"
#include "tree.h"
#include "command_ids.h"
#include "text.h"
#include "utils.h"
#include "convert_utils.h"
#include "builtin_commands.h"
#include "extra.h"
#include "unicode.h"
#include "convert_to_text.h"

#include "cmd_symbol.c"
#include "cmd_text.c"

char *
ascii_accent (char *text, ELEMENT *command)
{
  enum command_id cmd = command->cmd;
  char *result;
  static TEXT accent_text;

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
  result = strdup (accent_text.text);
  return result;
}

char *
ascii_accents_internal (char *text, ELEMENT *stack, int set_case)
{
  char *result;
  int i;

  if (set_case)
    result = to_upper_or_lower_multibyte (text, set_case);
  else
    result = strdup (text);

  for (i = stack->contents.number - 1; i >= 0; i--)
    {
      ELEMENT *accent_command = stack->contents.list[i];
      char *formatted_accent = ascii_accent (result, accent_command);
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
  options->expanded_formats = new_expanded_formats (0);
  options->number_sections = -1;
  return options;
}

void
destroy_options (TEXT_OPTIONS *options)
{
  /* encoding? */
  free (options->expanded_formats);
  free (options);
}

/* format an accent command and nested accents within as Text. */
char *
text_accents (ELEMENT *accent, char *encoding, int set_case)
{
  ACCENTS_STACK *accent_stack = find_innermost_accent_contents (accent);
  char *text;
  char *result;
  TEXT_OPTIONS *options = new_text_options ();

  options->encoding = encoding;
  options->set_case = set_case;

  if (accent_stack->argument)
    text = convert_to_text (accent_stack->argument, options);
  else
    text = strdup ("");

  result = encoded_accents (text, accent_stack->stack, encoding,
                            ascii_accents_internal, set_case);

  if (!result)
    result = ascii_accents_internal (text, accent_stack->stack, set_case);
  free (text);
  destroy_accent_stack (accent_stack);
  destroy_options (options);
  return result;
}

/* result to be freed by caller */
char *
brace_no_arg_command (ELEMENT *e, TEXT_OPTIONS *options)
{
  char *result;
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

  if (!(options->ascii_glyph)
      || !(unicode_character_brace_no_arg_commands[cmd].is_extra > 0))
    {
      result = strdup (unicode_brace_no_arg_command (cmd, encoding));
    }

  /* no converter in options yet, interface to be done
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
/* FIXME converter argument in perl */
/* result to be freed by caller */
char *
text_heading (ELEMENT *current, char *text, int numbered, int indent_length)
{
  int i;
  TEXT result;
  int level;
  int status;
  int text_width;

  text_init (&result);

  text_append (&result, text);

  /* end of lines spaces are ignored in conversion.  However in
     rare cases, invalid nestings leave an end of line, so we chomp.
   */
  if (result.end > 0 && result.text[result.end - 1] == '\n')
    result.text[--result.end] = '\0';

  if (result.text[strspn (result.text, whitespace_chars)] == '\0')
    {
      free (result.text);
      return strdup ("");
    }

  text_append (&result, "\n");

  if (indent_length > 0)
    {
      for (i = 0; i < indent_length; i++)
        text_append_n (&result, " ", 1);
    }
  else
   indent_length = 0;

  level = lookup_extra_integer (current, "section_level", &status);
  if (!status)
    level = section_level (current);

  text_width = width_multibyte (text);
  /* FIXME it seems strange to remove the indent length from the underlined
     width? */
  for (i = 0; i < text_width - indent_length; i++)
    text_append (&result, underline_symbol[level]);

  text_append (&result, "\n");

  return result.text;
}

#define ADD(x) text_append (result, x)

void
convert_to_text_internal (ELEMENT *element, TEXT_OPTIONS *options,
                          TEXT *result);

void
convert_to_text_internal (ELEMENT *element, TEXT_OPTIONS *options,
                          TEXT *result)
{
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
                      && !format_expanded_p (options->expanded_formats,
                                        builtin_command_name (element->cmd)))
               /* here ignore most of the line commands */
                  || (element->args.number > 0
                      && (element->args.list[0]->type == ET_line_arg
                          || element->args.list[0]->type == ET_rawline_arg)
                      && !(command_other_flags(element) & CF_formatted_line)
                      && !(element->cmd == CM_sp
                           || element->cmd == CM_verbatiminclude))))))
    return;

  if (element->cmd
      && builtin_command_flags (element) & CF_brace
      && builtin_command_data[element->cmd].data == BRACE_inline
      && element->cmd != CM_inlinefmtifelse)
    if (command_other_flags (element) & CF_inline_format)
      {
        char *format = lookup_extra_string (element, "format");
        if (!format
            || !format_expanded_p (options->expanded_formats, format))
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
    } else {
*/
        {
          char *p;
          if (element->type == ET_raw
              || options->raw_state)
            ADD(element->text.text);
          else
            {
              char *cased = 0;
              char *text;

              if (options->set_case)
                {
                  char *cased
                    = to_upper_or_lower_multibyte (element->text.text,
                                                   options->set_case);
                  text = cased;
                }
              else
                {
                  text = element->text.text;
                }

              if (options->code_state)
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
  if (element->cmd)
    {
      enum command_id cmd = element->cmd;
      if (nobrace_symbol_text[cmd])
        {
          ADD(nobrace_symbol_text[cmd]);
          return;
        }
      else if (cmd == CM_today)
        {
          if (options->sort_string
              && sort_brace_no_arg_commands[cmd])
            {
              ADD(sort_brace_no_arg_commands[cmd]);
              return;
            }
/* TODO
      elsif ($options->{'converter'}) {
        return _convert(Texinfo::Convert::Utils::expand_today(
                                         $options->{'converter'}),
                        $options);
      }
*/
          else if (options->test)
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
      else if (text_brace_no_arg_commands[cmd])
        {
          ADD(text_brace_no_arg_commands[cmd]);
          return;
        }
      else if (builtin_command_flags (element) & CF_accent)
        {
          char *text = text_accents (element, options->encoding,
                                     options->set_case);
          ADD(text);
          free (text);
        }
      else if (element->cmd == CM_image)
        {
          options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    options, result);
          options->code_state--;
          return;
        }
      else if (element->cmd == CM_email)
        {
          options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    options, result);
          options->code_state--;
          return;
        }
      else if (element->cmd == CM_uref || element->cmd == CM_url)
        {
          TEXT url;

          if (element->args.number >= 3)
            {
              TEXT replacement;
              text_init (&replacement);
              convert_to_text_internal (element->args.list[2],
                                        options, &replacement);
              if (replacement.end > 0)
                {
                  ADD(replacement.text);
                  free (replacement.text);
                  return;
                }
            }

          text_init (&url);
          options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    options, &url);
          options->code_state--;
          if (element->args.number >= 2)
            {
              TEXT text;
              text_init (&text);
              convert_to_text_internal (element->args.list[1],
                                        options, &text);
              if (text.end > 0)
                {
                  text_printf (result, "%s (%s)", url.text, text.text);
                  free (text.text);
                  free (url.text);
                  return;
                }
            }

          ADD(url.text);
          free (url.text);
          return;
        }
      else if ((command_other_flags (element) & CF_explained)
               && element->args.number >= 2)
        {
          TEXT explanation;
          text_init (&explanation);
          convert_to_text_internal (element->args.list[1],
                                    options, &explanation);

          convert_to_text_internal (element->args.list[0],
                                    options, result);
          if (explanation.end > 0)
            {
              text_printf (result, " (%s)", explanation.text);
              free (explanation.text);
            }
          return;
        }
      else if ((builtin_command_flags (element) & CF_brace)
               && builtin_command_data[cmd].data == BRACE_inline)
        {
          int arg_index = 1;
          if (element->cmd == CM_inlineraw)
            options->raw_state++;

          if (element->cmd == CM_inlinefmtifelse)
            {
              char *format = lookup_extra_string (element, "format");
              if (!format
                  || !format_expanded_p (options->expanded_formats, format))
                arg_index = 2;
            }

          if (element->args.number > arg_index)
            convert_to_text_internal (element->args.list[arg_index],
                                      options, result);

          if (element->cmd == CM_inlineraw)
            options->raw_state--;
          return;
        }
      else if (element->args.number > 0
                && (element->args.list[0]->type == ET_brace_command_arg
                    || (builtin_command_flags (element) & CF_brace
                        && builtin_command_flags (element) & CF_math)))
        {
          int in_code = 0;
          if (element->cmd == CM_sc)
            options->set_case++;

          if (command_other_flags (element) & CF_brace_code
              || builtin_command_flags (element) & CF_math)
            in_code = 1;

          if (in_code)
            options->code_state++;
          convert_to_text_internal (element->args.list[0],
                                    options, result);
          if (in_code)
            options->code_state--;

          if (element->cmd == CM_sc)
            options->set_case--;
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
              for (i = 0; i < element->args.number; i++)
                {
                  ELEMENT *arg = element->args.list[i];
                  TEXT converted_arg;
                  text_init (&converted_arg);
                  convert_to_text_internal (arg, options, &converted_arg);
                  if (converted_arg.end > 0)
                    {
                      int spaces_nr
                        = strspn (converted_arg.text, whitespace_chars);
                      if (converted_arg.text[spaces_nr])
                        {
                          ADD(converted_arg.text);
                          if (i < element->args.number - 1)
                            ADD(", ");
                        }
                      free (converted_arg.text);
                    }
                }
              if (result->end > 0 && result->text[result->end - 1] == '\n')
                result->text[--result->end] = '\0';

              if (result->text[strspn (result->text, whitespace_chars)] == '\0')
                text_append (result, "\n");
            }
        }
      else if (command_other_flags (element) & CF_formatted_line)
              /*  && element->args.number > 0) */
        {
          if (element->cmd != CM_node)
            {
              TEXT text;
              text_init (&text);
              if (element->cmd != CM_page)
                convert_to_text_internal (element->args.list[0],
                                          options, &text);
              if (builtin_command_flags (element) & CF_sectioning_heading)
                { /* FIXME $options->{'converter'} */
                  char *heading = text_heading (element, text.text,
                                                options->number_sections, 0);
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
          ELEMENT *misc_args = lookup_extra_element (element, "misc_args");
          if (misc_args->contents.number > 0)
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
          ELEMENT *verbatim_include_verbatim
          /* FIXME options argument */
            = expand_verbatiminclude (element);
          if (verbatim_include_verbatim)
            {
              convert_to_text_internal (verbatim_include_verbatim,
                                        options, result);
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
}
#undef ADD

/* Return value to be freed by caller. */
char *
convert_to_text (ELEMENT *root, TEXT_OPTIONS *options)
{
  TEXT result;

  text_init (&result);
  text_append (&result, "");

  convert_to_text_internal (root, options, &result);
  return result.text;
}
