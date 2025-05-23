/* Copyright 2010-2025 Free Software Foundation, Inc.

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

/* corresponding to Texinfo::Convert::Utils */

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "options_data.h"
#include "types_data.h"
#include "builtin_commands.h"
#include "tree.h"
#include "extra.h"
#include "command_stack.h"
#include "errors.h"
#include "debug.h"
/* ACCENTS_STACK ENCODING_CONVERSION encode_string locate_include_file ... */
#include "utils.h"
#include "manipulate_tree.h"
#include "translations.h"
#include "convert_to_texinfo.h"
#include "convert_utils.h"

char *convert_utils_month_name[12] = {
  gdt_noop("January"), gdt_noop("February"), gdt_noop("March"),
  gdt_noop("April"), gdt_noop("May"), gdt_noop("June"), gdt_noop("July"),
  gdt_noop("August"), gdt_noop("September"), gdt_noop("October"),
  gdt_noop("November"), gdt_noop("December")
};

/* in Texinfo::Common */
static const char *
element_associated_processing_encoding (const ELEMENT *element)
{
  const char *input_encoding = lookup_extra_string (element,
                                              AI_key_input_encoding_name);
  return input_encoding;
}

LANG_TRANSLATION *
switch_lang_translations (LANG_TRANSLATION ***lang_translations,
                          const char *in_lang,
                          LANG_TRANSLATION *current_lang_translations,
                          size_t cache_size)
{
  const char *lang;
  LANG_TRANSLATION *lang_translation;

  if (in_lang)
    lang = in_lang;
  else
    lang = "";

  if (current_lang_translations
      && !strcmp(current_lang_translations->lang, lang))
    return current_lang_translations;

  lang_translation
    = get_lang_translation (lang_translations, lang, cache_size);
  return lang_translation;
}

ELEMENT *
expand_today (int test, LANG_TRANSLATION *lang_translation,
              int debug, CONVERTER *converter,
   ELEMENT * (*cdt_tree_fn) (const char *string, CONVERTER *self,
                             NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                             const char *translation_context)
             )
{
  time_t tloc;
  struct tm *time_tm;
  int year;
  char *source_date_epoch;
  ELEMENT *result;

  if (test > 0)
    {
      result = new_text_element (ET_normal_text);
      text_append (result->e.text, "a sunny day");
      return result;
    }

  /* See https://reproducible-builds.org/specs/source-date-epoch/ */
  source_date_epoch = getenv ("SOURCE_DATE_EPOCH");

  if (source_date_epoch)
    {
   /* This assumes that the SOURCE_DATE_EPOCH environment variable will contain
      a correct, positive integer in the time_t range */
      tloc = (time_t)strtoll (source_date_epoch, NULL, 10);
      time_tm = gmtime (&tloc);
    }
  else
    {
      tloc = time (NULL);
      time_tm = localtime (&tloc);
    }

  year = time_tm->tm_year + 1900;

  if ((converter && cdt_tree_fn) || lang_translation)
    {
      NAMED_STRING_ELEMENT_LIST *substrings;
      ELEMENT *month_tree;
      ELEMENT *day_element;
      ELEMENT *year_element;

      day_element = new_text_element (ET_normal_text);
      year_element = new_text_element (ET_normal_text);
      text_printf (day_element->e.text, "%d", time_tm->tm_mday);
      text_printf (year_element->e.text, "%d", year);

      if (converter && cdt_tree_fn)
        {
          month_tree
          = cdt_tree_fn (convert_utils_month_name[time_tm->tm_mon],
                         converter, 0, 0);
        }
      else
        {
          month_tree = gdt_tree (convert_utils_month_name[time_tm->tm_mon],
                                 0, lang_translation, 0, debug, 0);
        }
      substrings = new_named_string_element_list ();
      add_element_to_named_string_element_list (substrings,
                                                "month", month_tree);
      add_element_to_named_string_element_list (substrings,
                                                "day", day_element);
      add_element_to_named_string_element_list (substrings,
                                                "year", year_element);

      if (converter && cdt_tree_fn)
        {
          result = cdt_tree_fn ("{month} {day}, {year}", converter,
                                substrings, 0);
        }
      else
        {
          result = gdt_tree ("{month} {day}, {year}", 0, lang_translation,
                             substrings, debug, 0);
        }
      destroy_named_string_element_list (substrings);
    }
  else
    {
      result = new_text_element (ET_normal_text);
      text_printf (result->e.text, "%s %d, %d",
                   convert_utils_month_name[time_tm->tm_mon],
                   time_tm->tm_mday, year);
    }
  return result;
}

ACCENTS_STACK *
find_innermost_accent_contents (const ELEMENT *element)
{
  const ELEMENT *current = element;
  static ELEMENT_LIST argument;
  ACCENTS_STACK *accent_stack = (ACCENTS_STACK *)
         malloc (sizeof (ACCENTS_STACK));
  memset (accent_stack, 0, sizeof (ACCENTS_STACK));

  while (1)
    {
      const ELEMENT *arg;
      size_t i;
      enum command_id data_cmd;
      unsigned long flags;

      if (type_data[current->type].flags & TF_text)
        return accent_stack;

      data_cmd = element_builtin_data_cmd (current);
      flags = builtin_command_data[data_cmd].flags;

      /* the following can happen if called with a bad tree */
      if (!data_cmd || !(flags & CF_accent))
        return accent_stack;

      push_stack_element (&accent_stack->stack, current);
      /* A bogus accent, that may happen */
      if (current->e.c->contents.number <= 0)
        return accent_stack;
      arg = current->e.c->contents.list[0];
      if (arg->e.c->contents.number <= 0)
        return accent_stack;
      for (i = 0; i < arg->e.c->contents.number; i++)
        {
          ELEMENT *content = arg->e.c->contents.list[i];

          if (! (type_data[content->type].flags & TF_text))
            {
              enum command_id content_data_cmd
                = element_builtin_data_cmd (content);
              if (content_data_cmd)
                {
                  unsigned long content_flags
                     = builtin_command_data[content_data_cmd].flags;
                  if (content_flags & CF_accent)
                    {
         /* if accent is tieaccent, keep everything and do not try to
            nest more */
                      if (current->e.c->cmd != CM_tieaccent)
                        {
                          current = content;
                          argument.number = 0;
                          break;
                        }
                    }
              /* should be very rare and considered as undefined */
                  else if (content_data_cmd == CM_c
                           || content_data_cmd == CM_comment)
                    {
                      continue;
                    }
                }
            }
          add_to_element_list (&argument, content);
        }
      if (argument.number > 0)
        break;
    }
  if (argument.number > 0)
    {
      accent_stack->argument = new_element (ET_NONE);
      insert_list_slice_into_contents (accent_stack->argument,
                             0, &argument, 0, argument.number);
      argument.number = 0;
    }
  return accent_stack;
}

/* return value to be freed by caller */
char *
add_heading_number (const ELEMENT *current, char *text,
                    int numbered, LANG_TRANSLATION *lang_translation)
{
  TEXT result;
  char *number = 0;
  if (numbered != 0)
    number = lookup_extra_string (current, AI_key_section_heading_number);

  text_init (&result);

  if (lang_translation)
    {
      if (number)
        {
          char *numbered_heading = 0;
          NAMED_STRING_ELEMENT_LIST *substrings
                                       = new_named_string_element_list ();
          add_string_to_named_string_element_list (substrings,
                                                  "number", number);
          add_string_to_named_string_element_list (substrings,
                                             "section_title", text);
          if (current->e.c->cmd == CM_appendix)
            {
              int status;
              int section_level
                    = lookup_extra_integer (current, AI_key_section_level,
                                            &status);
              if (section_level == 1)
                {
                  numbered_heading
                   = gdt_string ("Appendix {number} {section_title}",
                                 lang_translation, substrings, 0);
                }
            }
          if (!numbered_heading)
            numbered_heading
              = gdt_string ("{number} {section_title}",
                            lang_translation, substrings, 0);

          destroy_named_string_element_list (substrings);

          text_append (&result, numbered_heading);
          free (numbered_heading);
        }
      else
        text_append (&result, text);
    }
  else
    {
      if (current->e.c->cmd == CM_appendix)
        {
          int status;
          int section_level = lookup_extra_integer (current,
                                                    AI_key_section_level,
                                                    &status);
          if (section_level == 1)
            text_append (&result, "Appendix ");
        }
      if (number)
        {
          text_append (&result, number);
          text_append (&result, " ");
        }
      text_append (&result, text);
    }
  return result.text;
}

static char *
convert_to_utf8_verbatiminclude (char *s,
                                 const ENCODING_CONVERSION *conversion,
                                 const SOURCE_INFO *source_info)
{
  char *result;
  if (!conversion)
    return strdup (s);
  result = encode_with_iconv (conversion->iconv, s, source_info);
  return result;
}

/*
  Reverse the decoding of the file name from the input encoding.
  FILE_NAME_ENCODING is used to return the encoding.
  The caller should free the return value and FILE_NAME_ENCODING.
*/
char *
encoded_input_file_name (const char *in_input_file_name_encoding,
                         int doc_encoding_for_input_file_name,
                         const char *locale_encoding,
                         const GLOBAL_INFO *global_information,
                         char *file_name, const char *input_file_encoding,
                         char **file_name_encoding,
                         const SOURCE_INFO *source_info)
{
  char *result;
  const char *encoding = input_file_name_encoding (in_input_file_name_encoding,
                     doc_encoding_for_input_file_name, locale_encoding,
                              global_information, input_file_encoding);
  int status;

  result = encode_string (file_name, encoding, &status, source_info);

  if (status)
    *file_name_encoding = strdup (encoding);
   else
    *file_name_encoding = 0;
  return result;
}

char *
converter_encoded_input_file_name (const OPTIONS *options,
                          const GLOBAL_INFO *global_information,
                          char *file_name, const char *input_file_encoding,
                          char **file_name_encoding,
                          const SOURCE_INFO *source_info)
{

  const char *input_file_name_encoding = 0;
  int doc_encoding_for_input_file_name = -1;
  const char *locale_encoding = 0;

  if (options)
    {
      input_file_name_encoding
        = options->INPUT_FILE_NAME_ENCODING.o.string;
      doc_encoding_for_input_file_name
        = options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer;
      locale_encoding = options->LOCALE_ENCODING.o.string;
    }

  return encoded_input_file_name (input_file_name_encoding,
                            doc_encoding_for_input_file_name,
                             locale_encoding, global_information,
                             file_name, input_file_encoding, file_name_encoding,
                             source_info);
}
/* NOTE it would have been better to have FILE_NAME const, but iconv
   argument may not be const, so no const here either */
char *
encoded_output_file_name (const char *output_file_name_encoding,
                          int doc_encoding_for_output_file_name,
                          const char *locale_encoding,
                          const GLOBAL_INFO *global_information,
                          char *file_name, char **file_name_encoding,
                          const SOURCE_INFO *source_info)
{
  char *result;
  const char *encoding = 0;
  int status;

  if (output_file_name_encoding)
    encoding = output_file_name_encoding;
  else if (doc_encoding_for_output_file_name != 0)
    {
      if (global_information && global_information->input_encoding_name)
        encoding = global_information->input_encoding_name;
    }
  else if (locale_encoding)
    encoding = locale_encoding;

  result = encode_string (file_name, encoding, &status, source_info);

  if (status)
    *file_name_encoding = strdup (encoding);
   else
    *file_name_encoding = 0;
  return result;
}

char *
converter_encoded_output_file_name (const OPTIONS *options,
                          const GLOBAL_INFO *global_information,
                          char *file_name, char **file_name_encoding,
                          const SOURCE_INFO *source_info)
{

  const char *output_file_name_encoding = 0;
  int doc_encoding_for_output_file_name = -1;
  const char *locale_encoding = 0;

  if (options)
    {
      output_file_name_encoding
        = options->OUTPUT_FILE_NAME_ENCODING.o.string;
      doc_encoding_for_output_file_name
        = options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME.o.integer;
      locale_encoding = options->LOCALE_ENCODING.o.string;
    }

  return encoded_output_file_name (output_file_name_encoding,
                            doc_encoding_for_output_file_name,
                             locale_encoding, global_information,
                             file_name, file_name_encoding,
                             source_info);
}

ELEMENT *
expand_verbatiminclude (const char *input_file_name_encoding,
                        int doc_encoding_for_input_file_name,
                        const char *locale_encoding,
                        const STRING_LIST *include_directories,
                        int debug, ERROR_MESSAGE_LIST *error_messages,
                        const GLOBAL_INFO *global_information,
                        const ELEMENT *current)
{
  ELEMENT *verbatiminclude = 0;
  char *file_name_encoding;
  char *file_name_text = lookup_extra_string (current, AI_key_text_arg);
  char *file_name;
  char *file;
  const char *input_encoding;
  int warn;

  if (!file_name_text)
    return 0;

  warn = (debug > 0);
  input_encoding = element_associated_processing_encoding (current);

  file_name = encoded_input_file_name (input_file_name_encoding,
                     doc_encoding_for_input_file_name, locale_encoding,
                                       global_information,
                                       file_name_text, input_encoding,
                                       &file_name_encoding,
                                       &current->e.c->source_info);

  file = locate_include_file (file_name, include_directories);

  if (file)
    {
      FILE *stream = 0;
      const ENCODING_CONVERSION *conversion;

      stream = fopen (file, "r");
      if (!stream)
        {
          if (error_messages)
            {
              int status;
              char *decoded_file;
              if (file_name_encoding)
                decoded_file = decode_string (file, file_name_encoding,
                                         &status, &current->e.c->source_info);
              else
                decoded_file = file;
              message_list_command_error (error_messages, warn, current,
                                          "could not read %s: %s",
                                          decoded_file, strerror (errno));
              if (file_name_encoding)
                free (decoded_file);
            }
        }
      else
        {
          conversion
           = get_encoding_conversion (input_encoding, &input_conversions);
          verbatiminclude = new_command_element (ET_block_command, CM_verbatim);
          verbatiminclude->parent = current->parent;
          while (1)
            {
              size_t n;
              char *line = 0;
              char *text;
              ELEMENT *raw;
              ssize_t status = getline (&line, &n, stream);
              if (status == -1)
                {
                  free (line);
                  break;
                }

              text = convert_to_utf8_verbatiminclude
                       (line, conversion, &current->e.c->source_info);
              free (line);
              raw = new_text_element (ET_raw);
              text_append (raw->e.text, text);
              add_to_element_contents (verbatiminclude, raw);
              free (text);
            }
          if (fclose (stream) == EOF)
            {
              if (error_messages)
                {
                  int status;
                  char *decoded_file;
                  if (file_name_encoding)
                    decoded_file = decode_string (file, file_name_encoding,
                                                  &status,
                                                  &current->e.c->source_info);
                  else
                    decoded_file = file;
                  message_list_command_error (error_messages, warn, current,
                             "error on closing @verbatiminclude file %s: %s",
                                 decoded_file, strerror (errno));
                  if (file_name_encoding)
                    free (decoded_file);
                }
            }
        }
      free (file);
    }
  else if (error_messages)
    {
      message_list_command_error (error_messages, warn, current,
                                  "@%s: could not find %s",
                                  builtin_command_name (current->e.c->cmd),
                                  file_name_text);
    }
  free (file_name);
  free (file_name_encoding);
  return verbatiminclude;
}

ELEMENT *
converter_expand_verbatiminclude (ERROR_MESSAGE_LIST *error_messages,
                                  const OPTIONS *options,
                                  const GLOBAL_INFO *global_information,
                                  const ELEMENT *current)
{
  const char *input_file_name_encoding = 0;
  int doc_encoding_for_input_file_name = -1;
  const char *locale_encoding = 0;
  const STRING_LIST *include_directories = 0;
  int debug = 0;

  if (options)
    {
      input_file_name_encoding
        = options->INPUT_FILE_NAME_ENCODING.o.string;
      doc_encoding_for_input_file_name
        = options->DOC_ENCODING_FOR_INPUT_FILE_NAME.o.integer;
      locale_encoding = options->LOCALE_ENCODING.o.string;

      include_directories = options->INCLUDE_DIRECTORIES.o.strlist;

      debug = options->DEBUG.o.integer;
    }

  return expand_verbatiminclude (input_file_name_encoding,
            doc_encoding_for_input_file_name, locale_encoding,
            include_directories, debug, error_messages,
            global_information, current);
}

PARSED_DEF *
definition_arguments_content (const ELEMENT *element)
{
  PARSED_DEF *result = malloc (sizeof (PARSED_DEF));
  memset (result, 0, sizeof (PARSED_DEF));
  /* this condition is most probably always true */
  if (element->e.c->contents.number > 0)
    {
      size_t i;
      const ELEMENT *def_line = element->e.c->contents.list[0];
      if (def_line->e.c->contents.number > 0)
        {
          for (i = 0; i < def_line->e.c->contents.number; i++)
            {
              ELEMENT *arg = def_line->e.c->contents.list[i];
              if (arg->type == ET_def_class)
                result->class = arg;
              else if (arg->type == ET_def_category)
                result->category = arg;
              else if (arg->type == ET_def_type)
                result->type = arg;
              else if (arg->type == ET_def_name)
                result->name = arg;
              else if (arg->type == ET_def_arg || arg->type == ET_def_typearg
                       || arg->type == ET_delimiter)
                {
                  i--;
                  break;
                }
            }
          if (i < def_line->e.c->contents.number - 1)
            {
              ELEMENT *args = new_element (ET_NONE);
              insert_slice_into_contents (args, 0, def_line,
                                          i + 1, def_line->e.c->contents.number);
              result->args = args;
            }
        }
    }
  return result;
}

void
destroy_parsed_def (PARSED_DEF *parsed_def)
{
  if (parsed_def->args)
    destroy_element (parsed_def->args);
  free (parsed_def);
}

/* the CONVERTER and CDT_TREE_FN arguments allow to use the HTML converter
   specific translation function */
ELEMENT *
definition_category_tree (const ELEMENT *current,
                          LANG_TRANSLATION *lang_translation,
                          int debug, CONVERTER *converter,
   ELEMENT * (*cdt_tree_fn) (const char *string, CONVERTER *self,
                             NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                             const char *translation_context)
                         )
{
  ELEMENT *result = 0;
  ELEMENT *arg_category = 0;
  ELEMENT *arg_class = 0;
  ELEMENT *class_copy;
  char *def_command;

  if (current->e.c->contents.number > 0)
    {
      size_t i;
      const ELEMENT *def_line = current->e.c->contents.list[0];
      for (i = 0; i < def_line->e.c->contents.number; i++)
        {
          ELEMENT *arg = def_line->e.c->contents.list[i];
          if (arg->type == ET_def_class)
            arg_class = arg;
          else if (arg->type == ET_def_category)
            arg_category = arg;
          else if (arg->type == ET_def_arg || arg->type == ET_def_typearg
                   || arg->type == ET_delimiter)
            break;
        }
    }
  else
    return 0;

  if (!arg_class)
    {
      if (arg_category)
        {
          ELEMENT *category_copy = copy_tree (arg_category, 0);
          return category_copy;
        }
      else
       return 0;
    }

  class_copy = copy_tree (arg_class, 0);

  def_command = lookup_extra_string (current, AI_key_def_command);

  /* do something more efficient */
  if (!strcmp (def_command, "defop")
      || !strcmp (def_command, "deftypeop")
      || !strcmp (def_command, "defmethod")
      || !strcmp (def_command, "deftypemethod"))
    {
      ELEMENT *category_copy = copy_tree (arg_category, 0);
      NAMED_STRING_ELEMENT_LIST *substrings
                                   = new_named_string_element_list ();
      add_element_to_named_string_element_list (substrings,
                                                "category", category_copy);
      add_element_to_named_string_element_list (substrings,
                                                "class", class_copy);
      if (converter && cdt_tree_fn)
        {
          result = cdt_tree_fn ("{category} on @code{{class}}", converter,
                                substrings, 0);
        }
      else if (lang_translation)
        {
    /*
     TRANSLATORS: association of a method or operation name with a class
     in descriptions of object-oriented programming methods or operations. */
          result = gdt_tree ("{category} on @code{{class}}", 0,
                             lang_translation, substrings, debug, 0);
        }
      else
        {
          const char *documentlanguage
                = lookup_extra_string (current, AI_key_documentlanguage);
          LANG_TRANSLATION *lang_translation
           = new_lang_translation (documentlanguage);

          result = gdt_tree ("{category} on @code{{class}}", 0,
                             lang_translation, substrings, 0, 0);

          free_lang_translation (lang_translation);
          free (lang_translation);
        }
      destroy_named_string_element_list (substrings);
    } else if (!strcmp (def_command, "defivar")
      || !strcmp (def_command, "deftypeivar")
      || !strcmp (def_command, "defcv")
      || !strcmp (def_command, "deftypecv"))
    {
      ELEMENT *category_copy = copy_tree (arg_category, 0);
      NAMED_STRING_ELEMENT_LIST *substrings
                                   = new_named_string_element_list ();
      add_element_to_named_string_element_list (substrings,
                                                "category", category_copy);
      add_element_to_named_string_element_list (substrings,
                                                "class", class_copy);
      if (converter && cdt_tree_fn)
        {
          result = cdt_tree_fn ("{category} of @code{{class}}", converter,
                                substrings, 0);
        }
      else if (lang_translation)
        {
    /*
      TRANSLATORS: association of a variable or instance variable with
      a class in descriptions of object-oriented programming variables
      or instance variable. */
          result = gdt_tree ("{category} of @code{{class}}", 0,
                             lang_translation, substrings, debug, 0);
        }
      else
        {
          const char *documentlanguage
                = lookup_extra_string (current, AI_key_documentlanguage);
          LANG_TRANSLATION *lang_translation
           = new_lang_translation (documentlanguage);

          result = gdt_tree ("{category} of @code{{class}}", 0,
                             lang_translation, substrings, 0, 0);

          free_lang_translation (lang_translation);
          free (lang_translation);
        }
      destroy_named_string_element_list (substrings);
    }
  return result;
}

ELEMENT *
cdt_tree (const char *string, CONVERTER *self,
          NAMED_STRING_ELEMENT_LIST *replaced_substrings,
          const char *translation_context)
{
  int debug_level = self->conf->DEBUG.o.integer;

  return gdt_tree (string, self->document, self->current_lang_translations,
                   replaced_substrings,
                   debug_level, translation_context);
}

ELEMENT *
translated_command_tree (TRANSLATED_COMMAND_LIST *translated_commands,
                         enum command_id cmd,
                         LANG_TRANSLATION *lang_translation,
                         int debug, CONVERTER *converter,
   ELEMENT * (*cdt_tree_fn) (const char *string, CONVERTER *self,
                             NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                             const char *translation_context)
                        )
{
  size_t i;
  for (i = 0; i < translated_commands->number; i++)
    {
      TRANSLATED_COMMAND *translated_command
        = &translated_commands->list[i];
      if (translated_command->cmd == cmd
          && translated_command->translation)
        {
          ELEMENT *result;
          if (converter && cdt_tree_fn)
            result = cdt_tree_fn (translated_command->translation,
                                  converter, 0, 0);
          else
            result = gdt_tree (translated_command->translation,
                               0, lang_translation, 0, debug, 0);
          return result;
        }
    }
  return 0;
}


/*
  API to open, set encoding and register files.
*/

/* in Texinfo::Convert::Utils (also used by main program) */

/* in contrast with perl, we do not handle conversion to output encoding
   in output_files_open_out, but in the caller program */

void
register_unclosed_file (OUTPUT_FILES_INFORMATION *self, const char *file_path,
                        FILE *stream, void *io)
{
  FILE_STREAM *file_stream = 0;
  size_t file_stream_index;
  if (self->unclosed_files.number)
    {
      int slot_found = 0;
      size_t i;
      for (i = 0; i < self->unclosed_files.number; i++)
        {
          file_stream = &self->unclosed_files.list[i];
          if (file_stream->file_path)
            {
              fprintf (stderr, "RUF:%zu: %s\n", i, file_stream->file_path);
              if (!strcmp (file_path, file_stream->file_path))
                {
                  fprintf (stderr, "BUG: RUF: already open %zu: %s\n",
                           i, file_path);
                  file_stream->stream = stream;
                  return;
                }
            }
          else if (!slot_found)
            {
              slot_found = 1;
              file_stream_index = i;
              file_stream = &self->unclosed_files.list[file_stream_index];
            }
        }
    }

  if (!file_stream)
    file_stream = allocate_file_stream (self, file_path);

  file_stream->stream = stream;
  file_stream->io = io;

  return;
}

static void
free_unclosed_files (FILE_STREAM_LIST *unclosed_files)
{
  if (unclosed_files->number)
    {
      size_t i;
      for (i = 0; i < unclosed_files->number; i++)
        {
          free (unclosed_files->list[i].file_path);
        }
    }
}

/* not zeroed, left to the caller, if needed */
void
free_output_files_information (OUTPUT_FILES_INFORMATION *self)
{
  free_unclosed_files (&self->unclosed_files);
  free (self->unclosed_files.list);

  free_strings_list (&self->opened_files);
}

void
clear_output_files_information (OUTPUT_FILES_INFORMATION *self)
{
  free_unclosed_files (&self->unclosed_files);
  self->unclosed_files.number = 0;

  clear_strings_list (&self->opened_files);
}

/*
 FILE_PATH is the file path, it should be a binary string.
 If BINARY is set, set binary mode.
 Returns
  - as return value, the opened filehandle, or 0 if opening failed,
  - in *error_message, the errno message or 0 if opening succeeded.
  - in *overwritten_file, 1 if the FILE_PATH was already opened,
    which means overwriting.
*/
FILE *
output_files_open_out (OUTPUT_FILES_INFORMATION *self, const char *file_path,
                       char **error_message, int *overwritten_file, int binary)
{
  FILE *stream_handle;
  *error_message = 0;
  *overwritten_file = 0;
  if (!strcmp (file_path, "-"))
    {
      register_unclosed_file (self, file_path, stdout, 0);
      return stdout;
    }

  if (find_string (&self->opened_files, file_path))
    *overwritten_file = 1;

  if (binary)
    stream_handle = fopen (file_path, "wb");
  else
    stream_handle = fopen (file_path, "w");
  if (!stream_handle)
    {
      *error_message = strdup (strerror (errno));
      return 0;
    }
  else
    {
      register_unclosed_file (self, file_path, stream_handle, 0);
      if (!(*overwritten_file))
        add_string (file_path, &self->opened_files);
    }
  return stream_handle;
}

void
output_files_register_closed (OUTPUT_FILES_INFORMATION *self,
                              const char *file_path)
{
  size_t unclosed_files_nr = self->unclosed_files.number;
  if (unclosed_files_nr)
    {
      size_t j;
      for (j = unclosed_files_nr; j > 0; j--)
        {
          FILE_STREAM *file_stream = &self->unclosed_files.list[j -1];
          if (file_stream->file_path)
            {
              if (!strcmp (file_path, file_stream->file_path))
                {
                  free (file_stream->file_path);
                  file_stream->file_path = 0;
                  if (j == unclosed_files_nr)
                    {
                      self->unclosed_files.number--;
                    }
                  return;
                }
            }
          else
            fprintf (stderr, "REMARK: no unclosed file at %zu\n", j);
        }
    }
  fprintf (stderr, "BUG: %s not opened\n", file_path);
}

/* Unused */
const ELEMENT *
find_root_command_next_heading_command (const ELEMENT *root,
                                  const EXPANDED_FORMAT *formats,
                                  int do_not_ignore_contents,
                                  int do_not_ignore_index_entries)
{
  size_t i;

  if (root->e.c->contents.number <= 0)
    return 0;

  for (i = 0; i < root->e.c->contents.number; i++)
    {
      const ELEMENT *content = root->e.c->contents.list[i];
      enum command_id data_cmd;

      if (type_data[content->type].flags & TF_text)
        {
         /* do not happen and should not happen, as normal text should never
           be in top level root command contents, only empty_line,
           spaces_after_close_brace... that only contain whitespace_chars */
          if (content->type == ET_normal_text && content->e.text->end > 0)
            {
              const char *text = content->e.text->text;
              fprintf (stderr,
                       "BUG: in top level unexpected normal_text: '%s'\n",
                       text);
            /* only whitespace characters */
              if (text[strspn (text, whitespace_chars)] == '\0')
                continue;
              else
                return 0;
            }
          else
            continue;
        }

      data_cmd = element_builtin_data_cmd (content);

      if (data_cmd)
        {
          unsigned long flags = builtin_command_data[data_cmd].flags;
          unsigned long other_flags
               = builtin_command_data[data_cmd].other_flags;
          if (flags & CF_sectioning_heading)
            return content;
          if (content->type == ET_index_entry_command)
            {
              if (do_not_ignore_index_entries)
                return  0;
              else
                continue;
            }
          if (flags & CF_line)
            {
              if (other_flags & CF_formatted_line
                  || other_flags & CF_formattable_line
                  || (do_not_ignore_contents
                      && (content->e.c->cmd == CM_contents
                          || content->e.c->cmd == CM_shortcontents
                          || content->e.c->cmd == CM_summarycontents)))
                return 0;
              else
                continue;
            }
          else if (flags & CF_nobrace)
            {
              if (other_flags & CF_formatted_nobrace)
                return 0;
              else
                continue;
            }
          else if (flags & CF_block)
            {
              if (other_flags & CF_non_formatted_block
               || builtin_command_data[data_cmd].data == BLOCK_region
                /* ignored conditional */
               || builtin_command_data[data_cmd].data == BLOCK_conditional
               || (builtin_command_data[data_cmd].data == BLOCK_format_raw
                   && !format_expanded_p
                             (formats, element_command_name (content))))
                continue;
              else
                return 0;
            }
          else
            { /* brace commands */
              if (other_flags & CF_non_formatted_brace)
                continue;
              else
                return 0;
            }
        }
      if (content->type == ET_paragraph)
        return 0;
    }
  return 0;
}
