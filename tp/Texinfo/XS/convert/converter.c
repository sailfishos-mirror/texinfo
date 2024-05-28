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

/* functions in this file correspond to Texinfo::Convert::Converter */

#include <config.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stddef.h>
#include <inttypes.h>
#include <unistr.h>
#include <unictype.h>

#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "option_types.h"
#include "options_types.h"
#include "tree.h"
#include "extra.h"
/* for COMMAND_OPTION_DEFAULT ACCENTS_STACK
   fatal xasprintf get_command_option ... */
#include "utils.h"
#include "errors.h"
#include "builtin_commands.h"
#include "convert_to_text.h"
#include "node_name_normalization.h"
/* cdt_tree ... */
#include "convert_utils.h"
/* for NAMED_STRING_ELEMENT_LIST new_named_string_element_list ... */
#include "translations.h"
#include "manipulate_tree.h"
#include "unicode.h"
#include "manipulate_indices.h"
#include "document.h"
#include "call_perl_function.h"
#include "converter.h"

/* associate lower case no brace accent command to the upper case
   corresponding commands */
enum command_id no_brace_command_accent_upper_case[][2] = {
  {CM_aa, CM_AA},
  {CM_ae, CM_AE},
  {CM_dh, CM_DH},
  {CM_l, CM_L},
  {CM_o, CM_O},
  {CM_oe, CM_OE},
  {CM_th, CM_TH},
  {0, 0},
};

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
  fprintf (stderr, "REGISTER CONVERTER %zu %p %p %p\n", converter_index +1,
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

static void
copy_option (OPTION *destination, OPTION *source)
{
  switch (source->type)
   {
     case GOT_integer:
       destination->o.integer = source->o.integer;
       break;

     case GOT_char:
     case GOT_bytes:
       free (destination->o.string);
       if (!source->o.string)
         destination->o.string = 0;
       else
         destination->o.string = strdup (source->o.string);
       break;

     default:
       fprintf (stderr, "BUG: copy_option type not handled: %d\n",
                source->type);
   }
}

/* freed by caller */
static OPTION *
new_option_value (enum global_option_type type, int int_value, char *char_value)
{
  OPTION *result = (OPTION *) malloc (sizeof (OPTION));
  memset (result, 0, sizeof (OPTION));
  result->type = type;
  if (type == GOT_integer)
    result->o.integer = int_value;
  else
    result->o.string = char_value;
  return result;
}

/* freed by caller.  Information in structure refers to other data, so
   should not be freed */
static OPTION *
command_init (enum command_id cmd, OPTIONS *init_conf)
{
  OPTION *init_conf_ref;
  COMMAND_OPTION_DEFAULT *option_default;
  OPTION *option_value = 0;
  if (init_conf)
    {
      init_conf_ref = get_command_option (init_conf, cmd);
      if (init_conf_ref)
        {
          option_value = (OPTION *) malloc (sizeof (OPTION));
          memcpy (option_value, init_conf_ref, sizeof (OPTION));
          return option_value;
        }
    }
  option_default = &command_option_default_table[cmd];
  if (option_default->type == GOT_integer)
    {
      if (option_default->value >= 0)
        option_value = new_option_value (GOT_integer, option_default->value, 0);
    }
  else if (option_default->type == GOT_char)
    {
      if (option_default->string)
        option_value = new_option_value (GOT_char, -1, option_default->string);
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
          OPTION *option_value = command_init (cmd,
                                               converter->init_conf);
          if (option_value)
            {
              OPTION *option_ref
               = get_command_option (converter->conf, cmd);
              if (option_ref->configured <= 0)
                copy_option (option_ref, option_value);
              free (option_value);
            }
        }
    }
  else
    {
      int i;
      for (i = 0; cmd_list[i] > 0; i++)
        {
          const ELEMENT *element;
          enum command_id cmd = cmd_list[i];
          if (converter->conf->DEBUG.o.integer > 0)
            {
              fprintf (stderr, "XS|SET_global(%s) %s\n",
                       command_location_names[location],
                       builtin_command_data[cmd].cmdname);
            }
          element
          = set_global_document_command (&converter->document->global_commands,
                                         converter->conf,
                                         cmd, location);
          if (!element)
            {
              OPTION *option_value = command_init (cmd,
                                                   converter->init_conf);
              if (option_value)
                {
                  OPTION *option_ref
                    = get_command_option (converter->conf, cmd);
                  if (option_ref->configured <= 0)
                    copy_option (option_ref, option_value);
                  free (option_value);
                }
            }
        }
    }
}

static void
id_to_filename (CONVERTER *self, char **id_ref)
{
  if (self->conf->BASEFILENAME_LENGTH.o.integer < 0)
    return;
  char *id = *id_ref;
  if (strlen (id) > self->conf->BASEFILENAME_LENGTH.o.integer)
    {
      id[self->conf->BASEFILENAME_LENGTH.o.integer] = '\0';
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
                                          (self->conf->TEST.o.integer > 0));
  normalized_file_name = strdup (normalized_name);
  id_to_filename (self, &normalized_file_name);

  text_init (&filename);
  text_append (&filename, normalized_file_name);
  if (self->conf->EXTENSION.o.string && strlen (self->conf->EXTENSION.o.string))
    {
      text_append (&filename, ".");
      text_append (&filename, self->conf->EXTENSION.o.string);
    }

  free (normalized_file_name);

  result->filename = filename.text;
  result->target = normalized_name;

  return result;
}

char *
node_information_filename (CONVERTER *self, const char *normalized,
                           const ELEMENT *label_element)
{
  char *filename;

  if (normalized)
    {
      if (self->conf->TRANSLITERATE_FILE_NAMES.o.integer > 0)
        {
          filename = normalize_transliterate_texinfo_contents (label_element,
                                            (self->conf->TEST.o.integer > 0));
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

ELEMENT *
float_type_number (CONVERTER *self, const ELEMENT *float_e)
{
  ELEMENT *tree = 0;
  ELEMENT *type_element = 0;
  NAMED_STRING_ELEMENT_LIST *replaced_substrings
     = new_named_string_element_list ();
  char *float_type = lookup_extra_string (float_e, "float_type");
  char *float_number = lookup_extra_string (float_e, "float_number");

  if (float_type && strlen (float_type))
    type_element = float_e->args.list[0];

  if (float_number)
    {
      ELEMENT *e_number = new_element (ET_NONE);
      text_append (&e_number->text, float_number);
      add_element_to_named_string_element_list (replaced_substrings,
                                     "float_number", e_number);
    }

  if (type_element)
    {
      ELEMENT *type_element_copy = copy_tree (type_element);
      add_element_to_named_string_element_list (replaced_substrings,
                                     "float_type", type_element_copy);
      if (float_number)
        tree = cdt_tree ("{float_type} {float_number}", self,
                         replaced_substrings, 0);
      else
        tree = cdt_tree ("{float_type}", self, replaced_substrings, 0);
    }
  else if (float_number)
    tree = cdt_tree ("{float_number}", self, replaced_substrings, 0);

  destroy_named_string_element_list (replaced_substrings);

  return tree;
}

FLOAT_CAPTION_PREPENDED_ELEMENT *
float_name_caption (CONVERTER *self, const ELEMENT *float_e)
{
  ELEMENT *prepended = 0;
  ELEMENT *type_element = 0;
  FLOAT_CAPTION_PREPENDED_ELEMENT *result = (FLOAT_CAPTION_PREPENDED_ELEMENT *)
    malloc (sizeof (FLOAT_CAPTION_PREPENDED_ELEMENT));
  NAMED_STRING_ELEMENT_LIST *replaced_substrings
     = new_named_string_element_list ();

  const char *float_type = lookup_extra_string (float_e, "float_type");
  const char *float_number = lookup_extra_string (float_e, "float_number");

  const ELEMENT *caption_element = lookup_extra_element (float_e, "caption");
  if (!caption_element)
    caption_element = lookup_extra_element (float_e, "shortcaption");

  if (float_type && strlen (float_type))
    type_element = float_e->args.list[0];

  if (float_number)
    {
      ELEMENT *e_number = new_element (ET_NONE);
      text_append (&e_number->text, float_number);
      add_element_to_named_string_element_list (replaced_substrings,
                                     "float_number", e_number);
    }

  if (type_element)
    {
      ELEMENT *type_element_copy = copy_tree (type_element);
      add_element_to_named_string_element_list (replaced_substrings,
                                     "float_type", type_element_copy);
      if (caption_element)
        {
          if (float_number)
            /* TRANSLATORS: added before caption */
            prepended = cdt_tree ("{float_type} {float_number}: ",
                                  self, replaced_substrings, 0);
          else
            /* TRANSLATORS: added before caption, no float label */
            prepended = cdt_tree ("{float_type}: ", self,
                                  replaced_substrings, 0);
        }
      else
        {
          if (float_number)
            prepended = cdt_tree ("{float_type} {float_number}",
                                  self, replaced_substrings, 0);
          else
            prepended = cdt_tree ("{float_type}", self,
                                  replaced_substrings, 0);
        }
    }
  else if (float_number)
    {
      if (caption_element)
      /* TRANSLATORS: added before caption, no float type */
        prepended = cdt_tree ("{float_number}: ", self,
                              replaced_substrings, 0);
      else
        prepended = cdt_tree ("{float_number}", self,
                              replaced_substrings, 0);
    }

  result->caption = caption_element;
  result->prepended = prepended;

  destroy_named_string_element_list (replaced_substrings);

  return result;
}

TREE_ADDED_ELEMENTS *
new_tree_added_elements (enum tree_added_elements_status status)
{
  TREE_ADDED_ELEMENTS *new
    = (TREE_ADDED_ELEMENTS *) malloc (sizeof (TREE_ADDED_ELEMENTS));
  memset (new, 0, sizeof (TREE_ADDED_ELEMENTS));
  new->status = status;
  return new;
}

/* NOTE in addition to freeing memory, the tree root is removed from
   tree_to_build if relevant. */
void
clear_tree_added_elements (CONVERTER *self, TREE_ADDED_ELEMENTS *tree_elements)
{
  /*
   HTML targets have all associated tree added elements structures that can be
   left as 0, in particular with tree_added_status_none if nothing refers to
   them, and are always cleared in the end.  So it is normal to have cleared
   tree added elements with status none, but they also should not have any
   added elements.
   */
   /*
  if (tree_elements->status == tree_added_status_none)
    {
      fprintf (stderr, "CTAE: %p no status (%zu)\n", tree_elements, tree_elements->added.number);
    }
   */

  if (tree_elements->tree
      && tree_elements->status != tree_added_status_reused_tree)
    remove_element_from_list (&self->tree_to_build, tree_elements->tree);

  if (tree_elements->status == tree_added_status_new_tree)
    destroy_element_and_children (tree_elements->tree);
  else if (tree_elements->status == tree_added_status_elements_added)
    {
      size_t i;
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

void
free_tree_added_elements (CONVERTER *self, TREE_ADDED_ELEMENTS *tree_elements)
{
  clear_tree_added_elements (self, tree_elements);
  free (tree_elements->added.list);
}

void
destroy_tree_added_elements (CONVERTER *self, TREE_ADDED_ELEMENTS *tree_elements)
{
  free_tree_added_elements (self, tree_elements);
  free (tree_elements);
}

ELEMENT *
new_element_added (TREE_ADDED_ELEMENTS *added_elements, enum element_type type)
{
  ELEMENT *new = new_element (type);
  add_to_element_list (&added_elements->added, new);
  return new;
}

TREE_ADDED_ELEMENTS *
table_item_content_tree (CONVERTER *self, const ELEMENT *element)
{
  ELEMENT *table_command = element->parent->parent->parent;
  ELEMENT *command_as_argument = lookup_extra_element (table_command,
                                               "command_as_argument");

  if (element->args.number > 0 && command_as_argument)
    {
      TREE_ADDED_ELEMENTS *tree
        = new_tree_added_elements (tree_added_status_elements_added);
      int status;
      int command_as_argument_kbd_code;
      ELEMENT *command = new_element_added (tree, ET_NONE);
      ELEMENT *arg = new_element_added (tree, ET_brace_command_arg);
      enum command_id cmd = element_builtin_cmd (command_as_argument);

      tree->tree = command;

      command->cmd = cmd;
      command->source_info = element->source_info;
      command_as_argument_kbd_code = lookup_extra_integer (table_command,
                                 "command_as_argument_kbd_code", &status);
      if (command_as_argument_kbd_code > 0)
        add_extra_integer (command, "code", 1);

      if (command_as_argument->type == ET_definfoenclose_command)
        {
          char *begin = lookup_extra_string (command_as_argument, "begin");
          char *end = lookup_extra_string (command_as_argument, "end");
          char *command_name = lookup_info_string (command_as_argument,
                                                   "command_name");
          command->type = command_as_argument->type;
          if (begin)
            add_extra_string_dup (command, "begin", begin);
          if (end)
            add_extra_string_dup (command, "end", end);
          if (command_name)
            add_info_string_dup (command, "command_name", command_name);
        }
      add_to_element_args (command, arg);
      add_to_contents_as_array (arg, element->args.list[0]);
      return tree;
    }

  return 0;
}

char *
convert_accents (CONVERTER *self, const ELEMENT *accent,
 char *(*convert_tree)(CONVERTER *self, const ELEMENT *tree, const char *explanation),
 char *(*format_accent)(CONVERTER *self, const char *text, const ELEMENT *element,
                        int set_case),
  int output_encoded_characters,
  int set_case)
{
  ACCENTS_STACK *accent_stack = find_innermost_accent_contents (accent);
  const ELEMENT_STACK *stack;
  char *arg_text;
  char *result;
  int i;

  if (accent_stack->argument)
    {
      char *explanation;
      xasprintf (&explanation, "ACCENT ARG %s",
                 builtin_command_name (accent->cmd));
      arg_text = (*convert_tree) (self, accent_stack->argument, explanation);
      free (explanation);
    }
  else
    arg_text = strdup ("");

  if (output_encoded_characters)
    {
      char *encoded = encoded_accents (self, arg_text, &accent_stack->stack,
                                 self->conf->OUTPUT_ENCODING_NAME.o.string,
                                 format_accent, set_case);
      if (encoded)
        {
          free (arg_text);
          destroy_accent_stack (accent_stack);
          return encoded;
        }
    }

  stack = &accent_stack->stack;
  result = arg_text;
  for (i = stack->top - 1; i >= 0; i--)
    {
      const ELEMENT *accent_command = stack->stack[i];
      char *formatted_accent = (*format_accent) (self, result, accent_command,
                                                 set_case);
      free (result);
      result = formatted_accent;
    }
  destroy_accent_stack (accent_stack);
  return result;
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

INDEX_SORTED_BY_INDEX *
get_converter_indices_sorted_by_index (CONVERTER *self, char **language)
{
  *language = 0;
  if (self->document)
    {
      char *collation_language = 0;
      COLLATION_INDICES_SORTED_BY_INDEX *collation_sorted_indices;
      if (self->conf->COLLATION_LANGUAGE.o.string)
        collation_language = self->conf->COLLATION_LANGUAGE.o.string;
      else if (self->conf->DOCUMENTLANGUAGE_COLLATION.o.integer > 0
               && self->conf->documentlanguage.o.string)
        collation_language = self->conf->documentlanguage.o.string;

      collation_sorted_indices
        = sorted_indices_by_index (self->document,
                                   &self->error_messages, self->conf,
                                   self->conf->USE_UNICODE_COLLATION.o.integer,
                                   collation_language,
                           self->conf->XS_STRXFRM_COLLATION_LOCALE.o.string);
      if (collation_sorted_indices->type != ctn_locale_collation)
        *language = collation_sorted_indices->language;
      return collation_sorted_indices->sorted_indices;
    }
  return 0;
}

INDEX_SORTED_BY_LETTER *
get_converter_indices_sorted_by_letter (CONVERTER *self, char **language)
{
  *language = 0;
  if (self->document)
    {
      char *collation_language = 0;
      COLLATION_INDICES_SORTED_BY_LETTER *collation_sorted_indices;
      if (self->conf->COLLATION_LANGUAGE.o.string)
        collation_language = self->conf->COLLATION_LANGUAGE.o.string;
      else if (self->conf->DOCUMENTLANGUAGE_COLLATION.o.integer > 0
               && self->conf->documentlanguage.o.string)
        collation_language = self->conf->documentlanguage.o.string;

      collation_sorted_indices
        = sorted_indices_by_letter (self->document,
                                    &self->error_messages, self->conf,
                                    self->conf->USE_UNICODE_COLLATION.o.integer,
                                    collation_language,
                            self->conf->XS_STRXFRM_COLLATION_LOCALE.o.string);
      if (collation_sorted_indices->type != ctn_locale_collation)
        *language = collation_sorted_indices->language;
      return collation_sorted_indices->sorted_indices;
    }
  return 0;
}

/* to be freed by caller */
char *
top_node_filename (const CONVERTER *self, const char *document_name)
{
  TEXT top_node_filename;

  if (self->conf->TOP_FILE.o.string && strlen (self->conf->TOP_FILE.o.string))
    {
      return strdup (self->conf->TOP_FILE.o.string);
    }

  if (document_name)
    {
      text_init (&top_node_filename);
      text_append (&top_node_filename, document_name);
      if (self->conf->EXTENSION.o.string
          && strlen (self->conf->EXTENSION.o.string))
        {
          text_append (&top_node_filename, ".");
          text_append (&top_node_filename, self->conf->EXTENSION.o.string);
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
find_output_unit_file (const CONVERTER *self, const char *filename, int *status)
{
  const FILE_NAME_PATH_COUNTER_LIST *output_unit_files
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
add_output_units_file (CONVERTER *self, const char *filename,
                       const char *normalized_filename)
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
size_t
register_normalize_case_filename (CONVERTER *self, const char *filename)
{
  size_t output_unit_file_idx;
  if (self->conf->CASE_INSENSITIVE_FILENAMES.o.integer > 0)
    {
      char *lc_filename = to_upper_or_lower_multibyte (filename, -1);
      int status;
      output_unit_file_idx = find_output_unit_file (self, lc_filename, &status);
      if (status)
        {
          if (self->conf->DEBUG.o.integer > 0)
            {
              FILE_NAME_PATH_COUNTER *output_unit_file
                = &self->output_unit_files.list[output_unit_file_idx];
              fprintf (stderr, "Reusing case-insensitive %s for %s\n",
                       output_unit_file->filename, filename);
              /*
              fprintf (stderr, "Reusing case-insensitive %s(%zu) for %s\n",
                       output_unit_file->filename, output_unit_file_idx,
                       filename);
               */
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
          if (self->conf->DEBUG.o.integer > 0)
            {
              FILE_NAME_PATH_COUNTER *output_unit_file
                = &self->output_unit_files.list[output_unit_file_idx];
              fprintf (stderr, "Reusing %s for %s\n",
                       output_unit_file->filename, filename);
              /*
              fprintf (stderr, "Reusing %s(%zu) for %s\n",
                       output_unit_file->filename, output_unit_file_idx,
                       filename);
               */
            }
        }
      else
        output_unit_file_idx = add_output_units_file (self, filename, 0);
    }
  return output_unit_file_idx;
}

size_t
set_output_unit_file (CONVERTER *self, OUTPUT_UNIT *output_unit,
                      const char *filename, int set_counter)
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
set_file_path (CONVERTER *self, const char *filename, const char *filepath,
               const char *destination_directory)
{
  size_t output_unit_file_idx
      = register_normalize_case_filename (self, filename);
  FILE_NAME_PATH_COUNTER *output_unit_file
    = &self->output_unit_files.list[output_unit_file_idx];
  char *filepath_str;

  if (!filepath)
    if (destination_directory && strlen (destination_directory))
      {
        xasprintf (&filepath_str, "%s/%s", destination_directory,
                                  output_unit_file->filename);
      }
    else
      filepath_str = strdup (output_unit_file->filename);
  else
    filepath_str = strdup (filepath);

  if (output_unit_file->filepath)
    {
      if (!strcmp (output_unit_file->filepath, filepath_str))
        {
          if (self->conf->DEBUG.o.integer > 0)
            fprintf (stderr, "set_file_path: filepath set: %s\n",
                             filepath_str);
          free (filepath_str);
        }
      else
        {
          if (self->conf->DEBUG.o.integer > 0)
            fprintf (stderr, "set_file_path: filepath reset: %s, %s\n",
                             output_unit_file->filepath, filepath_str);
          free (output_unit_file->filepath);
          output_unit_file->filepath = filepath_str;
        }
    }
  else
    output_unit_file->filepath = filepath_str;
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

  free (self->output_format);
  free (self->expanded_formats);

  if (self->init_conf)
    free_options (self->init_conf);
  free (self->init_conf);

  if (self->conf)
    free_options (self->conf);
  free (self->conf);

  if (self->convert_index_text_options)
    destroy_text_options (self->convert_index_text_options);

  free_output_files_information (&self->output_files_information);
  free_output_unit_files (&self->output_unit_files);

  destroy_text_options (self->convert_text_options);

  wipe_error_message_list (&self->error_messages);

  free_strings_list (&self->small_strings);
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

static char *
next_for_tieaccent (const char *text, const char **next)
{
  const char *p;
  if (!strlen (text))
    {
      return 0;
    }
  if (text[0] == '&')
    {
      if (strlen (text) > 3 && isascii_alnum (*(text+1)))
        {
          p = text +2;
          while (*p)
            {
              if (*p == ';')
                {
                  p++;
                  *next = p;
                  return strndup (text, p - text);
                }
              else if (isascii_alnum (*p))
                {
                  p++;
                }
              else
                break;
            }
        }
      return 0;
    }
  else
    {
      uint8_t *encoded_u8 = utf8_from_string (text);
      ucs4_t first_char;
      u8_next (&first_char, encoded_u8);
      free (encoded_u8);
      if (uc_is_general_category (first_char, UC_CATEGORY_L)
          /* ASCII digits */
          || (first_char >= 0x0030 && first_char <= 0x0039))
        {
          char *first_char_text;
          uint8_t *first_char_u8 = malloc (7 * sizeof (uint8_t));
          int first_char_len = u8_uctomb (first_char_u8, first_char, 6);
          if (first_char_len < 0)
            fatal ("u8_uctomb returns negative value");
          first_char_u8[first_char_len] = 0;
          first_char_text = string_from_utf8 (first_char_u8);
          free (first_char_u8);
          p = text + strlen (first_char_text);
          *next = p;
          return first_char_text;
        }
      return 0;
    }
}

typedef struct UNICODE_ACCENT_LETTER {
    enum command_id cmd;
    char *letter;
    char *numerical_entity;
} UNICODE_ACCENT_LETTER;

/* only those that are not obtained through diacritic + normalization */
static UNICODE_ACCENT_LETTER unicode_accented_letters[] = {
{CM_dotless, "i", "305"},
{CM_dotless, "j", "567"},
{0, 0, 0}
};

char *
xml_numeric_entity_accent (enum command_id cmd, const char *text)
{
  char *result;
  if (! builtin_command_data[cmd].flags & CF_accent)
    {
      return 0;
    }

  if (strlen (text) == 1 && isascii_alpha (*text))
    {
      int i;
      for (i = 0; unicode_accented_letters[i].cmd; i++)
        {
          UNICODE_ACCENT_LETTER *letter = &unicode_accented_letters[i];
          if (cmd == letter->cmd && ! strcmp (text, letter->letter))
            {
              xasprintf (&result, "&#%s;", letter->numerical_entity);
              return result;
            }
        }
    }

  if (unicode_diacritics[cmd].text)
    {
      if (cmd != CM_tieaccent)
        {
          if (strlen (text) == 1 && isascii_alpha (*text))
            {
              char *accented_char;
              char *normalized_char;
              uint8_t *encoded_u8;
              ucs4_t first_char;
              const uint8_t *next;

              xasprintf (&accented_char, "%s%s", text,
                         unicode_diacritics[cmd].text);
              normalized_char = normalize_NFC (accented_char);
              encoded_u8 = utf8_from_string (normalized_char);
              next = u8_next (&first_char, encoded_u8);
              if (next)
                {
                  ucs4_t other_char;
                  const uint8_t *after = u8_next (&other_char, next);
                  next = after;
                }
              free (encoded_u8);
              free (accented_char);
              free (normalized_char);
              if (!next)
                {
                  char *entity;
              /* hex entity
                 xasprintf (&entity, "&#%04lX;", first_char); */
        /* seems to be the way for portable uint32_t unsigned integer format */
                  xasprintf (&entity, "&#%" PRIu32 ";", first_char);
                  return entity;
                }
            }
          xasprintf (&result, "%s&#%s;", text, unicode_diacritics[cmd].codepoint);
          return result;
        }
      else
        {
          char *result;
          const char *p = 0;
          const char *remaining = 0;
          char *first = next_for_tieaccent (text, &p);
          char *second;
          if (!first)
            goto invalid;
          second = next_for_tieaccent (p, &remaining);
          if (second)
            {
              xasprintf (&result, "%s&#%s;%s%s", first,
                         unicode_diacritics[cmd].codepoint, second, remaining);
              free (first);
              free (second);
              return result;
            }
          else
            free (first);

         invalid:
          xasprintf (&result, "%s&#%s;", text,
                     unicode_diacritics[cmd].codepoint);
          return result;
        }
    }
  return 0;
}

/* return to be freed by the caller */
char *
xml_comment (CONVERTER *converter, const char *text)
{
  const char *p = text;

  TEXT result;

  text_init (&result);
  text_append_n (&result, "<!--", 4);
  while (*p)
    {
      char *q = strchr (p, '-');
      if (q)
        {
          if (q - p)
            text_append_n (&result, p, q +1 - p);
          p = q + 1;
          p += strspn (p, "-");
        }
      else
        {
          text_append (&result, p);
          break;
        }
    }
  if (result.end > 0 && result.text[result.end - 1] == '\n')
    {
      result.end--;
    }
  text_append_n (&result, " -->\n", 5);
  return result.text;
}
