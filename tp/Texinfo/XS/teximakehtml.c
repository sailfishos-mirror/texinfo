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

#include "document_types.h"
#include "converter_types.h"
/* parse_file_path */
#include "utils.h"
#include "customization_options.h"
/*
#include "convert_to_texinfo.h"
 */
#include "create_buttons.h"
#include "convert_html.h"
#include "texinfo.h"

#define LOCALEDIR DATADIR "/locale"

/* this function is quite generic, it could be added to utils.c */
static void
add_button_option (OPTIONS_LIST *options_list, OPTION **sorted_options,
                   const char *option_name,
                   BUTTON_SPECIFICATION_LIST *buttons)
{
  OPTION *option;

  const OPTION *ref_option = find_option_string (sorted_options, option_name);
  if (!ref_option)
    return;

  option = new_option (ref_option->type, ref_option->name, ref_option->number);
  option->o.buttons = buttons;

  options_list_add_option (options_list, option);
}

/* this function is quite generic, it could be added to utils.c */
static OPTION *
add_new_option_strlist_value (OPTIONS_LIST *options_list,
                  enum global_option_type type, const char *name,
                  const STRING_LIST *strlist)
{
  OPTION *option = new_option (type, name, 0);

  copy_strings (option->o.strlist, strlist);

  options_list_add_option (options_list, option);

  return option;
}

static const char *expanded_formats[] = {"html", 0};
static VALUE values_array[] = {
  {"txicommandconditionals", "1"}
};
static const VALUE_LIST values = {1, 1, values_array};

static char *parser_EXPANDED_FORMATS_array[] = {"HTML", "tex"};
static STRING_LIST parser_EXPANDED_FORMATS
  = {parser_EXPANDED_FORMATS_array, 2, 2};


int
main (int argc, char *argv[])
{
  const char *locale_encoding;
  const char *input_file_path;
  int status;
  char *program_file_name_and_directory[2];
  char *program_file;
  DOCUMENT *document;
  CONVERTER *converter;
  char *result;
  BUTTON_SPECIFICATION_LIST *custom_node_footer_buttons;
  OPTIONS_LIST parser_options;
  OPTIONS_LIST convert_options;
  size_t errors_count = 0;
  size_t errors_nr;

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

  locale_encoding = nl_langinfo (CODESET);

  if (argc <= 1)
    exit (1);

  txi_setup (LOCALEDIR, 0, 0, 0, 0);

  parse_file_path (argv[0], program_file_name_and_directory);
  program_file = program_file_name_and_directory[0];
  free (program_file_name_and_directory[1]);

/*
 if ($^O eq 'MSWin32') {
  $main_program_set_options->{'DOC_ENCODING_FOR_INPUT_FILE_NAME'} = 0;
}
*/

  /* Texinfo file parsing */
  input_file_path = argv[1];

  initialize_options_list (&parser_options, 2);
  /*
  add_new_option_value (&parser_options, GOT_integer,
                           "DEBUG", 1, 0);
   */
  add_new_option_strlist_value (&parser_options, GOT_char_string_list,
                        "EXPANDED_FORMATS", &parser_EXPANDED_FORMATS);

  /* initialize parser */
  txi_parser (input_file_path, locale_encoding, expanded_formats, &values,
              &parser_options);

  free_options_list (&parser_options);

  /* Texinfo document tree parsing */
  document = txi_parse_texi_file (input_file_path, &status);

  if (status)
    {
      txi_handle_parser_error_messages (document, 0, 1, locale_encoding);
      txi_remove_document (document);
      exit (1);
    }

  errors_nr
    = txi_handle_parser_error_messages (document, 0, 1, locale_encoding);
  errors_count += errors_nr;

  /*
  texinfo_text = convert_to_texinfo (document->tree);
  fprintf (stderr, "%s", texinfo_text);
  free (texinfo_text);
   */


  /* structure and transformations */
  txi_complete_document (document, STTF_relate_index_entries_to_table_items
                     | STTF_move_index_entries_after_items
                     | STTF_no_warn_non_empty_parts
                     | STTF_nodes_tree | STTF_floats
                     | STTF_setup_index_entries_sort_strings, 0);

  errors_nr
    += txi_handle_document_error_messages (document, 0, 1, locale_encoding);
  errors_count += errors_nr;

  /* create converter and generic converter initializations */
  converter = txi_converter (COF_html);

  initialize_options_list (&convert_options, 2);
  /* customize buttons.  This is a bit silly to use link buttons for
     footer, it is for the demonstration */
  custom_node_footer_buttons = new_base_links_buttons (0);
  add_button_option (&convert_options, converter->sorted_options,
                     "NODE_FOOTER_BUTTONS", custom_node_footer_buttons);
  add_option_string_value (&convert_options, converter->sorted_options,
                           "PROGRAM_NAME_IN_FOOTER", 1, 0);
  /* this is set to help with comparison with previous invokations */
  add_option_string_value (&convert_options, converter->sorted_options,
                           "TEST", 1, 0);

  /* setup converter */
  txi_converter_initialize (converter, 0, 0, locale_encoding, program_file,
                            &convert_options);

  free_options_list (&convert_options);
  free (program_file);

  /* return value can be NULL in case of errors or an empty string, but
     not anything else as parse_file is used with a file */
  result = txi_html_output (converter, document);
  free (result);

  errors_nr
    = txi_handle_converter_error_messages (converter, 0, 1, locale_encoding);
  errors_count += errors_nr;

  /* destroy converter */
  html_free_converter (converter);
  /* destroy document */
  txi_remove_document (document);

  if (errors_count > 0)
    exit (1);
}
