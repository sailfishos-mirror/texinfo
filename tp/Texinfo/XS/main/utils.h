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

#include "tree_types.h"

extern const char *whitespace_chars;

enum error_type { error, warning };

typedef struct {
    char *message;
    enum error_type type;
    int continuation;
    SOURCE_INFO source_info;
} ERROR_MESSAGE;

typedef struct {
  ERROR_MESSAGE *list;
  size_t number;
  size_t space;
} ERROR_MESSAGE_LIST;

struct expanded_format {
    char *format;
    int expandedp;
};

typedef struct GLOBAL_INFO {
    char *input_file_name;
    char *global_input_encoding_name;
    int sections_level;
    ELEMENT dircategory_direntry; /* an array of elements */

    /* Elements that should be unique. */
    ELEMENT *settitle; /* Title of document. */
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

    /* Ignored characters for index sort key */
    IGNORED_CHARS ignored_chars;
} GLOBAL_INFO;

int isascii_alnum (int c);
int isascii_alpha (int c);
int isascii_lower (int c);
int isascii_upper (int c);

void delete_global_info (GLOBAL_INFO *global_info_ref);

void fatal (char *);
void bug (char *);

char *normalize_encoding_name (char *text, int *possible_encoding);
ELEMENT *get_label_element (ELEMENT *e);
char * read_flag_name (char **ptr);

struct expanded_format *new_expanded_formats (char *format);
void clear_expanded_formats (struct expanded_format *formats);
void add_expanded_format (struct expanded_format *formats, char *format);
int format_expanded_p (struct expanded_format *formats, char *format);

ELEMENT *copy_tree (ELEMENT *current, ELEMENT *parent);

#endif
