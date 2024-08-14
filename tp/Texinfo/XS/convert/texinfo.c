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
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

/* Interface similar to the Perl modules interface for Texinfo parsing,
   Document structure and transformations and conversion */

/* not used in code called from texi2any/Perl, meant to be used exclusively
   from C code */

#include <config.h>

#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>

#include "document_types.h"
#include "api.h"
#include "conf.h"
#include "errors.h"
/* parse_file_path */
#include "utils.h"
#include "customization_options.h"
#include "document.h"
#include "translations.h"
#include "structuring.h"
#include "transformations.h"
#include "converter.h"
#include "convert_html.h"
#include "html_prepare_converter.h"
#include "texinfo.h"

/* initialization of the library. */
void
txi_setup (const char *localesdir, int texinfo_uninstalled,
                 const char *tp_builddir,
                 const char *pkgdatadir, const char *top_srcdir)
{
  if (localesdir)
    configure_output_strings_translations (localesdir, 0);

  converter_setup (texinfo_uninstalled, tp_builddir, pkgdatadir, top_srcdir);
  html_format_setup ();
}

/* parser initialization, similar to Texinfo::Parser::parser in Perl */
void
txi_parser (const char *file_path, const char *locale_encoding,
            const char **expanded_formats, const VALUE_LIST *values,
            OPTIONS_LIST *options)
{
  char *input_file_name_and_directory[2];
  char *input_directory;
  size_t i;
  int debug = 0;
  int includes_set = 0;

  /* special case, we need to know if debug is set before calling
     reset_parser */
  if (options)
    {
      for (i = 0; i < options->number; i++)
        {
          OPTION *option = options->list[i];
          if (!strcmp (option->name, "DEBUG"))
            {
              if (option->o.integer >= 0)
                debug = 1;
              break;
            }
        }
    }

  reset_parser (debug);

  parser_conf_set_DEBUG (debug);

  if (values)
    {
      parser_conf_reset_values ();
      for (i = 0; i < values->number; i++)
        {
          parser_conf_add_value (values->list[i].name,
                                 values->list[i].value);
        }
    }

  /* set from arguments.  Options override */
  parser_conf_set_LOCALE_ENCODING (locale_encoding);
  for (i = 0; expanded_formats[i]; i++)
    parser_conf_add_expanded_format (expanded_formats[i]);

  if (options)
    {
      for (i = 0; i < options->number; i++)
        {
          OPTION *option = options->list[i];
          if (!strcmp (option->name, "INCLUDE_DIRECTORIES"))
            {
              includes_set = 1;
              parser_conf_clear_INCLUDE_DIRECTORIES ();
              if (option->o.strlist)
                {
                  size_t j;
                  STRING_LIST *directories = option->o.strlist;
                  for (j = 0; j < directories->number; j++)
                    if (directories->list[j])
                      parser_conf_add_include_directory (directories->list[j]);
                }
            }
          else if (!strcmp (option->name, "EXPANDED_FORMATS"))
            {
              parser_conf_clear_expanded_formats ();
              if (option->o.strlist)
                {
                  size_t j;
                  STRING_LIST *expanded_formats = option->o.strlist;
                  for (j = 0; j < expanded_formats->number; j++)
                    if (expanded_formats->list[j])
                      parser_conf_add_expanded_format
                         (expanded_formats->list[j]);
                }
            }
          else if (!strcmp (option->name, "documentlanguage"))
            {
              if (option->o.string)
                parser_conf_set_documentlanguage (option->o.string);
            }
          else if (!strcmp (option->name, "FORMAT_MENU"))
            {
              if (option->o.string && !strcmp (option->o.string, "menu"))
                parser_conf_set_show_menu (1);
              else
                parser_conf_set_show_menu (0);
            }
          else if (!strcmp (option->name,
                            "IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME"))
            parser_conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME
                                                  (option->o.integer);
          else if (!strcmp (option->name, "CPP_LINE_DIRECTIVES"))
            parser_conf_set_CPP_LINE_DIRECTIVES (option->o.integer);
          else if (!strcmp (option->name, "MAX_MACRO_CALL_NESTING"))
            parser_conf_set_MAX_MACRO_CALL_NESTING (option->o.integer);
          else if (!strcmp (option->name, "NO_INDEX"))
            parser_conf_set_NO_INDEX (option->o.integer);
          else if (!strcmp (option->name, "NO_USER_COMMANDS"))
            parser_conf_set_NO_USER_COMMANDS (option->o.integer);
          else if (!strcmp (option->name, "DOC_ENCODING_FOR_INPUT_FILE_NAME"))
            parser_conf_set_DOC_ENCODING_FOR_INPUT_FILE_NAME
                                               (option->o.integer);
          else if (!strcmp (option->name, "INPUT_FILE_NAME_ENCODING"))
            {
              if (option->o.string)
                parser_conf_set_INPUT_FILE_NAME_ENCODING (option->o.string);
            }
          else if (!strcmp (option->name, "LOCALE_ENCODING"))
            {
              if (option->o.string)
                parser_conf_set_LOCALE_ENCODING (option->o.string);
            }
          else if (!strcmp (option->name, "COMMAND_LINE_ENCODING"))
            {
              if (option->o.string)
                parser_conf_set_COMMAND_LINE_ENCODING (option->o.string);
            }
          else if (!strcmp (option->name, "accept_internalvalue"))
            {
              /* called from gdt, no need to store the parser configuration */
              if (option->o.integer > 0)
                parser_conf_set_accept_internalvalue (1);
              /* $store_conf = 0; */
            }
          else if (strcmp (option->name, "DEBUG"))
            {
              fprintf (stderr, "ignoring parser configuration value \"%s\"\n",
                               option->name);
            }
        }
    }

  if (!includes_set)
    {
      if (file_path)
        {
          parse_file_path (file_path, input_file_name_and_directory);
          input_directory = input_file_name_and_directory[1];
          free (input_file_name_and_directory[0]);

          if (strcmp (file_path, "."))
            {
              parser_conf_clear_INCLUDE_DIRECTORIES ();
              parser_conf_add_include_directory (input_directory);
              parser_conf_add_include_directory (".");
            }
          free (input_directory);
        }
    }
}

/* call all the structuring/transformations typically done for a document.
   FLAGS select the structure/transformations called.  If FORMAT_MENU is set
   the structure functions related to menus are called.
   No implementation in Perl, as the modules are loaded on demand, which makes
   it impossible
*/
void
txi_complete_document (DOCUMENT *document, unsigned long flags,
                       int format_menu)
{
  CONST_ELEMENT_LIST *sections_list;
  int use_sections = (flags & STTF_complete_menus_use_sections);

  initialize_document_options (document);

  if (flags & STTF_relate_index_entries_to_table_items)
    relate_index_entries_to_table_items_in_tree (document->tree,
                                           &document->indices_info);

  if (flags & STTF_move_index_entries_after_items)
    move_index_entries_after_items_in_tree (document->tree);

  associate_internal_references (document);

  sections_list = sectioning_structure (document);
  if (sections_list)
    register_document_sections_list (document, sections_list);

  if (!(flags & STTF_no_warn_non_empty_parts))
    warn_non_empty_parts (document);

  if (flags & STTF_complete_tree_nodes_menus)
    complete_tree_nodes_menus (document->tree, use_sections);

  if (flags & STTF_complete_tree_nodes_missing_menu)
    complete_tree_nodes_menus (document->tree, use_sections);

  if (flags & STTF_regenerate_master_menu)
    regenerate_master_menu (document, use_sections);

  if (flags & STTF_nodes_tree)
    {
      CONST_ELEMENT_LIST *nodes_list = nodes_tree (document);
      register_document_nodes_list (document, nodes_list);

      if (format_menu)
        {
          set_menus_node_directions (document);
          complete_node_tree_with_menus (document);
          check_nodes_are_referenced (document);
        }
    }

  if (flags & STTF_floats)
    number_floats (document);

  if (flags & STTF_setup_index_entries_sort_strings)
    document_indices_sort_strings (document, &document->error_messages,
                                         document->options);
}

/* converter creation, similar to the very first part of
   Texinfo::Convert::Converter::converter and generic parts of
   _generic_converter_init, + some customization options settings
   that are done in Perl directly in texi2any.pl.
 */
CONVERTER *
txi_converter (enum converter_format format)
{
  size_t converter_descriptor = new_converter (format, CONVF_string_list);
  return retrieve_converter (converter_descriptor);
}

/* converter initialization. Similar to $converter->converter_defaults(),
   _generic_converter_init and $converter->converter_initialize() calls */
void
txi_converter_initialize (CONVERTER *converter,
                          const char *output_format,
                          const char *converted_format,
                          const char *locale_encoding,
                   const char *program_file, OPTIONS_LIST *customizations)
{
  enum converter_format converter_format = converter->format;
  CONVERTER_INITIALIZATION_INFO *format_defaults;
  CONVERTER_INITIALIZATION_INFO *conf;
  const char *format;

  if (converter_format == COF_none)
    return;

  format = converter_format_data[converter_format].default_format;

  /* prepare specific information for the converter */
  format_defaults = new_converter_initialization_info ();
  if (converted_format)
    format_defaults->converted_format = strdup (converted_format);
  else
    format_defaults->converted_format = strdup (format);
  if (output_format)
    format_defaults->output_format = strdup (output_format);
  else
    format_defaults->output_format = strdup (format);

  conf = new_converter_initialization_info ();
  initialize_options_list (&conf->conf, 10);

  add_option_string_value (&conf->conf, converter->sorted_options,
   /*
    */
                    "PROGRAM", 0, program_file);
  /* comment the line above and uncomment below to compare with
     texi2any output
                    "PROGRAM", 0, "texi2any");
  add_option_string_value (&conf->conf, converter->sorted_options,
                    "PACKAGE_AND_VERSION", 0, "Texinfo 7.1.90+dev");
   */
  add_option_string_value (&conf->conf, converter->sorted_options,
                    "COMMAND_LINE_ENCODING", 0, locale_encoding);
  add_option_string_value (&conf->conf, converter->sorted_options,
                    "MESSAGE_ENCODING", 0, locale_encoding);
  add_option_string_value (&conf->conf, converter->sorted_options,
                    "LOCALE_ENCODING", 0, locale_encoding);
  /* filled here because it is the best we have in C */
  add_option_string_value (&conf->conf, converter->sorted_options,
                    "XS_STRXFRM_COLLATION_LOCALE", 0, "en_US");
  /*
  add_option_string_value (&conf->conf, converter->sorted_options,
                    "DEBUG", 1, 0);
   */
  if (customizations)
    {
      copy_options_list (&conf->conf, customizations,
                         converter->sorted_options);
    }

  /* pass information to the converter and format specific initialization */
  set_converter_init_information (converter, converter_format,
                                  format_defaults, conf);

  switch (converter_format)
    {
      case COF_html:
        html_converter_init_special_unit (converter);
        html_converter_customize (converter);

        html_fill_options_directions (converter->conf, converter);
        break;
      default:
        break;
    }

  destroy_converter_initialization_info (format_defaults);
  destroy_converter_initialization_info (conf);
}



/* formats conversion */

/* similar to Texinfo::Convert::HTML->output */
char *
txi_html_output (CONVERTER *converter, DOCUMENT *document)
{
  int i;
  char *paths[5];
  const char *output_file;
  const char *destination_directory;
  const char *output_filename;
  const char *document_name;
  char *result = 0;
  int status;

  /* prepare conversion to HTML */
  converter_set_document (converter, document);

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

  if (strlen (result) && !strlen (output_file))
    {
      if (converter->conf->TEST.o.integer <= 0 )
        {
    /* This case is unlikely to happen, as there is no output file
       only if formatting is called as convert, which only happens in tests.
     */
          html_do_js_files (converter);
        }
      goto finalization;
    }

  status = html_finish_output (converter, output_file, destination_directory);

 finalization:

  for (i = 0; i < 5; i++)
    {
      free (paths[i]);
    }

  html_conversion_finalization (converter);

  return result;
}



/* high level interface, possibly hiding some details of the data */

DOCUMENT *
txi_parse_texi_file (const char *input_file_path, int *status)
{
  size_t document_descriptor = parse_file (input_file_path, status);
  return retrieve_document (document_descriptor);
}

void
txi_remove_document (DOCUMENT *document)
{
  remove_document_descriptor (document->descriptor);
}

void
txi_reset_converter (CONVERTER *converter)
{
  reset_converter (converter);
}

void
txi_destroy_converter (CONVERTER *converter)
{
  destroy_converter (converter);
}

size_t
txi_handle_parser_error_messages (DOCUMENT *document, int no_warn,
                                  int use_filename,
                                  const char *message_encoding)
{
  return handle_error_messages (&document->parser_error_messages, no_warn,
                         use_filename, message_encoding);
}

size_t
txi_handle_document_error_messages (DOCUMENT *document, int no_warn,
                                    int use_filename,
                                    const char *message_encoding)
{
  return handle_error_messages (&document->error_messages, no_warn,
                         use_filename, message_encoding);

}

size_t
txi_handle_converter_error_messages (CONVERTER *converter, int no_warn,
                                    int use_filename,
                                    const char *message_encoding)
{
  return handle_error_messages (&converter->error_messages, no_warn,
                         use_filename, message_encoding);

}
