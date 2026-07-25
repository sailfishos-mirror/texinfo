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

/* In sync with Texinfo::Convert::Info.  Very little written yet. */

#include <config.h>
#include <stdio.h>
#include <string.h>

#include "text.h"
#include "element_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
#include "tree.h"
#include "errors.h"
#include "utils.h"
#include "translations.h"
#include "customization_options.h"
#include "output_unit.h"
#include "convert_utils.h"
#include "converter.h"
#include "convert_to_plaintext.h"
#include "plaintext_paragraph.h"
#include "convert_to_info.h"

CONVERTER_INITIALIZATION_INFO *
info_converter_defaults (enum converter_format format,
                         const CONVERTER_INITIALIZATION_INFO *conf)
{
  CONVERTER_INITIALIZATION_INFO *format_defaults
    = plaintext_converter_defaults (format, conf);

  add_option_value (&format_defaults->conf, "FORMAT_MENU", -2, "menu");
  add_option_value (&format_defaults->conf, "EXTENSION", -2, "info");
  add_option_value (&format_defaults->conf, "USE_SETFILENAME_EXTENSION", 1, 0);
  add_option_value (&format_defaults->conf, "OUTFILE", -2, 0);
  /* in the Emacs Info reader and in old readers, DEL character will appear,
     but the node names are problematic in those readers, so it is not
     such an issue to have them marked that way. */
  add_option_value (&format_defaults->conf, "INFO_SPECIAL_CHARS_QUOTE", 1, 0);
  /* set as default independently of INFO_SPECIAL_CHARS_QUOTE as long
     as the Emacs Info reader does not support node names quoting. */
  add_option_value (&format_defaults->conf, "INFO_SPECIAL_CHARS_WARNING", 1, 0);

  return format_defaults;
}

/* Wrapper around output_files_open_out.  Open the file
   with any CR-LF conversion disabled.  We need this for tag tables to
   be correct under MS-Windows.   Return filehandle or undef on failure.
 */
static FILE *
open_info_file (CONVERTER *self, const char *filename)
{
  FILE *file_fh;
  char *path_encoding;
  int overwritten_file;
  char *open_error_message;
  char *encoded_outfile_name;

  encoded_outfile_name
            = converter_encoded_output_file_name (self->conf,
                                       &self->document->global_info,
                                  (char *)filename, &path_encoding, 0);

  file_fh = output_files_open_out (&self->output_files_information,
                                   encoded_outfile_name, &open_error_message,
                                   &overwritten_file, 1);
  free (path_encoding);

  if (!file_fh)
    {
      message_list_document_error (&self->error_messages,
                             self->conf, 0,
                             "could not open %s for writing: %s",
                             filename, open_error_message);
    }

  free (encoded_outfile_name);
  free (open_error_message);

  return file_fh;
}

static const char *
info_header (CONVERTER *self, const char *input_basefile,
             const char *output_filename)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT info_header_count_context = { 0 };
  const char *program = self->conf->PROGRAM.o.string;
  const char *version = self->conf->PACKAGE_VERSION.o.string;
  char *end_para_text;
  TEXT result;
  TEXT new_text;
  const char *header_text;

  add_(count_context) (&self_plaintext->count_context,
                       info_header_count_context);

  /* int paragraph = */
  para_new ();
  text_init (&result);

  new_text = para_add_text ("This is ", 8);
  text_append_n (&result, new_text.text, new_text.end);
  /* This ensures that spaces in file are kept. */
  new_text = para_add_next (output_filename, strlen (output_filename), 0);
  text_append_n (&result, new_text.text, new_text.end);
  if (program && strcmp (program, ""))
    {
      char *program_version;
      xasprintf (&program_version, ", produced by %s version %s from ",
                 program, version);
      new_text = para_add_text (program_version, strlen (program_version));
      text_append_n (&result, new_text.text, new_text.end);
      free (program_version);
    }
  else
    {
      new_text = para_add_text (", produced from ", 16);
      text_append_n (&result, new_text.text, new_text.end);
    }
  new_text = para_add_next (input_basefile, strlen (input_basefile), 0);
  text_append_n (&result, new_text.text, new_text.end);
  new_text = para_add_text (".", 1);
  end_para_text = para_end ();
  text_append (&result, end_para_text);
  free (end_para_text);
  text_append_n (&result, "\n", 1);
  stream_output (self, result.text);
  /* FIXME free result.text? */

  if (self->document->global_commands.copying)
    {
      ELEMENT *tmp = new_element (ET_NONE);
      if (self->conf->DEBUG.o.integer > 0)
        fprintf (stderr, "COPYING HEADER\n");
      self_plaintext->in_copying_header = 1;
      tmp->e.c->contents = self->document->global_commands.copying->e.c->contents;
      convert_to_plaintext_internal (self, tmp);

      tmp->e.c->contents.list = 0;
      destroy_element (tmp);
      /* $self->process_footnotes(); */
      self_plaintext->in_copying_header = 0;
    }
  if (self->document->global_commands.dircategory_direntry.number)
    {
      size_t i;
      self_plaintext->commands_data[CM_direntry].flags &= ~PF_ignored;

      for (i = 0; i < self->document->global_commands.dircategory_direntry.number;
           i++)
        {
          const ELEMENT *command
            = self->document->global_commands.dircategory_direntry.list[i];
          if (command->e.c->cmd == CM_dircategory)
            {
              const ELEMENT *line_arg = command->e.c->contents.list[0];
              if (line_arg->e.c->contents.number > 0)
                {
                  stream_output (self, "INFO-DIR-SECTION ");
                   /*
                  convert_line_result
                    = plaintext_convert_line_new_context (self, line_arg,
                                                0, 0, 0);
                  stream_output (self, convert_line_result->converted);
                    */
                  stream_output (self, "\n");
                }
            }
          else if (command->e.c->cmd == CM_direntry)
            {
              stream_output (self, "START-INFO-DIR-ENTRY\n");
              convert_to_plaintext_internal (self, command);
              stream_output (self, "END-INFO-DIR-ENTRY\n\n");
            }
        }

      self_plaintext->commands_data[CM_direntry].flags |= PF_ignored;
    }
  add_newline_if_needed (self);

  header_text = stream_result (self);

  pop_count_context (&self_plaintext->count_context);

  return header_text;
}

static const char *STDIN_DOCU_NAME = "stdin";

char *
info_output (CONVERTER *self, DOCUMENT *document)
{
  int i;
  int status = 1;
  char *paths[5];
  char *dir_encoding;
  const char *output_file;
  const char *destination_directory;
  const char *output_filename;
  const char *document_name;
  FILE *file_fh = 0;
  char *encoded_destination_directory;
  const char *input_basefile;
  int succeeded;
  const ENCODING_CONVERSION *conversion = 0;
  TEXT result;
  size_t output_units_descriptor;
  OUTPUT_UNIT_LIST *output_units;
  int need_unsplit = 0;
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  const enum command_id *informative_global_commands
    = plaintext_get_informative_global_commands();
  const char *default_bcp47_locale;
  const char *preamble_bcp47_locale;
  const char *header;
  TEXT complete_header;
  size_t header_bytes;

  plaintext_conversion_initialization (self, document);

  text_init (&result);
  text_append (&result, "");

  determine_files_and_directory (self,
                    self->conf->TEXINFO_OUTPUT_FORMAT.o.string, paths);

  output_file = paths[0];
  destination_directory = paths[1];
  output_filename = paths[2];
  document_name = paths[3];

  /* cast to remove const since the argument cannot
     be const even though the string is not modified */
  encoded_destination_directory
             = converter_encoded_output_file_name (self->conf,
                                            &self->document->global_info,
                                           (char *)destination_directory,
                                                       &dir_encoding, 0);
  free (dir_encoding);

  succeeded = create_destination_directory (self,
                                     encoded_destination_directory,
                                           destination_directory);

  free (encoded_destination_directory);

  if (!succeeded)
    {
      status = 0;
      goto finalization;
    }

  /*
  # for format_node
  $self->{'output_filename'} = $output_filename;
   */

  if (!strcmp (document_name, "-"))
    input_basefile = STDIN_DOCU_NAME;
  else
    input_basefile = document_name;

  if (!strcmp (output_file, "-"))
    need_unsplit = 1;
  else
    {
      for (i = 0; null_device_names[i]; i++)
        {
          if (!strcmp (null_device_names[i], output_file))
            {
              need_unsplit = 1;
              break;
            }
        }
    }
  if (need_unsplit)
    option_force_conf (&self->conf->SPLIT_SIZE, -2, 0);


  if (strcmp (output_file, ""))
    {
      if (self->conf->VERBOSE.o.integer > 0)
        fprintf (stderr, "Output file %s\n", output_file);

      file_fh = open_info_file(self, output_file);
      if (!file_fh)
        {
          status = 0;
          goto finalization;
        }
    }
  else
    self_plaintext->encoding_disabled = 1;

  default_bcp47_locale = current_bcp47_locale (self);

  set_converter_preamble_language_commands (self);

  set_global_document_commands (self, CL_before, informative_global_commands);

  preamble_bcp47_locale = current_bcp47_locale (self);

  header = info_header (self, input_basefile, output_filename);

  /* header + text between setfilename and first node */
  text_init (&complete_header);
  text_append (&complete_header, header);
  header_bytes = complete_header.end;

  output_units_descriptor = split_by_node (document);
  output_units = retrieve_output_units (document, output_units_descriptor);

  /* TODO */

  set_global_document_commands (self, CL_before, informative_global_commands);

  if (strcmp (default_bcp47_locale, preamble_bcp47_locale))
    {
      self->current_lang_translations
       = reset_lang_translation_from_customization (
                              &converters_translation_cache,
                              self->conf->documentlanguage.o.string,
                              self->conf->documentscript.o.string,
                              TXI_CONVERT_STRINGS_NR);
    }

  /* TODO */

 finalization:

  plaintext_conversion_finalization (self);

  for (i = 0; i < 5; i++)
    {
      free (paths[i]);
    }

  if (status)
    return result.text;
  else
    {
      free (result.text);
      return 0;
    }
}

