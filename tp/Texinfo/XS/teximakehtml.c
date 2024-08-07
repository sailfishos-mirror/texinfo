/* teximakehtml.c -- simplistic conversion of Texinfo to HTML

   Copyright 2010-2024 Free Software Foundation, Inc.

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
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <langinfo.h>
#include <locale.h>
#ifdef ENABLE_NLS
#include <libintl.h>
#endif

#include "text.h"
#include "document_types.h"
#include "api.h"
#include "conf.h"
#include "errors.h"
/* parse_file_path */
#include "utils.h"
#include "convert_to_texinfo.h"
#include "document.h"
#include "transformations.h"
#include "structuring.h"
#include "translations.h"
/* enum converter_format */
#include "converter.h"
#include "convert_html.h"

#define LOCALEDIR DATADIR "/locale"

static void
print_errors (const ERROR_MESSAGE_LIST *error_messages)
{
  int i;

  TEXT text;
  text_init (&text);

  for (i = 0; i < error_messages->number; i++)
    {
      const ERROR_MESSAGE *error_msg = &error_messages->list[i];
      text_reset (&text);
      if (error_msg->source_info.file_name)
        {
          text_append (&text, error_msg->source_info.file_name);
          text_append_n (&text, ":", 1);
        }
      if (error_msg->source_info.line_nr > 0)
        {
          text_printf (&text, "%d:", error_msg->source_info.line_nr);
        }

      if (text.end > 0)
        text_append_n (&text, " ", 1);

      text_append (&text, error_msg->error_line);
      fprintf (stderr, "%s", text.text);
    }
  free (text.text);
}

static void
initialize_option_value (OPTION *option, OPTION **sorted_options,
                         const char *option_name, int int_value,
                         const char *char_value)
{
  const OPTION *ref_option = find_option_string (sorted_options, option_name);
  if (!ref_option)
    return;

  initialize_option (option, ref_option->type, ref_option->name);
  option->number = ref_option->number;

  set_conf (option, int_value, char_value);
}

static void
add_option_value (OPTIONS_LIST *options_list,  OPTION **sorted_options,
                  const char *option_name, int int_value,
                  const char *char_value)
{
  OPTION *option = &options_list->list[options_list->number];
  initialize_option_value (option, sorted_options, option_name, int_value,
                           char_value);
  options_list->number++;
}


int     
main (int argc, char *argv[])
{
  int status;
  int i;
  char *result = 0;
  size_t document_descriptor = 0;
  const char *locale_encoding;
  DOCUMENT *document;
  const char *input_file_path;
  char *input_file_name_and_directory[2];
  char *input_directory;
  char *program_file_name_and_directory[2];
  char *program_file;
  CONST_ELEMENT_LIST *sections_list;
  CONST_ELEMENT_LIST *nodes_list;
  CONVERTER_INITIALIZATION_INFO *format_defaults;
  CONVERTER_INITIALIZATION_INFO *conf;
  enum converter_format converter_format = COF_html;
  size_t converter_descriptor;
  CONVERTER *converter;
  char *paths[5];
  const char *output_file;
  const char *destination_directory;
  const char *output_filename;
  const char *document_name;

  /*
  const char *texinfo_text;
   */

#ifdef ENABLE_NLS
  setlocale (LC_ALL, "");

  /* Set the text message domain.  */
  bindtextdomain (PACKAGE_CONFIG, LOCALEDIR);
  textdomain (PACKAGE_CONFIG);

  /* set the gnulib text message domain. */
  bindtextdomain (PACKAGE_CONFIG "_tp-gnulib", LOCALEDIR);
#endif

  configure_output_strings_translations (LOCALEDIR, 0);

  locale_encoding = nl_langinfo (CODESET);

  if (argc <= 1)
    exit (1);

  converter_setup (0, 0, 0, 0);
  html_format_setup ();

  parse_file_path (argv[0], program_file_name_and_directory);
  program_file = program_file_name_and_directory[0];
  free (program_file_name_and_directory[1]);


  /* Texinfo file parsing */
  input_file_path = argv[1];

  parse_file_path (input_file_path, input_file_name_and_directory);
  input_directory = input_file_name_and_directory[1];
  free (input_file_name_and_directory[0]);

  reset_parser (0);
  
  if (strcmp (input_file_path, "."))
    {
      parser_conf_clear_INCLUDE_DIRECTORIES ();
      parser_conf_add_include_directory (input_directory);
      parser_conf_add_include_directory (".");
    }
  free (input_directory);

  parser_conf_set_LOCALE_ENCODING (locale_encoding);
  parser_conf_add_expanded_format ("html");

  document_descriptor = parse_file (input_file_path, &status);
  document = retrieve_document (document_descriptor);

  if (status)
    {
      print_errors (&document->parser_error_messages);
      remove_document_descriptor (document_descriptor);
      clear_error_message_list (&document->parser_error_messages);
      exit (1);
    }

  print_errors (&document->parser_error_messages);
  clear_error_message_list (&document->parser_error_messages);

  /*
  texinfo_text = convert_to_texinfo (document->tree);
  fprintf (stderr, "%s", texinfo_text);
  free (texinfo_text);
   */


  /* structure and transformations */
  initialize_document_options (document);

  /* TODO do a function in structuring that does that, with arguments
     maybe flags in C.
     relate_index_entries_to_table_items
     move_index_entries_after_items
     opt insert_nodes_for_sectioning_commands
     no_warn_non_empty_parts

     opt complete_tree_nodes_menus
     opt complete_tree_nodes_missing_menu
     opt regenerate_master_menu
     nodes_tree
     floats
     setup_index_entries_sort_strings
   */
  /* if (relate_index_entries_to_table_items) */
  relate_index_entries_to_table_items_in_tree (document->tree,
                                           &document->indices_info);
  /* if (move_index_entries_after_items) */
  move_index_entries_after_items_in_tree (document->tree);
  associate_internal_references (document);
  sections_list = sectioning_structure (document);
  if (sections_list)
    register_document_sections_list (document, sections_list);
  /* if (!no_warn_non_empty_parts) */
  /* warn_non_empty_parts (document) */
  /* complete_tree_nodes_menus */
  /* complete_tree_nodes_missing_menu */
  /* regenerate_master_menu */
  /* if (nodes_tree) */
  nodes_list = nodes_tree (document);
  register_document_nodes_list (document, nodes_list);

  /* if (format_menus) */
  /* set_menus_node_directions */
  /* complete_node_tree_with_menus */
  /* check_nodes_are_referenced */

  /* if (floats) */ 
  number_floats (document);
  /* if (setup_index_entries_sort_strings) */
  document_indices_sort_strings (document, &document->error_messages,
                                         document->options);

  print_errors (&document->error_messages);
  clear_error_message_list (&document->error_messages);

/*
 if ($^O eq 'MSWin32') {
  $main_program_set_options->{'DOC_ENCODING_FOR_INPUT_FILE_NAME'} = 0;
}
*/

  /* converter initialization */

  converter_descriptor = new_converter ();
  converter = retrieve_converter (converter_descriptor);

  format_defaults = new_converter_initialization_info ();
  format_defaults->converted_format = strdup ("html");
  format_defaults->output_format = strdup ("html");

  conf = new_converter_initialization_info ();
  initialize_options_list (&conf->conf, 10);
  conf->conf.number = 0;

  add_option_value (&conf->conf, converter->sorted_options,
   /*
    */
                    "PROGRAM", 0, program_file);
  /* comment the line above and uncomment below to compare with
     texi2any output
                    "PROGRAM", 0, "texi2any");
  add_option_value (&conf->conf, converter->sorted_options,
                    "PACKAGE_AND_VERSION", 0, "Texinfo 7.1.90+dev");
   */
  add_option_value (&conf->conf, converter->sorted_options,
                    "COMMAND_LINE_ENCODING", 0, locale_encoding);
  add_option_value (&conf->conf, converter->sorted_options,
                    "MESSAGE_ENCODING", 0, locale_encoding);
  add_option_value (&conf->conf, converter->sorted_options,
                    "LOCALE_ENCODING", 0, locale_encoding);
  add_option_value (&conf->conf, converter->sorted_options,
                    "XS_STRXFRM_COLLATION_LOCALE", 0, "en_US");
  /*
  add_option_value (&conf->conf, converter->sorted_options,
                    "DEBUG", 1, 0);
   */

  set_converter_init_information (converter, converter_format,
                                  format_defaults, conf);

  destroy_converter_initialization_info (format_defaults);
  destroy_converter_initialization_info (conf);

  /* next 3 functions are HTML specific */
  html_converter_init_special_unit (converter);
  html_converter_customize (converter);

  html_fill_options_directions (converter->conf, converter);


  /* prepare conversion to HTML */

  converter_set_document (converter, document);
  
  free (program_file);

  html_initialize_output_state (converter, "_output");

  status = html_setup_output (converter, paths);

  if (!status)
   {
     memset (paths, 0, 5 * sizeof (char *));
     goto finalization;
   }

  output_file = paths[0];
  destination_directory = paths[1];
  output_filename = paths[2];
  document_name = paths[3];

  html_prepare_conversion_units (converter);

  html_prepare_conversion_units_targets (converter, converter->document_name);

  html_translate_names (converter);

  html_prepare_units_directions_files (converter,
                   output_file, destination_directory, output_filename,
                                document_name);

  status = html_prepare_converted_output_info (converter, output_file,
                                                     output_filename);

  if (!status)
    goto finalization;

  /* conversion */
  if (converter->document)
    {
      result = html_convert_output (converter, converter->document->tree,
                  output_file, destination_directory, output_filename,
                        document_name);
    }

  if (!result)
    goto finalization;

  free (result);
    result = 0;

  status = html_finish_output (converter, output_file, destination_directory);

 finalization:

  for (i = 0; i < 5; i++)
    {
      free (paths[i]);
    }
  /* html_conversion_finalization */
  html_conversion_finalization (converter);
}
