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

/* functions in this file correspond to Texinfo::Convert::Converter */

#include <config.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stddef.h>

#include "command_ids.h"
#include "tree_types.h"
#include "tree.h"
#include "extra.h"
#include "utils.h"
#include "builtin_commands.h"
#include "node_name_normalization.h"
#include "convert_utils.h"
#include "translations.h"
#include "manipulate_tree.h"
#include "converter.h"

static CONVERTER **converter_list;
static size_t converter_number;
static size_t converter_space;

CONVERTER *
retrieve_converter (int converter_descriptor)
{
  if (converter_descriptor <= converter_number
      && converter_list[converter_descriptor -1] != 0)
    return converter_list[converter_descriptor -1];
  return 0;
}

/* descriptor starts at 1, 0 is not found or an error */
size_t
new_converter (void)
{
  size_t converter_index;
  int slot_found = 0;
  int i;
  CONVERTER *registered_converter;

  for (i = 0; i < converter_number; i++)
    {
      if (converter_list[i] == 0)
        {
          slot_found = 1;
          converter_index = i;
        }
    }
  if (!slot_found)
    {
      if (converter_number == converter_space)
        {
          converter_list = realloc (converter_list,
                              (converter_space += 5) * sizeof (CONVERTER *));
          if (!converter_list)
            fatal ("realloc failed");
        }
      converter_index = converter_number;
      converter_number++;
    }
  registered_converter = (CONVERTER *) malloc (sizeof (CONVERTER));
  memset (registered_converter, 0, sizeof (CONVERTER));

  converter_list[converter_index] = registered_converter;
  registered_converter->converter_descriptor = converter_index +1;

  /*
  fprintf(stderr, "REGISTER CONVERTER %zu %p %p %p\n", converter_index +1,
                       converter, registered_converter, converter->document);
   */
  return converter_index +1;
}

void
unregister_converter_descriptor (int converter_descriptor)
{
  CONVERTER *converter = retrieve_converter (converter_descriptor);
  if (converter)
    {
      converter_list[converter_descriptor-1] = 0;
      free (converter);
    }
}

/* freed by caller */
static COMMAND_OPTION_VALUE *
new_option_value (int type, int int_value, char *char_value)
{
  COMMAND_OPTION_VALUE *result
    = (COMMAND_OPTION_VALUE *) malloc (sizeof (COMMAND_OPTION_VALUE));
  result->type = type;
  if (type == GO_int)
    result->int_value = int_value;
  else
    result->char_value = char_value;
  return result;
}

/* freed by caller */
static COMMAND_OPTION_VALUE *
command_init (enum command_id cmd, OPTIONS *init_conf)
{
  COMMAND_OPTION_REF *init_conf_ref;
  COMMAND_OPTION_DEFAULT *option_default;
  COMMAND_OPTION_VALUE *option_value = 0;
  if (init_conf)
    {
      init_conf_ref = get_command_option (init_conf, cmd);
      if (init_conf_ref)
        {
          if (init_conf_ref->type == GO_int)
            {
              if (*(init_conf_ref->int_ref) >= 0)
                {
                  option_value
                    = new_option_value (GO_int, *(init_conf_ref->int_ref), 0);
                  free (init_conf_ref);
                  return option_value;
                }
            }
          else
            {
              if (*(init_conf_ref->char_ref))
                {
                  option_value
                    = new_option_value (GO_char, -1, *(init_conf_ref->char_ref));
                  free (init_conf_ref);
                  return option_value;
                }
            }
        }
      free (init_conf_ref);
    }
  option_default = &command_option_default_table[cmd];
  if (option_default->type == GO_int)
    {
      if (option_default->value >= 0)
        option_value = new_option_value (GO_int, option_default->value, 0);
    }
  else if (option_default->type == GO_char)
    {
      if (option_default->string)
        option_value = new_option_value (GO_char, -1, option_default->string);
    }
  return 0;
}

void
set_global_document_commands (CONVERTER *converter,
                              const enum command_location location,
                              const enum command_id *cmd_list)
{
  if (location == CL_before)
    {
      int i;
      for (i = 0; cmd_list[i] > 0; i++)
        {
          enum command_id cmd = cmd_list[i];
          COMMAND_OPTION_VALUE *option_value = command_init (cmd,
                                                converter->init_conf);
          if (option_value)
            {
              COMMAND_OPTION_REF *option_ref
               = get_command_option (converter->conf, cmd);
              if (option_value->type == GO_int)
                *(option_ref->int_ref) = option_value->int_value;
              else
                {
                  free (*(option_ref->char_ref));
                  *(option_ref->char_ref) = strdup (option_value->char_value);
                }
              free (option_ref);
              free (option_value);
            }
        }
    }
  else
    {
      int i;
      for (i = 0; cmd_list[i] > 0; i++)
        {
          ELEMENT *element;
          enum command_id cmd = cmd_list[i];
          if (converter->conf->DEBUG > 0)
            {
              fprintf (stderr, "XS|SET_global(%s) %s\n",
                       command_location_names[location],
                       builtin_command_data[cmd].cmdname);
            }
          element
            = set_global_document_command (converter->document->global_commands,
                                           converter->conf,
                                           cmd, location);
          if (!element)
            {
              COMMAND_OPTION_VALUE *option_value = command_init (cmd,
                                                      converter->init_conf);
              if (option_value)
                {
                  COMMAND_OPTION_REF *option_ref
                    = get_command_option (converter->conf, cmd);
                  if (option_value->type == GO_int)
                    *(option_ref->int_ref) = option_value->int_value;
                  else
                    {
                      free (*(option_ref->char_ref));
                      *(option_ref->char_ref)
                        = strdup (option_value->char_value);
                    }

                  free (option_ref);
                  free (option_value);
                }
            }
        }
    }
}

static void
id_to_filename (CONVERTER *self, char **id_ref)
{
  if (self->conf->BASEFILENAME_LENGTH < 0)
    return;
  char *id = *id_ref;
  if (strlen (id) > self->conf->BASEFILENAME_LENGTH)
    {
      id[self->conf->BASEFILENAME_LENGTH] = '\0';
    }
}

TARGET_FILENAME *
normalized_sectioning_command_filename (CONVERTER *self, const ELEMENT *command)
{
  TARGET_FILENAME *result
     = (TARGET_FILENAME *) malloc (sizeof (TARGET_FILENAME));
  TEXT filename;
  char *normalized_file_name;
  char *normalized_name
    = normalize_transliterate_texinfo_contents (command->args.list[0],
                                                (self->conf->TEST > 0));
  normalized_file_name = strdup (normalized_name);
  id_to_filename (self, &normalized_file_name);

  text_init (&filename);
  text_append (&filename, normalized_file_name);
  if (self->conf->EXTENSION && strlen (self->conf->EXTENSION))
    {
      text_append (&filename, ".");
      text_append (&filename, self->conf->EXTENSION);
    }

  free (normalized_file_name);

  result->filename = filename.text;
  result->target = normalized_name;

  return result;
}

char *
node_information_filename (CONVERTER *self, char *normalized,
                           const ELEMENT *label_element)
{
  char *filename;

  if (normalized)
    {
      if (self->conf->TRANSLITERATE_FILE_NAMES > 0)
        {
          filename = normalize_transliterate_texinfo_contents (label_element,
                                                       (self->conf->TEST > 0));
        }
      else
        filename = strdup (normalized);
    }
  else if (label_element)
    {
      filename = convert_contents_to_identifier (label_element);
    }
  else
    filename = strdup ("");

  id_to_filename (self, &filename);
  return filename;
}

ELEMENT_LIST *
comma_index_subentries_tree (const ELEMENT *current_entry,
                             char *separator)
{
  ELEMENT_LIST *result = new_list ();
  char *subentry_separator = separator;
  if (!separator)
    subentry_separator = ", ";

  while (1)
    {
      const ELEMENT *subentry
        = lookup_extra_element (current_entry, "subentry");
      if (subentry)
        {
          ELEMENT *separator = new_element (ET_NONE);
          text_append (&separator->text, subentry_separator);
          current_entry = subentry;
          add_to_element_list (result, separator);
          add_to_element_list (result, current_entry->args.list[0]);
        }
      else
        break;
    }
  if (result->number > 0)
    return result;
  else
    {
      destroy_list (result);
      return 0;
    }
}

void
free_comma_index_subentries_tree (ELEMENT_LIST *element_list)
{
  /* destroy separator elements */
  int i;
  for (i = 0; i < element_list->number; i++)
    {
      ELEMENT *content = element_list->list[i];
      if (content->type == ET_NONE)
        destroy_element (content);
    }
  destroy_list (element_list);
}

/* to be freed by caller */
char *
top_node_filename (CONVERTER *self, char *document_name)
{
  TEXT top_node_filename;

  if (self->conf->TOP_FILE && strlen (self->conf->TOP_FILE))
    {
      return strdup (self->conf->TOP_FILE);
    }

  if (document_name)
    {
      text_init (&top_node_filename);
      text_append (&top_node_filename, document_name);
      if (self->conf->EXTENSION && strlen (self->conf->EXTENSION))
        {
          text_append (&top_node_filename, ".");
          text_append (&top_node_filename, self->conf->EXTENSION);
        }
      return top_node_filename.text;
    }
  return 0;
}

void
initialize_output_units_files (CONVERTER *self)
{
  /* nothing to do, should have been initialized during converter
     initialization */
}

static size_t
find_output_unit_file (CONVERTER *self, char *filename, int *status)
{
  FILE_NAME_PATH_COUNTER_LIST *output_unit_files
    = &self->output_unit_files;
  int i;
  *status = 0;

  for (i = 0; i < output_unit_files->number; i++)
    {
      if (!strcmp (output_unit_files->list[i].normalized_filename, filename))
        {
          *status = 1;
          return i;
        }
    }
  return 0;
}

static size_t
add_output_units_file (CONVERTER *self, char *filename,
                       char *normalized_filename)
{
  size_t file_index;
  FILE_NAME_PATH_COUNTER *new_output_unit_file;
  FILE_NAME_PATH_COUNTER_LIST *output_unit_files
    = &self->output_unit_files;

  if (output_unit_files->number == output_unit_files->space)
    {
      output_unit_files->list = realloc (output_unit_files->list,
         (output_unit_files->space += 5) * sizeof (FILE_NAME_PATH_COUNTER));
      if (!output_unit_files->list)
        fatal ("realloc failed");
    }

  file_index = output_unit_files->number;
  new_output_unit_file = &output_unit_files->list[file_index];
  memset (new_output_unit_file, 0, sizeof (FILE_NAME_PATH_COUNTER));
  new_output_unit_file->filename = strdup (filename);
  if (normalized_filename)
    new_output_unit_file->normalized_filename = strdup (normalized_filename);
  else
    new_output_unit_file->normalized_filename = strdup (filename);

  output_unit_files->number++;

  return file_index;
}

/*
  If CASE_INSENSITIVE_FILENAMES is set, reuse the first
  filename with the same name insensitive to the case.
 */
static size_t
register_normalize_case_filename (CONVERTER *self, char *filename)
{
  size_t output_unit_file_idx;
  if (self->conf->CASE_INSENSITIVE_FILENAMES > 0)
    {
      char *lc_filename = to_upper_or_lower_multibyte (filename, -1);
      int status;
      output_unit_file_idx = find_output_unit_file (self, lc_filename, &status);
      if (status)
        {
          if (self->conf->DEBUG > 0)
            {
              FILE_NAME_PATH_COUNTER *output_unit_file
                = &self->output_unit_files.list[output_unit_file_idx];
              fprintf (stderr, "Reusing case-insensitive %s(%zu) for %s\n",
                       output_unit_file->filename, output_unit_file_idx,
                       filename);
            }
          free (lc_filename);
        }
      else
        {
          output_unit_file_idx = add_output_units_file (self, filename,
                                                        lc_filename);
          free (lc_filename);
        }
    }
  else
    {
      int status;
      output_unit_file_idx = find_output_unit_file (self, filename, &status);
      if (status)
        {
          if (self->conf->DEBUG > 0)
            {
              FILE_NAME_PATH_COUNTER *output_unit_file
                = &self->output_unit_files.list[output_unit_file_idx];
              fprintf (stderr, "Reusing %s(%zu) for %s\n",
                       output_unit_file->filename, output_unit_file_idx,
                       filename);
            }
        }
      else
        output_unit_file_idx = add_output_units_file (self, filename, 0);
    }
  return output_unit_file_idx;
}

size_t
set_output_unit_file (CONVERTER *self, OUTPUT_UNIT *output_unit,
                      char *filename, int set_counter)
{
  size_t output_unit_file_idx
     = register_normalize_case_filename (self, filename);
  FILE_NAME_PATH_COUNTER *output_unit_file
    = &self->output_unit_files.list[output_unit_file_idx];
  if (set_counter)
    output_unit_file->counter++;
  output_unit->unit_filename = output_unit_file->filename;
  return output_unit_file_idx;
}

void
set_file_path (CONVERTER *self, char *filename, char *filepath,
               char *destination_directory)
{
  size_t output_unit_file_idx
      = register_normalize_case_filename (self, filename);
  FILE_NAME_PATH_COUNTER *output_unit_file
    = &self->output_unit_files.list[output_unit_file_idx];
  char *filepath_str;
  int free_filepath = 0;

  if (!filepath)
    if (destination_directory && strlen (destination_directory))
      {
        xasprintf (&filepath_str, "%s/%s", destination_directory,
                                  output_unit_file->filename);
        free_filepath = 1;
      }
    else
      filepath_str = output_unit_file->filename;
  else
    filepath_str = filepath;

  if (output_unit_file->filepath)
    {
      if (!strcmp (output_unit_file->filepath, filepath_str))
        {
          if (self->conf->DEBUG > 0)
            fprintf (stderr, "set_file_path: filepath set: %s\n",
                             filepath_str);
        }
      else
        {
          if (self->conf->DEBUG > 0)
            fprintf (stderr, "set_file_path: filepath reset: %s, %s\n",
                             output_unit_file->filepath, filepath_str);
          free (output_unit_file->filepath);
          output_unit_file->filepath = strdup (filepath_str);
        }
    }
  else
    output_unit_file->filepath = strdup (filepath_str);
  if (free_filepath)
    free (filepath_str);
}

static void
free_output_unit_files_file (FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  int i;
  for (i = 0; i < output_unit_files->number; i++)
    {
      FILE_NAME_PATH_COUNTER *output_unit_file = &output_unit_files->list[i];
      free (output_unit_file->filename);
      free (output_unit_file->normalized_filename);
      free (output_unit_file->filepath);
      if (output_unit_file->body.space)
        free (output_unit_file->body.text);
    }
}

void
clear_output_unit_files (FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  free_output_unit_files_file (output_unit_files);
  output_unit_files->number = 0;
}

void
free_output_unit_files (FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  free_output_unit_files_file (output_unit_files);
  free (output_unit_files->list);
}

void
free_generic_converter (CONVERTER *self)
{
  if (self->translated_commands)
    {
      destroy_translated_commands (self->translated_commands);
    }

  free (self->expanded_formats);

  if (self->init_conf)
    free_options (self->init_conf);
  free (self->init_conf);

  if (self->conf)
    free_options (self->conf);
  free (self->conf);

  free_output_files_information (&self->output_files_information);
  free_output_unit_files (&self->output_unit_files);
}


/* XML conversion functions */

void
xml_format_text_with_numeric_entities (const char *text, TEXT *result)
{
  const char *p;

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
      switch (*p)
        {
        OTXI_NUMERIC_ENTITY_TEXT_CASES(p)
        }
    }
}


void
xml_protect_text (const char *text, TEXT *result)
{
  const char *p;

  p = text;

  while (*p)
    {
      int before_sep_nr = strcspn (p, "<>&\"");
      if (before_sep_nr)
        {
          text_append_n (result, p, before_sep_nr);
          p += before_sep_nr;
        }
      if (!*p)
        break;
      switch (*p)
        {
        OTXI_PROTECT_XML_CASES(p);
        /* should never happen */
        default:
         p++;
        }
    }
}

ELEMENT *
float_type_number (CONVERTER *self, ELEMENT *float_e)
{
  int have_float_number;
  ELEMENT *tree = 0;
  ELEMENT *type_element = 0;
  NAMED_STRING_ELEMENT_LIST *replaced_substrings
     = new_named_string_element_list ();
  char *float_type = lookup_extra_string (float_e, "float_type");
  int float_number
     = lookup_extra_integer (float_e, "float_number", &have_float_number);

  if (float_type && strlen (float_type))
    type_element = float_e->args.list[0];

  if (have_float_number)
    {
      ELEMENT *e_number = new_element (ET_NONE);
      text_printf (&e_number->text, "%d", float_number);
      add_element_to_named_string_element_list (replaced_substrings,
                                     "float_number", e_number);
    }

  if (type_element)
    {
      ELEMENT *type_element_copy = copy_tree (type_element);
      add_element_to_named_string_element_list (replaced_substrings,
                                     "float_type", type_element_copy);
      if (have_float_number)
        tree = gdt_tree ("{float_type} {float_number}", self->document,
                         self->conf, replaced_substrings, 0, 0);
      else
        tree = gdt_tree ("{float_type}", self->document, self->conf,
                         replaced_substrings, 0, 0);
    }
  else if (have_float_number)
    tree = gdt_tree ("{float_number}", self->document, self->conf,
                     replaced_substrings, 0, 0);

  destroy_named_string_element_list (replaced_substrings);

  return tree;
}
