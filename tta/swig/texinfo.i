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

%{
#include <config.h>

#include <stddef.h>

#include "element_types.h"
#include "types_data.h"
#include "tree_types.h"
#include "api.h"
#include "parser_conf.h"
#include "conf.h"
#include "tree.h"
#include "utils.h"
#include "document.h"
#include "tree_element.h"
#include "reader.h"
#include "texinfo.h"
%}

// Initialization

%init %{
const char *converterdatadir = DATADIR "/" CONVERTER_CONFIG;
messages_and_encodings_setup ();
setup_texinfo_main (0, converterdatadir, 0, 0);
txi_general_output_strings_setup(0);

reset_parser (0);
%}

// document.h
void setup_txi_paths_information (int texinfo_uninstalled,
                             const char *converterdatadir,
                             const char *t2a_builddir,
                             const char *t2a_srcdir);

// Parser

// api.h
DOCUMENT *parse_file (const char *input_file_path, int *OUTPUT);
DOCUMENT *parse_piece (const char *, int line_nr=1);
DOCUMENT *parse_string (const char *, int line_nr=1);
DOCUMENT *parse_text (const char *, int line_nr=1);
//void reset_parser (int debug_output=0);

void parser_conf_reset_values (void);
void parser_conf_add_value (const char *name, const char *value);

// parser_conf.h
PARSER_CONF * register_conf (void);
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

// texinfo.h
size_t txi_handle_parser_error_messages (DOCUMENT *document,
                                  const char *message_encoding=0,
                                  int no_warn=0, int use_filename=0);


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

void txi_complete_document (DOCUMENT *document, unsigned long flags,
                            int format_menu);

size_t txi_handle_document_error_messages (DOCUMENT *document,
                                    const char *message_encoding=0,
                                    int no_warn=0, int use_filename=0);


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

// tree_element.h
ELEMENT *document_global_unique_command (DOCUMENT *document,
                                         const char *cmdname);
const ELEMENT_LIST *document_global_command_list (DOCUMENT *document,
                                                  const char *cmdname);


// Tree Element interface

// tree_element.h

ELEMENT *element_list_element_by_index (ELEMENT_LIST *element_list, int index);
int element_list_number (ELEMENT_LIST *element_list);

char *string_list_string_by_index (STRING_LIST *string_list, int index);
int string_list_number (STRING_LIST *string_list);

typedef struct SOURCE_INFO {
    int line_nr;
    char *file_name;
    char *macro;
} SOURCE_INFO;

const char *element_type (ELEMENT *element);
const char *element_text (ELEMENT *element);
const char *element_cmdname (ELEMENT *element);
int element_children_number (ELEMENT *element);
ELEMENT *element_get_child (ELEMENT *element, int index);
ELEMENT *element_parent (ELEMENT *element);
SOURCE_INFO *element_source_info (ELEMENT *element);

// TODO would be better to return None/NULL if not set and
// a value otherwise, but may not be portable across languages.
int element_attribute_integer (const ELEMENT *element, const char *attribute,
                               int *OUTPUT);
const char *element_attribute_string (const ELEMENT *element,
                                      const char *attribute);
ELEMENT *element_attribute_element (const ELEMENT *element,
                                    const char *attribute);

INDEX_ENTRY *element_index_entry (DOCUMENT *document, ELEMENT *element);
INDEX *index_entry_index_info (DOCUMENT *document, INDEX_ENTRY *index_entry);

const STRING_LIST *element_misc_args (ELEMENT *element);

// tree.h
void add_to_element_contents (ELEMENT *parent, ELEMENT *e);


// Reader

#define TXI_READER_TOKEN_CAT_LST \
  trt_cat(ELEMENT_START) \
  trt_cat(ELEMENT_END) \
  trt_cat(TEXT) \
  trt_cat(IGNORABLE_TEXT) \
  trt_cat(EMPTY)

enum reader_token_category {
  #define trt_cat(name) TXI_READ_ ## name,
   TXI_READER_TOKEN_CAT_LST
  #undef trt_cat
};

typedef struct READER_TOKEN {
    const ELEMENT *element;
    enum reader_token_category category;
} READER_TOKEN;

READER *retrieve_reader (size_t reader_descriptor);
size_t txi_register_new_reader (ELEMENT *tree, DOCUMENT *document);

READER *txi_reader_new (ELEMENT *tree, DOCUMENT *document);
const READER_TOKEN *txi_reader_read (READER *reader);
const READER_TOKEN *txi_reader_skip_children (READER *reader,
                                              const ELEMENT *element);


// Finish

// texinfo.h

void txi_document_remove (DOCUMENT *document);


// New elements interface

// TODO
