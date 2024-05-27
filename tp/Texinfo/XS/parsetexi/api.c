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
/* for set_input_file_name_encoding ... */
#include "input.h"
#include "source_marks.h"
#include "errors.h"
/* for wipe_values ... */
#include "utils.h"
/* for wipe_user_commands */
#include "commands.h"
#include "command_stack.h"
#include "context_stack.h"
/* for wipe_macros store_value init_values */
#include "macro.h"
#include "document.h"
/* for reset_conf */
#include "conf.h"
/* for global_parser_conf */
#include "parser_conf.h"
/* for init_index_commands */
#include "indices.h"
#include "api.h"

static void
initialize_parsing (void)
{
  parsed_document = new_document ();

  if (!global_parser_conf.no_index)
    init_index_commands ();

  wipe_user_commands ();
  wipe_macros ();

  /* initialize from conf */
  init_values ();

  /* currently there is no change done to include directories,
     so global_parser_conf.include_directories could be used instead
     of parser_include_directories */
  clear_strings_list (&parser_include_directories);
  copy_strings (&parser_include_directories,
                &global_parser_conf.include_directories);

  free (global_documentlanguage);
  if (global_parser_conf.global_documentlanguage_fixed
      && global_parser_conf.documentlanguage)
    global_documentlanguage = strdup (global_parser_conf.documentlanguage);
  else
    global_documentlanguage = 0;

  /* initialize document state */
  free (global_clickstyle);
  global_clickstyle = strdup ("arrow");
  global_kbdinputstyle = kbd_distinct;

  current_node = current_section = current_part = 0;
  source_marks_reset_counters ();

  /* it is not totally obvious that is it better to reset the
     list to avoid memory leaks rather than reuse the iconv
     opened handlers */
  parser_reset_encoding_list ();
  set_input_encoding ("utf-8");

  /* initialize parsing state */
  reset_context_stack ();
  reset_command_stack (&nesting_context.basic_inline_stack);
  reset_command_stack (&nesting_context.basic_inline_stack_on_line);
  reset_command_stack (&nesting_context.basic_inline_stack_block);
  reset_command_stack (&nesting_context.regions_stack);
  memset (&nesting_context, 0, sizeof (nesting_context));
  reset_parser_counters ();

  reset_obstacks ();
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

  reset_parser_conf ();
}

/* RESULT should be an array of size two.  Upon return, it holds
   the file name in the first position and directory, if any, in
   the second position.  The file name and directory should be
   freed.
 */
static void
parse_file_path (const char *input_file_path, char **result)
{
  /* Strip off a leading directory path, by looking for the last
     '/' in input_file_path. */
  const char *p = 0;
  const char *q = strchr (input_file_path, '/');
  while (q)
    {
      p = q;
      q = strchr (q + 1, '/');
    }

  if (p)
    {
      result[0] = strdup (p + 1);
      result[1] = strndup (input_file_path, (p - input_file_path) + 1);
    }
  else
    {
      result[0] = strdup (input_file_path);
      /* FIXME or strdup ("") */
      result[1] = 0;
    }
}

/* Determine directory path based on file name.
   Return a DOCUMENT_DESCRIPTOR that can be used to retrieve the
   tree and document obtained by parsing FILENAME.
   Used for parse_texi_file. */
int
parse_file (const char *input_file_path)
{
  int document_descriptor;
  GLOBAL_INFO *global_info;
  char *input_file_name_and_directory[2];

  int status;

  initialize_parsing ();

  status = input_push_file (input_file_path);
  if (status)
    {
      remove_document_descriptor (parsed_document->descriptor);
      return 0;
    }

  parse_file_path (input_file_path, input_file_name_and_directory);

  global_info = &parsed_document->global_info;

  free (global_info->input_file_name);
  free (global_info->input_directory);
  global_info->input_file_name = input_file_name_and_directory[0];
  global_info->input_directory = input_file_name_and_directory[1];

  document_descriptor = parse_texi_document ();

  return document_descriptor;
}

/* Used for parse_texi_text.  STRING should be a UTF-8 buffer. */
int
parse_text (const char *string, int line_nr)
{
  int document_descriptor;

  initialize_parsing ();

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

  initialize_parsing ();

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

  initialize_parsing ();

  before_node_section = setup_document_root_and_before_node_section ();
  document_root = before_node_section->parent;

  input_push_text (strdup (string), line_nr, 0, 0);
  document_descriptor = parse_texi (document_root, before_node_section);
  return document_descriptor;
}

void
parser_conf_reset_values (void)
{
  wipe_values (&global_parser_conf.values);
}

void
parser_conf_add_value (const char *name, const char *value)
{
  store_value (&global_parser_conf.values, name, value);
}

