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

/* code that does not fit anywhere else */

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <sys/stat.h>
#include <iconv.h>
#include <errno.h>
#include "unistr.h"
#include "unicase.h"
#include "uniwidth.h"
#include <unictype.h>
/* for euidaccess.  Not portable, use gnulib */
#include <unistd.h>

#ifdef ENABLE_NLS
#include <locale.h>
#include <libintl.h>
#endif

/* HTML_GLOBAL_DIRECTIONS_LIST RUD_DIRECTIONS_TYPES_LIST
   RUD_FILE_DIRECTIONS_TYPES */
#include "html_conversion_data.h"
/* also for xvasprintf */
#include "text.h"
#include "command_ids.h"
#include "element_types.h"
#include "tree_types.h"
#include "types_data.h"
#include "global_commands_types.h"
#include "option_types.h"
#include "options_data.h"
/* for CL_* */
#include "document_types.h"
#include "converter_types.h"
/* isascii_alnum isascii_alpha isascii_upper */
#include "base_utils.h"
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
#include "debug.h"
#include "api_to_perl.h"
#include "unicode.h"
#include "utils.h"

#define min_level command_structuring_level[CM_chapter]
#define max_level command_structuring_level[CM_subsubsection]

/*
  From the Cygwin FAQ https://www.cygwin.com/faq.html:
    In gcc for Cygwin, _WIN32 is only defined when you use the -mwin32 gcc
    command line options.
  This means that _WIN32 may be defined on Cygwin while the null device
  name seems to always be different from MS-Windows null device name, so
  we exclude explicitely __CYGWIN__.
  In similar code used for the info reader, the logic is different, as
  O_BINARY is used first and cygwin is tested afterwards.  We also use
  O_BINARY in the C texi2any code for paths related defines.
 */
const char *null_device_names[] = {
#if defined(_WIN32) && !defined(__CYGWIN__)
 "NUL",
#else
 "/dev/null",
#endif
 0};

#define LOCALEDIR DATADIR "/locale"

const char *whitespace_chars = " \t\v\f\r\n";
const char *digit_chars = "0123456789";

DEF_ALIAS def_aliases[] = {
  {CM_defun, CM_deffn, pgdt_context_noop("category of functions for @defun",
                                        "Function")},
  /* TRANSLATORS: category of macros for @defmac */
  {CM_defmac, CM_deffn, gdt_noop("Macro"), 0},
  /* TRANSLATORS: category of special forms for @defspec */
  {CM_defspec, CM_deffn, gdt_noop("Special Form"), 0},
  {CM_defvar, CM_defvr, pgdt_context_noop("category of variables for @defvar",
                                         "Variable")},
  /* TRANSLATORS: category of user-modifiable options for @defopt */
  {CM_defopt, CM_defvr, gdt_noop("User Option"), 0},
  {CM_deftypefun, CM_deftypefn,
       pgdt_context_noop("category of functions for @deftypefun", "Function")},
  {CM_deftypevar, CM_deftypevr,
   pgdt_context_noop("category of variables in typed languages for @deftypevar",
                     "Variable")},
  {CM_defivar, CM_defcv,
   pgdt_context_noop("category of instance variables in object-oriented programming for @defivar",
                     "Instance Variable")},
  {CM_deftypeivar, CM_deftypecv,
   pgdt_context_noop("category of instance variables with data type in object-oriented programming for @deftypeivar",
                     "Instance Variable")},
  {CM_defmethod, CM_defop,
   pgdt_context_noop("category of methods in object-oriented programming for @defmethod",
                     "Method")},
  {CM_deftypemethod, CM_deftypeop,
   pgdt_context_noop("category of methods with data type in object-oriented programming for @deftypemethod",
                     "Method")},

  /* the following aliases are not used in the parser.  They do not need
     to be marked for translation as it is already done just above */
  {CM_defunx, CM_deffnx, "Function", "category of functions for @defun"},
  {CM_defmacx, CM_deffnx, "Macro", 0},
  {CM_defspecx, CM_deffnx, "Special Form", 0},
  {CM_defvarx, CM_defvrx, "Variable", "category of variables for @defvar"},
  {CM_defoptx, CM_defvrx, "User Option", 0},
  {CM_deftypefunx, CM_deftypefnx, "Function", "category of functions for @deftypefun"},
  {CM_deftypevarx, CM_deftypevrx, "Variable", "category of variables in typed languages for @deftypevar"},
  {CM_defivarx, CM_defcvx, "Instance Variable", "category of instance variables in object-oriented programming for @defivar"},
  {CM_deftypeivarx, CM_deftypecvx, "Instance Variable", "category of instance variables with data type in object-oriented programming for @deftypeivar"},
  {CM_defmethodx, CM_defopx, "Method", "category of methods in object-oriented programming for @defmethod"},
  {CM_deftypemethodx, CM_deftypeopx, "Method", "category of methods with data type in object-oriented programming for @deftypemethod"},
  {0, 0, 0, 0}
};

/* to keep synchronized with enum directions in tree_types.h */
const char *direction_names[] = {"next", "prev", "up"};
const char *direction_texts[] = {"Next", "Prev", "Up"};
const size_t directions_length = sizeof (direction_names) / sizeof (direction_names[0]);

const enum command_id small_block_associated_command[][2] = {
  #define smbc_command_name(name) {CM_small##name, CM_##name},
   SMALL_BLOCK_COMMANDS_LIST
  #undef smbc_command_name
   {0, 0},
};

/* to keep synchronized with enum output_unit_type in tree_types.h */
const char *output_unit_type_names[] = {"unit",
                                  "external_node_unit",
                                  "special_unit"};

ENCODING_CONVERSION_LIST output_conversions = {0, 0, 0, -1};
ENCODING_CONVERSION_LIST input_conversions = {0, 0, 0, 1};

/* to keep synchronized with enum command_location */
const char *command_location_names[]
  = {"before", "last", "preamble", "preamble_or_first", 0};

/* duplicated when creating a new expanded_formats */
/* NOTE if you add a format, increase the size of CONF.expanded_formats
 */
const EXPANDED_FORMAT default_expanded_formats[] = {
    {"html", 0},
    {"docbook", 0},
    {"plaintext", 0},
    {"tex", 0},
    {"xml", 0},
    {"info", 0},
    {"latex", 0},
};

/* special output units global directions are not there, they are
   determined from perl dynamically */
const char *html_button_direction_names[] = {
  #define hgdt_name(name) #name,
   HTML_GLOBAL_DIRECTIONS_LIST
  #undef hgdt_name
  #define rud_type(name) #name,
   RUD_DIRECTIONS_TYPES_LIST
   RUD_FILE_DIRECTIONS_TYPES
  #undef rud_type
  #define rud_type(name) "FirstInFile" #name,
   RUD_DIRECTIONS_TYPES_LIST
  #undef rud_type
};

/* keep in sync with enum html_text_type */
char *html_command_text_type_name[] = {
  "text", "text_nonumber", "string", "string_nonumber",
  "href", "node", "section", "section_nonumber"
};

/* wrapper for asprintf */
int
xasprintf (char **ptr, const char *template, ...)
{
  int ret;
  va_list v;
  va_start (v, template);
  ret = xvasprintf (ptr, template, v);
  va_end (v);
  return ret;
}



/* Setup global information that is not specific of Texinfo.
   Should be called once and early */
void
messages_and_encodings_setup (void)
{
#ifdef ENABLE_NLS

  setlocale (LC_ALL, "");

  /* Note: this uses the installed translations even when running an
     uninstalled program. */
  bindtextdomain (PACKAGE_CONFIG, LOCALEDIR);

  textdomain (PACKAGE_CONFIG);
#else

#endif

  /* do that before any other call to get_encoding_conversion with
   &output_conversions, otherwise the utf-8 conversion will never
   be initialized.  Same for &input_conversions.
  */
  get_encoding_conversion ("utf-8", &output_conversions);
  get_encoding_conversion ("utf-8", &input_conversions);
}



/* Here to avoid an include in structuring transfo by the caller */

enum structuring_commands_categories {
  SCMC_section,
  SCMC_unnumbered,
  SCMC_appendix,
  SCMC_heading
};

static enum command_id
   const structuring_commands_levels[SCMC_heading +1][SECTION_LEVEL_NR] = {
{CM_NONE, CM_chapter, CM_section, CM_subsection, CM_subsubsection, },
{CM_top, CM_unnumbered, CM_unnumberedsec, CM_unnumberedsubsec, CM_unnumberedsubsubsec, },
{CM_NONE, CM_appendix, CM_appendixsec, CM_appendixsubsec, CM_appendixsubsubsec, },
{CM_NONE, CM_chapheading, CM_heading, CM_subheading, CM_subsubheading, },
};

enum command_id
  level_to_structuring_command[BUILTIN_CMD_NUMBER][SECTION_LEVEL_NR];

void
setup_structuring_data (void)
{
  enum command_id i;

  memset (&level_to_structuring_command, 0, BUILTIN_CMD_NUMBER
          * SECTION_LEVEL_NR * sizeof (enum command_id));
  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      if (builtin_command_data[i].flags & CF_sectioning_heading)
        {
          enum structuring_commands_categories category;

          /* no mapping for part, it is outside of the main hierarchy */
          if (i == CM_part)
            continue;

          /* set category for synonyms */
          if (i == CM_appendixsection)
            category = SCMC_appendix;
          else if (i == CM_majorheading)
            category = SCMC_heading;
          else if (i == CM_centerchap)
            category = SCMC_unnumbered;
          else
            {/* find in the default levels */
              int found = 0;
              enum structuring_commands_categories j;
              for (j = 0; j < SCMC_heading +1; j++)
                {
                  int k;
                  for (k = 0; k < SECTION_LEVEL_NR; k++)
                    {
                      if (structuring_commands_levels[j][k] == i)
                        {
                          category = j;
                          found = 1;
                          break;
                        }
                    }
                  if (found)
                    break;
                }
              if (!found)
                bug ("structuring_commands_levels command not found");
            }
          memcpy (level_to_structuring_command[i],
                  structuring_commands_levels[category],
                  SECTION_LEVEL_NR * sizeof (enum command_id));
        }
    }
}



/* operations on strings considered as multibytes.  Use libunistring */

/* count characters, not bytes. */
size_t
count_multibyte (const char *text)
{
  uint8_t *u8_text = utf8_from_string (text);
  size_t result = u8_mbsnlen (u8_text, u8_strlen (u8_text));

  free (u8_text);

  return result;
}

char *
to_upper_or_lower_multibyte (const char *text, int lower_or_upper)
{
  char *result;
  size_t lengthp;
  uint8_t *u8_result;
  uint8_t *u8_text = utf8_from_string (text);
  if (lower_or_upper > 0)
    /* the + 1 is there to hold the terminating NULL */
    u8_result = u8_toupper (u8_text, u8_strlen (u8_text) + 1,
                            NULL, NULL, NULL, &lengthp);
  else
    u8_result = u8_tolower (u8_text, u8_strlen (u8_text) + 1,
                            NULL, NULL, NULL, &lengthp);

  free (u8_text);
  result = string_from_utf8 (u8_result);
  free (u8_result);
  return result;
}

int
width_multibyte (const char *text)
{
  int result;
  uint8_t *u8_text = utf8_from_string (text);
  /* NOTE the libunistring documentation described encoding as
     The encoding argument identifies the encoding (e.g. "ISO-8859-2"
     for Polish).  Looking at the code, it seems that it is only
     used to determine if it is a CJK encoding in a list of upper-case
     encodings.  We probably do not want to have this dependency to
     encoding, so use UTF-8. */
  result = u8_strwidth (u8_text, "UTF-8");
  free (u8_text);
  return result;
}

/* length of next word in multibyte setting.  Should correspond to \w or
   \p{Word} in perl */
int
word_bytes_len_multibyte (const char *text)
{
  uint8_t *encoded_u8 = utf8_from_string (text);
  uint8_t *current_u8 = encoded_u8;
  int len = 0;
  while (1)
    {
      ucs4_t next_char;
      int new_len = u8_strmbtouc (&next_char, current_u8);
      if (!new_len)
        {
          break;
        }
      /* Nd: Number, decimal digit
         M: Mark
         Pc: Punctuation, connector
       */
      /* (\p{Alnum} = \p{Alphabetic} + \p{Nd}) + \pM + \p{Pc}
                                              + \p{Join_Control} */
      if (uc_is_general_category (next_char, UC_CATEGORY_M)
          || uc_is_general_category (next_char, UC_CATEGORY_Nd)
          || uc_is_property (next_char, UC_PROPERTY_ALPHABETIC)
          || uc_is_property (next_char, UC_PROPERTY_JOIN_CONTROL))
        {
          len += new_len;
          current_u8 += new_len;
        }
      else
        {
          break;
        }
    }
  free (encoded_u8);
  return len;
}



/* encoding and decoding. Use iconv. */

/* conversion to or from utf-8 should always be set before other
   conversion */
ENCODING_CONVERSION *
get_encoding_conversion (const char *encoding,
                         ENCODING_CONVERSION_LIST *encodings_list)
{
  const char *conversion_encoding = encoding;
  size_t encoding_nr = 0;
  size_t encoding_index = 0;
  int utf8_missing = 0;

  /* should correspond to
     Texinfo::Common::encoding_name_conversion_map.
     Thoughts on this mapping are available near
     Texinfo::Common::encoding_name_conversion_map definition
  */
  if (!strcasecmp (encoding, "us-ascii"))
    conversion_encoding = "iso-8859-1";

  if (!strcasecmp (encoding, "utf-8"))
    {
      if (encodings_list->number > 0)
        encoding_nr = 1;
      else
        utf8_missing = 1;
    }
  else if (encodings_list->number > 1)
    {
      size_t i;
      for (i = 1; i < encodings_list->number; i++)
        {
          if (!strcasecmp (conversion_encoding,
                           encodings_list->list[i].encoding_name))
            {
              encoding_nr = i+1;
              break;
            }
        }
    }

  if (encoding_nr == 0)
    {
      if (encodings_list->number == 0)
        encodings_list->number++;

      if (!utf8_missing) /* !utf-8 */
        {
          encoding_index = encodings_list->number;
          encodings_list->number++;
        }

      if (encodings_list->number - 1 >= encodings_list->space)
        {
          encodings_list->list = realloc (encodings_list->list,
              (encodings_list->space += 3) * sizeof (ENCODING_CONVERSION));
        }
      encodings_list->list[encoding_index].encoding_name
           = strdup (conversion_encoding);
      /* Initialize conversions for the first time.  iconv_open returns
         (iconv_t) -1 on failure so these should only be called once. */
      if (encodings_list->direction > 0)
        encodings_list->list[encoding_index].iconv
           = iconv_open ("UTF-8", conversion_encoding);
      else
        encodings_list->list[encoding_index].iconv
           = iconv_open (conversion_encoding, "UTF-8");
    }
  else
   encoding_index = encoding_nr - 1;

  if (encodings_list->list[encoding_index].iconv == (iconv_t) -1)
    return 0;
  else
    /* NOTE this will change when the list is reallocated.
       This seems ok for the uses in convert_utils.c.
       Should be ok too for parser, as there is one current encoding
       at a time, the new current encoding is obtained after realloc.
     */
    return &encodings_list->list[encoding_index];
}

void
reset_encoding_list (ENCODING_CONVERSION_LIST *encodings_list)
{
  size_t i;
  /* never reset the utf-8 encoding in position 0 */
  if (encodings_list->number > 1)
    {
      for (i = 1; i < encodings_list->number; i++)
        {
          free (encodings_list->list[i].encoding_name);
          if (encodings_list->list[i].iconv != (iconv_t) -1)
            iconv_close (encodings_list->list[i].iconv);
        }
      encodings_list->number = 1;
    }
}

/* Run iconv using text buffer as output buffer. */
size_t
text_buffer_iconv (TEXT *buf, iconv_t iconv_state,
                   ICONV_CONST char **inbuf, size_t *inbytesleft)
{
  size_t out_bytes_left;
  char *outptr;
  size_t iconv_ret;

  outptr = buf->text + buf->end;
  if (buf->end == buf->space - 1)
    {
      errno = E2BIG;
      return (size_t) -1;
    }
  out_bytes_left = buf->space - buf->end - 1;
  iconv_ret = iconv (iconv_state, inbuf, inbytesleft,
                     &outptr, &out_bytes_left);

  buf->end = outptr - buf->text;

  return iconv_ret;
}

char *
encode_with_iconv (iconv_t our_iconv, char *s,
                   const SOURCE_INFO *source_info)
{
  static TEXT t;
  ICONV_CONST char *inptr; size_t bytes_left;
  size_t iconv_ret;

  t.end = 0; /* reset internal TEXT buffer */
  inptr = s;
  bytes_left = strlen (s);
  text_alloc (&t, 10);

  while (1)
    {
      iconv_ret = text_buffer_iconv (&t, our_iconv,
                                     &inptr, &bytes_left);

      /* Make sure libiconv flushes out the last converted character.
         This is required when the conversion is stateful, in which
         case libiconv might not output the last character, waiting to
         see whether it should be combined with the next one.  */
      if (iconv_ret != (size_t) -1
          && text_buffer_iconv (&t, our_iconv, 0, 0) != (size_t) -1)
        /* Success: all of input converted. */
        break;

      if (bytes_left == 0)
        break;

      switch (errno)
        {
        case E2BIG:
          text_alloc (&t, t.space + 20);
          break;
        case EILSEQ:
        default:
          if (source_info)
            fprintf (stderr, "%s:%d: C:encoding error at byte 0x%02x\n",
              source_info->file_name, source_info->line_nr,
                                             *(unsigned char *)inptr);
          else
            fprintf (stderr, "C:encoding error at byte 0x%02x\n",
                    *(unsigned char *)inptr);
          inptr++; bytes_left--;
          break;
        }
    }

  t.text[t.end] = '\0';
  return strdup (t.text);
}

/* NOTE INPUT_STRING should not be modified by iconv, but it cannot be marked
   as const if the iconv call does not have a const in prototype */
/* Return value to be freed by the caller */
char *
decode_string (char *input_string, const char *encoding, int *status,
               const SOURCE_INFO *source_info)
{
  char *result;
  *status = 0;
  /* not sure this can happen */
  if (!encoding)
    return strdup (input_string);

  ENCODING_CONVERSION *conversion
    = get_encoding_conversion (encoding, &input_conversions);

  if (!conversion)
    return strdup (input_string);

  *status = 1;

  result = encode_with_iconv (conversion->iconv, input_string, source_info);
  return result;
}

char *
encode_string (char *input_string, const char *encoding, int *status,
               const SOURCE_INFO *source_info)
{
  char *result;
  *status = 0;
  /* could happen in specific cases, such as, for file names,
     DOC_ENCODING_FOR_INPUT_FILE_NAME set to 0 and no locales encoding
     information */
  if (!encoding)
    return strdup (input_string);

  ENCODING_CONVERSION *conversion
    = get_encoding_conversion (encoding, &output_conversions);

  if (!conversion)
    return strdup (input_string);

  *status = 1;

  result = encode_with_iconv (conversion->iconv, input_string, source_info);
  return result;
}



/* code related to the EXPANDED_FORMAT structure holding informations on the
   expanded formats (html, info, tex...) */

void
clear_expanded_formats (EXPANDED_FORMAT *formats)
{
  size_t i;
  for (i = 0; i < sizeof (default_expanded_formats)
                            / sizeof (*default_expanded_formats);
       i++)
    {
      formats[i].expandedp = 0;
    }
}

void
add_expanded_format (EXPANDED_FORMAT *formats, const char *format)
{
  size_t i;
  for (i = 0; i < sizeof (default_expanded_formats)
                      / sizeof (*default_expanded_formats);
       i++)
    {
      if (!strcmp (format, formats[i].format))
        {
          formats[i].expandedp = 1;
          break;
        }
    }
  if (!strcmp (format, "plaintext"))
    add_expanded_format (formats, "info");
}

EXPANDED_FORMAT *
new_expanded_formats (void)
{
  EXPANDED_FORMAT *formats
     = (EXPANDED_FORMAT *) malloc (sizeof (default_expanded_formats));
  memcpy (formats, default_expanded_formats, sizeof (default_expanded_formats));

  return formats;
}

int
format_expanded_p (const EXPANDED_FORMAT *formats, const char *format)
{
  size_t i;
  for (i = 0; i < sizeof (default_expanded_formats)
                           / sizeof (*default_expanded_formats);
       i++)
    {
      if (!strcmp (format, formats[i].format))
        return formats[i].expandedp;
    }
  return 0;
}

size_t
expanded_formats_number (void)
{
  return sizeof (default_expanded_formats)
                          / sizeof (*default_expanded_formats);
}

void
set_expanded_formats_from_options (EXPANDED_FORMAT *formats,
                                   const OPTIONS *options)
{
  if (options->EXPANDED_FORMATS.o.strlist
      && (options->EXPANDED_FORMATS.o.strlist->number))
    {
      size_t i;
      for (i = 0; i < options->EXPANDED_FORMATS.o.strlist->number; i++)
        {
          add_expanded_format (formats,
                               options->EXPANDED_FORMATS.o.strlist->list[i]);
        }
    }
}



void
add_translated_command (TRANSLATED_COMMAND_LIST *translated_commands,
                        enum command_id cmd,
                        const char *translation)
{
  TRANSLATED_COMMAND *translated_command;
  if (translated_commands->number >= translated_commands->space)
    {
      translated_commands->space += 5;
      translated_commands->list
         = realloc (translated_commands->list,
                    translated_commands->space * sizeof (TRANSLATED_COMMAND));
      if (!translated_commands->list)
        fatal ("realloc failed");
    }
  translated_command = &translated_commands->list[translated_commands->number];
  translated_command->cmd = cmd;
  translated_command->translation = strdup (translation);

  translated_commands->number++;
}

void
clear_translated_commands (TRANSLATED_COMMAND_LIST *translated_commands)
{
  size_t i;

  for (i = 0; i < translated_commands->number; i++)
    {
      free (translated_commands->list[i].translation);
    }
  translated_commands->number = 0;
}

void
free_translated_commands (TRANSLATED_COMMAND_LIST *translated_commands)
{
  clear_translated_commands (translated_commands);
  free (translated_commands->list);
}

void
copy_translated_commands (TRANSLATED_COMMAND_LIST *dst_translated_commands,
                    const TRANSLATED_COMMAND_LIST *translated_commands)
{
  size_t i;

  for (i = 0; i < translated_commands->number; i++)
    {
      const TRANSLATED_COMMAND *reference_translated_command
            = &translated_commands->list[i];

      add_translated_command (dst_translated_commands,
                              reference_translated_command->cmd,
                              reference_translated_command->translation);
    }
}



/* in Texinfo::Convert::Utils in Perl.  Most of the API is in convert_utils.c,
   this is here to be used in C code used in XS interfaces */

/* not used a lot, as in general the OUTPUT_FILES_INFORMATION is not allocated
   as a pointer, used in XS interfaces code */

OUTPUT_FILES_INFORMATION *
new_output_files_information (void)
{
  OUTPUT_FILES_INFORMATION *result = (OUTPUT_FILES_INFORMATION *)
     malloc (sizeof (OUTPUT_FILES_INFORMATION));
  memset (result, 0, sizeof (OUTPUT_FILES_INFORMATION));
  return result;
}

FILE_STREAM *
allocate_file_stream (OUTPUT_FILES_INFORMATION *self, const char *file_path)
{
  size_t file_stream_index;
  if (self->unclosed_files.number == self->unclosed_files.space)
    {
      self->unclosed_files.list = realloc (self->unclosed_files.list,
         (self->unclosed_files.space += 5) * sizeof (FILE_STREAM));
    }
  file_stream_index = self->unclosed_files.number;

  memset (&self->unclosed_files.list[file_stream_index], 0,
          sizeof (FILE_STREAM));
  self->unclosed_files.list[file_stream_index].file_path = strdup (file_path);

  self->unclosed_files.number++;

  return &self->unclosed_files.list[file_stream_index];
}



/* Create a new element based on type name and command name.

   The function accepts both
   - giving types to most elements like in C code
   - empty types for most @-command elements and normal text as in Perl.
     Since an empty type can correspond both to normal text and to
     a container without type, IS_TEXT_ELEMENT should be set with
     an empty type to get normal text.  The preferred mode of operation
     to have consistent Texinfo tree description in high-level languages.
   The distinction between @item as line command in @table and @item in
   other context cannot be done with the name only, so @item as line
   command in @table should be specified with the item_LINE command name,
   as in C code.

   Should only be needed for interfaces to other languages.
 */
ELEMENT *
new_element_from_names (const char *type_name, const char *command_name,
                        int is_text_element)
{
  enum element_type e_type = ET_NONE;

  if (type_name && strlen(type_name))
    {
      e_type = find_element_type ((char *)type_name);
      /* unknown type */
      if (e_type == ET_NONE)
        return 0;
    }

  if ((is_text_element && e_type == ET_NONE)
      || type_data[e_type].flags & TF_text)
    {
      if (command_name && strlen (command_name))
        return 0;

      if (e_type == ET_NONE)
        e_type = ET_normal_text;

      return new_text_element (e_type);
    }

  if (command_name && strlen (command_name))
    {
      enum command_id cmd;

      if (type_data[e_type].flags & TF_with_command)
        {
          ELEMENT *e = new_command_element (e_type, CM_NONE);
          e->e.c->string_info[sit_command_name] = strdup (command_name);
          return e;
        }

      cmd = lookup_builtin_command (command_name);

      /* unknown command */
      if (cmd == CM_NONE)
        return 0;

      /* determines the type of the command */
      if (e_type == ET_NONE)
        {
          if (builtin_command_data[cmd].flags & CF_nobrace)
            e_type = ET_nobrace_command;
          else if (builtin_command_data[cmd].flags & CF_line)
            e_type = ET_line_command;
          else if (builtin_command_data[cmd].flags & CF_block)
            e_type = ET_block_command;
          else if (builtin_command_data[cmd].flags &
                                            (CF_brace | CF_accent))
            {
              if (builtin_command_data[cmd].data == BRACE_context)
                e_type = ET_context_brace_command;
              else
                e_type = ET_brace_command;
            }
        }
      return new_command_element (e_type, cmd);
    }

  return new_element (e_type);
}

/* Return the parent if in an item_line command, @*table */
ELEMENT *
item_line_parent (ELEMENT *current)
{
  enum command_id cmd;

  if (current->type == ET_before_item && current->e.c->parent)
    current = current->e.c->parent;

  /* this code handles current being a user defined command even tough
     it is not clear that it may happen */
  cmd = element_builtin_cmd (current);
  if (cmd == CM_table
      || cmd == CM_ftable
      || cmd == CM_vtable)
    return current;

  return 0;
}

/* The caller should take care not to call get_label_element on a text
   element */
ELEMENT *
get_label_element (const ELEMENT *e)
{
  if (e->e.c->cmd == CM_node)
    /* first content of arguments_line type element */
    return e->e.c->contents.list[0]->e.c->contents.list[0];
  else if ((e->e.c->cmd == CM_anchor || e->e.c->cmd == CM_namedanchor)
           && e->e.c->contents.number > 0)
    return e->e.c->contents.list[0];
  else if (e->e.c->cmd == CM_float
           && e->e.c->contents.list[0]->e.c->contents.number >= 2)
    /* second content of arguments_line, ie second argument on line */
    return e->e.c->contents.list[0]->e.c->contents.list[1];
  return 0;
}


/* index related code used both in parsing and conversion */
/* NAME is the name of an index, e.g. "cp" */
INDEX *
indices_info_index_by_name (const INDEX_LIST *indices_information,
                            const char *name)
{
  size_t i;

  for (i = 0; i < indices_information->number; i++)
    {
      INDEX *idx = indices_information->list[i];
      if (!strcmp (idx->name, name))
        return idx;
    }
  return 0;
}

INDEX *
ultimate_index (INDEX *index)
{
  while (index->merged_in)
    index = index->merged_in;
  return index;
}

/* in Common.pm */
INDEX_ENTRY_AND_INDEX *
lookup_index_entry (const INDEX_ENTRY_LOCATION *index_entry_info,
                    const INDEX_LIST *indices_info)
{
  INDEX_ENTRY_AND_INDEX *result = 0;
  size_t entry_number = index_entry_info->number;
  const char *entry_index_name = index_entry_info->index_name;
  INDEX *index_info;

  index_info = indices_info_index_by_name (indices_info,
                                           entry_index_name);
  if (!index_info)
    return 0;

  result = (INDEX_ENTRY_AND_INDEX *) malloc (sizeof (INDEX_ENTRY_AND_INDEX));
  result->index = index_info;
  result->entry_number = entry_number;
  result->index_entry = 0;
  if (index_info->entries_number && entry_number <= index_info->entries_number)
    {
      result->index_entry = &index_info->index_entries[entry_number -1];
    }
  return result;
}

/* only used in conversion, on sorted indices names */
/* A linear search is probably ok, as the number of
   indices should always be small.  If needed a bsearch
   could also be implemented. */
size_t
index_number_index_by_name (const SORTED_INDEX_NAMES *sorted_indices,
                            const char *name)
{
  size_t i;

  for (i = 0; i < sorted_indices->number; i++)
    {
      if (!strcmp (sorted_indices->list[i]->name, name))
        return i+1;
    }
  return 0;
}



typedef struct STRING_AND_LEN {
    const char *string;
    int len;
} STRING_AND_LEN;

/* in perl there is also .tx matched, but it is incorrect */
static const STRING_AND_LEN texinfo_extensions[5] = {
  {".texi", 5},
  {".texinfo", 8},
  {".txinfo", 7},
  {".txi", 4},
  {".tex", 4}
};

/* similar to s/\.te?x(i|info)?$// in Perl */
char *
texinfo_input_file_basename (const char *input_basefile)
{
  char *input_basename;

  int i;
  int basefile_len = strlen (input_basefile);
  for (i = 0; i < 5; i++)
    {
      int len = texinfo_extensions[i].len;
      if (basefile_len >= len
          && !memcmp (input_basefile + basefile_len - len,
                      texinfo_extensions[i].string, len))
        {
          input_basename = strndup (input_basefile,
                                    basefile_len - len);
          return input_basename;
        }
    }

  input_basename = strdup (input_basefile);

  return input_basename;
}

/* result to be freed */
char *
remove_extension (const char *input_string)
{
  char *result;
  const char *p = strchr (input_string, '.');
  if (p)
    {
      while (1)
        {
          const char *q = strchr (p + 1, '.');
          if (q)
            p = q;
          else
            break;
        }
      result = strndup (input_string, p - input_string);
    }
  else result = strdup (input_string);

  return result;
}

/* try to do at least part of what File::Spec->canonpath does to have
   tests passing */
char *
canonpath (const char *input_file)
{
  TEXT result;
  const char *p = strpbrk (input_file, FILE_SLASH);

  if (p)
    {
      text_init (&result);
      text_append_n (&result, input_file, p - input_file);
      while (1)
        {
          const char *q = p;
          p++;
          while (IS_SLASH(*p))
            p++;
          /* omit a / at the end of the path */
          if (!*p)
            return (result.text);
          text_append_n (&result, q, 1);
          q = strpbrk (p, FILE_SLASH);
          if (q)
            {
              text_append_n (&result, p, q - p);
              p = q;
            }
          else
            {
              text_append (&result, p);
              return (result.text);
            }
        }
    }
  else
    return strdup (input_file);
}

/* text parsing functions used in diverse situations */
/* Determine if there is a name used for @set, @value and translations
   arguments and its length. */
size_t
read_flag_len (const char *text)
{
  const char *p = text, *q;

  q = p;
  if (!isascii_alnum (*q) && *q != '-' && *q != '_')
    return 0; /* Invalid. */

  while (!strchr (whitespace_chars, *q)
         && !strchr ("{\\}~`^+\"<>|@", *q))
    q++;

  return q - p;
}

/* s/\s+/ /g with re => '/a' in perl */
char *
collapse_spaces (const char *text)
{
  TEXT result;
  const char *p = text;

  if (!text)
    return 0;

  text_init (&result);
  text_append (&result, "");

  while (*p)
    {
      int n = strcspn (p, whitespace_chars);
      if (n)
        {
          text_append_n (&result, p, n);
          p += n;
        }
      if (*p)
        {
          int n = strspn (p, whitespace_chars);
          if (n)
            {
              text_append (&result, " ");
              p += n;
            }
        }
    }
  return result.text;
}

/* Parse a #line directive.
   The filename of the line directive is returned.
   The line number value is in OUT_LINE_NO.
   RETVAL value is 1 for valid line directive, 0 otherwise.
*/
char *
parse_line_directive (const char *line, int *retval, int *out_line_no)
{
  const char *p = line;
  const char *q;
  char *digit_end;
  char *filename = 0;
  int line_no = 0;

  *out_line_no = 0;
  *retval = 0;

  p += strspn (p, " \t");
  if (*p != '#')
    return 0;
  p++;

  q = p + strspn (p, " \t");
  if (!memcmp (q, "line", strlen ("line")))
    p = q + strlen ("line");

  if (!strchr (" \t", *p))
    return 0;
  p += strspn (p, " \t");

  /* p should now be at the line number */
  if (!strchr (digit_chars, *p))
    return 0;
  line_no = strtoul (p, &digit_end, 10);
  p += (digit_end - p);

  p += strspn (p, " \t");
  if (*p == '"')
    {
      p++;
      q = strchr (p, '"');
      if (!q)
        return 0;
      filename = strndup (p, q - p);
      p = q + 1;
      p += strspn (p, " \t");

      p += strspn (p, digit_chars);
      p += strspn (p, " \t");
    }
  if (*p && *p != '\n')
    {
      free (filename);
      return 0; /* trailing text on line */
    }

  *retval = 1;
  *out_line_no = line_no;

  return filename;
}

/* return should be freed by the caller */
char *
normalize_encoding_name (const char *text, int *possible_encoding)
{
  const char *p;
  char *normalized_text = strdup (text);
  char *q = normalized_text;
  *possible_encoding = 0;
    /* lower case, trim non-ascii characters and keep only alphanumeric
       characters, - and _.  iconv also seems to trim non alphanumeric
       non - _ characters */
  for (p = text; *p; p++)
    {
      /* check if ascii and alphanumeric */
      if (isascii_alnum (*p))
        {
          *possible_encoding = 1;
          *q = tolower (*p);
          q++;
        }
      else if (*p == '_' || *p == '-')
        {
          *q = *p;
          q++;
        }
    }
  *q = '\0';
  return normalized_text;
}

/* RESULT should be an array of size two.  Upon return, it holds
   the file name in the first position and directory, if any, in
   the second position.  The file name and directory should be
   freed.
 */
void
parse_file_path (const char *input_file_path, char **result)
{
  /* Strip off a leading directory path, by looking for the last
     '/' in input_file_path. */
  const char *p = 0;
  const char *q = strpbrk (input_file_path, FILE_SLASH);

  while (q)
    {
      p = q;
      q = strpbrk (q + 1, FILE_SLASH);
    }

  if (p)
    {
      result[0] = strdup (p + 1);
      result[1] = strndup (input_file_path, (p - input_file_path) + 1);
    }
  else
    {
      result[0] = strdup (input_file_path);
      result[1] = 0;
    }
}

/* RESULT should be an array of size three.  Upon return, it holds
   the volume, if any, in the first position, the directory, if any, in
   the second position and the file name in the third position.
   The volume, directory and file name should be freed.
 */
void
splitpath (const char *input_file_path, char **result)
{
  const char *s;
  char *file_name_and_directory[2];

  /* determine the volume */
  if (HAVE_DRIVE (input_file_path))
    {
      result[0] = strndup (input_file_path, 2);
      s = input_file_path +2;
    }
  else
    {
      result[0] = 0;
      s = input_file_path;
    }

  parse_file_path (s, file_name_and_directory);
  result[2] = file_name_and_directory[0];
  result[1] = file_name_and_directory[1];
}

/* Check validity of TEXT as @documentlanguage argument.

   Return the language code part of the argument.
   The remaining arguments are also used to pass results:
   - REGION_CODE_OUT: address of a region code if there is one
   - VALID_LANG: associated value is set to 0 if invalid
   - VALID_REGION: associated value is set to 0 if invalid.
 */
char *
analyze_documentlanguage_argument (const char *text,
                                   const char **region_code_out,
                                   int *valid_lang, int *valid_region)
{
  const char *p;
  char *lang = 0;
  const char *region_code = 0;
  *valid_region = 1;
  *valid_lang = 1;

  /* Determine if the language code is in the form ll_CC,
     language code followed by country code. */
  p = text;
  while (isascii_alpha (*p) && isascii_lower (*p))
    p++;
  if (p > text && *p == '_')
    {
      const char *lang_end = p;
      p++;
      while (isascii_alpha (*p) && isascii_upper (*p))
        p++;
      if (!*p && p > lang_end + 2)
        {
          region_code = lang_end +1;
          *region_code_out = region_code;
          lang = strndup (text, lang_end - text);
        }
    }
  /* No country code */
  if (!lang)
    lang = strdup (text);

  if (!txi_in_language_codes (lang, strlen (lang)))
    *valid_lang = 0;

  if (region_code && !txi_in_language_regions (region_code,
                                             strlen (region_code)))
     *valid_region = 0;

  return lang;
}


/* index related functions used in diverse situations, not only in parser */
void
wipe_index (INDEX *idx)
{
  free (idx->name);
  free (idx->index_entries);
}

void
free_indices_info (INDEX_LIST *indices_info)
{
  size_t i;
  for (i = 0; i < indices_info->number; i++)
    {
      INDEX *idx = indices_info->list[i];
      wipe_index (idx);
      free (idx);
    }
  free (indices_info->list);
}



/* association of number and name, mainly used to sort according to names
   and get an associated index in an array */

/* note that there is no initialization, as in general the whole
   list is set by the caller */
void
allocate_name_number_list (NAME_NUMBER_LIST *name_number_list,
                           size_t number)
{
  name_number_list->number = number;
  free (name_number_list->list);
  name_number_list->list = (NAME_NUMBER *)
                    malloc (number * sizeof (NAME_NUMBER));
}

static int
compare_name_number (const void *a, const void *b)
{
  const NAME_NUMBER *nn_a = (const NAME_NUMBER *) a;
  const NAME_NUMBER *nn_b = (const NAME_NUMBER *) b;

  return strcmp (nn_a->name, nn_b->name);
}

size_t
find_name_number (const NAME_NUMBER_LIST *name_number,
                  const char *name)
{
  NAME_NUMBER *result = 0;
  static NAME_NUMBER searched_name;

  searched_name.name = name;
  if (name_number->number == 0)
    {
      char *msg;
      xasprintf (&msg, "no names, searching for '%s'\n", name);
      fatal (msg);
      free (msg);
    }

  result = (NAME_NUMBER *) bsearch (&searched_name,
                name_number->list,
                name_number->number, sizeof (NAME_NUMBER),
                compare_name_number);
  if (!result)
    return 0;
  return result->number;
}

void
sort_name_number_list (NAME_NUMBER_LIST *name_number_list)
{
  qsort (name_number_list->list, name_number_list->number,
         sizeof (NAME_NUMBER), compare_name_number);
}

void
free_name_number_list (NAME_NUMBER_LIST *name_number_list)
{
  free (name_number_list->list);
  memset (name_number_list, 0, sizeof (NAME_NUMBER_LIST));
}



/* string lists */

STRING_LIST *
new_string_list (void)
{
  STRING_LIST *result = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (result, 0, sizeof (STRING_LIST));

  return result;
}

/* include directories and include file */

void
add_include_directory (const char *input_filename,
                       STRING_LIST *include_dirs_list)
{
  int len;
  char *filename = strdup (input_filename);
  len = strlen (filename);
  if (len > 0 && IS_SLASH(filename[len - 1]))
    filename[len - 1] = '\0';
  add_string (filename, include_dirs_list);
  free (filename);
}

char *
add_string (const char *string, STRING_LIST *strings_list)
{
  char *result;
  if (strings_list->number == strings_list->space)
    {
      strings_list->list = realloc (strings_list->list,
                   sizeof (char *) * (strings_list->space += 5));
    }
  strings_list->list[strings_list->number] = strdup (string);
  result = strings_list->list[strings_list->number];
  strings_list->number++;
  return result;
}

void
remove_from_strings_list (STRING_LIST *strings_list, size_t where)
{
  if (where > strings_list->number -1)
    fatal ("string list index out of bounds");

  free (strings_list->list[where]);

  if (where < strings_list->number - 1)
    memmove (&strings_list->list[where], &strings_list->list[where + 1],
             (strings_list->number - (where+1)) * sizeof (char *));
  strings_list->number--;
}

void
merge_strings (STRING_LIST *strings_list, const STRING_LIST *merged_strings)
{
  size_t i;
  if (strings_list->number + merged_strings->number > strings_list->space)
    {
      strings_list->space = strings_list->number + merged_strings->number +5;
      strings_list->list = realloc (strings_list->list,
                                  sizeof (char *) * strings_list->space);
    }
  for (i = 0; i < merged_strings->number; i++)
    {
      strings_list->list[strings_list->number +i] = merged_strings->list[i];
    }
  strings_list->number += merged_strings->number;
}

void
copy_strings (STRING_LIST *dest_list, const STRING_LIST *source_list)
{
  size_t i;
  if (dest_list->number + source_list->number > dest_list->space)
    {
      dest_list->space = dest_list->number + source_list->number +5;
      dest_list->list = realloc (dest_list->list,
                                  sizeof (char *) * dest_list->space);
    }
  for (i = 0; i < source_list->number; i++)
    {
      add_string (source_list->list[i], dest_list);
    }
}

/* return the index +1, to return 0 if not found */
size_t
find_string (const STRING_LIST *strings_list, const char *target)
{
  size_t j;
  for (j = 0; j < strings_list->number; j++)
    {
      if (!strcmp (target, strings_list->list[j]))
        {
          return j+1;
        }
    }
  return 0;
}

void
clear_strings_list (STRING_LIST *strings)
{
  size_t i;
  for (i = 0; i < strings->number; i++)
    {
      free (strings->list[i]);
    }
  strings->number = 0;
}

void
free_strings_list (STRING_LIST *strings)
{
  size_t i;
  for (i = 0; i < strings->number; i++)
    {
      free (strings->list[i]);
    }
  free (strings->list);
}

void
destroy_strings_list (STRING_LIST *strings)
{
  free_strings_list (strings);
  free (strings);
}

static int
compare_strings (const void *a, const void *b)
{
  const char **str_a = (const char **) a;
  const char **str_b = (const char **) b;

  return strcmp (*str_a, *str_b);
}

void
sort_strings_list (STRING_LIST *strings)
{
  qsort (strings->list, strings->number,
         sizeof (char **), compare_strings);
}

int
string_exists_in_sorted_strings_list (STRING_LIST *strings, const char *target)
{
  char **result = (char **) bsearch (&target, strings->list, strings->number,
                                     sizeof (char **), compare_strings);

  if (result)
    return 1;
  else
    return 0;
}

/* for debugging */
char *
join_strings_list (STRING_LIST *strings)
{
  size_t i;
  TEXT text;

  text_init (&text);
  text_append (&text, "");

  for (i = 0; i < strings->number; i++)
    {
      if (i != 0)
        text_append_n (&text, "|", 1);
      text_append (&text, strings->list[i]);
    }

  /*
  fprintf (stderr, "%s\n", text.text);
   */
  return text.text;
}



int
file_name_is_absolute (const char *filename)
{
  return IS_ABSOLUTE(filename);
}

DEPRECATED_DIR_INFO *
find_deprecated_dir_info (const DEPRECATED_DIRS_LIST *deprecated_dirs,
                          const char *directory_name)
{
  size_t i;
  for (i = 0; i < deprecated_dirs->number; i++)
    {
      DEPRECATED_DIR_INFO *result = &deprecated_dirs->list[i];
      if (!strcmp (result->obsolete_dir, directory_name))
        return result;
    }
  return 0;
}

void
add_deprecated_dir_info (DEPRECATED_DIRS_LIST *deprecated_dirs,
                         const DEPRECATED_DIR_INFO *deprecated_dir_info)
{
  DEPRECATED_DIR_INFO *found_deprecated_dir_info
    = find_deprecated_dir_info (deprecated_dirs,
                                deprecated_dir_info->obsolete_dir);

  if (found_deprecated_dir_info)
    {
      free (found_deprecated_dir_info->reference_dir);
      found_deprecated_dir_info->reference_dir
        = strdup (deprecated_dir_info->reference_dir);
    }
  else
    {
      if (deprecated_dirs->number >= deprecated_dirs->space)
        {
          deprecated_dirs->list
            = realloc (deprecated_dirs->list,
               (deprecated_dirs->space += 5) * sizeof (DEPRECATED_DIR_INFO));
        }
      deprecated_dirs->list[deprecated_dirs->number].obsolete_dir
        = strdup (deprecated_dir_info->obsolete_dir);
      deprecated_dirs->list[deprecated_dirs->number].reference_dir
        = strdup (deprecated_dir_info->reference_dir);
      deprecated_dirs->number++;
    }
}

void
copy_deprecated_dirs (DEPRECATED_DIRS_LIST *deprecated_dirs_dst,
                      const DEPRECATED_DIRS_LIST *deprecated_dirs_src)
{
  size_t i;
  for (i = 0; i < deprecated_dirs_src->number; i++)
    {
      add_deprecated_dir_info (deprecated_dirs_dst,
                               &deprecated_dirs_src->list[i]);
    }
}

void
add_new_deprecated_dir_info (DEPRECATED_DIRS_LIST *deprecated_dirs,
                             const char *obsolete_dir,
                             const char *reference_dir)
{
  static DEPRECATED_DIR_INFO deprecated_dir_info;
  /* actually const, but cannot be const in the structure */
  deprecated_dir_info.obsolete_dir = (char *) obsolete_dir;
  deprecated_dir_info.reference_dir = (char *) reference_dir;
  add_deprecated_dir_info (deprecated_dirs, &deprecated_dir_info);
}

void
clear_deprecated_dirs_list (DEPRECATED_DIRS_LIST *deprecated_dirs)
{
  size_t i;
  for (i = 0; i < deprecated_dirs->number; i++)
    {
      DEPRECATED_DIR_INFO *deprecated_dir_info = &deprecated_dirs->list[i];
      free (deprecated_dir_info->obsolete_dir);
      free (deprecated_dir_info->reference_dir);
    }
  deprecated_dirs->number = 0;
}

void
free_deprecated_dirs_list (DEPRECATED_DIRS_LIST *deprecated_dirs)
{
  clear_deprecated_dirs_list (deprecated_dirs);
  free (deprecated_dirs->list);
}

STRING_LIST *
splitdir (char *directories_str)
{
  char *directory = strtok (directories_str, FILE_SLASH);
  STRING_LIST *directories = new_string_list ();

  while (directory)
    {
      if (strlen (directory))
        add_string (directory, directories);
      directory = strtok (NULL, FILE_SLASH);
    }
  return directories;
}

/* Return value to be freed by caller. */
/* try to locate a file called FILENAME, looking for it in the list of include
   directories. */
char *
locate_include_file (const char *filename, const STRING_LIST *include_dirs_list)
{
  char *fullpath;
  struct stat dummy;
  int status;
  size_t i;
  int ignore_include_directories = 0;

  /* Checks if filename is absolute or relative to current directory. */
  if (file_name_is_absolute (filename))
    ignore_include_directories = 1;
  else
    {
      char *file_name_and_directories[3];

      splitpath (filename, file_name_and_directories);
      free (file_name_and_directories[0]);
      free (file_name_and_directories[2]);
      if (file_name_and_directories[1])
        {
          STRING_LIST *directories = splitdir (file_name_and_directories[1]);
          free (file_name_and_directories[1]);

          for (i = 0; i < directories->number; i++)
            {
              const char *directory = directories->list[i];
              if ((strlen (directory) == 2 && !memcmp (directory, "..", 2))
                  || (strlen (directory) == 1 && !memcmp (directory, ".", 1)))
                {
                  ignore_include_directories = 1;
                  break;
                }
            }
          destroy_strings_list (directories);
        }
    }

  if (ignore_include_directories)
    {
      status = stat (filename, &dummy);
      if (status == 0)
        return strdup (filename);
    }
  else if (!include_dirs_list)
    {
      return 0;
    }
  else
    {
      for (i = 0; i < include_dirs_list->number; i++)
        {
          xasprintf (&fullpath, "%s/%s", include_dirs_list->list[i], filename);
          status = stat (fullpath, &dummy);
          if (status == 0)
            return fullpath;
          free (fullpath);
        }
    }
  return 0;
}

/* Return value to be freed by caller. */
/* Used in main program, tests and HTML Converter.

 FILENAME     file name to locate. It can be a file path. Binary string.
 DIRECTORIES  list of directories to search the file in. Binary strings.
 ALL_FILES    if set collect all the files with that name, otherwise stop
              at first match.

 If ALL_FILES is not set:
   - if FILENAME is an absolute path: if found, return it;
   - otherwise return the first file found in the directories;
   - otherwise return NULL.
 If ALL_FILES is set return NULL and:
   - if FILENAME is an absolute path: if found, add to ALL_FILES;
   - otherwise add all files found to ALL_FILES.
 */

char *
locate_file_in_dirs (const char *filename,
                     const STRING_LIST *directories,
                     STRING_LIST *all_files,
                     DEPRECATED_DIRS_LIST *deprecated_dirs,
                     DEPRECATED_DIRS_LIST *deprecated_dirs_used)
{
  if (file_name_is_absolute (filename))
    {
      if (euidaccess (filename, R_OK) == 0)
        {
          if (all_files)
            add_string (filename, all_files);
          else
            return strdup (filename);
        }
    }
  else
    {
      size_t i;
      char *file_name_and_directories[3];
      int file_with_directories = 0;

      splitpath (filename, file_name_and_directories);
      free (file_name_and_directories[0]);
      free (file_name_and_directories[2]);
      if (file_name_and_directories[1])
        {
          STRING_LIST *file_directories
            = splitdir (file_name_and_directories[1]);
          free (file_name_and_directories[1]);
          if (file_directories->number)
            file_with_directories = 1;

          destroy_strings_list (file_directories);
        }

      if (file_with_directories)
        {
          if (euidaccess (filename, R_OK) == 0)
            {
              if (all_files)
                add_string (filename, all_files);
              else
                return strdup (filename);
            }
        }
      else
        {
          for (i = 0; i < directories->number; i++)
            {
              char *fullpath;

              xasprintf (&fullpath, "%s/%s", directories->list[i], filename);
              if (euidaccess (fullpath, R_OK) == 0)
                {
                  if (deprecated_dirs && deprecated_dirs_used)
                    {
                      DEPRECATED_DIR_INFO *deprecated_dir_info
                        = find_deprecated_dir_info (deprecated_dirs,
                                             directories->list[i]);
                      if (deprecated_dir_info)
                        add_deprecated_dir_info (deprecated_dirs_used,
                                                 deprecated_dir_info);
                    }
                  if (all_files)
                    add_string (fullpath, all_files);
                  else
                    return fullpath;
                }
              free (fullpath);
            }
        }
    }
  return 0;
}



const ELEMENT *
block_line_argument_command (const ELEMENT *block_line_arg)
{
  if (block_line_arg->e.c->contents.number == 1)
    {
      const ELEMENT *arg = block_line_arg->e.c->contents.list[0];
      if (!(type_data[arg->type].flags & TF_text)
          && (arg->e.c->contents.number == 0
              || (arg->e.c->contents.number == 1
                  && arg->e.c->contents.list[0]->e.c->contents.number == 0)))
        {
          enum command_id cmd = element_builtin_cmd (arg);
          if (builtin_command_data[cmd].flags & CF_brace
              && !(builtin_command_data[cmd].flags & CF_accent))
            {
              return arg;
            }
        }
    }
  return 0;
}

/* the caller should allocate a two element table for results */
void
find_float_caption_shortcaption(const ELEMENT *float_e, const ELEMENT **result)
{
  size_t i;

  const ELEMENT **caption = &result[0];
  const ELEMENT **shortcaption = &result[1];

  *caption = 0;
  *shortcaption = 0;

  for (i = 0; i < float_e->e.c->contents.number; i++)
    {
      const ELEMENT *content = float_e->e.c->contents.list[i];
      if (!(type_data[content->type].flags & TF_text))
        {
          if (content->e.c->cmd == CM_caption)
            {
              if (!(*caption))
                *caption = content;
              if (*shortcaption)
                return;
            }
          else if (content->e.c->cmd == CM_shortcaption)
            {
              if (!(*shortcaption))
                *shortcaption = content;
              if (*caption)
                return;
            }
        }
    }
}

ELEMENT *
multitable_columnfractions (const ELEMENT *multitable)
{
  const ELEMENT *arguments_line = multitable->e.c->contents.list[0];
  const ELEMENT *block_line_arg = arguments_line->e.c->contents.list[0];
  ELEMENT *columnfractions = 0;

  if (block_line_arg->e.c->contents.number > 0
      && !(type_data[block_line_arg->e.c->contents.list[0]->type].flags
           & TF_text)
      && block_line_arg->e.c->contents.list[0]->e.c->cmd == CM_columnfractions)
    {
      columnfractions = block_line_arg->e.c->contents.list[0];
    }

  return columnfractions;
}

void
collect_subentries (const ELEMENT *current, CONST_ELEMENT_LIST *e_list)
{
  size_t i;
  const ELEMENT *line_arg = current->e.c->contents.list[0];

  for (i = 0; i < line_arg->e.c->contents.number; i++)
    {
      const ELEMENT *content = line_arg->e.c->contents.list[i];
      if (!(type_data[content->type].flags & TF_text)
          && content->e.c->cmd == CM_subentry)
        {
          add_to_const_element_list (e_list, content);
          collect_subentries (content, e_list);
        }
    }
}

const ELEMENT *
index_entry_referred_entry (const ELEMENT *element, enum command_id cmd)
{
  const ELEMENT *line_arg = element->e.c->contents.list[0];

  if (line_arg->e.c->contents.number)
    {
      size_t i;
      for (i = 0; i < line_arg->e.c->contents.number; i++)
        {
          const ELEMENT *content = line_arg->e.c->contents.list[i];
          if (!(type_data[content->type].flags & TF_text))
            {
              if (content->e.c->cmd == cmd)
                {
                  if (content->e.c->contents.number > 0)
                    return content;
                }
              else if (content->e.c->cmd == CM_subentry)
                return index_entry_referred_entry (content, cmd);
            }
        }
    }

  return 0;
}



/* code related to values used in files not in parsetexi */
void
store_value (VALUE_LIST *values, const char *name, const char *value)
{
  size_t i;
  VALUE *v = 0;
  int len;

  len = strlen (name);

  /* Check if already defined. */
  for (i = 0; i < values->number; i++)
    {
      if (!strncmp (values->list[i].name, name, len)
          && !values->list[i].name[len])
        {
          v = &values->list[i];
          free (v->name); free (v->value);
          break;
        }
    }

  if (!v)
    {
      if (values->number == values->space)
        {
          values->list = realloc (values->list,
                                  (values->space += 5) * sizeof (VALUE));
        }
      v = &values->list[values->number++];
    }

  v->name = strdup (name);
  v->value = strdup (value);
}

void
clear_value (VALUE_LIST *values, const char *name)
{
  size_t i;
  for (i = 0; i < values->number; i++)
    {
      if (!strcmp (values->list[i].name, name))
        {
          values->list[i].name[0] = '\0';
          values->list[i].value[0] = '\0';
        }
    }
}

void
wipe_values (VALUE_LIST *values)
{
  size_t i;
  for (i = 0; i < values->number; i++)
    {
      free (values->list[i].name);
      free (values->list[i].value);
    }
  values->number = 0;
}



/* code related to document global info used both in parser and other codes */
void
delete_global_info (GLOBAL_INFO *global_info)
{
  size_t i;
  free_strings_list (&global_info->included_files);

  free (global_info->input_encoding_name);
  free (global_info->input_file_name);
  free (global_info->input_directory);

  for (i = 0; i < global_info->other_info.info_number; i++)
    {
      const KEY_STRING_PAIR *k = &global_info->other_info.info[i];
      free (k->key);
      free (k->string);
    }
  free (global_info->other_info.info);
}

void
delete_global_commands (GLOBAL_COMMANDS *global_commands_ref)
{
  GLOBAL_COMMANDS global_commands = *global_commands_ref;

  free (global_commands.dircategory_direntry.list);

#define GLOBAL_CASE(cmx) \
  free (global_commands.cmx.list)

  GLOBAL_CASE(floats);
  GLOBAL_CASE(footnotes);

#include "global_multi_commands_case.c"

#undef GLOBAL_CASE
}

const ELEMENT_LIST *
get_cmd_global_multi_command (const GLOBAL_COMMANDS *global_commands_ref,
                              enum command_id cmd)
{

  switch (cmd)
    {
#define GLOBAL_CASE(cmx) \
     case CM_##cmx: \
       return &global_commands_ref->cmx;

     case CM_footnote:
       return &global_commands_ref->footnotes;

     case CM_float:
       return &global_commands_ref->floats;

#include "global_multi_commands_case.c"

#undef GLOBAL_CASE
     default:
       return 0;
   }
}

const ELEMENT *
get_cmd_global_uniq_command (const GLOBAL_COMMANDS *global_commands_ref,
                             enum command_id cmd)
{

  switch (cmd)
    {
#define GLOBAL_UNIQUE_CASE(cmd) \
     case CM_##cmd: \
       return global_commands_ref->cmd;

#include "global_unique_commands_case.c"

#undef GLOBAL_UNIQUE_CASE
     default:
       return 0;
   }
}

/* Handle @set txicodequoteundirected as an
   alternative to @codequoteundirected. */
const char *
element_value_equivalent (const ELEMENT *element, enum command_id *cmd_out)
{
  enum command_id cmd = element_builtin_data_cmd (element);
  *cmd_out = CM_NONE;

  if (cmd == CM_set || cmd == CM_clear)
    {
      const STRING_LIST *misc_args
        = lookup_extra_misc_args (element, AI_key_misc_args);
      if (misc_args && misc_args->number > 0)
        {
          if (!strcmp (misc_args->list[0], "txicodequoteundirected"))
            *cmd_out = CM_codequoteundirected;
          else if (!strcmp (misc_args->list[0], "txicodequotebacktick"))
             *cmd_out = CM_codequotebacktick;
          if (*cmd_out)
            {
              if (cmd == CM_set)
                return "on";
              else
                return "off";
            }
        }
    }
  return 0;
}

char *
informative_command_value (const ELEMENT *element, enum command_id *cmd_out)
{
  const STRING_LIST *misc_args;
  char *text_arg;
  enum command_id cmd;
  char *value;

  /* keeping const would be preferable, but see below it is not possible */
  value = (char *)element_value_equivalent (element, cmd_out);
  if (*cmd_out)
    return value;

  cmd = element_builtin_data_cmd (element);

  if (cmd == CM_summarycontents)
    cmd = CM_shortcontents;

  *cmd_out = cmd;
  if (builtin_command_data[cmd].flags & CF_line
      && builtin_command_data[cmd].data == LINE_lineraw)
    {
      if (builtin_command_data[cmd].args_number <= 0)
        return "1";
      /* NOTE only @set, which should be ignored, can have args.number > 1.
         We handle this case with TEXT text, but do not free memory
         as should be, as this case should never happen.
       */
      else if (element->e.c->contents.number > 0)
        {
          TEXT text;
          size_t i;
          char *text_seen = 0;
          for (i = 0; i < element->e.c->contents.number; i++)
            {
              /* only text elements in lineraw args */
              ELEMENT *arg = element->e.c->contents.list[i];
              if (arg->e.text->end)
                {
                  if (!text_seen)
                    text_seen = arg->e.text->text;
                  else
                    {
                      text_init (&text);
                      text_append (&text, text_seen);
                      text_append (&text, " ");
                      text_append (&text, arg->e.text->text);
                    }
                }
            }
          if (text.end)
            /* NOTE would need to be freed, but this case cannot happen,
               so we leave it like that, see the comment above. */
            return text.text;
          else
            return text_seen;
        }
    }
  text_arg = lookup_extra_string (element, AI_key_text_arg);
  if (text_arg)
    return text_arg;
  misc_args = lookup_extra_misc_args (element, AI_key_misc_args);
  if (misc_args && misc_args->number > 0)
    return misc_args->list[0];
  if (builtin_command_data[cmd].flags & CF_line
      && builtin_command_data[cmd].data == LINE_line
      && element->e.c->contents.number >= 1
      && element->e.c->contents.list[0]->e.c->contents.number >= 1
      && element->e.c->contents.list[0]->e.c->contents.list[0]->type == ET_normal_text
      && element->e.c->contents.list[0]->e.c->contents.list[0]->e.text->end > 0)
    return element->e.c->contents.list[0]->e.c->contents.list[0]->e.text->text;

  return 0;
}

static int
in_preamble (ELEMENT *element)
{
  ELEMENT *current_element = element;
  while (current_element->e.c->parent)
    {
      if (current_element->e.c->parent->type == ET_preamble_before_content)
        return 1;
      current_element = current_element->e.c->parent;
    }
  return 0;
}

/*
  COMMAND_LOCATION is 'last', 'preamble' or 'preamble_or_first'
  'preamble' means setting sequentially to the values in the preamble.
  'preamble_or_first'  means setting to the first value for the command
  in the document if the first command is not in the preamble, else set
  sequentially to the values in the preamble.
  'last' means setting to the last value for the command in the document.

  For unique command, the last may be considered to be the same as the first.
*/
const ELEMENT *
get_global_document_command (const GLOBAL_COMMANDS *global_commands,
                             enum command_id cmd,
                             enum command_location command_location)
{
  const ELEMENT *element = 0;
  if (command_location != CL_last && command_location != CL_preamble_or_first
      && command_location != CL_preamble)
    fprintf (stderr, "BUG: get_global_document_command: unknown CL: %d\n",
                     command_location);

  if (builtin_command_data[cmd].flags & CF_global)
    {
      const ELEMENT_LIST *command_list
        = get_cmd_global_multi_command (global_commands, cmd);

      if (command_list->number)
        {
          if (command_location == CL_last)
            {
              element = command_list->list[command_list->number -1];
            }
          else
            {
              if (command_location == CL_preamble_or_first
                   && !in_preamble (command_list->list[0]))
                {
                  element = command_list->list[0];
                }
              else
                {
                  size_t i;
                  for (i = 0; i < command_list->number; i++)
                    {
                      ELEMENT *command_element = command_list->list[i];
                      if (in_preamble (command_element))
                        {
                          element = command_element;
                        }
                      else
                        break;
                    }
                }
            }
        }
    }
  else
    {
      const ELEMENT *command
        = get_cmd_global_uniq_command (global_commands, cmd);
      if (command)
        element = command;
    }
  return element;
}


void
destroy_accent_stack (ACCENTS_STACK *accent_stack)
{
  free (accent_stack->stack.stack);
  if (accent_stack->argument)
    destroy_element (accent_stack->argument);
  free (accent_stack);
}



const char *
input_file_name_encoding (const char *name_encoding,
                          int doc_encoding_for_input_file_name,
                          const char *locale_encoding,
                          const GLOBAL_INFO *global_information,
                          const char *input_file_encoding)
{
  const char *encoding = 0;

  if (name_encoding)
    encoding = name_encoding;
  /* could be -1, meaning undef */
  else if (doc_encoding_for_input_file_name != 0)
    {
      if (input_file_encoding)
        encoding = input_file_encoding;
      else if (global_information && global_information->input_encoding_name)
        encoding = global_information->input_encoding_name;
    }
  else if (locale_encoding)
    encoding = locale_encoding;

  return encoding;
}


/* misc functions used in general in structuring and in conversion */

/* corresponding perl function in Common.pm */
/* the returned level will be < 0 if the command is not supposed
   to be associated to a level. */
int
section_level (const ELEMENT *section)
{
  int level = command_structuring_level[section->e.c->cmd];
  int status;
  int section_modifier = lookup_extra_integer (section, AI_key_level_modifier,
                                               &status);
  if (!status && level >= 0)
    {
      level -= section_modifier;
      if (level < min_level)
        if (command_structuring_level[section->e.c->cmd] < min_level)
          level = command_structuring_level[section->e.c->cmd];
        else
          level = min_level;
      else if (level > max_level)
        level = max_level;
    }
  return level;
}

enum command_id
section_level_adjusted_command_name (const ELEMENT *element)
{
  int status;
  int heading_level;

  heading_level = lookup_extra_integer (element, AI_key_section_level, &status);

  /* the following condition should only be false if sectioning_structure was
     not called */
  if (status == 0)
    {
      if (command_structuring_level[element->e.c->cmd] != heading_level)
        {
          return level_to_structuring_command[element->e.c->cmd][heading_level];
        }
    }

  return element->e.c->cmd;
}

/* corresponding perl function in Common.pm */
int
is_content_empty (const ELEMENT *tree, int do_not_ignore_index_entries)
{
  size_t i;
  if (!tree || !tree->e.c->contents.number)
    return 1;

  for (i = 0; i < tree->e.c->contents.number; i++)
    {
      const ELEMENT *content = tree->e.c->contents.list[i];
      enum command_id data_cmd;

      if (type_data[content->type].flags & TF_text)
        {
          if (content->e.text->end == 0)
            return 1;
          else
            {
              const char *text = content->e.text->text;
              /* only whitespace characters */
              if (text[strspn (text, whitespace_chars)] != '\0')
                return 0;
              else
                continue;
            }
        }

      if (content->type == ET_arguments_line)
        continue;

      data_cmd = element_builtin_data_cmd (content);
      if (data_cmd)
        {
          unsigned long flags = builtin_command_data[data_cmd].flags;
          unsigned long other_flags
               = builtin_command_data[data_cmd].other_flags;
          if (content->type == ET_index_entry_command)
            {
              if (do_not_ignore_index_entries)
                return 0;
              else
               continue;
            }

          if (flags & CF_line)
            {
              if (other_flags & CF_formatted_line
                  || other_flags & CF_formattable_line)
                return 0;
              else
                continue;
            }
          else if (flags & CF_nobrace)
            {
              if (other_flags & CF_formatted_nobrace)
                return 0;
              else
                continue;
            }
          else if (other_flags & CF_non_formatted_brace
                   || other_flags & CF_non_formatted_block)
            continue;
          else
            return 0;
        }
      if (content->type == ET_paragraph)
        return 0;
      if (! is_content_empty (content, do_not_ignore_index_entries))
        return 0;
    }
  return 1;
}

/*
  decompose a decimal number on a given base.  It is not the
  decomposition used for counting as we start at 0, not 1 for all
  the factors.  This is in order to get aa and not ba in calling
  code.

  DECOMPOSED_NR points to the number of factors value.  There is
  also a -1 after the last factor in the return array.
 */
static int *
decompose_integer (int number, int base, int *decomposed_nr)
{
  int i;
  /* in practice we are with letters in base 26, 10 is
     more than enough */
  int space = 11;
  int *result = malloc (space * sizeof (int));
  *decomposed_nr = space - 1;
  for (i = 0; i < space; i++)
    {
      if (number >= 0)
        {
          int factor = number % base;
          result[i] = factor;
          number = (number - factor) / base - 1;
        }
      else
        {
          *decomposed_nr = i;
          break;
        }
    }
  result[*decomposed_nr] = -1;

  return result;
}

char *
enumerate_item_representation (char *specification, int number)
{
  TEXT result;
  int i;
  int decomposed_nr;

  if (!strlen (specification))
    return strdup ("");

  text_init (&result);

  if (specification[strspn (specification, digit_chars)] == '\0')
    {
      int spec = strtol (specification, NULL, 10) + number -1;
      text_printf (&result, "%d", spec);
      return result.text;
    }

  char base_letter = 'a';
  if (isascii_alpha (specification[0]) && isascii_upper (specification[0]))
    base_letter = 'A';

  int *letter_ords
    = decompose_integer (specification[0] - base_letter + number - 1, 26,
                         &decomposed_nr);

  for (i = decomposed_nr - 1; i >= 0; i--)
    text_printf (&result, "%c", base_letter + letter_ords[i]);

  free (letter_ords);
  return result.text;
}


/* html options */

void
html_free_button_specification_list (BUTTON_SPECIFICATION_LIST *buttons)
{
  if (!buttons)
    return;

  if (buttons->number > 0)
    {
      size_t i;
      for (i = 0; i < buttons->number; i++)
        {
          BUTTON_SPECIFICATION *button = &buttons->list[i];
          if (button->type == BST_direction_info)
            {
              free (button->b.button_info);
            }
          if (button->sv)
            unregister_perl_data (button->sv);
        }
    }
  free (buttons->list);
  if (buttons->av)
    unregister_perl_data (buttons->av);
  free (buttons);
}

void html_clear_direction_icons (DIRECTION_ICON_LIST *direction_icons)
{
  if (!direction_icons)
    return;

  if (direction_icons->number > 0)
    {
      size_t i;
      for (i = 0; i < direction_icons->number; i++)
        {
          DIRECTION_ICON *icon = &direction_icons->icons_list[i];
          free (icon->name);
          free (icon->direction_name);
        }
    }
  direction_icons->number = 0;
}

void
html_free_direction_icons (DIRECTION_ICON_LIST *direction_icons)
{
  if (!direction_icons)
    return;

  html_clear_direction_icons (direction_icons);
  free (direction_icons->icons_list);
  direction_icons->space = 0;
  direction_icons->icons_list = 0;
  if (direction_icons->sv)
    unregister_perl_data (direction_icons->sv);
}

/* here because it is used in main/get_perl_info.c */

/* return -2 if there are info and not found. */
int
html_get_direction_index (const CONVERTER *converter, const char *direction)
{
  int i;
  if (converter && converter->main_units_direction_names)
    {
      for (i = 0; converter->main_units_direction_names[i]; i++)
        {
          if (!strcmp (direction, converter->main_units_direction_names[i]))
            return i;
        }
      return -2;
    }
  return -1;
}

/* here because it is used in main/build_perl_info.c */
const char *
direction_unit_direction_name (int direction, const CONVERTER *converter)
{
  if (direction < 0)
    return 0;
  else if (direction < NON_SPECIAL_DIRECTIONS_NR)
    return html_button_direction_names[direction];
  else if (converter && converter->main_units_direction_names)
    return converter->main_units_direction_names[direction];
  else
   return 0;
}



void
html_fill_button_directions_specification_list (const CONVERTER *converter,
                                              BUTTON_SPECIFICATION_LIST *result)
{
  size_t i;

  for (i = 0; i < result->number; i++)
    {
      BUTTON_SPECIFICATION *button = &result->list[i];

      if (button->type == BST_direction_info)
        {
          const char *direction_name = 0;

          if (button->b.button_info->direction < 0)
            direction_name = button->direction_string;

          if (direction_name)
            button->b.button_info->direction
              = html_get_direction_index (converter, direction_name);
        /* this happens in test with redefined special unit direction
          if (button->b.button_info->direction < 0)
            {
              fprintf (stderr,
                  "BUG: %p: still unknown button %zu array direction: %d: %s\n",
                     button, i, button->b.button_info->direction,
                     direction_name);
            }
         */
        }
      else if (button->type == BST_direction)
        {
          const char *direction_name = 0;
          if (button->b.direction < 0)
            {
              direction_name = button->direction_string;
              if (direction_name)
                button->b.direction = html_get_direction_index (converter,
                                                                direction_name);
            }

        /* this would happen in test with redefined special unit direction
          if (button->b.direction < 0)
            fprintf (stderr,
                     "BUG: %p: still unknown button %zu string direction: %s\n",
                     button, i, direction_name);
         */
        }
    }
}


/* constructors in particular called from files including perl headers */

TARGET_FILENAME *
new_target_filename (void)
{
  TARGET_FILENAME *result
    = (TARGET_FILENAME *) malloc (sizeof (TARGET_FILENAME));

  memset (result, 0, sizeof (TARGET_FILENAME));

  return result;
}

TARGET_CONTENTS_FILENAME *
new_target_contents_filename (void)
{
  TARGET_CONTENTS_FILENAME *result = (TARGET_CONTENTS_FILENAME *)
                         malloc (sizeof (TARGET_CONTENTS_FILENAME));

  return result;
}

FILE_NAME_PATH *
new_file_name_path (void)
{
  FILE_NAME_PATH *result
   = (FILE_NAME_PATH *) malloc (sizeof (FILE_NAME_PATH));
  memset (result, 0, sizeof (FILE_NAME_PATH));

  return result;
}

TARGET_DIRECTORY_FILENAME *
new_target_directory_filename (void)
{
  TARGET_DIRECTORY_FILENAME *result = (TARGET_DIRECTORY_FILENAME *)
              malloc (sizeof (TARGET_DIRECTORY_FILENAME));
  memset (result, 0, sizeof (TARGET_DIRECTORY_FILENAME));

  return result;
}

FORMATTED_BUTTON_INFO *
new_formatted_button_info (void)
{
  FORMATTED_BUTTON_INFO *result
   = (FORMATTED_BUTTON_INFO *) malloc (sizeof (FORMATTED_BUTTON_INFO));
  memset (result, 0, sizeof (FORMATTED_BUTTON_INFO));

  return result;
}

