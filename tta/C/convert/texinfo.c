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

/* Interface similar to the Perl modules interface for Texinfo parsing,
   higher-level interface for document structure and transformations,
   and interface similar to the Perl modules interface for conversion */

/* not used in code called from texi2any/Perl, meant to be used exclusively
   from C code */

#include <config.h>

#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>
#include <sys/stat.h>

#include "document_types.h"
#include "option_types.h"
#include "options_defaults.h"
#include "api.h"
/* fatal */
#include "base_utils.h"
#include "conf.h"
#include "errors.h"
/* parse_file_path */
#include "utils.h"
#include "customization_options.h"
#include "document.h"
#include "translations.h"
#include "structuring.h"
#include "transformations.h"
#include "convert_utils.h"
#include "converter.h"
#include "html_converter_api.h"
#include "call_conversion_perl.h"
#include "call_embed_perl.h"
/* set_no_perl_interpreter */
#include "xs_utils.h"
#include "texinfo.h"

const TRANSFORMATION_NAME_FLAG txi_tree_transformation_table[] = {
#define tt_type(name) {#name, STTF_ ## name},
   TT_TYPES_LIST
#undef tt_type
  {NULL, 0}
};

/* similar to Texinfo::Common::valid_tree_transformation */
/* Also returns the flag associated to the transformation */
unsigned long
txi_find_tree_transformation (const char *transformation_name)
{
  int i;
  for (i = 0; txi_tree_transformation_table[i].name; i++)
    {
      if (!strcmp (transformation_name, txi_tree_transformation_table[i].name))
        return txi_tree_transformation_table[i].flag;
    }
  return 0;
}

/* to be called before loading init files to get the opportunity to
   start an embedded interpreter, and also do the basic initialization
   if not done through the interpreter */
void
txi_setup_main_load_interpreter (int embedded_interpreter,
                      int texinfo_uninstalled,
                      const char *converterdatadir,
                      const char *t2a_builddir,
                      const char *t2a_srcdir,
                      int *argc_ref, char ***argv_ref, char ***env_ref,
                      const char *version_checked)
{
  const char *load_txi_modules_basename = "load_txi_modules";
  if (embedded_interpreter)
    {
      char *load_modules_path;
      int status;
      if (texinfo_uninstalled)
        xasprintf (&load_modules_path, "%s/perl/%s.pl",
                   t2a_srcdir, load_txi_modules_basename);
      else
        xasprintf (&load_modules_path, "%s/%s", converterdatadir,
                   load_txi_modules_basename);
      status = call_init_perl (argc_ref, argv_ref, env_ref, load_modules_path,
                               version_checked);
      /* status < 0 means no functioning call_init_perl */
      if (status > 0)
        {
          char *message;
          /* unexpected failure, no point continuing, the output needs
             the interpreter and libperl will segfault */
          xasprintf (&message, "call_init_perl status: %d", status);
          fatal (message);
          free (message);
        }
      else if (status < 0)
        fprintf (stderr, "WARNING: no embedded interpreter available\n");
      free (load_modules_path);
    }
  else
    {
  /* The script loaded by the embedded interpreter calls the next two functions.
     Loading Texinfo::Document causes XSLoader init to calls DocumentXS init,
     which calls the functions */
      /* sets up gettext and iconv */
      messages_and_encodings_setup ();
      setup_texinfo_main (texinfo_uninstalled, converterdatadir,
                          t2a_builddir, t2a_srcdir);

      set_no_perl_interpreter (1);
    }
}

static void
err_add_option_value (OPTIONS_LIST *options_list, const char *option_name,
                      int int_value, const char *char_value)
{
  if (!add_option_value (options_list, option_name,
                         int_value, char_value))
    fprintf (stderr, "BUG: error setting %s\n", option_name);
}

/* similar to texi2any setting customization variables independent of
   conversion format */
void
txi_set_base_default_options (OPTIONS_LIST *main_program_set_options,
                              const char *locale_encoding,
                              const char *program_file)
{
  const char *configured_version = PACKAGE_VERSION_CONFIG;
  const char *configured_package = PACKAGE_CONFIG;
  const char *configured_name = PACKAGE_NAME_CONFIG;
  const char *configured_url = PACKAGE_URL_CONFIG;
  const char *configured_name_version
    = PACKAGE_NAME_CONFIG " " PACKAGE_VERSION_CONFIG;
  const char *configured_texinfo_dtd_version = TEXINFO_DTD_VERSION_CONFIG;

  initialize_options_list (main_program_set_options);

  /* similar to options coming from texi2any */
  err_add_option_value (main_program_set_options, "PROGRAM", 0, program_file);
#define set_configured_information(varname,varvalue) \
    err_add_option_value (main_program_set_options, #varname, 0, varvalue);
  set_configured_information(PACKAGE_VERSION, configured_version)
  set_configured_information(PACKAGE, configured_package)
  set_configured_information(PACKAGE_NAME, configured_name)
  set_configured_information(PACKAGE_AND_VERSION, configured_name_version)
  set_configured_information(PACKAGE_URL, configured_url)
  set_configured_information(TEXINFO_DTD_VERSION,
                             configured_texinfo_dtd_version);
#undef set_configured_information

  err_add_option_value (main_program_set_options, "COMMAND_LINE_ENCODING", 0,
                        locale_encoding);
  err_add_option_value (main_program_set_options, "MESSAGE_ENCODING", 0,
                        locale_encoding);
  err_add_option_value (main_program_set_options, "LOCALE_ENCODING", 0,
                        locale_encoding);

  /* same as Texinfo::Common::default_main_program_customization_options */
  /* in general transmitted to converters as default */
  add_program_cmdline_options_defaults (main_program_set_options);
  add_program_customization_options_defaults (main_program_set_options);
}

/* initialization of the library for output strings translations for
   parsing and conversion (generic), to be called once */
void
txi_general_output_strings_setup (int use_external_translate_string)
{
  char *locales_dir;

  /* code in texinfo.pl */
  if (txi_paths_info.texinfo_uninstalled)
    {
      struct stat finfo;
      int not_found = 1;

      if (txi_paths_info.p.uninstalled.t2a_builddir)
        {
          xasprintf (&locales_dir, "%s/LocaleData",
                     txi_paths_info.p.uninstalled.t2a_builddir);

          if (stat (locales_dir, &finfo) == 0 && S_ISDIR (finfo.st_mode))
            {
              not_found = 0;
              configure_output_strings_translations (locales_dir, 0,
                                           use_external_translate_string);
            }
          free (locales_dir);
        }

      if (not_found)
        fprintf (stderr, "Locales dir for document strings not found\n");
    }
  else if (txi_paths_info.p.installed.converterdatadir)
    {
      xasprintf (&locales_dir, "%s/locale",
                 txi_paths_info.p.installed.converterdatadir);
      configure_output_strings_translations (locales_dir, 0,
                                           use_external_translate_string);
      free (locales_dir);
    }
}

int
txi_load_init_file (const char *file, int embedded_interpreter)
{
  int status = 0;
  if (embedded_interpreter)
    status = call_config_GNUT_load_init_file (file);
  return status;
}

void
txi_stop_interpreter (int embedded_interpreter)
{
  if (embedded_interpreter)
    call_finish_perl ();
}

/* initialization of the library for a specific output format, to be
   called once */
void
txi_converter_output_format_setup (const char *converted_format,
                                   const char *external_module)
{
  enum converter_format converter_format
    = find_format_name_converter_format (converted_format);

  if (external_module)
    /* in that case the functions below are called from Perl */
    call_eval_use_module (external_module);
  else
    {
      setup_converter_generic ();

      /* TODO use the table of format functions? */
      if (converter_format == COF_html)
        html_format_setup ();
    }
}

/* This function should be used to get information on an output format
   defaults, taking into account CUSTOMIZATIONS.  It is not needed
   for converter initialization, as similar code is already called.
   Similar to Texinfo::Convert::XXXX->converter_defaults($options)
 */
CONVERTER_INITIALIZATION_INFO *
txi_converter_format_defaults (const char *converted_format,
                               const char *external_module,
                               OPTIONS_LIST *customizations)
{
  enum converter_format converter_format;
  CONVERTER_INITIALIZATION_INFO *conf;
  CONVERTER_INITIALIZATION_INFO *format_defaults;

  if (external_module)
    {
      format_defaults = call_module_converter_defaults (external_module,
                                                        customizations);
      if (format_defaults)
        return format_defaults;
    }

  converter_format
    = find_format_name_converter_format (converted_format);
  conf = new_converter_initialization_info ();

  if (customizations)
    copy_options_list (&conf->conf, customizations);

  format_defaults = converter_defaults (converter_format, conf);

  destroy_converter_initialization_info (conf);

  return format_defaults;
}

/* parser initialization, similar to Texinfo::Parser::parser in Perl.
   Also sets INCLUDE_DIRECTORIES minimally if not specified in options.
   The implementation is similar to parsetexi/Parsetexi.pm on purpose. */
void
txi_parser (const char *file_path, const VALUE_LIST *values,
            OPTIONS_LIST *options_list)
{
  char *input_file_name_and_directory[2];
  char *input_directory;
  size_t i;
  int debug = 0;
  int includes_set = 0;

  /* special case, we need to know if debug is set before calling
     reset_parser */
  if (options_list)
    {
      if (options_list->options->DEBUG.o.integer >= 0)
        debug = 1;
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

  if (options_list)
    {
      for (i = 0; i < options_list->number; i++)
        {
          size_t index = options_list->list[i] -1;
          OPTION *option = options_list->sorted_options[index];
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
              if (option->o.string
                  && (!strcmp (option->o.string, "menu")
                      || !strcmp (option->o.string, "menu_no_detailmenu")))
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

          if (input_directory && strcmp (input_directory, "."))
            {
              parser_conf_clear_INCLUDE_DIRECTORIES ();
              parser_conf_add_include_directory (".");
              parser_conf_add_include_directory (input_directory);
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
  int use_sections = (flags & STTF_complete_menus_use_sections);

  if (flags & STTF_fill_gaps_in_sectioning)
    fill_gaps_in_sectioning_in_document (document, 0);

  if (flags & STTF_relate_index_entries_to_table_items)
    relate_index_entries_to_table_items_in_document (document);

  if (flags & STTF_move_index_entries_after_items)
    move_index_entries_after_items_in_document (document);

  if (flags & STTF_insert_nodes_for_sectioning_commands)
    insert_nodes_for_sectioning_commands (document);

  associate_internal_references (document);

  sectioning_structure (document);

  if (!(flags & STTF_no_warn_non_empty_parts))
    warn_non_empty_parts (document);

  if (flags & STTF_complete_tree_nodes_menus)
    complete_tree_nodes_menus_in_document (document, use_sections);

  if (flags & STTF_complete_tree_nodes_missing_menu)
    complete_tree_nodes_missing_menu (document, use_sections);

  if (flags & STTF_regenerate_master_menu)
    regenerate_master_menu (document, use_sections);

  if (flags & STTF_nodes_tree)
    {
      construct_nodes_tree (document);

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

/* setup CONF initialization data */
void
txi_converter_initialization_setup (CONVERTER_INITIALIZATION_INFO *conf,
                                    const DEPRECATED_DIRS_LIST *deprecated_dirs,
                                    const OPTIONS_LIST *customizations)
{
  if (deprecated_dirs)
    copy_deprecated_dirs (&conf->deprecated_config_directories,
                          deprecated_dirs);

  if (customizations)
    copy_options_list (&conf->conf, customizations);
}

/* converter setup. Similar to an initialization of converter
   in texi2any */
CONVERTER *
txi_converter_setup (const char *external_module,
                     const char *converted_format,
                     const CONVERTER_INITIALIZATION_INFO *converter_init_info)
{
  enum converter_format converter_format;
  CONVERTER *self;

  if (external_module)
    {
      self = call_module_converter (external_module, converter_init_info);
      if (!self)
        {
          char *message;
          xasprintf (&message, "no interpreter or NULL return for module: %s",
                     external_module);
          fatal (message);
          free (message);
        }
      else
        return self;
    }

  converter_format = find_format_name_converter_format (converted_format);
  self = converter_converter (converter_format, converter_init_info);

  return self;
}

/* high level interface, possibly hiding some details of the data */

DOCUMENT *
txi_parse_texi_file (const char *input_file_path, int *status)
{
  size_t document_descriptor = parse_file (input_file_path, status);
  return retrieve_document (document_descriptor);
}

/* similar to Texinfo::Convert::XXX->output */
char *
txi_converter_output (const char *external_module,
                      CONVERTER *converter, DOCUMENT *document)
{
  if (external_module)
    {
      size_t i;
      OUTPUT_TEXT_FILES_INFO *output_text_files_info
                = call_converter_output (converter, document);
      OUTPUT_FILES_INFORMATION *output_files_information
                = output_text_files_info->output_files_information;
      FILE_STREAM_LIST *unclosed_files
         = &output_files_information->unclosed_files;

      char *text_result = 0;
      if (output_text_files_info->text)
        {
          text_result = strdup (output_text_files_info->text);
          free (output_text_files_info->text);
        }

      if (output_files_information)
        {
          copy_strings (&converter->output_files_information.opened_files,
                        &output_files_information->opened_files);
          /* copy unclosed files */
          for (i = 0; i < unclosed_files->number; i++)
            {
              register_unclosed_file (
                   &converter->output_files_information,
                   unclosed_files->list[i].file_path,
                   unclosed_files->list[i].stream);
            }
          free_output_files_information (output_files_information);
          free (output_files_information);
        }
      free (output_text_files_info);
      return text_result;
    }
  return converter_output (converter, document);
}

/* corresponds to, in texi2any.pl:
   - load elements count module
   - initialize converter
   - call the converter specific method
 */
CONVERTER_TEXT_INFO *
txi_sort_element_counts (const char *external_module,
                         const OPTIONS_LIST *customizations,
                         DOCUMENT *document, int use_sections,
                         int count_words)
{
  if (external_module)
    {
      CONVERTER_INITIALIZATION_INFO *converter_init_info
       = new_converter_initialization_info ();
      CONVERTER_TEXT_INFO *result = (CONVERTER_TEXT_INFO *)
        malloc (sizeof (CONVERTER_TEXT_INFO));

      txi_converter_initialization_setup (converter_init_info,
                                          0, customizations);

      call_eval_use_module (external_module);
      result->converter
         = call_module_converter (external_module, converter_init_info);
      if (!result->converter)
        {
          char *message;
          xasprintf (&message,
            "no interpreter or NULL return for sort element count module: %s",
                     external_module);
          fatal (message);
          free (message);
          return 0;
        }

      result->text = call_sort_element_counts (result->converter, document,
                                               use_sections, count_words);

      destroy_converter_initialization_info (converter_init_info);
      return result;
    }
  /* a pure C implementation would be called here */
  return 0;
}

/* similar to Texinfo::Convert::XXX->convert */
char *
txi_converter_convert (CONVERTER *converter, DOCUMENT *document)
{
  return converter_convert (converter, document);
}

void
txi_document_remove (DOCUMENT *document)
{
  remove_document_descriptor (document->descriptor);
}

void
txi_converter_reset (CONVERTER *converter)
{
  reset_converter (converter);
}

void
txi_converter_destroy (CONVERTER *converter)
{
  destroy_converter (converter);
}

size_t
txi_handle_parser_error_messages (DOCUMENT *document, int no_warn,
                                  int use_filename,
                                  const char *message_encoding)
{
  return output_error_messages (&document->parser_error_messages, no_warn,
                                use_filename, message_encoding);
}

size_t
txi_handle_document_error_messages (DOCUMENT *document, int no_warn,
                                    int use_filename,
                                    const char *message_encoding)
{
  return output_error_messages (&document->error_messages, no_warn,
                                use_filename, message_encoding);

}

size_t
txi_handle_converter_error_messages (CONVERTER *converter, int no_warn,
                                    int use_filename,
                                    const char *message_encoding)
{
  return output_error_messages (&converter->error_messages, no_warn,
                         use_filename, message_encoding);
}

/* used to show the built-in CSS rules */
char *
txi_builtin_default_css_text (void)
{
  html_format_setup ();

  return html_builtin_default_css_text ();
}
