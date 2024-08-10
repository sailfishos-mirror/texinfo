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
#include "errors.h"
/* parse_file_path */
#include "utils.h"
/*
#include "convert_to_texinfo.h"
 */
/* retrieve_document remove_document_descriptor */
#include "document.h"
#include "texinfo.h"
#include "converter.h"
#include "convert_html.h"

#define LOCALEDIR DATADIR "/locale"

static void
print_errors (ERROR_MESSAGE_LIST *error_messages)
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

  clear_error_message_list (error_messages);
}

static const char *expanded_formats[] = {"html", 0};

int     
main (int argc, char *argv[])
{
  const char *locale_encoding;
  const char *input_file_path;
  int status;
  char *program_file_name_and_directory[2];
  char *program_file;
  size_t document_descriptor = 0;
  DOCUMENT *document;
  CONVERTER *converter;
  char *result;

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

  /* initialize parser */
  txi_parser (input_file_path, locale_encoding, expanded_formats);

  /* Texinfo document tree parsing */
  document_descriptor = parse_file (input_file_path, &status);
  document = retrieve_document (document_descriptor);

  if (status)
    {
      print_errors (&document->parser_error_messages);
      remove_document_descriptor (document_descriptor);
      exit (1);
    }

  print_errors (&document->parser_error_messages);

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

  print_errors (&document->error_messages);


  /* setup converter */
  converter = txi_converter ("html", locale_encoding, program_file, 0);

  free (program_file);

  /* return value can be NULL in case of errors or an empty string, but
     not anything else as parse_file is used with a file */
  result = txi_html_output (converter, document);
  free (result);

  print_errors (&converter->error_messages);

  /* destroy converter */
  html_free_converter (converter);
  /* destroy document */
  remove_document_descriptor (document_descriptor);
}
