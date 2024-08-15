/* html_converter_api.h - selected functions for the html converter API */
#ifndef HTML_CONVERTER_API_H
#define HTML_CONVERTER_API_H

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

/* HTML functions that are needed to setup and destroy a converter and
   implement conversion with output() or convert() */

#include "option_types.h"
#include "document_types.h"
#include "converter_types.h"

/* in html_prepare_converter.c */
void html_format_setup (void);

/* in html_converter_init_options.c */
void html_converter_defaults (CONVERTER *self,
                              CONVERTER_INITIALIZATION_INFO *format_defaults);

void html_converter_initialize (CONVERTER *self);

/* in html_prepare_converter.c */
void html_converter_init_special_unit (CONVERTER *self);
void html_converter_customize (CONVERTER *self);

/* in options_init_free.c */
void html_fill_options_directions (OPTIONS *options, const CONVERTER *converter);

void html_initialize_output_state (CONVERTER *self, const char *context);

int html_setup_output (CONVERTER *self, char **paths);
void html_setup_convert (CONVERTER *self);

void html_prepare_conversion_units (CONVERTER *self);

void html_prepare_conversion_units_targets (CONVERTER *self,
                                     const char *document_name);

/* called separately for convert() */
void html_prepare_output_units_global_targets (CONVERTER *self);
/* only called for output() */
FILE_SOURCE_INFO_LIST *html_prepare_units_directions_files (CONVERTER *self,
          const char *output_file, const char *destination_directory,
          const char *output_filename, const char *document_name);

/* in convert_html.c */
char *html_convert_tree (CONVERTER *self, const ELEMENT *tree,
                         const char *explanation);

void html_translate_names (CONVERTER *self);

/* next two called separately for convert() */
void html_prepare_simpletitle (CONVERTER *self);
void html_prepare_title_titlepage (CONVERTER *self, const char *output_file,
                                   const char *output_filename);
/* only for output() */
int html_prepare_converted_output_info (CONVERTER *self,
                                        const char *output_file,
                                        const char *output_filename);

char *html_convert_convert (CONVERTER *self, const ELEMENT *root);

char *html_convert_output (CONVERTER *self, const ELEMENT *root,
                           const char *output_file,
                           const char *destination_directory,
                           const char *output_filename,
                           const char *document_name);

void html_conversion_finalization (CONVERTER *self);

void html_do_js_files (CONVERTER *self);

int html_finish_output (CONVERTER *self, const char *output_file,
                        const char *destination_directory);

/* in html_converter_finish.c */
void html_reset_converter (CONVERTER *self);

void html_free_converter (CONVERTER *self);



/* implemented in html_converter_api.c using above functions */

char *html_output (CONVERTER *converter, DOCUMENT *document);

char *html_convert (CONVERTER *converter, DOCUMENT *document);

#endif
