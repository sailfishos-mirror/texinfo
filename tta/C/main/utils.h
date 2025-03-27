/* utils.h - declarations for utils.c */
#ifndef UTILS_H
#define UTILS_H

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

#include <stddef.h>
#include <stdarg.h>
/* for iconv_t */
#include <iconv.h>

#include "command_ids.h"
#include "tree_types.h"
#include "global_commands_types.h"
#include "option_types.h"
#include "options_data.h"
#include "document_types.h"
#include "converter_types.h"

#define gdt_noop(String) String
/* only used for def_aliases.  Inverse the arguments to match with the
   C structure */
#define pgdt_context_noop(Context,String) String, Context

/* portability definition for platforms that may lack S_ISDIR */
#if !defined (S_ISDIR) && defined (S_IFDIR)
#  define S_ISDIR(m) (((m) & S_IFMT) == S_IFDIR)
#endif /* !S_ISDIR && S_IFDIR */

/* FIXME use something common? */
/* taken from system.h */
#ifndef O_BINARY
# ifdef _O_BINARY
#  define O_BINARY _O_BINARY
# else
#  define O_BINARY 0
# endif
#endif /* O_BINARY */

#if O_BINARY
# define HAVE_DRIVE(n)   ((n)[0] && (n)[1] == ':')
# define IS_SLASH(c)     ((c) == '/' || (c) == '\\')
# define IS_ABSOLUTE(n)  (IS_SLASH((n)[0]) || HAVE_DRIVE(n))
# define FILE_SLASH      "/\\"
#else  /* not O_BINARY, i.e., Unix */
# define IS_SLASH(c)     ((c) == '/')
# define HAVE_DRIVE(n)   (0)
# define IS_ABSOLUTE(n)  ((n)[0] == '/')
# define FILE_SLASH      "/"
#endif /* not O_BINARY */

#define SECTION_LEVEL_NR 5

extern const char *null_device_names[];

extern const char *whitespace_chars;
extern const char *digit_chars;
extern enum command_id
  level_to_structuring_command[BUILTIN_CMD_NUMBER][SECTION_LEVEL_NR];
extern int const command_structuring_level[];

extern const char *direction_names[];
extern const char *direction_texts[];
extern const size_t directions_length;

extern const char *output_unit_type_names[];

extern const char *command_location_names[];

extern const char *html_button_direction_names[];
extern char *html_command_text_type_name[];

extern const EXPANDED_FORMAT default_expanded_formats[];

typedef struct ENCODING_CONVERSION_LIST {
    ENCODING_CONVERSION *list;
    size_t number;
    size_t space;
    int direction;  /* if > 0 converts from the encodings to UTF-8 */
} ENCODING_CONVERSION_LIST;

extern ENCODING_CONVERSION_LIST output_conversions;
extern ENCODING_CONVERSION_LIST input_conversions;

typedef struct DEF_ALIAS {
    enum command_id alias;
    enum command_id command;
    char *category;
    char *translation_context;
} DEF_ALIAS;

extern DEF_ALIAS def_aliases[];

#define SMALL_BLOCK_COMMANDS_LIST \
    smbc_command_name(example)\
    smbc_command_name(display) \
    smbc_command_name(format) \
    smbc_command_name(lisp) \
    smbc_command_name(quotation) \
    smbc_command_name(indentedblock)

extern const enum command_id small_block_associated_command[][2];

/* HTML modified state flags */
#define HMSF_current_root            0x0001
#define HMSF_current_node            0x0002
#define HMSF_translations            0x0004

typedef struct ACCENTS_STACK {
    ELEMENT_STACK stack;
    ELEMENT *argument;
} ACCENTS_STACK;

/* generated by gperf in txi_documentlanguage_languages.c */
const char *txi_in_language_codes (register const char *str,
                                   register size_t len);
/* generated by gperf in txi_documentlanguage_regions.c */
const char *txi_in_language_regions (register const char *str,
                                     register size_t len);

int xasprintf (char **ptr, const char *template, ...);

size_t count_multibyte (const char *text);
char *to_upper_or_lower_multibyte (const char *text, int lower_or_upper);
int width_multibyte (const char *text);
int word_bytes_len_multibyte (const char *text);

void messages_and_encodings_setup (void);

void setup_structuring_data (void);

void store_value (VALUE_LIST *values, const char *name, const char *value);
void clear_value (VALUE_LIST *values, const char *name);
void wipe_values (VALUE_LIST *values);

void delete_global_info (GLOBAL_INFO *global_info_ref);
void delete_global_commands (GLOBAL_COMMANDS *global_commands_ref);

char *texinfo_input_file_basename (const char *input_basefile);
char *remove_extension (const char *input_string);
char *canonpath (const char *input_file);
char *normalize_encoding_name (const char *text, int *possible_encoding);
ELEMENT *item_line_parent (ELEMENT *current);
ELEMENT *get_label_element (const ELEMENT *e);
INDEX *indices_info_index_by_name (const INDEX_LIST *indices_information,
                                   const char *name);
INDEX *ultimate_index (INDEX *index);
size_t index_number_index_by_name (const SORTED_INDEX_NAMES *sorted_indices,
                                   const char *name);
size_t read_flag_len (const char *text);
int section_level (const ELEMENT *section);
enum command_id section_level_adjusted_command_name (const ELEMENT *element);
char *collapse_spaces (const char *text);
char *parse_line_directive (const char *line, int *retval, int *out_line_no);
int file_name_is_absolute (const char *filename);
void parse_file_path (const char *input_file_path, char **result);
void splitpath (const char *input_file_path, char **result);
STRING_LIST *splitdir (char *directories_str);
char *analyze_documentlanguage_argument (const char *text,
                                   const char **region_code_out,
                                   int *valid_lang, int *valid_region);
int is_content_empty (const ELEMENT *tree, int do_not_ignore_index_entries);

void allocate_name_number_list (NAME_NUMBER_LIST *name_number_list,
                                size_t number);
size_t find_name_number (const NAME_NUMBER_LIST *name_number,
                         const char *name);
void free_name_number_list (NAME_NUMBER_LIST *name_number_list);
void sort_name_number_list (NAME_NUMBER_LIST *name_number_list);

STRING_LIST *new_string_list (void);
void clear_strings_list (STRING_LIST *strings);
void free_strings_list (STRING_LIST *strings);
void destroy_strings_list (STRING_LIST *strings);
char *add_string (const char *string, STRING_LIST *strings_list);
void remove_from_strings_list (STRING_LIST *strings_list, size_t where);
void merge_strings (STRING_LIST *strings_list,
                    const STRING_LIST *merged_strings);
void copy_strings (STRING_LIST *dest_list, const STRING_LIST *source_list);
size_t find_string (const STRING_LIST *strings_list, const char *string);
void sort_strings_list (STRING_LIST *strings);
int string_exists_in_sorted_strings_list (STRING_LIST *strings,
                                          const char *target);
char *join_strings_list (STRING_LIST *strings);

void destroy_accent_stack (ACCENTS_STACK *accent_stack);

const char *input_file_name_encoding (const char *name_encoding,
                          int doc_encoding_for_input_file_name,
                          const char *locale_encoding,
                          const GLOBAL_INFO *global_information,
                          const char *input_file_encoding);

void wipe_index (INDEX *idx);
void free_indices_info (INDEX_LIST *indices_info);

void add_include_directory (const char *filename,
                            STRING_LIST *include_dirs_list);
char *locate_include_file (const char *filename,
                           const STRING_LIST *include_dirs_list);
char *locate_file_in_dirs (const char *filename,
                     const STRING_LIST *directories,
                     STRING_LIST *all_files,
                     DEPRECATED_DIRS_LIST *deprecated_dirs,
                     DEPRECATED_DIRS_LIST *deprecated_dirs_used);

const ELEMENT *block_line_argument_command (const ELEMENT *block_line_arg);
void find_float_caption_shortcaption(const ELEMENT *float_e,
                                     const ELEMENT **result);
ELEMENT *multitable_columnfractions (const ELEMENT *multitable);
void collect_subentries (const ELEMENT *current, CONST_ELEMENT_LIST *e_list);
const ELEMENT *index_entry_referred_entry (const ELEMENT *element,
                                           enum command_id cmd);

DEPRECATED_DIR_INFO *find_deprecated_dir_info (
                          const DEPRECATED_DIRS_LIST *deprecated_dirs,
                          const char *directory_name);
void add_deprecated_dir_info (DEPRECATED_DIRS_LIST *deprecated_dirs,
                         const DEPRECATED_DIR_INFO *deprecated_dir_info);
void copy_deprecated_dirs (DEPRECATED_DIRS_LIST *deprecated_dirs_dst,
                           const DEPRECATED_DIRS_LIST *deprecated_dirs_src);
void add_new_deprecated_dir_info (DEPRECATED_DIRS_LIST *deprecated_dirs,
                                  const char *obsolete_dir,
                                  const char *reference_dir);
void clear_deprecated_dirs_list (DEPRECATED_DIRS_LIST *deprecated_dirs);
void free_deprecated_dirs_list (DEPRECATED_DIRS_LIST *deprecated_dirs);

ENCODING_CONVERSION *get_encoding_conversion (const char *encoding,
                                    ENCODING_CONVERSION_LIST *encodings_list);
char *encode_with_iconv (iconv_t our_iconv,  char *s,
                         const SOURCE_INFO *source_info);
void reset_encoding_list (ENCODING_CONVERSION_LIST *encodings_list);
char *decode_string (char *input_string, const char *encoding, int *status,
                     const SOURCE_INFO *source_info);
char *encode_string (char *input_string, const char *encoding, int *status,
                     const SOURCE_INFO *source_info);

EXPANDED_FORMAT *new_expanded_formats (void);
void clear_expanded_formats (EXPANDED_FORMAT *formats);
void add_expanded_format (EXPANDED_FORMAT *formats, const char *format);
int format_expanded_p (const EXPANDED_FORMAT *formats, const char *format);
size_t expanded_formats_number (void);
void set_expanded_formats_from_options (EXPANDED_FORMAT *formats,
                                        const OPTIONS *options);

void add_translated_command (TRANSLATED_COMMAND_LIST *translated_commands,
                        enum command_id cmd,
                        const char *translation);
void clear_translated_commands (TRANSLATED_COMMAND_LIST *translated_commands);
void free_translated_commands (TRANSLATED_COMMAND_LIST *translated_commands);
void copy_translated_commands (TRANSLATED_COMMAND_LIST *dst_translated_commands,
                    const TRANSLATED_COMMAND_LIST *translated_commands);

OUTPUT_FILES_INFORMATION *new_output_files_information (void);
FILE_STREAM *allocate_file_stream (OUTPUT_FILES_INFORMATION *self,
                                   const char *file_path);

char *enumerate_item_representation (char *specification, int number);

const ELEMENT *get_global_document_command (
                                      const GLOBAL_COMMANDS *global_commands,
                                      enum command_id cmd,
                                      enum command_location command_location);
char *informative_command_value (const ELEMENT *element);
const ELEMENT_LIST *get_cmd_global_multi_command (
                                    const GLOBAL_COMMANDS *global_commands_ref,
                                    enum command_id cmd);
const ELEMENT *get_cmd_global_uniq_command (
                                    const GLOBAL_COMMANDS *global_commands_ref,
                                    enum command_id cmd);

void html_fill_button_directions_specification_list (const CONVERTER *converter,
                                              BUTTON_SPECIFICATION_LIST *buttons);
void html_free_button_specification_list (BUTTON_SPECIFICATION_LIST *buttons);
void html_clear_direction_icons (DIRECTION_ICON_LIST *direction_icons);
void html_free_direction_icons (DIRECTION_ICON_LIST *direction_icons);
int html_get_direction_index (const CONVERTER *converter,
                              const char *direction);
const char *direction_unit_direction_name (int direction,
                                           const CONVERTER *converter);

TARGET_FILENAME *new_target_filename (void);
TARGET_CONTENTS_FILENAME *new_target_contents_filename (void);
FILE_NAME_PATH *new_file_name_path (void);
TARGET_DIRECTORY_FILENAME *new_target_directory_filename (void);
FORMATTED_BUTTON_INFO *new_formatted_button_info (void);

#endif
