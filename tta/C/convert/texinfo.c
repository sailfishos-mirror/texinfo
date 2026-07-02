/* Copyright 2010-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>. */

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
#include <errno.h>
#ifdef ENABLE_NLS
#include <libintl.h>
#endif
/* to have a definition of gettext in case ENABLE_NLS
   is not set */
#include "gettext.h"

#include "interpreter_use_types.h"
#include "document_types.h"
#include "option_types.h"
#include "api.h"
/* fatal */
#include "base_utils.h"
#include "conf.h"
#include "errors.h"
/* parse_file_path */
#include "utils.h"
#include "document.h"
#include "translations.h"
#include "structuring.h"
#include "transformations.h"
#include "convert_utils.h"
#include "texinfo.h"

/* ALTIMP texi2any.pl and load_txi_modules.pl */
/* initialization of the library for output strings translations for
   parsing and conversion (generic), to be called once */
void
txi_general_output_strings_setup (void)
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
              setup_output_strings_translations (locales_dir, 0);
            }
          free (locales_dir);
        }

      if (not_found)
        fprintf (stderr, "Locales dir for document strings not found\n");
    }
  else if (txi_paths_info.p.installed.converter_datadir)
    {
      xasprintf (&locales_dir, "%s/locale",
                 txi_paths_info.p.installed.converter_datadir);
      setup_output_strings_translations (locales_dir, 0);
      free (locales_dir);
    }
}

/* ALTIMP Texinfo/ParserXS.pm */
/* parser initialization, similar to calling Texinfo::Parser::parser in Perl.
   The implementation is different from Texinfo::ParserNonXS because here
   we need to convert options list to parser configuration function calls,
   as is done in ParserXS.pm with XS.  This is not needed in ParserNonXS.pm.
   The implementation is similar to ParserXS.pm on purpose.
   Also sets INCLUDE_DIRECTORIES minimally if not specified in options,
   FILE_PATH is only used in that case.
 */
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
          else if (!strcmp (option->name, "documentscript"))
            {
              if (option->o.string)
                parser_conf_set_documentscript (option->o.string);
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

/* ALTIMP in texi2any.pl */
/* call all the structuring/transformations typically done for a document.
   FLAGS select the structure/transformations called.  If FORMAT_MENU is set
   the structure functions related to menus are called.
   No implementation in Perl as a function, as the modules are loaded on
   demand, which makes it impossible to implement as a function.
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
          check_node_tree_menu_structure (document);
          complete_node_tree_with_menus (document);
          check_nodes_are_referenced (document);
        }
    }

  if (flags & STTF_floats)
    number_floats (document);
}

