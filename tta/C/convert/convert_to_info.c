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
#include <stdlib.h>
#include <errno.h>

#include "list_macros.h"
#include "text.h"
#include "command_ids.h"
#include "types_data.h"
#include "element_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
/* for fatal */
#include "base_utils.h"
#include "builtin_commands.h"
#include "tree.h"
#include "extra.h"
#include "errors.h"
#include "utils.h"
#include "translations.h"
#include "targets.h"
#include "customization_options.h"
#include "output_unit.h"
#include "convert_utils.h"
#include "converter.h"
#include "convert_to_plaintext.h"
#include "plaintext_paragraph.h"
#include "convert_to_info.h"

typedef struct INDIRECT_FILE_OFFSET {
  char *indirect_file;
  int offset;
} INDIRECT_FILE_OFFSET;

def_list_type(INDIRECT_FILE_OFFSET_LIST, INDIRECT_FILE_OFFSET);
def_list_fns(INDIRECT_FILE_OFFSET_LIST, indirect_files, INDIRECT_FILE_OFFSET, 3);
/*
decl_list_fns(INDIRECT_FILE_OFFSET_LIST, indirect_files, INDIRECT_FILE_OFFSET);
 */

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
open_info_file (CONVERTER *self, const char *filename,
                char **encoded_outfile_name_out)
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
  *encoded_outfile_name_out = encoded_outfile_name;

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

  free (open_error_message);

  return file_fh;
}

static char *
info_header (CONVERTER *self, const char *input_basefile,
             const char *output_filename)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  COUNT_CONTEXT info_header_count_context = { 0 };
  const char *program = self->conf->PROGRAM.o.string;
  const char *version = self->conf->PACKAGE_VERSION.o.string;
  const char *end_para_text;
  TEXT result;
  TEXT new_text;
  char *header_text;

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
  text_append_n (&result, "\n", 1);
  stream_output (self, result.text);
  para_destroy ();
  free (result.text);

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

  header_text = stream_yield_result (self);

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
  char *header = 0;
  /* header + text between setfilename and first node */
  TEXT complete_header;
  size_t header_bytes;
  int out_file_nr = 0;
  char *encoded_outfile_name = 0;
  char *encoded_new_filename = 0;
  char *new_output_file = 0;
  INDIRECT_FILE_OFFSET_LIST indirect_files;
  TEXT tag_text;

  plaintext_conversion_initialization (self, document);

  text_init (&result);
  text_append (&result, "");
  text_init (&complete_header);
  text_init (&tag_text);

  memset (&indirect_files, 0, sizeof (INDIRECT_FILE_OFFSET_LIST));

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

  /* TODO
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

      file_fh = open_info_file(self, output_file, &encoded_outfile_name);
      if (!file_fh)
        {
          status = 0;
          goto finalization;
        }

      if (self->conf->OUTPUT_ENCODING_NAME.o.string
        && strcmp (self->conf->OUTPUT_ENCODING_NAME.o.string, "utf-8"))
        {
          conversion
                 = get_encoding_conversion (
                           self->conf->OUTPUT_ENCODING_NAME.o.string,
                                              &output_conversions);
        }
    }
  else
    self_plaintext->encoding_disabled = 1;

  default_bcp47_locale = current_bcp47_locale (self);

  set_converter_preamble_language_commands (self);

  set_global_document_commands (self, CL_before, informative_global_commands);

  preamble_bcp47_locale = current_bcp47_locale (self);

  header = info_header (self, input_basefile, output_filename);
  header_bytes = strlen (header);

  output_units_descriptor = split_by_node (document);
  output_units = retrieve_output_units (document, output_units_descriptor);

  /* TODO
    $self->_cache_node_names($document->nodes_list());
   */

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

  /* TODO?  Or need Perl?
  my $elements_images;
  if ($self->get_conf('INFO_MATH_IMAGES')) {
    require Texinfo::Convert::LaTeX;

  }
   */

  if (self->conf->DEBUG.o.integer > 0)
    fprintf (stderr, "C|DOCUMENT\n");

  if (!output_units->list[0]->uc.unit_command)
    {
      GLOBAL_INFO *document_info = 0;
      ELEMENT *root = document->tree;
      const char *root_output;
       /*
      COUNT_CONTEXT *old_context
        = top_(count_context) (&self_plaintext->count_context);
      COUNT_CONTEXT new_context = { 0 };
        */

      document_info = &document->global_info;
      if (document_info && document_info->input_file_name)
        {
          SOURCE_INFO source_info;
          fill_source_info_file (&source_info, self, 0,
                                 document_info->input_file_name);

           message_list_line_error_ext (&self->error_messages,
                        (self->conf && self->conf->DEBUG.o.integer > 0),
                        MSG_warning, 0, &source_info, "document without nodes");
        }
      else
        message_list_document_warn (&self->error_messages, self->conf,
                                         0, "document without nodes");
       /*
      new_context.bytes = old_context->bytes;
      new_context.lines = old_context->lines;
        */
      convert_to_plaintext_internal (self, root);
      /* TODO
      $self->process_footnotes();
       */
      root_output = stream_result (self);

      write_or_return (conversion, encoded_outfile_name, file_fh, &result,
                       header);
      /* cast to drop const */
      write_or_return (conversion, encoded_outfile_name, file_fh, &result,
                       (char *)root_output);
    }
  else
    {
      const ELEMENT *top_target_element = 0;
      const ELEMENT *top_node = 0;
      COUNT_CONTEXT *count_context;
      size_t i;
      int first_node_seen = 0;
      int split_size = self->conf->SPLIT_SIZE.o.integer;
      size_t node_text_len;

      text_append (&complete_header, header);

      if (identifiers_target_number (&document->identifiers_target))
        {
          top_target_element
              = find_identifier_target (&document->identifiers_target,
                                       "Top");
          if (top_target_element && top_target_element->e.c->cmd == CM_node)
            top_node = top_target_element;
        }

      if (!top_node)
        {
          GLOBAL_INFO *document_info = &document->global_info;
          if (document_info && document_info->input_file_name)
            {
              SOURCE_INFO source_info;
              fill_source_info_file (&source_info, self, 0,
                                     document_info->input_file_name);

              message_list_line_error_ext (&self->error_messages,
                            (self->conf && self->conf->DEBUG.o.integer > 0),
                            MSG_warning, 0, &source_info,
                            "document without Top node");
            }
          else
            message_list_document_warn (&self->error_messages, self->conf,
                                             0, "document without Top node");
        }

      out_file_nr = 1;
      count_context
        = top_(count_context) (&self_plaintext->count_context);

      count_context->bytes += header_bytes;
      for (i = 0; i < output_units->number; i++)
        {
          const OUTPUT_UNIT *output_unit = output_units->list[i];
          char *node_text;
          INDIRECT_FILE_OFFSET indirect_file_offset;

          /* TODO possible overflow?  count_context->bytes would overflow too
             before */
          if (first_node_seen
              && split_size > 0
              && count_context->bytes > out_file_nr * (size_t) split_size
              && file_fh)
            {
              /* Split the output into an additional output file. */
              char *close_error = 0;
              if (fclose (file_fh) == EOF)
                close_error = strdup (strerror (errno));
              if (out_file_nr == 1)
                {
                  char *new_filename;
                  char *encoded_new_first;
                  char *new_path_encoding;

                  /* Switch to split output. */
                  output_files_register_closed
                         (&self->output_files_information,
                          encoded_outfile_name);
                  if (close_error)
                    {
                      message_list_document_error (
                        &self->error_messages, self->conf, 0,
                        "error on closing %s: %s",
                        output_file, close_error);

                      free (close_error);
                      status = 0;
                      goto finalization;
                    }

                  xasprintf (&new_filename, "%s-%d", output_file,
                             out_file_nr);
                  if (self->conf->VERBOSE.o.integer > 0)
                    fprintf (stderr, "Renaming first output file as %s\n",
                             new_filename);

                  encoded_new_first
                     = converter_encoded_output_file_name (self->conf,
                                       &self->document->global_info,
                                       new_filename, &new_path_encoding, 0);
                  free (new_path_encoding);

                  if (rename (encoded_outfile_name, encoded_new_first) != 0)
                    {
                      message_list_document_error (
                        &self->error_messages, self->conf, 0,
                        "rename %s failed: %s", output_file, strerror (errno));

                      free (encoded_new_first);
                      free (new_filename);

                      status = 0;
                      goto finalization;
                    }

                  output_files_rename_opened (&self->output_files_information,
                                              encoded_outfile_name,
                                              encoded_new_first);
                  free (encoded_new_first);

                  indirect_file_offset.offset = complete_header.end;
                  indirect_file_offset.indirect_file = strdup (new_filename);
                  add_(indirect_files) (&indirect_files, indirect_file_offset);
                  free (new_filename);
                }
              else
                {
                  output_files_register_closed (
                                       &self->output_files_information,
                                       encoded_new_filename);
                  if (close_error)
                    {
                      message_list_document_error (
                        &self->error_messages, self->conf, 0,
                        "error on closing %s: %s",
                        new_output_file, close_error);

                      free (close_error);
                      status = 0;
                      goto finalization;
                    }
                }
              out_file_nr++;
              free (new_output_file);
              free (encoded_new_filename);

              xasprintf (&new_output_file, "%s-%d", output_file, out_file_nr);

              if (self->conf->VERBOSE.o.integer > 0)
                fprintf (stderr, "New output file %s\n",
                         new_output_file);

              file_fh = open_info_file(self, new_output_file,
                                       &encoded_new_filename);
              if (!file_fh)
                {
                  free (new_output_file);
                  status = 0;
                  goto finalization;
                }

              write_or_return (conversion, encoded_new_filename, file_fh,
                               &result, complete_header.text);

              count_context->bytes += complete_header.end;

              indirect_file_offset.offset = count_context->bytes;
              indirect_file_offset.indirect_file = strdup (new_output_file);
              add_(indirect_files) (&indirect_files, indirect_file_offset);
            }

          node_text = plaintext_convert_output_unit (self, output_unit);
          node_text_len = strlen (node_text);
          if (node_text_len < 2
              || node_text[node_text_len -1] != '\n'
              || node_text[node_text_len -2] != '\n')
            {
              char *tmp = node_text;
              char *new_node_text;
              xasprintf (&new_node_text, "%s%s", node_text, "\n");
              node_text = new_node_text;
              free (tmp);
              count_context->bytes++;
            }

          if (!first_node_seen)
            {
              /* We are outputting the first node. */
              first_node_seen = 1;

              write_or_return (conversion, encoded_new_filename, file_fh,
                               &result, header);

     /* When the first node was converted in convert_output_unit above, the
        text before the first node (type 'before_node_section') was saved in
        'text_before_first_node'.  Save this text for subsequent use in
         case of split Info output. */
                /* TODO
         if (defined($self->{'text_before_first_node'})) {
          $complete_header .= $self->{'text_before_first_node'};
          $complete_header_bytes += length($self->{'text_before_first_node'});
                 */
            }

          write_or_return (conversion, encoded_new_filename, file_fh,
                           &result, node_text);
          free (node_text);
        }
    }

  text_append (&tag_text, "");
  if (out_file_nr > 1)
    {
      size_t i;
      output_files_register_closed (&self->output_files_information,
                                    encoded_new_filename);
      if (fclose (file_fh) == EOF)
        {
          message_list_document_error (&self->error_messages, self->conf, 0,
                                       "error on closing %s: %s",
                                       new_output_file, strerror (errno));
          status = 0;
          goto finalization;
        }
      if (self->conf->VERBOSE.o.integer > 0)
        fprintf (stderr, "Outputing the split manual file %s\n", output_file);

      free (encoded_outfile_name);
      file_fh = open_info_file(self, output_file, &encoded_outfile_name);
      if (!file_fh)
        {
          status = 0;
          goto finalization;
        }

      text_append_n (&tag_text, complete_header.text, complete_header.end);
      text_append_n (&tag_text, "\x1F\nIndirect:\n", 12);
      for (i = 0; i < indirect_files.number; i++)
        {
          text_printf (&tag_text, "%s: %d\n",
                       indirect_files.list[i].indirect_file,
                       indirect_files.list[i].offset);
          free (indirect_files.list[i].indirect_file);
        }
      free (indirect_files.list);
    }

  text_append_n (&tag_text, "\x1F\nTag Table:\n", 13);
  if (out_file_nr > 1)
    text_append_n (&tag_text, "(Indirect)\n", 11);

  /* TODO when locations are ready
   # This may happen for anchors in @insertcopying
  my %seen_anchors;
  foreach my $label (@{$self->{'count_context'}->[-1]->{'locations'}}) {
    next unless (exists($label->{'root'})
                 and exists($label->{'root'}->{'extra'})
                 and $label->{'root'}->{'extra'}->{'is_target'});
    my $label_element = Texinfo::Common::get_label_element($label->{'root'});
    my $prefix;

   ....
   }
   */

  const char *coding = 0;
  if (self->conf->OUTPUT_ENCODING_NAME.o.string
      && strcmp (self->conf->OUTPUT_ENCODING_NAME.o.string, ""))
    coding = self->conf->OUTPUT_ENCODING_NAME.o.string;

  const char *documentlanguage = 0;
  if (self->conf->documentlanguage.o.string)
    documentlanguage = self->conf->documentlanguage.o.string;

  if (coding || documentlanguage)
    {
      text_append_n (&tag_text, "\n\x1F\nLocal Variables:\n", 20);
      if (coding)
        text_printf (&tag_text, "coding: %s\n", coding);
      if (documentlanguage)
        text_printf (&tag_text, "Info-documentlanguage: %s\n",
                     documentlanguage);
      text_append_n (&tag_text, "End:\n", 5);
    }

  write_or_return (conversion, encoded_outfile_name, file_fh, &result,
                   tag_text.text);

  if (file_fh && strcmp (output_file, "-"))
    {
      output_files_register_closed (&self->output_files_information,
                                   encoded_outfile_name);

      if (fclose (file_fh) == EOF)
        {
          message_list_document_error (&self->error_messages, self->conf, 0,
                                       "error on closing %s: %s",
                                       output_file, strerror (errno));
          status = 0;
        }
    }


 finalization:

  plaintext_conversion_finalization (self);

  free (complete_header.text);
  free (tag_text.text);
  free (encoded_outfile_name);
  free (new_output_file);
  free (encoded_new_filename);
  free (header);

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

#include "manipulate_tree.h"
void
info_format_ref (CONVERTER *self, enum command_id cmd,
                 const ELEMENT *element)
{
  PLAINTEXT_CONVERTER_STATE *self_plaintext = self->plaintext_converter;
  const size_t max_xref_args = 5;
  const ELEMENT *args[max_xref_args];
  const ELEMENT *arg_node;
  const ELEMENT *label_element = 0;
  const ELEMENT *target_element = 0;
  ELEMENT *float_type_number_element = 0;
  ELEMENT *note_element;
  ELEMENT *note_stop_upper_case_element;
  const ELEMENT *name = 0;
  size_t i;
  int in_multitable = 0;
  int has_file = 0;
  const char *node_name;
  ELEMENT *node_element = 0;
  int quoting_required = 0;
  const char *node_quote = "\x{7f}";

  /* no args may happen with bogus @-commands without argument, maybe only
     at the end of a document */

  if (!element->e.c->contents.number)
    return;
  else if (element->e.c->contents.number > max_xref_args)
    fatal ("xref command with too many arguments");

  FORMATTER *formatter = top_(formatter) (&self_plaintext->formatters);

  memset (args, 0, max_xref_args * sizeof (const ELEMENT *));

  for (i = 0; i < element->e.c->contents.number; i++)
    {
      const ELEMENT *arg = element->e.c->contents.list[i];
      if (!empty_spaces_argument (arg))
        args[i] = arg;
    }

  arg_node = element->e.c->contents.list[0];


  /* normalize node name, to get a ref with the right formatting
     NOTE as a consequence, the line numbers appearing in case of errors
     correspond to the node lines numbers, and not the @ref. */
  /* exclude external nodes (in case internal refs get normalized) */
  if (!args[3] && !args[4])
    {
      const char *normalized
       = lookup_extra_string (arg_node, AI_key_normalized);
      const ELEMENT *manual_content = lookup_extra_container (arg_node,
                                                      AI_key_manual_content);
      if (normalized && !manual_content)
        {
          target_element = find_identifier_target (
                                  &self->document->identifiers_target,
                                  normalized);
          label_element = get_label_element (target_element);
        }
    }
  if (!label_element)
    /* may still be NULL if node argument is empty */
    label_element = args[0];

  /* if it a reference to a float with a label, $args[1] is
     set to '$type $number' or '$number' if there is no type. */
  if (!args[1] && target_element && target_element->e.c->cmd == CM_float)
    {
      float_type_number_element = float_type_number (self, target_element);
      args[1] = float_type_number_element;
    }

  if (cmd == CM_inforef && args[2])
    {
      args[3] = args[2];
      args[2] = 0;
    }

  if (args[1])
    name = args[1];
  else if (args[2])
    name = args[2];

  /* Treat cross-reference commands in a multitable cell as if they
     were surrounded by @w{ ... }, so not to split output across
     lines, leading text from other columns appearing to be part of the
     cross-reference. */
  /* TODO not ready in convert_to_plaintext.c
  if ($self->{'document_context'}->[-1]->{'in_multitable'}) {
    $in_multitable = 1;
    $formatter->{'w'}++;
    set_space_protection($formatter->{'container'}, 1)
      if ($formatter->{'w'} == 1);
  }
  */

 /* Disallow breaks in runs of Chinese text in node names, because a
    break would be normalized to a single space by the Info reader, and
    the node wouldn't be found. */
  /* TODO when set_double_width_no_break is implemented
   set_double_width_no_break($formatter->{'container'}, 1);
   */

  note_stop_upper_case_element = new_element (ET__stop_upper_case);
  note_element = new_text_element (ET_other_text);

  if (cmd == CM_xref)
    text_append_n (note_element->e.text, "*Note ", 6);
  else
    text_append_n (note_element->e.text, "*note ", 6);

  add_element_to_element_contents (note_stop_upper_case_element,
                                   note_element);

  convert_to_plaintext_internal (self, note_stop_upper_case_element);

  destroy_element_and_children (note_stop_upper_case_element);

  if (name)
    {
      int name_quoting_required = 0;
   /* Convert line for sole purpose of checking if the output contains
      a colon.  Output may differ slightly from the current formatting
      context (e.g if inside @sc) but this should not make a difference. */
   /* TODO convert_line_new_context
    my ($name_text_checked, undef) = $self->convert_line_new_context($name);

    if ($name_text_checked =~ /:/m) {
      if ($self->{'info_special_chars_warning'}) {
        $self->plaintext_line_warn($self, sprintf(__(
           "\@%s cross-reference name should not contain `:'"),
                                 $cmdname), $element->{'source_info'});
      }
      if ($self->{'info_special_chars_quote'}) {
        $quoting_required = 1;
      }
    }
    */

    /* do the actual output of name */
      if (name_quoting_required)
        stream_output_add_text (self, node_quote);

      convert_to_plaintext_internal (self, name);

      if (name_quoting_required)
        stream_output_add_text (self, node_quote);

      stream_output_add_text (self, ": ");
    }

  if (args[3])
    {
      ELEMENT *file = new_element (ET_NONE);
      ELEMENT *open_parenthese = new_text_element (ET_other_text);
      text_append_n (open_parenthese->e.text, "(", 1);
      ELEMENT *close_parenthese = new_text_element (ET_other_text);
      text_append_n (close_parenthese->e.text, ")", 1);
      ELEMENT *file_code_element = new_element (ET__code);
      ELEMENT *file_stop_upper_case_element
        = new_element (ET__stop_upper_case);
      /* cast to drop const */
      add_to_contents_as_array (file_code_element, (ELEMENT *)args[3]);
      add_to_element_contents (file_stop_upper_case_element,
                               file_code_element);
      add_element_to_element_contents (file, open_parenthese);
      add_to_element_contents (file, file_stop_upper_case_element);
      add_element_to_element_contents (file, close_parenthese);

      convert_to_plaintext_internal (self, file);
      has_file = 1;

      /* remove args[3] that should not be destroyed */
      pop_element_from_contents (file_code_element);
      destroy_element_and_children (file);
    }
  else if (args[4])
    {
     /* add a () such that the node is considered to be external,
        even though the manual name is not known.  This should only
        happen if a book argument is given, but no manual name. */
      ELEMENT *e_parentheses = new_text_element (ET_other_text);
      text_append_n (e_parentheses->e.text, "()", 2);
      convert_to_plaintext_internal (self, e_parentheses);
      destroy_element (e_parentheses);
    }

 /* Get the node name to be output.
    Due to the paragraph formatter holding pending text, converting
    the node name with the current formatter does not yield all the
    converted text.  To get the full node name (and no more), we
    can use the cached text if the node is an internal node.  Otherwise,
    we can convert in a new context, using convert_line_new_context.
    However, it is slow to do this for every node.  So in the most
    frequent case when the node name is a simple text element, use
    that text instead. */
  if (0 && target_element)
    {
  /* TODO need node_name
    ($node_name, undef) = $self->node_name($target_element); */
    }
  else if (label_element && label_element->e.c->contents.number == 1
    && type_data[label_element->e.c->contents.list[0]->type].flags & TF_text)
    {
      node_name = label_element->e.c->contents.list[0]->e.text->text;
    }
  else if (label_element)
    {
  /* TODO convert_line_new_context silent
    $self->{'silent'} = 0 if (!defined($self->{'silent'}));
    $self->{'silent'}++;

    ($node_name, undef) = $self->convert_line_new_context(
        Texinfo::TreeElement::new({'type' => '_code',
                                   'contents' => [$label_element]}),
                                   0, undef,
                                  {'suppress_styles' => 1,
                                    'no_added_eol' => 1});
    $self->{'silent'}--;
   */
    node_name = "toto.";
    }
  else
    node_name = "";

  if (has_file && node_name[strspn (node_name, whitespace_chars)] == '\0')
    {
  /* Some Info reader versions, at least the Info reader from
     Texinfo 6.8 and 7.1 cannot follow a cross-reference
     consisting only of a manual name, such as *Note (manual)::.
     The Emacs Info reader does not seem to have this problem.
     Add a Top node to have a node name.
     Should probably be removed about 10-15 years after Info
     reader have been fixed. */

      node_element = new_text_element (ET_other_text);
      text_append_n (node_element->e.text, "Top", 3);
      label_element = 0;
    }

  if (label_element)
    {
      const char *check_chars;
      const char *p;

      if (name)
        check_chars = ",\t.";
      else
        check_chars = ":";

      p = strpbrk (node_name, check_chars);

      if (p)
        {
          if (self->conf->INFO_SPECIAL_CHARS_WARNING.o.integer > 0)
            {
              if (!self_plaintext->silent)
                message_list_command_warn (&self->error_messages,
                            (self->conf && self->conf->DEBUG.o.integer > 0),
                           element, 0,
                         "@%s node name should not contain `%c'",
                          builtin_command_name(cmd), *p);
            }
          if (self->conf->INFO_SPECIAL_CHARS_QUOTE.o.integer > 0)
            quoting_required = 1;
        }
    }

  if (quoting_required)
    stream_output_add_next (self, node_quote);

  if (label_element || node_element)
    {
      ELEMENT *node_stop_upper_case_element
        = new_element (ET__stop_upper_case);
      ELEMENT *node_code_element = new_element (ET__code);
      if (label_element)
        /* cast to drop const */
        add_to_element_contents (node_code_element, (ELEMENT *)label_element);
      else
        add_element_to_element_contents (node_code_element, node_element);
      add_to_element_contents (node_stop_upper_case_element,
                               node_code_element);

      /* TODO
      formatter->suppress_styles = 1;
       */

      convert_to_plaintext_internal (self, node_stop_upper_case_element);

      /* TODO
      formatter->suppress_styles = 0;
       */

      /* remove label_element that should not be destroyed */
      if (label_element)
        pop_element_from_contents (node_code_element);
      destroy_element_and_children (node_stop_upper_case_element);
    }

  if (quoting_required)
    stream_output_add_next (self, node_quote);

  if (!name)
    stream_output_add_next (self, "::");

  /* Check if punctuation follows the ref command with a label
     argument.  If not, add a full stop. */
  if (name)
    {
      /* Find next element */
      const ELEMENT *next = 0;
      const ELEMENT *parent = element->e.c->parent;
      size_t j;

      for (j = 0; j < parent->e.c->contents.number - 1; j++)
        {
          if (parent->e.c->contents.list[j] == element)
            {
              next = parent->e.c->contents.list[j +1];
              break;
            }
        }
      if (!(next && type_data[next->type].flags & TF_text
            && next->e.text->end > 0
            && (next->e.text->text[0] == '.'
                || next->e.text->text[0] == ',')))
        {
          ELEMENT *added_no_end_sentence_command;
          ELEMENT *added_full_stop_text_elt;
     /* In the past, it was explicily described in the manual that
        some punctuation was automatically added for @pxref only,
        while the other commands required a following full stop or
        comma.

        It is better if the user manages to find a wording with a
        comma or full stop following naturally the ref command.
        However, it is not possible in general except for @xref -- and
        even for @xref it may be cumbersome.  Therefore we only warn
        that a comma or full stop is missing with @xref such that the
        user tries to add it in that case, in the other case, we
        automatically add a full stop without warning.

        There cannot be a perfect solution, as these issues stem from
        the Info language design where it is not possible to
        distinguish if punctuation used in cross reference is
        part of the text or is added and should be considered as markup.
      */
          if (cmd == CM_xref && !self_plaintext->silent)
            {
              if (next && type_data[next->type].flags & TF_text)
                {
                  const char *p = next->e.text->text;
                  p += strspn (p, whitespace_chars);
                  if (*p != '\0')
                    {
                      /* Count any UTF-8 continuation bytes. */
                      int char_len = 1;
                      char *first_char;
                      while ((p[char_len] & 0xC0) == 0x80)
                        char_len++;

                      first_char = strndup (p, char_len);

                      message_list_command_warn (&self->error_messages,
                          (self->conf && self->conf->DEBUG.o.integer > 0),
                           element, 0,
                         "`.' or `,' must follow @xref, not %s",
                         first_char);

                      free (first_char);
                    }
                  else
                    message_list_command_warn (&self->error_messages,
                          (self->conf && self->conf->DEBUG.o.integer > 0),
                           element, 0,
                           "`.' or `,' must follow @xref");
                }
            }
          added_full_stop_text_elt = new_text_element (ET_other_text);
          text_append_n (added_full_stop_text_elt->e.text, ".", 1);
          convert_to_plaintext_internal (self, added_full_stop_text_elt);
          destroy_element (added_full_stop_text_elt);

          added_no_end_sentence_command
            = new_command_element (ET_nobrace_command, CM_COLON);
          convert_to_plaintext_internal (self, added_no_end_sentence_command);
          destroy_element (added_no_end_sentence_command);
        }
    }

  /* TODO
    if ($in_multitable) {
    $formatter->{'w'}--;
    set_space_protection($formatter->{'container'}, 0)
      if ($formatter->{'w'} == 0);
  }
  set_double_width_no_break($formatter->{'container'}, 0);
  */

  if (float_type_number_element)
    destroy_element_and_children (float_type_number_element);
}

