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

%module Texinfo

/* We do not include config.h as the define there could be incompatible with
   the language define.  This is likely to be the case for Perl, see comments
   in build_perl_info.c.
 */

%{
#include <stddef.h>
#include <stdlib.h>
/* not necessarily used, but could be for debugging */
#include <stdio.h>

#include "use_interpreter_types.h"
#include "source_mark_types.h"
#include "element_types.h"
#include "types_data.h"
#include "tree_types.h"
#include "reader_types.h"
#include "api.h"
#include "parser_conf.h"
#include "conf.h"
#include "tree.h"
#include "targets.h"
#include "utils.h"
#include "convert_to_texinfo.h"
#include "manipulate_tree.h"
#include "document.h"
#include "manipulate_indices.h"
#include "reader_api.h"
#include "texinfo.h"
#include "convert_to_text.h"
#include "swig_element_data.h"
#include "swig_text_options.h"
#include "swig_interface.h"
%}

// Initialization

%init %{
txi_general_output_strings_setup (0);

reset_parser (0);
%}

%include "use_interpreter_types.h"

// if use_interpreter is negative (the default value), the value set
// at compile is used.
void
setup (int texinfo_uninstalled=0,
       enum interpreter_use use_interpreter=txi_interpreter_use_none,
       int updirs=3, const char *converterdatadir_in=0,
       const char *converterlibdir_in=0,
       const char *t2a_builddir_in=0,
       const char *t2a_srcdir_in=0);

%{
void
setup (int texinfo_uninstalled,
       enum interpreter_use use_interpreter,
       int updirs, const char *converterdatadir_in,
       const char *converterlibdir_in,
       const char *t2a_builddir_in,
       const char *t2a_srcdir_in)
{
  const char *version_for_embedded_interpreter_check;
  char *t2a_srcdir = 0;
  char *t2a_builddir = 0;
  const char *converterdatadir = 0;
  const char *converterlibdir = 0;
  enum interpreter_use do_use_interpreter = txi_interpreter_use_no_interpreter;
#ifdef EMBED_PERL
  do_use_interpreter = txi_interpreter_use_embedded;
#endif
#ifdef USE_PERL_INTERPRETER
  do_use_interpreter = txi_interpreter_use_interpreter;
#endif

  if (use_interpreter != txi_interpreter_use_none)
    do_use_interpreter = use_interpreter;

  if (texinfo_uninstalled)
    {
      if (t2a_srcdir_in)
        t2a_srcdir = strdup (t2a_srcdir_in);
      else
        {
          t2a_srcdir = getenv ("t2a_srcdir");
          if (t2a_srcdir)
            t2a_srcdir = strdup (t2a_srcdir);
          else
            /* swig/somelanguage */
            t2a_srcdir = strdup ("../../");
        }
      if (t2a_builddir_in)
        t2a_builddir = strdup (t2a_builddir_in);
      else
        {
          t2a_builddir = getenv ("t2a_builddir");
          if (!t2a_builddir)
            /* this is correct for in-source builds only. */
            t2a_builddir = strdup (t2a_srcdir);
          else
            t2a_builddir = strdup (t2a_builddir);
        }
    }
  else
    {
      if (converterdatadir_in)
        converterdatadir = converterdatadir_in;
      else
        converterdatadir = DATADIR "/" CONVERTER_CONFIG;
      if (converterlibdir_in)
        converterlibdir = converterlibdir_in;
      else
        converterlibdir = LIBDIR "/" CONVERTER_CONFIG;
    }

  if (texinfo_uninstalled)
    version_for_embedded_interpreter_check = PACKAGE_VERSION_CONFIG "+nc";
  else
    version_for_embedded_interpreter_check = PACKAGE_VERSION_CONFIG;

  txi_setup_main_load_interpreter (do_use_interpreter, texinfo_uninstalled,
                                   converterdatadir, converterlibdir,
                                   t2a_builddir, t2a_srcdir, updirs,
                                   0, 0, 0,
                                   version_for_embedded_interpreter_check);
  free (t2a_builddir);
  free (t2a_srcdir);
}
%}


// Access to lists used in different places

// swig_interface.h

%rename(element_list_element_by_index) txi_ext_element_list_element_by_index;
ELEMENT *txi_ext_element_list_element_by_index (ELEMENT_LIST *element_list,
                                                int index);
%rename(element_list_elements_number) txi_ext_element_list_elements_number;
int txi_ext_element_list_elements_number (ELEMENT_LIST *element_list);

%rename(const_element_list_element_by_index) txi_ext_const_element_list_element_by_index;
const ELEMENT *txi_ext_const_element_list_element_by_index (
                                              CONST_ELEMENT_LIST *element_list,
                                              int index);
%rename(const_element_list_elements_number) txi_ext_const_element_list_elements_number;
int txi_ext_const_element_list_elements_number (CONST_ELEMENT_LIST *element_list);

%rename(string_list_string_by_index) txi_ext_string_list_string_by_index;
char *txi_ext_string_list_string_by_index (STRING_LIST *string_list, int index);
%rename(string_list_strings_number) txi_ext_string_list_strings_number;
int txi_ext_string_list_strings_number (STRING_LIST *string_list);

%include "swig_error_messages_types.h"

%rename(messages_list_messages_number) txi_ext_messages_list_messages_number;
int txi_ext_messages_list_messages_number (FORMATTED_ERROR_MESSAGE_LIST *messages_list);
%rename(messages_list_message_by_index) txi_ext_messages_list_message_by_index;
FORMATTED_ERROR_MESSAGE *txi_ext_messages_list_message_by_index (
                      FORMATTED_ERROR_MESSAGE_LIST *messages_list, int index);

%rename(destroy_error_messages_list) txi_ext_destroy_error_messages_list;
void txi_ext_destroy_error_messages_list (FORMATTED_ERROR_MESSAGE_LIST *error_messages);


// Information on elements

%include "swig_element_types.h"

#define cm_flag(name) \
  %rename(element_command_is_##name) txi_ext_element_command_is_##name;
TXI_CM_FLAGS_LIST
#undef cm_flag

#define cm_oflag(name) \
  %rename(element_command_is_##name) txi_ext_element_command_is_##name;
TXI_CM_OTHER_FLAGS_LIST
#undef cm_oflag

#define ty_flag(name) \
  %rename(element_type_is_##name) txi_ext_element_type_is_##name;
TXI_TY_FLAGS_LIST
#undef ty_flag

%include "swig_element_data.h"

// swig_interface.h
%rename (element_command_data_type) txi_ext_element_command_data_type;
const char *txi_ext_element_command_data_type (ELEMENT *element);


// Parser

// api.h
// OUTPUT status is 0 if the input file could be read
DOCUMENT *parse_file (const char *input_file_path, int *OUTPUT);
DOCUMENT *parse_piece (const char *, int line_nr=1);
DOCUMENT *parse_string (const char *, int line_nr=1);
DOCUMENT *parse_text (const char *, int line_nr=1);

void parser_conf_reset_values (void);
void parser_conf_add_value (const char *name, const char *value);

// parser_conf.h
PARSER_CONF *register_conf (void);
void apply_conf (PARSER_CONF *parser_conf);

// conf.h
void parser_conf_set_show_menu (int i);
void parser_conf_set_CPP_LINE_DIRECTIVES (int i);
int parser_conf_set_DEBUG (int i);
void parser_conf_set_IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME (int i);
void parser_conf_set_MAX_MACRO_CALL_NESTING (int i);
int parser_conf_set_NO_INDEX (int i);
int parser_conf_set_NO_USER_COMMANDS (int i);
void parser_conf_clear_INCLUDE_DIRECTORIES (void);
void parser_conf_add_include_directory (const char *filename);
void parser_conf_clear_expanded_formats (void);
void parser_conf_add_expanded_format (const char *format);
void parser_conf_set_documentlanguage (const char *value);
void parser_conf_set_DOC_ENCODING_FOR_INPUT_FILE_NAME (int i);
void parser_conf_set_INPUT_FILE_NAME_ENCODING (const char *value);
void parser_conf_set_LOCALE_ENCODING (const char *value);
void parser_conf_set_COMMAND_LINE_ENCODING (const char *value);
void parser_conf_set_accept_internalvalue (int value);

// Only one of the next two function should be called as both clear the
// document errors list.

// texinfo.h
// Output the error messages on stderr
%rename(output_parser_error_messages) txi_output_parser_error_messages;
size_t txi_output_parser_error_messages (DOCUMENT *document,
                                  const char *message_encoding=0,
                                  int no_warn=0, int use_filename=0);

// swig_interface.h
// Get the error messages.  Call destroy_error_messages_list when done.
%rename(get_parser_error_messages) txi_ext_get_parser_error_messages;
FORMATTED_ERROR_MESSAGE_LIST *txi_ext_get_parser_error_messages (
                                  DOCUMENT *document,
                                  const char *message_encoding=0,
                                  int no_warn=0, int use_filename=0,
                                  int *OUTPUT);


// Structuring

// document.h
void set_document_options (DOCUMENT *document,
                      const OPTIONS_LIST *program_options=0,
                      const OPTIONS_LIST *cmdline_options=0,
                      const OPTIONS_LIST *init_files_options=0);

// texinfo.h
/* document tree transformations selection flags */
#define STTF_complete_tree_nodes_menus              0x0001
#define STTF_complete_tree_nodes_missing_menu       0x0002
#define STTF_fill_gaps_in_sectioning                0x0004
#define STTF_insert_nodes_for_sectioning_commands   0x0008
#define STTF_move_index_entries_after_items         0x0010
#define STTF_regenerate_master_menu                 0x0020
#define STTF_relate_index_entries_to_table_items    0x0040

/* document structuring selection flags */
#define STTF_floats                                 0x0080
#define STTF_no_warn_non_empty_parts                0x0100
#define STTF_nodes_tree                             0x0200
#define STTF_setup_index_entries_sort_strings       0x0400

/* for complete_tree_nodes_menus, complete_tree_nodes_missing_menu
   and regenerate_master_menu */
#define STTF_complete_menus_use_sections            0x0800

%rename(complete_document) txi_complete_document;

void txi_complete_document (DOCUMENT *document, unsigned long flags,
                            int format_menu);

// Only one of the next two function should be called as both clear the
// document errors list.

// texinfo.h
// Output the error messages on stderr
%rename(output_document_error_messages) txi_output_document_error_messages;
size_t txi_output_document_error_messages (DOCUMENT *document,
                                    const char *message_encoding=0,
                                    int no_warn=0, int use_filename=0);

// swig_interface.h
// Get the error messages.  Call destroy_error_messages_list when done.
%rename(get_document_error_messages) txi_ext_get_document_error_messages;
FORMATTED_ERROR_MESSAGE_LIST *txi_ext_get_document_error_messages (
                                  DOCUMENT *document,
                                  const char *message_encoding=0,
                                  int no_warn=0, int use_filename=0,
                                  int *OUTPUT);

// Document interface

%inline %{
ELEMENT *document_tree (DOCUMENT *document);
%}

%{
ELEMENT *document_tree (DOCUMENT *document)
{
  return document->tree;
}
%}

// targets.h
%inline %{
ELEMENT *get_element_by_identifier (DOCUMENT *document,
                                    const char *identifier);
%}

%{
ELEMENT *
get_element_by_identifier (DOCUMENT *document, const char *identifier)
{
  return find_identifier_target (&document->identifiers_target, identifier);
}
%}

// swig_interface.h
%rename(document_global_unique_command) txi_ext_document_global_unique_command;
ELEMENT *txi_ext_document_global_unique_command (DOCUMENT *document,
                                                 const char *cmdname);
%rename(document_global_command_list) txi_ext_document_global_command_list;
const ELEMENT_LIST *txi_ext_document_global_command_list (DOCUMENT *document,
                                                          const char *cmdname);

// index sorting and associated data

// tree_types.h
// without the index entries
typedef struct INDEX {
    char *name;
    char *prefix;
    int in_code;

    struct INDEX *merged_in; /* Index this index is merged into, if any. */
} INDEX;

typedef struct INDEX_ENTRY {
    char *index_name; /* kept with the entry as the indices may be merged */
    int number; /* position in the original index.  May be different in
                   merged index */
    ELEMENT *entry_element;
    ELEMENT *entry_associated_element; /* set if the entry is reassociated to
                                          another element */
} INDEX_ENTRY;

%rename(sorted_index_entries_by_index) txi_ext_sorted_index_entries_by_index;
INDEX_ENTRY *txi_ext_sorted_index_entries_by_index (
                     const INDEX_SORTED_BY_INDEX *index_sorted, int index);
%rename(sorted_index_entries_number) txi_ext_sorted_index_entries_number;
int txi_ext_sorted_index_entries_number (
                     const INDEX_SORTED_BY_INDEX *index_sorted);

%rename(get_index_sorted_by_index) txi_ext_get_index_sorted_by_index;
const INDEX_SORTED_BY_INDEX *txi_ext_get_index_sorted_by_index (
                           DOCUMENT *document,
                           const char *index_name,
                           int use_unicode_collation=1,
                           const char *collation_language=0,
                           const char *collation_locale=0);

// listoffloats
typedef struct {
    ELEMENT *float_element;
    const SECTION_RELATIONS *float_section;
} FLOAT_INFORMATION;

%rename(float_list_float_by_index) txi_ext_float_list_float_by_index;
FLOAT_INFORMATION *txi_ext_float_list_float_by_index (
                         FLOAT_INFORMATION_LIST *float_list, int index);
%rename(float_list_floats_number) txi_ext_float_list_floats_number;
int txi_ext_float_list_floats_number (FLOAT_INFORMATION_LIST *float_list);

%rename(get_float_type_floats_information) txi_ext_get_float_type_floats_information;
FLOAT_INFORMATION_LIST *txi_ext_get_float_type_floats_information (
                            DOCUMENT *document, const char *float_type);

// Document-wide information
/* Only document-wide interesting information */
typedef struct GLOBAL_INFO {
    char *input_file_name;
    char *input_directory;
    char *input_encoding_name;
    STRING_LIST included_files;
} GLOBAL_INFO;

%rename(document_global_information) txi_ext_document_global_information;
GLOBAL_INFO *txi_ext_document_global_information (DOCUMENT *document);


// Tree Element interface

// Access to tree element information

// tree_types.h
typedef struct SOURCE_INFO {
    int line_nr;
    char *file_name;
    char *macro;
} SOURCE_INFO;

%include "source_mark_types.h"

// swig_interface.h
%rename(element_type) txi_ext_element_type;
const char *txi_ext_element_type (ELEMENT *element);
%rename(element_text) txi_ext_element_text;
const char *txi_ext_element_text (ELEMENT *element);
// returns the macro name for user-defined macro calls too
%rename(element_cmdname) txi_ext_element_cmdname;
const char *txi_ext_element_cmdname (ELEMENT *element);
%rename(element_children_number) txi_ext_element_children_number;
int txi_ext_element_children_number (ELEMENT *element);
%rename(element_get_child) txi_ext_element_get_child;
ELEMENT *txi_ext_element_get_child (ELEMENT *element, int index);
%rename(element_parent) txi_ext_element_parent;
ELEMENT *txi_ext_element_parent (ELEMENT *element);
%rename(element_source_info) txi_ext_element_source_info;
SOURCE_INFO *txi_ext_element_source_info (ELEMENT *element);
%rename(element_source_marks_number) txi_ext_element_source_marks_number;
int txi_ext_element_source_marks_number (ELEMENT *element);
%rename(element_get_source_mark) txi_ext_element_get_source_mark;
SOURCE_MARK *txi_ext_element_get_source_mark (ELEMENT *element, int index);

// It would have been better to return None/undef/nil if not set and
// a value otherwise, but it does not seems to be possible, likely because
// not all languages have a value such as None.
// if OUTPUT is not 0, the value is undefined.
%rename(element_attribute_integer) txi_ext_element_attribute_integer;
int txi_ext_element_attribute_integer (const ELEMENT *element,
                                       const char *attribute,
                                       int *OUTPUT);
%rename(element_attribute_string) txi_ext_element_attribute_string;
const char *txi_ext_element_attribute_string (const ELEMENT *element,
                                             const char *attribute);
%rename(element_attribute_element) txi_ext_element_attribute_element;
ELEMENT *txi_ext_element_attribute_element (const ELEMENT *element,
                                            const char *attribute);

%rename(element_index_entry) txi_ext_element_index_entry;
INDEX_ENTRY *txi_ext_element_index_entry (DOCUMENT *document,
                                          ELEMENT *element);
%rename(index_entry_index_info) txi_ext_index_entry_index_info;
INDEX *txi_ext_index_entry_index_info (DOCUMENT *document,
                                       INDEX_ENTRY *index_entry);

%rename(element_misc_args) txi_ext_element_misc_args;
const STRING_LIST *txi_ext_element_misc_args (ELEMENT *element);

// New element and element modification

// swig_interface.h
// is_text_element is used to disambiguate between text element and
// container element when the type is empty
%rename(store_new_element) txi_ext_store_new_element;
ELEMENT *txi_ext_store_new_element (DOCUMENT *document, const char *type_name,
                                const char *command_name, int is_text_element);

%rename(element_reset_text) txi_ext_element_reset_text;
void txi_ext_element_reset_text (ELEMENT *element);
%rename(element_append_text) txi_ext_element_append_text;
void txi_ext_element_append_text (ELEMENT *element, const char *text);

%rename(set_element_attribute_integer) txi_ext_set_element_attribute_integer;
int txi_ext_set_element_attribute_integer (ELEMENT *element,
                                           const char *attribute, int value);
%rename(set_element_attribute_string) txi_ext_set_element_attribute_string;
int txi_ext_set_element_attribute_string (ELEMENT *element,
                                          const char *attribute,
                                          const char *value);
%rename(set_element_attribute_element) txi_ext_set_element_attribute_element;
int txi_ext_set_element_attribute_element (ELEMENT *element,
                                           const char *attribute,
                                           ELEMENT *value);

// tree.h
void add_to_element_contents (ELEMENT *parent, ELEMENT *e);


// Nodes, sections and headings relations

// Data structures

// swig_interface.h
%rename(section_relation_list_section_relation_by_index) txi_ext_section_relation_list_section_relation_by_index;
SECTION_RELATIONS *txi_ext_section_relation_list_section_relation_by_index (
                SECTION_RELATIONS_LIST *section_relation_list, int index);
%rename(section_relation_list_section_relations_number) txi_ext_section_relation_list_section_relations_number;
int txi_ext_section_relation_list_section_relations_number (
                           SECTION_RELATIONS_LIST *section_relation_list);

typedef struct NODE_RELATIONS {
    ELEMENT *element;
    const SECTION_RELATIONS *associated_section;
    /* it can be associated to an heading or a section relations
       so we prefer the element although relations structures
       would have been more consistent */
    const ELEMENT *associated_title_command;
    const SECTION_RELATIONS *node_preceding_part;
    const ELEMENT *node_description;
    const ELEMENT *node_long_description;
    CONST_ELEMENT_LIST *menus;
     /*
    const struct ELEMENT **menu_directions;
    const struct ELEMENT **node_directions;
      */
} NODE_RELATIONS;

typedef struct HEADING_RELATIONS {
    const ELEMENT *element;
    const NODE_RELATIONS *associated_anchor_command;
} HEADING_RELATIONS;

typedef struct SECTION_RELATIONS {
    const ELEMENT *element;
    const NODE_RELATIONS *associated_anchor_command;
    const NODE_RELATIONS *associated_node;
    const SECTION_RELATIONS *associated_part;
    const SECTION_RELATIONS *part_associated_section;
    const NODE_RELATIONS *part_following_node;
     /*
    const struct SECTION_RELATIONS **section_directions;
    const struct SECTION_RELATIONS **toplevel_directions;
      */
    SECTION_RELATIONS_LIST *section_children;
} SECTION_RELATIONS;

// functions

%rename(get_node_relations) txi_ext_get_node_relations;
NODE_RELATIONS *txi_ext_get_node_relations (ELEMENT *element,
                                            DOCUMENT *document);
%rename(get_section_relations) txi_ext_get_section_relations;
SECTION_RELATIONS *txi_ext_get_section_relations (ELEMENT *element,
                                                  DOCUMENT *document);
%rename(get_heading_relations) txi_ext_get_heading_relations;
HEADING_RELATIONS *txi_ext_get_heading_relations (ELEMENT *element,
                                                  DOCUMENT *document);

%rename(node_relation_node_direction) txi_ext_node_relation_node_direction;
const ELEMENT *txi_ext_node_relation_node_direction (NODE_RELATIONS *node,
                                                     const char *direction);
%rename(section_relation_section_direction) txi_ext_section_relation_section_direction;
const SECTION_RELATIONS *txi_ext_section_relation_section_direction (
                                              SECTION_RELATIONS *section,
                                              const char *direction);
%rename(section_relation_toplevel_direction) txi_ext_section_relation_toplevel_direction;
const SECTION_RELATIONS *txi_ext_section_relation_toplevel_direction (
                                     SECTION_RELATIONS *section,
                                     const char *direction);

%inline %{
SECTION_RELATIONS_LIST *sectioning_root_children (DOCUMENT *document);
%}

%{
SECTION_RELATIONS_LIST *
sectioning_root_children (DOCUMENT *document)
{
  if (!document->sectioning_root)
    return 0;
  return &document->sectioning_root->section_children;
}
%}


// Reader

%include "reader_types.h"

// reader_api.h

%inline %{
struct READER *new_reader (ELEMENT *tree, DOCUMENT *document);
%}

%{
struct READER *
new_reader (ELEMENT *tree, DOCUMENT *document)
{
  size_t reader_descriptor = txi_register_new_reader (tree, document);
  return retrieve_reader_descriptor (reader_descriptor);
}
%}

%inline %{
const READER_TOKEN *reader_read (struct READER *reader);
%}

%{
const READER_TOKEN *
reader_read (struct READER *reader)
{
  if (!reader)
    return 0;

  return txi_reader_read (reader);
}
%}

%rename(reader_skip_children) txi_reader_skip_children;
const READER_TOKEN *txi_reader_skip_children (struct READER *reader,
                                              const ELEMENT *element);


// Finish

%rename(destroy_document) txi_destroy_document;

// texinfo.h

void txi_destroy_document (DOCUMENT *document);


// Conversion

// To Texinfo

// convert_to_texinfo.h
%newobject convert_to_texinfo;
char *convert_to_texinfo (const ELEMENT *e);
%newobject convert_contents_to_texinfo;
char *convert_contents_to_texinfo (const ELEMENT *e);

// To plain text

%include "swig_text_options_types.h"

%rename(text_options_set_encoding) txi_ext_text_options_set_encoding;
%rename(text_options_clear_expanded_formats) txi_ext_text_options_clear_expanded_formats;
%rename(text_options_add_expanded_format) txi_ext_text_options_add_expanded_format;
%rename(document_text_options) txi_ext_document_text_options;

#define tico_option_name(name) \
%rename(text_options_set_##name) txi_ext_text_options_set_##name;
 TEXT_INDICATOR_CONVERTER_OPTIONS
#undef tico_option_name

%include "swig_text_options.h"

// convert_to_text.h
void text_set_options_encoding (TEXT_OPTIONS *text_options, char *encoding);
void text_reset_options_encoding (TEXT_OPTIONS *text_options);
void text_set_language (TEXT_OPTIONS *text_options, const char *lang);

%newobject convert_to_text;
char *convert_to_text (const ELEMENT *root, TEXT_OPTIONS *text_options);

// Tree representation
// Very relevant for debugging, no reason to use otherwise

// manipulate_tree.h
%newobject tree_print_details;
char *tree_print_details (ELEMENT *tree, const char *fname_encoding=0,
                          int use_filename=0);

%newobject element_print_details;
char *element_print_details (ELEMENT *element, const char *fname_encoding=0,
                             int use_filename=0);

%{
char *
element_print_details (ELEMENT *element, const char *fname_encoding,
                             int use_filename)
{
  TEXT result;
  text_init (&result);
  text_append (&result, "");

  print_element_details (element, 0, 0, 0, &result, fname_encoding,
                         use_filename);

  return result.text;
}
%}


// Helper functions
// TODO move to another module/file?

// These could also be re-implemented in the different languages.
// Which one to add/remove?

// We do not care at all about API stability for those functions.

// utils.h
ELEMENT *get_label_element (const ELEMENT *e);
// TODO add a wrapper around utils.c informative_command_value?
// or let it be re-implemented in the diverse languages?

// manipulate_indices.h
ELEMENT *index_content_element (const ELEMENT *element,
                                int prefer_reference_element=0);
// TODO add a wrapper around new_complete_menu_master_menu?
