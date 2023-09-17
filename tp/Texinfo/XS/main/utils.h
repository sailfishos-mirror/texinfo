/* utils.h - declarations for utils.c */
#ifndef UTILS_H
#define UTILS_H

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

#include <iconv.h>

#include "options_types.h"
#include "tree_types.h"

extern const char *whitespace_chars;
extern const char *digit_chars;
extern enum command_id level_to_structuring_command[][5];
extern int command_structuring_level[];

extern const char *direction_names[];
extern const char *direction_texts[];
extern const size_t directions_length;

enum error_type { error, warning };

typedef struct {
    char *message;
    char *error_line;
    enum error_type type;
    int continuation;
    SOURCE_INFO source_info;
} ERROR_MESSAGE;

typedef struct {
  ERROR_MESSAGE *list;
  size_t number;
  size_t space;
} ERROR_MESSAGE_LIST;

typedef struct {
  char *encoding_name;
  iconv_t iconv;
} ENCODING_CONVERSION;

typedef struct {
  ENCODING_CONVERSION *list;
  size_t number;
  size_t space;
  int direction;  /* if > 0 converts from the encodings to UTF-8 */
} ENCODING_CONVERSION_LIST;

struct expanded_format {
    char *format;
    int expandedp;
};

typedef struct GLOBAL_INFO {
    char *input_file_name;
    char *input_directory;
    char *input_encoding_name;
    int sections_level_modifier;
    ELEMENT dircategory_direntry; /* an array of elements */
    /* Ignored characters for index sort key */
    IGNORED_CHARS ignored_chars;
} GLOBAL_INFO;

typedef struct GLOBAL_COMMANDS {
    /* Elements that should be unique. */
    ELEMENT *settitle;
    ELEMENT *copying;
    ELEMENT *title;
    ELEMENT *titlepage;
    ELEMENT *top;
    ELEMENT *setfilename;
    ELEMENT *documentdescription;
    ELEMENT *pagesizes;
    ELEMENT *fonttextsize;
    ELEMENT *footnotestyle;
    ELEMENT *setchapternewpage;
    ELEMENT *everyheading;
    ELEMENT *everyfooting;
    ELEMENT *evenheading;
    ELEMENT *evenfooting;
    ELEMENT *oddheading;
    ELEMENT *oddfooting;
    ELEMENT *everyheadingmarks;
    ELEMENT *everyfootingmarks;
    ELEMENT *evenheadingmarks;
    ELEMENT *oddheadingmarks;
    ELEMENT *evenfootingmarks;
    ELEMENT *oddfootingmarks;
    ELEMENT *shorttitlepage;
    ELEMENT *novalidate;
    ELEMENT *afourpaper;
    ELEMENT *afourlatex;
    ELEMENT *afourwide;
    ELEMENT *afivepaper;
    ELEMENT *bsixpaper;
    ELEMENT *smallbook;

    /* Arrays of elements */
    ELEMENT author;
    ELEMENT detailmenu;
    ELEMENT floats;
    ELEMENT footnotes;
    ELEMENT hyphenation;
    ELEMENT insertcopying;
    ELEMENT listoffloats;
    ELEMENT part;
    ELEMENT printindex;
    ELEMENT subtitle;
    ELEMENT titlefont;

    ELEMENT allowcodebreaks;
    ELEMENT clickstyle;
    ELEMENT codequotebacktick;
    ELEMENT codequoteundirected;
    ELEMENT contents;
    ELEMENT deftypefnnewline;
    ELEMENT documentencoding;
    ELEMENT documentlanguage;
    ELEMENT exampleindent;
    ELEMENT firstparagraphindent;
    ELEMENT frenchspacing;
    ELEMENT headings;
    ELEMENT kbdinputstyle;
    ELEMENT microtype;
    ELEMENT paragraphindent;
    ELEMENT shortcontents;
    ELEMENT urefbreakstyle;
    ELEMENT xrefautomaticsectiontitle;
} GLOBAL_COMMANDS;

int isascii_alnum (int c);
int isascii_alpha (int c);
int isascii_lower (int c);
int isascii_upper (int c);
size_t count_multibyte (const char *text);
char *to_upper_or_lower_multibyte (const char *text, int lower_or_upper);
int width_multibyte (const char *text);

void delete_global_info (GLOBAL_INFO *global_info_ref);
void delete_global_commands (GLOBAL_COMMANDS *global_commands_ref);

void fatal (char *);
void bug (char *);

char *normalize_encoding_name (char *text, int *possible_encoding);
ELEMENT *get_label_element (ELEMENT *e);
char *read_flag_name (char **ptr);
int section_level (ELEMENT *section);
char *collapse_spaces (char *text);
char *parse_line_directive (char *line, int *retval, int *out_line_no);
int is_content_empty (ELEMENT *tree, int do_not_ignore_index_entries);

OPTIONS *new_options (void);

void free_strings_list (STRING_LIST *strings);
void add_string (char *string, STRING_LIST *strings_list);

void add_include_directory (char *filename, STRING_LIST *include_dirs_list);
void clear_include_directories (STRING_LIST *include_dirs_list);
char *locate_include_file (char *filename, STRING_LIST *include_dirs_list);

ENCODING_CONVERSION *get_encoding_conversion (char *encoding,
                                    ENCODING_CONVERSION_LIST *encodings_list);
char *encode_with_iconv (iconv_t our_iconv,  char *s);
void reset_encoding_list (ENCODING_CONVERSION_LIST *encodings_list);

FLOAT_RECORD_LIST *float_list_to_listoffloats_list (
                                      FLOAT_RECORD_LIST *floats_list);
void destroy_listoffloats_list (FLOAT_RECORD_LIST *listoffloats_list);

struct expanded_format *new_expanded_formats (char *format);
void clear_expanded_formats (struct expanded_format *formats);
void add_expanded_format (struct expanded_format *formats, char *format);
int format_expanded_p (struct expanded_format *formats, char *format);

char *enumerate_item_representation (char *specification, int number);

ELEMENT *copy_tree (ELEMENT *current, ELEMENT *parent);
ELEMENT *copy_contents (ELEMENT *element, enum element_type type);

#endif
