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

/* corresponding to Texinfo::Convert::Utils */

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>

#include "options_types.h"
#include "tree_types.h"
#include "utils.h"
#include "command_ids.h"
#include "element_types.h"
#include "builtin_commands.h"
#include "tree.h"
#include "extra.h"
#include "errors.h"
#include "translations.h"
#include "debug.h"
#include "convert_to_texinfo.h"
#include "convert_utils.h"

char *convert_utils_month_name[12] = {
       "January", "February", "March", "April", "May",
     "June", "July", "August", "September", "October",
     "November", "December"
};

static ENCODING_CONVERSION_LIST output_conversions = {0, 0, 0, -1};
static ENCODING_CONVERSION_LIST input_conversions = {0, 0, 0, 1};

/* in Texinfo::Common */
char *
element_associated_processing_encoding (ELEMENT *element)
{
  char *input_encoding = lookup_extra_string (element, "input_encoding_name");
  /* should correspond to
     Texinfo::Common::encoding_name_conversion_map.
     Thoughts on this mapping are available near
     Texinfo::Common::encoding_name_conversion_map definition
  */
  /* FIXME check if needed, may not if always used through
     get_encoding_conversion
  if (input_encoding)
    if (!strcmp (input_encoding, "us-ascii"))
      input_encoding = "iso-8859-1";
  */
  return input_encoding;
}

ACCENTS_STACK *
find_innermost_accent_contents (ELEMENT *element)
{
  ELEMENT *current = element;
  ELEMENT *argument = 0;
  ACCENTS_STACK *accent_stack = malloc (sizeof (ACCENTS_STACK));

  accent_stack->stack = new_element (ET_NONE);
  accent_stack->argument = 0;

  while (1)
    {
      ELEMENT *arg;
      int i;

      /* the following can happen if called with a bad tree */
      if (!current->cmd || !(builtin_command_flags(current) & CF_accent))
        return accent_stack;
      add_to_contents_as_array (accent_stack->stack, current);
      /* A bogus accent, that may happen */
      if (current->args.number <= 0)
        return accent_stack;
      arg = current->args.list[0];
      if (arg->contents.number <= 0)
        return accent_stack;
      for (i = 0; i < arg->contents.number; i++)
        {
          ELEMENT *content = arg->contents.list[i];
          if (!(content->cmd && (content->cmd == CM_c
                                 || content->cmd == CM_comment)))
            {
              if (content->cmd
                  && builtin_command_flags(content) & CF_accent)
                {
                  current = content;
                  if (argument)
                    {
                      destroy_element (argument);
                      argument = 0;
                    }
                  break;
                }
              else
                {
                  if (!argument)
                    argument = new_element (ET_NONE);
                  add_to_contents_as_array (argument, content);
                }
            }
        }
      if (argument)
        break;
    }
  if (argument)
    accent_stack->argument = argument;
  return accent_stack;
}

void
destroy_accent_stack (ACCENTS_STACK *accent_stack)
{
  destroy_element (accent_stack->stack);
  if (accent_stack->argument)
    destroy_element (accent_stack->argument);
  free (accent_stack);
}

/* optional $self argument in perl */
/* caller should free return */
char *
add_heading_number (ELEMENT *current, char *text, int numbered)
{
  TEXT result;
  char *number = 0;
  if (numbered != 0)
    number = lookup_extra_string (current, "section_number");

  /* TODO need $self argument for translation
  if ($self) {
    if (defined($number)) {
      if ($current->{'cmdname'} eq 'appendix'
          and $current->{'extra'}->{'section_level'} == 1) {
        $result = $self->gdt_string('Appendix {number} {section_title}',
                   {'number' => $number, 'section_title' => $text});
      } else {
        $result = $self->gdt_string('{number} {section_title}',
                   {'number' => $number, 'section_title' => $text});
      }
    } else {
      $result = $text;
    }
  } else
*/

  {
    text_init (&result);
    if (current->cmd == CM_appendix)
      {
        int status;
        int section_level = lookup_extra_integer (current, "section_level",
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
decode_string (char *input_string, char *encoding, int *status)
{
  char *result;
  *status = 0;
  /* not sure this can happen */
  if (!encoding)
    return strdup(input_string);

  ENCODING_CONVERSION *conversion
    = get_encoding_conversion (encoding, &input_conversions);

  if (!conversion)
    return strdup(input_string);

  *status = 1;

  result = encode_with_iconv (conversion->iconv, input_string);
  return result;
}

static char *
encode_string (char *input_string, char *encoding, int *status)
{
  char *result;
  *status = 0;
  /* not sure this can happen */
  if (!encoding)
    return strdup(input_string);

  ENCODING_CONVERSION *conversion
    = get_encoding_conversion (encoding, &output_conversions);

  if (!conversion)
    return strdup(input_string);

  *status = 1;

  result = encode_with_iconv (conversion->iconv, input_string);
  return result;
}

static char *
convert_to_utf8 (char *s, ENCODING_CONVERSION *conversion)
{
  char *result;
  if (!conversion)
    return strdup (s);
  result = encode_with_iconv (conversion->iconv, s);
  return result;
}

/*
# this requires a converter argument
# Reverse the decoding of the file name from the input encoding.
*/
char *
encoded_input_file_name (char *file_name, char *input_file_encoding,
                         char **file_name_encoding)
{
  char *result;
  char *encoding;
  int status;
/*
  my $input_file_name_encoding = $self->get_conf('INPUT_FILE_NAME_ENCODING');
  if ($input_file_name_encoding) {
    $encoding = $input_file_name_encoding;
  } elsif ($self->get_conf('DOC_ENCODING_FOR_INPUT_FILE_NAME')) {
    if (defined($input_file_encoding)) {
      $encoding = $input_file_encoding;
    } else {
      $encoding = $self->{'document_info'}->{'input_perl_encoding'}
        if ($self->{'document_info'}
          and defined($self->{'document_info'}->{'input_perl_encoding'}));
    }
  } else {
    $encoding = $self->get_conf('LOCALE_ENCODING');
  }
*/
  if (input_file_encoding)
    encoding = input_file_encoding;

  result = encode_string (file_name, encoding, &status);

  if (status)
    *file_name_encoding = strdup(encoding);
   else
    *file_name_encoding = 0;
  return result;
}

/*
# $REGISTRAR argument (in practice, a converter) is optional.
# $CONFIGURATION_INFORMATION is also optional, but without this
# argument and the 'INCLUDE_DIRECTORIES' available through
# get_conf(), the included file can only be found in specific
# circumstances.
*/
/* FIXME TEXT_OPTIONS * is too restricted, should be any converter
   customization, but it is the only one we have for now */
ELEMENT *
expand_verbatiminclude (ELEMENT *current, TEXT_OPTIONS *options)
{
  ELEMENT *verbatiminclude = 0;
  char *file_name_encoding;
  char *file_name_text = lookup_extra_string (current, "text_arg");
  char *file_name;
  char *file;

  if (!file_name_text)
    return 0;

  char *input_encoding = element_associated_processing_encoding (current);

  file_name = encoded_input_file_name (file_name_text, input_encoding,
                                       &file_name_encoding);

  file = locate_include_file (file_name, &options->include_directories);

  if (file)
    {
      FILE *stream = 0;
      ENCODING_CONVERSION *conversion;

      stream = fopen (file, "r");
      if (!stream)
      /* if ($registrar) */
        {
          int status;
          char *decoded_file;
          if (file_name_encoding)
            decoded_file = decode_string (file, file_name_encoding,
                                          &status);
          else
            decoded_file = file;
          command_error (current, "could not read %s: %s",
                         decoded_file, strerror (errno));
          if (file_name_encoding)
            free (decoded_file);
        }
      else
        {
          conversion
           = get_encoding_conversion (input_encoding, &input_conversions);
          verbatiminclude = new_element (ET_NONE);
          verbatiminclude->cmd = CM_verbatim;
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

              text = convert_to_utf8 (line, conversion);
              free (line);
              raw = new_element (ET_raw);
              text_append (&raw->text, text);
              add_to_element_contents (verbatiminclude, raw);
              free (text);
            }
          if (fclose (stream) == EOF)
            {
          /* if ($registrar) */
              int status;
              char *decoded_file;
              if (file_name_encoding)
                decoded_file = decode_string (file, file_name_encoding,
                                              &status);
              else
                decoded_file = file;
              command_error (current,
                             "error on closing @verbatiminclude file %s: %s",
                             decoded_file, strerror (errno));
              if (file_name_encoding)
                free (decoded_file);
            }
        }
    }
  else
  /* elsif ($registrar) */
    {
      command_error (current, "@%s: could not find %s",
                     builtin_command_name (current->cmd),
                     file_name_text);
   }
  free (file_name);
  return verbatiminclude;
}

PARSED_DEF *
definition_arguments_content (ELEMENT *element)
{
  PARSED_DEF *result = malloc (sizeof (PARSED_DEF));
  memset (result, 0, sizeof (PARSED_DEF));
  if (element->args.number >= 0)
    {
      int i;
      ELEMENT *def_line = element->args.list[0];
      if (def_line->contents.number > 0)
        {
          for (i = 0; i < def_line->contents.number; i++)
            {
              ELEMENT *arg = def_line->contents.list[i];
              char *role = lookup_extra_string (arg, "def_role");
              if (!role)
                fprintf (stderr, "BUG: NO ROLE %s\n", print_element_debug (arg, 0));
              if (!strcmp (role, "class"))
                result->class = arg;
              else if (!strcmp (role, "category"))
                result->category = arg;
              else if (!strcmp (role, "type"))
                result->type = arg;
              else if (!strcmp (role, "name"))
                result->name = arg;
              else if (!strcmp (role, "arg") || !strcmp (role, "typearg")
                       || !strcmp (role, "delimiter"))
                {
                  i--;
                  break;
                }
            }
          if (i < def_line->contents.number - 1)
            {
              ELEMENT *args = new_element (ET_NONE);
              insert_slice_into_contents (args, 0, def_line,
                                          i + 1, def_line->contents.number);
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

ELEMENT *
definition_category_tree (OPTIONS * options, ELEMENT *current)
{
  ELEMENT *result = 0;
  ELEMENT *arg_category = 0;
  ELEMENT *arg_class = 0;
  ELEMENT *arg_class_code;
  ELEMENT *class_copy;
  char *def_command;

  if (current->args.number >= 0)
    {
      int i;
      ELEMENT *def_line = current->args.list[0];
      for (i = 0; i < def_line->contents.number; i++)
        {
          ELEMENT *arg = def_line->contents.list[i];
          char *role = lookup_extra_string (arg, "def_role");
          if (!strcmp (role, "class"))
            arg_class = arg;
          else if (!strcmp (role, "category"))
            arg_category = arg;
          else if (!strcmp (role, "arg") || !strcmp (role, "typearg")
                   || !strcmp (role, "delimiter"))
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

  if (!options)
    {
      ELEMENT *brace_command_arg = new_element (ET_brace_command_arg);
      arg_class_code = new_element (ET_NONE);
      arg_class_code->cmd = CM_code;
      add_to_contents_as_array (brace_command_arg, class_copy);
      add_to_element_args (arg_class_code, brace_command_arg);
    }

  def_command = lookup_extra_string (current, "def_command");

  /* do something more efficient */
  if (!strcmp(def_command, "defop")
      || !strcmp(def_command, "deftypeop")
      || !strcmp(def_command, "defmethod")
      || !strcmp(def_command, "deftypemethod"))
    {
      ELEMENT *category_copy = copy_tree (arg_category, 0);
      if (options)
        {
          NAMED_STRING_ELEMENT_LIST *substrings
                                       = new_named_string_element_list ();
          add_element_to_named_string_element_list (substrings,
                                                     "category", category_copy);
          add_element_to_named_string_element_list (substrings,
                                                           "class", class_copy);
          /*
          TRANSLATORS: association of a method or operation name with a class
          in descriptions of object-oriented programming methods or operations.
           */

          result = gdt (options, "{category} on @code{{class}}",
                        substrings, 0, 0);
          destroy_named_string_element_list (substrings);
        }
      else
        {
          result = new_element (ET_NONE);
          ELEMENT *text_element = new_element (ET_NONE);
          add_to_contents_as_array (result, category_copy);
          text_append (&text_element->text, " on ");
          add_to_contents_as_array (result, text_element);
          add_to_contents_as_array (result, arg_class_code);
        }
    } else if (!strcmp(def_command, "defivar")
      || !strcmp(def_command, "deftypeivar")
      || !strcmp(def_command, "defcv")
      || !strcmp(def_command, "deftypecv"))
    {
      ELEMENT *category_copy = copy_tree (arg_category, 0);
      if (options)
        {
          NAMED_STRING_ELEMENT_LIST *substrings
                                       = new_named_string_element_list ();
          add_element_to_named_string_element_list (substrings,
                                                     "category", category_copy);
          add_element_to_named_string_element_list (substrings,
                                                           "class", class_copy);
          /*
          TRANSLATORS: association of a method or operation name with a class
          in descriptions of object-oriented programming methods or operations.
           */

          result = gdt (options, "{category} of @code{{class}}",
                        substrings, 0, 0);
          destroy_named_string_element_list (substrings);
        }
      else
        {
          result = new_element (ET_NONE);
          ELEMENT *text_element = new_element (ET_NONE);
          add_to_contents_as_array (result, category_copy);
          text_append (&text_element->text, " of ");
          add_to_contents_as_array (result, text_element);
          add_to_contents_as_array (result, arg_class_code);
        }
    }
  return result;
}
