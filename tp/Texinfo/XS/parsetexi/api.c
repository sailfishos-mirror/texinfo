/* Copyright 2010-2023 Free Software Foundation, Inc.

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

#include <libintl.h>

#include <stdlib.h>
#include <stdio.h>
#include <dirent.h>
#include <string.h>
#include <errno.h>

#include "parser.h"
/* for set_debug_output */
#include "debug.h"
#include "tree.h"
/* for parser_add_include_directory, set_input_file_name_encoding ... */
#include "input.h"
#include "source_marks.h"
#include "labels.h"
#include "indices.h"
#include "errors.h"
#include "document.h"
#include "extra.h"
/* for wipe_user_commands */
#include "commands.h"
#include "context_stack.h"
/* for clear_parser_expanded_formats and add_parser_expanded_format */
#include "handle_commands.h"
/* for wipe_macros and store_value */
#include "macro.h"
/* for reset_conf */
#include "conf.h"
#include "api.h"

#ifdef ENABLE_NLS

/* Use the uninstalled locales dir.  Currently unused.
   The texinfo.mo files are not actually created here, only the
   texinfo_document.mo files, which aren't used by parsetexi. */
static void
find_locales_dir (char *builddir)
{
  DIR *dir;
  char *s;

  s = malloc (strlen (builddir) + strlen ("/LocaleData") + 1);
  sprintf (s, "%s/LocaleData", builddir);
  dir = opendir (s);
  if (!dir)
    {
      free (s);
      fprintf (stderr, "Locales dir for document strings not found: %s\n",
               strerror (errno));
    }
  else
    {
      bindtextdomain (PACKAGE, s);
      free (s);
      closedir (dir);
    }
}

#endif


static void
reset_floats ()
{
  floats_number = 0;
}

void
reset_parser_except_conf (void)
{
  /* do before destroying tree because index entries refer to in-tree
     elements. */
  wipe_indices ();

  reset_floats ();
  wipe_parser_global_info ();
  reset_internal_xrefs ();
  reset_labels ();

  wipe_errors ();
  free_small_strings ();

  wipe_user_commands ();
  wipe_macros ();
  init_index_commands ();
  wipe_identifiers_target ();
  reset_context_stack ();
  reset_command_stack (&nesting_context.basic_inline_stack);
  reset_command_stack (&nesting_context.basic_inline_stack_on_line);
  reset_command_stack (&nesting_context.basic_inline_stack_block);
  reset_command_stack (&nesting_context.regions_stack);
  memset (&nesting_context, 0, sizeof (nesting_context));
  /* it is not totally obvious that is it better to reset the
     list to avoid memory leaks rather than reuse the iconv
     opened handlers */
  parser_reset_encoding_list ();
  set_input_encoding ("utf-8");
  input_reset_input_stack ();
  source_marks_reset_counters ();

  reset_obstacks ();

  current_node = current_section = current_part = 0;
}

void
reset_parser (int local_debug_output)
{
  dTHX;

  /* NOTE: Do not call 'malloc' or 'free' in this function.

     Since this file (api.c) includes the Perl headers,
     we get the Perl redefinitions, which we do not want, as we don't use
     them throughout the rest of the program. */

  /* We cannot call debug() here, because the configuration of the previous
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
}

/* Determine directory path based on file name.
   Set ROOT to root of tree obtained by parsing FILENAME.
   Used for parse_texi_file. */
int
parse_file (char *filename, char *input_file_name, char *input_directory)
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
parse_text (char *string, int line_nr)
{
  int document_descriptor;

  reset_parser_except_conf ();
  input_push_text (strdup (string), line_nr, 0, 0);
  document_descriptor = parse_texi_document ();
  return document_descriptor;
}

/* Set ROOT to root of tree obtained by parsing the Texinfo code in STRING.
   STRING should be a UTF-8 buffer.  Used for parse_texi_line. */
int
parse_string (char *string, int line_nr)
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
parse_piece (char *string, int line_nr)
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

/* FIXME here or in parser.c?  Not really in the API anymore as it is now
   mandatory */
int
store_document (ELEMENT *root)
{
  int document_descriptor;
  int i;
  LABEL_LIST *labels;
  FLOAT_RECORD_LIST *floats;
  ELEMENT_LIST *internal_references;
  STRING_LIST *small_strings_list;
  ERROR_MESSAGE_LIST *error_messages;
  GLOBAL_INFO *doc_global_info = malloc (sizeof (GLOBAL_INFO));
  GLOBAL_COMMANDS *doc_global_commands = malloc (sizeof (GLOBAL_COMMANDS));

  labels = malloc (sizeof (LABEL_LIST));

  /* this is actually used to deallocate above labels_number */
  labels_list = realloc (labels_list,
                         labels_number * sizeof (LABEL));

  labels->list = labels_list;
  labels->number = labels_number;
  labels->space = labels_number;

  floats = malloc (sizeof (FLOAT_RECORD_LIST));
  floats_list = realloc (floats_list,
                         floats_number * sizeof (FLOAT_RECORD));

  floats->float_types = floats_list;
  floats->number = floats_number;
  floats->space = floats_number;

  internal_references = malloc (sizeof (ELEMENT_LIST));

  internal_xref_list = realloc (internal_xref_list,
                                internal_xref_number * sizeof (ELEMENT));

  internal_references->list = internal_xref_list;
  internal_references->number = internal_xref_number;
  internal_references->space = internal_xref_number;

  memcpy (doc_global_info, &global_info, sizeof (GLOBAL_INFO));
  if (global_info.input_encoding_name)
    doc_global_info->input_encoding_name
      = strdup (global_info.input_encoding_name);
  if (global_info.input_file_name)
    doc_global_info->input_file_name
      = strdup (global_info.input_file_name);
  if (global_info.input_directory)
    doc_global_info->input_directory
      = strdup (global_info.input_directory);
  #define COPY_GLOBAL_ARRAY(type,cmd) \
   doc_global_##type->cmd.contents.list = 0;                          \
   doc_global_##type->cmd.contents.number = 0;                         \
   doc_global_##type->cmd.contents.space = 0;        \
   if (global_##type.cmd.contents.number > 0)                              \
    {                                                                   \
      for (i = 0; i < global_##type.cmd.contents.number; i++)             \
        {                                                               \
          ELEMENT *e = contents_child_by_index (&global_##type.cmd, i);            \
          add_to_contents_as_array (&doc_global_##type->cmd, e);           \
        }                                                               \
    }
  COPY_GLOBAL_ARRAY(info,dircategory_direntry);

  memcpy (doc_global_commands, &global_commands, sizeof (GLOBAL_COMMANDS));
  COPY_GLOBAL_ARRAY(commands,author);
  COPY_GLOBAL_ARRAY(commands,detailmenu);
  COPY_GLOBAL_ARRAY(commands,hyphenation);
  COPY_GLOBAL_ARRAY(commands,insertcopying);
  COPY_GLOBAL_ARRAY(commands,listoffloats);
  COPY_GLOBAL_ARRAY(commands,part);
  COPY_GLOBAL_ARRAY(commands,printindex);
  COPY_GLOBAL_ARRAY(commands,subtitle);
  COPY_GLOBAL_ARRAY(commands,titlefont);

  COPY_GLOBAL_ARRAY(commands,footnotes);
  COPY_GLOBAL_ARRAY(commands,floats);

  COPY_GLOBAL_ARRAY(commands,allowcodebreaks);
  COPY_GLOBAL_ARRAY(commands,clickstyle);
  COPY_GLOBAL_ARRAY(commands,codequotebacktick);
  COPY_GLOBAL_ARRAY(commands,codequoteundirected);
  COPY_GLOBAL_ARRAY(commands,contents);
  COPY_GLOBAL_ARRAY(commands,deftypefnnewline);
  COPY_GLOBAL_ARRAY(commands,documentencoding);
  COPY_GLOBAL_ARRAY(commands,documentlanguage);
  COPY_GLOBAL_ARRAY(commands,exampleindent);
  COPY_GLOBAL_ARRAY(commands,firstparagraphindent);
  COPY_GLOBAL_ARRAY(commands,frenchspacing);
  COPY_GLOBAL_ARRAY(commands,headings);
  COPY_GLOBAL_ARRAY(commands,kbdinputstyle);
  COPY_GLOBAL_ARRAY(commands,microtype);
  COPY_GLOBAL_ARRAY(commands,paragraphindent);
  COPY_GLOBAL_ARRAY(commands,shortcontents);
  COPY_GLOBAL_ARRAY(commands,urefbreakstyle);
  COPY_GLOBAL_ARRAY(commands,xrefautomaticsectiontitle);

  small_strings = realloc (small_strings, small_strings_num * sizeof (char *));
  small_strings_list = malloc (sizeof (STRING_LIST));
  small_strings_list->list = small_strings;
  small_strings_list->number = small_strings_num;
  small_strings_list->space = small_strings_num;

  error_messages_list.list = realloc (error_messages_list.list,
                        error_messages_list.number * sizeof (ERROR_MESSAGE));
  error_messages = malloc (sizeof (ERROR_MESSAGE_LIST));
  error_messages->list = error_messages_list.list;
  error_messages->number = error_messages_list.number;
  error_messages->space = error_messages_list.number;

  document_descriptor
   = register_document (root, index_names, floats, internal_references,
                        labels, identifiers_target, doc_global_info,
                        doc_global_commands,
                        small_strings_list, error_messages);
  forget_indices ();
  forget_labels ();
  /* use a function? */
  floats_list = 0;
  floats_number = 0;
  floats_space = 0;

  forget_internal_xrefs ();
  forget_small_strings ();
  forget_errors ();

  identifiers_target = 0;

  return document_descriptor;
}

/* for debugging */
void
parser_set_debug (int value)
{
  set_debug_output (value);
}

void
parser_set_documentlanguage_override (char *value)
{
  set_documentlanguage_override (value);
}

void
parser_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i)
{
  set_doc_encoding_for_input_file_name (i);
}

void
parser_set_input_file_name_encoding (char *value)
{
  set_input_file_name_encoding (value);
}

void
parser_set_locale_encoding (char *value)
{
  set_locale_encoding (value);
}

void
parser_store_value (char *name, char *value)
{
  store_value (name, value);
}

void
parser_clear_expanded_formats (void)
{
  clear_parser_expanded_formats ();
}

void
parser_add_expanded_format (char *format)
{
  add_parser_expanded_format (format);
}

void
parser_set_accept_internalvalue (int value)
{
  set_accept_internalvalue (value);
}
