/* converter_types.h - declarations of types used in many places */
#ifndef CONVERTER_TYPES_H
#define CONVERTER_TYPES_H

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

#include "html_converter.h"

#include <stddef.h>
/* for iconv_t */
#include <iconv.h>

#include "element_types.h"
#include "command_ids.h"
#include "tree_types.h"
#include "document_types.h"
#include "option_types.h"
#include "options_data.h"

/* for interdependency with convert_to_text.h */
struct TEXT_OPTIONS;

struct C_HASHMAP;

/* formatting context flags */
#define CTXF_string     0x0001
#define CTXF_code       0x0002

/* information on converter configuration from a source of configuration
   (either output format or user customization) */
typedef struct CONVERTER_INITIALIZATION_INFO {
    TRANSLATED_COMMAND_LIST translated_commands;
    OPTIONS_LIST conf;
    DEPRECATED_DIRS_LIST deprecated_config_directories;
    /* gather strings that are not customization options */
    STRING_LIST non_valid_customization;
} CONVERTER_INITIALIZATION_INFO;

typedef struct PLAINTEXT_CONVERSION_STATE {
    /* TODO: replace with 'count_context' stack */
    TEXT pending_text;
} PLAINTEXT_CONVERSION_STATE;



/* except for COF_none, which means that the format has no C implementation,
   the value of the enum should match the index in the converter_format_data
   table that dispatches the functions used for conversion */
enum converter_format {
   COF_none = -1,
   COF_html,
   COF_rawtext,
   COF_plaintexinfo,
   COF_plaintext,
};

/* for string information passing to/from perl */
enum sv_string_type {
   svt_byte,
   svt_dir,
   svt_char,
};


typedef struct CONVERTER {
    int converter_descriptor;
  /* perl converter. This should be SV *sv,
     but we don't want to include the Perl headers everywhere; */
    void *sv;

  /* this is the type of the converter, not of the output.  (Similar to
     a module name in Perl).  Should only be used to determine which
     functions are to be called */
    enum converter_format format;
    /* used to pass converter_defaults result, if going through XS and
       destroyed shortly after */
    CONVERTER_INITIALIZATION_INFO *format_defaults;
    OPTIONS *conf;
    /* an array containing the fields of conf ordered by name */
    OPTION **sorted_options;
    /* set to commands user defined from customization in generic converter
       during converter initialization, or reset and set to each of
       the commands values just before starting the conversion in HTML */
    COMMAND_OPTION_VALUE commands_init_conf[BUILTIN_CMD_NUMBER];
    EXPANDED_FORMAT *expanded_formats;
    TRANSLATED_COMMAND_LIST translated_commands;
    /* set based on documentlanguage customization option, if set,
       and reset when the documentlanguage changes.  Allocated
       and put in the cache if the language was never seen.
     */
    const LANG_TRANSLATION *current_lang_translations;

    ERROR_MESSAGE_LIST error_messages;
    /* for error messages registered in the converter */
    STRING_LIST small_strings;

    DOCUMENT *document;

    /* reset in converter_set_document */
    struct TEXT_OPTIONS *convert_text_options;
    struct TEXT_OPTIONS *convert_index_text_options;

    int upper_case[BUILTIN_CMD_NUMBER];

    /* output unit files API */
    /* reset for output */
    FILE_NAME_PATH_COUNTER_LIST output_unit_files;

    /* to find index in output_unit_files based on name */
    /* reset upon allocation */
    NAME_NUMBER_LIST page_name_number;

  /* API to open, set encoding and register files */
    OUTPUT_FILES_INFORMATION output_files_information;

  /* associates deprecated directories and reference directories */
    DEPRECATED_DIRS_LIST deprecated_config_directories;

    INDICES_SORT_STRINGS *indices_sort_strings;
    COLLATIONS_INDICES_SORTED_BY_INDEX *sorted_indices_by_index;
    COLLATIONS_INDICES_SORTED_BY_LETTER *sorted_indices_by_letter;

  /* Info/plaintext specific */
    PLAINTEXT_CONVERSION_STATE plaintext_converter;

  /* HTML specific */
    HTML_CONVERTER_STATE html_converter;
} CONVERTER;

/* following types used in several converter codes, but not in this file */
typedef struct TARGET_FILENAME {
    char *target;
    char *filename;
    const char *extension;
} TARGET_FILENAME;

typedef struct TARGET_CONTENTS_FILENAME {
    char *target;
    char *filename;
    char *target_contents;
    char *target_shortcontents;
} TARGET_CONTENTS_FILENAME;

typedef struct FILE_NAME_PATH {
    char *filename;
    char *filepath;
} FILE_NAME_PATH;

typedef struct TARGET_DIRECTORY_FILENAME {
    char *filename;
    char *directory;
    char *target;
} TARGET_DIRECTORY_FILENAME;

typedef struct ENCODING_CONVERSION {
    char *encoding_name;
    iconv_t iconv;
} ENCODING_CONVERSION;

typedef struct OUTPUT_TEXT_FILES_INFO {
    OUTPUT_FILES_INFORMATION *output_files_information;
    char *text;
} OUTPUT_TEXT_FILES_INFO;

typedef struct CONVERTER_TEXT_INFO {
    CONVERTER *converter;
    char *text;
} CONVERTER_TEXT_INFO;


#endif

