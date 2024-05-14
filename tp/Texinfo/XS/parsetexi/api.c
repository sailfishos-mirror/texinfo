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

#include <config.h>

#include <stdlib.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <errno.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "parser.h"
/* for set_debug_output */
#include "debug_parser.h"
/* reset_obstacks */
#include "tree.h"
/* wipe_index_names */
#include "utils.h"
/* for parser_add_include_directory, set_input_file_name_encoding ... */
#include "input.h"
#include "source_marks.h"
/* wipe_identifiers_target */
#include "labels.h"
/* forget_indices init_index_commands */
#include "indices.h"
#include "errors.h"
/* for wipe_user_commands */
#include "commands.h"
#include "command_stack.h"
#include "context_stack.h"
/* for clear_parser_expanded_formats and add_parser_expanded_format */
#include "handle_commands.h"
/* for wipe_macros and store_value */
#include "macro.h"
/* for reset_conf */
#include "conf.h"
#include "api.h"

/* When reset_parser_except_conf is called in parse_*, store_document will
   be called afterwards.
   When reset_parser_except_conf is called by reset_parser in parser
   initialization, however, there will be a call to parse_* afterwards
   leading to calling reset_parser_except_conf again without a call to
   store_document inbetween.
 */
void
reset_parser_except_conf (void)
{
  /* parser structures registered in document are reset by the
     call to store_document, except for global info that is only
     copied */
  wipe_parser_global_info ();

  wipe_user_commands ();
  wipe_macros ();
  /* index_names are forgotten in store_document, however, there
     can be two calls of reset_parser_except_conf without a call to
     store_document inbetween, for that case there need to be a call to
     wipe_index_names and forget_indices before init_index_commands.
  */
  wipe_index_names (index_names);
  forget_indices ();
  wipe_identifiers_target ();
  reset_context_stack ();
  reset_command_stack (&nesting_context.basic_inline_stack);
  reset_command_stack (&nesting_context.basic_inline_stack_on_line);
  reset_command_stack (&nesting_context.basic_inline_stack_block);
  reset_command_stack (&nesting_context.regions_stack);
  memset (&nesting_context, 0, sizeof (nesting_context));
  reset_parser_counters ();
  /* it is not totally obvious that is it better to reset the
     list to avoid memory leaks rather than reuse the iconv
     opened handlers */
  parser_reset_encoding_list ();
  set_input_encoding ("utf-8");
  source_marks_reset_counters ();

  reset_obstacks ();

  current_node = current_section = current_part = 0;
}

void
reset_parser (int local_debug_output)
{
  /* We cannot call debug () here, because the configuration of the previous
     parser invokation has not been reset already, and new configuration has
     not been read, so we need to pass the configuration information
     directly */
  /*
  debug ("!!!!!!!!!!!!!!!! RESETTING THE PARSER !!!!!!!!!!!!!!!!!!!!!");
  */
  if (local_debug_output)
    fprintf (stderr,
          "!!!!!!!!!!!!!!!! RESETTING THE PARSER !!!!!!!!!!!!!!!!!!!!!\n");

  reset_parser_except_conf ();
  wipe_values ();
  clear_parser_expanded_formats ();
  parser_clear_include_directories ();
  reset_conf ();

  global_documentlanguage_fixed = 0;
  set_documentlanguage (0);

  set_doc_encoding_for_input_file_name (1);
  set_input_file_name_encoding (0);
  set_locale_encoding (0);

  global_accept_internalvalue = 0;
  global_restricted = 0;
}

/* Determine directory path based on file name.
   Return a DOCUMENT_DESCRIPTOR that can be used to retrieve the
   tree and document obtained by parsing FILENAME.
   Used for parse_texi_file. */
int
parse_file (const char *filename, const char *input_file_name,
            const char *input_directory)
{
  int document_descriptor;
  char *p, *q;

  int status;

  status = input_push_file (filename);
  if (status)
    return 0;

  free (global_info.input_file_name);
  free (global_info.input_directory);
  global_info.input_file_name = strdup (input_file_name);
  global_info.input_directory = strdup (input_directory);

  /* Strip off a leading directory path, by looking for the last
     '/' in filename. */
  p = 0;
  q = strchr (filename, '/');
  while (q)
    {
      p = q;
      q = strchr (q + 1, '/');
    }

  if (p)
    {
      char saved = *p;
      *p = '\0';
      parser_add_include_directory (filename);
      *p = saved;
    }

  document_descriptor = parse_texi_document ();

  return document_descriptor;
}

/* Used for parse_texi_text.  STRING should be a UTF-8 buffer. */
int
parse_text (const char *string, int line_nr)
{
  int document_descriptor;

  reset_parser_except_conf ();
  input_push_text (strdup (string), line_nr, 0, 0);
  document_descriptor = parse_texi_document ();
  return document_descriptor;
}

/* Set DOCUMENT_DESCRIPTOR to the value corresponding to the tree
   obtained by parsing the Texinfo code in STRING.
   STRING should be a UTF-8 buffer.  Used for parse_texi_line. */
int
parse_string (const char *string, int line_nr)
{
  ELEMENT *root_elt;
  int document_descriptor;

  reset_parser_except_conf ();
  root_elt = new_element (ET_root_line);
  input_push_text (strdup (string), line_nr, 0, 0);
  document_descriptor = parse_texi (root_elt, root_elt);
  return document_descriptor;
}

/* Used for parse_texi_piece.  STRING should be a UTF-8 buffer. */
int
parse_piece (const char *string, int line_nr)
{
  int document_descriptor;
  ELEMENT *before_node_section, *document_root;

  reset_parser_except_conf ();
  before_node_section = setup_document_root_and_before_node_section ();
  document_root = before_node_section->parent;

  input_push_text (strdup (string), line_nr, 0, 0);
  document_descriptor = parse_texi (document_root, before_node_section);
  return document_descriptor;
}

/* for debugging */
int
parser_set_debug (int value)
{
  return set_debug_output (value);
}

void
parser_set_documentlanguage_override (const char *value)
{
  set_documentlanguage_override (value);
}

void
parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i)
{
  set_doc_encoding_for_input_file_name (i);
}

void
parser_set_input_file_name_encoding (const char *value)
{
  set_input_file_name_encoding (value);
}

void
parser_set_locale_encoding (const char *value)
{
  set_locale_encoding (value);
}

void
parser_store_value (const char *name, const char *value)
{
  store_value (name, value);
}

void
parser_clear_expanded_formats (void)
{
  clear_parser_expanded_formats ();
}

void
parser_add_expanded_format (const char *format)
{
  add_parser_expanded_format (format);
}

void
parser_set_accept_internalvalue (int value)
{
  set_accept_internalvalue (value);
}

void
parser_set_restricted (int value)
{
  set_restricted (value);
}
