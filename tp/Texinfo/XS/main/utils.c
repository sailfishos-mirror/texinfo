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

/* code that does not fit anywhere else */

#include <config.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <sys/stat.h>
#include <iconv.h>
#include <errno.h>
#include <stdbool.h>
#include "unistr.h"
#include "unicase.h"
#include "uniwidth.h"
#include <unictype.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "option_types.h"
#include "options_types.h"
#include "converter_types.h"
#include "command_ids.h"
#include "text.h"
/* also for xvasprintf */
#include "tree.h"
#include "extra.h"
#include "errors.h"
#include "debug.h"
#include "builtin_commands.h"
#include "api_to_perl.h"
#include "unicode.h"
#include "utils.h"

#define min_level command_structuring_level[CM_chapter]
#define max_level command_structuring_level[CM_subsubsection]

const char *whitespace_chars = " \t\v\f\r\n";
const char *digit_chars = "0123456789";

DEF_ALIAS def_aliases[] = {
  CM_defun, CM_deffn, "Function", "category of functions for @defun",
  CM_defmac, CM_deffn, "Macro", 0,
  CM_defspec, CM_deffn, "Special Form", 0,
  CM_defvar, CM_defvr, "Variable", "category of variables for @defvar",
  CM_defopt, CM_defvr, "User Option", 0,
  CM_deftypefun, CM_deftypefn, "Function", "category of functions for @deftypefun",
  CM_deftypevar, CM_deftypevr, "Variable", "category of variables in typed languages for @deftypevar",
  CM_defivar, CM_defcv, "Instance Variable", "category of instance variables in object-oriented programming for @defivar",
  CM_deftypeivar, CM_deftypecv, "Instance Variable", "category of instance variables with data type in object-oriented programming for @deftypeivar",
  CM_defmethod, CM_defop, "Method", "category of methods in object-oriented programming for @defmethod",
  CM_deftypemethod, CM_deftypeop, "Method", "category of methods with data type in object-oriented programming for @deftypemethod",

  /* the following aliases are not used in the XS parser */
  CM_defunx, CM_deffnx, "Function", "category of functions for @defun",
  CM_defmacx, CM_deffnx, "Macro", 0,
  CM_defspecx, CM_deffnx, "Special Form", 0,
  CM_defvarx, CM_defvrx, "Variable", "category of variables for @defvar",
  CM_defoptx, CM_defvrx, "User Option", 0,
  CM_deftypefunx, CM_deftypefnx, "Function", "category of functions for @deftypefun",
  CM_deftypevarx, CM_deftypevrx, "Variable", "category of variables in typed languages for @deftypevar",
  CM_defivarx, CM_defcvx, "Instance Variable", "category of instance variables in object-oriented programming for @defivar",
  CM_deftypeivarx, CM_deftypecvx, "Instance Variable", "category of instance variables with data type in object-oriented programming for @deftypeivar",
  CM_defmethodx, CM_defopx, "Method", "category of methods in object-oriented programming for @defmethod",
  CM_deftypemethodx, CM_deftypeopx, "Method", "category of methods with data type in object-oriented programming for @deftypemethod",
  0, 0, 0, 0
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
    "html", 0,
    "docbook", 0,
    "plaintext", 0,
    "tex", 0,
    "xml", 0,
    "info", 0,
    "latex", 0,
};

/* special output units global directions are not there, they are
   determined from perl dynamically */
const char *html_button_direction_names[] = {
  #define hgdt_name(name) #name,
   HTML_GLOBAL_DIRECTIONS_LIST
  #undef hgdt_name
   " ",
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
  "href", "node", "section",
};

/* wrappers to be sure to use non-Perl defined functions */
void
non_perl_free (void *ptr)
{
  free (ptr);
}

char *
non_perl_strdup (const char *s)
{
  return strdup (s);
}

char *
non_perl_strndup (const char *s, size_t n)
{
  return strndup (s, n);
}

/* wrapper for vasprintf */
int
non_perl_xvasprintf (char **ptr, const char *template, va_list ap)
{
  int ret;
  ret = vasprintf (ptr, template, ap);
  if (ret < 0)
    abort (); /* out of memory */
  return ret;
}

/* wrapper for asprintf */
int
non_perl_xasprintf (char **ptr, const char *template, ...)
{
  va_list v;
  va_start (v, template);
  return non_perl_xvasprintf (ptr, template, v);
}

/* wrapper for asprintf */
int
xasprintf (char **ptr, const char *template, ...)
{
  va_list v;
  va_start (v, template);
  return xvasprintf (ptr, template, v);
}

void bug (char *message)
{
  fprintf (stderr, "texi2any (XS): bug: %s\n", message);
}

void fatal (char *message)
{
  bug (message);
  abort ();
}

int
isascii_alnum (int c)
{
  return (((c & ~0x7f) == 0) && isalnum (c));
}

int
isascii_alpha (int c)
{
  return (((c & ~0x7f) == 0) && isalpha (c));
}

int
isascii_digit (int c)
{
  return (((c & ~0x7f) == 0) && isdigit (c));
}

int
isascii_lower (int c)
{
  return (((c & ~0x7f) == 0) && islower (c));
}

int
isascii_upper (int c)
{
  return (((c & ~0x7f) == 0) && isupper (c));
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
  int encoding_index = -1;

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
        encoding_index = 0;
      else
        encoding_index = -2;
    }
  else if (encodings_list->number > 1)
    {
      int i;
      for (i = 1; i < encodings_list->number; i++)
        {
          if (!strcasecmp (conversion_encoding,
                           encodings_list->list[i].encoding_name))
            {
              encoding_index = i;
              break;
            }
        }
    }

  if (encoding_index < 0)
    {
      if (encodings_list->number == 0)
        encodings_list->number++;
      if (encoding_index == -2) /* utf-8 */
        encoding_index = 0;
      else
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
  int i;
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
            fprintf (stderr, "%s:%d: encoding error at byte 0x%02x\n",
              source_info->file_name, source_info->line_nr,
                                             *(unsigned char *)inptr);
          else
            fprintf (stderr, "encoding error at byte 0x%02x\n",
                    *(unsigned char *)inptr);
          inptr++; bytes_left--;
          break;
        }
    }

  t.text[t.end] = '\0';
  return strdup (t.text);
}

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
  int i;
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
  int i;
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
  int i;
  for (i = 0; i < sizeof (default_expanded_formats)
                           / sizeof (*default_expanded_formats);
       i++)
    {
      if (!strcmp (format, formats[i].format))
        return formats[i].expandedp;
    }
  return 0;
}

int
expanded_formats_number (void)
{
  return sizeof (default_expanded_formats)
                          / sizeof (*default_expanded_formats);
}

void
set_expanded_formats_from_options (EXPANDED_FORMAT *formats,
                                   const OPTIONS *options)
{
  if (options->EXPANDED_FORMATS.strlist
      && (options->EXPANDED_FORMATS.strlist->number))
    {
      size_t i;
      for (i = 0; i < options->EXPANDED_FORMATS.strlist->number; i++)
        {
          add_expanded_format (formats,
                               options->EXPANDED_FORMATS.strlist->list[i]);
        }
    }
}


/* Return the parent if in an item_line command, @*table */
ELEMENT *
item_line_parent (ELEMENT *current)
{
  enum command_id cmd;

  if (current->type == ET_before_item && current->parent)
    current = current->parent;

  /* this code handles current being a user defined command even tough
     it is not clear that it may happen */
  cmd = element_builtin_cmd (current);
  if (builtin_command_data[cmd].data == BLOCK_item_line)
    return current;

  return 0;
}

ELEMENT *
get_label_element (const ELEMENT *e)
{
  if ((e->cmd == CM_node || e->cmd == CM_anchor)
      && e->args.number > 0)
    return e->args.list[0];
  else if (e->cmd == CM_float && e->args.number >= 2)
    return e->args.list[1];
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
  if (len > 0 && filename[len - 1] == '/')
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
merge_strings (STRING_LIST *strings_list, const STRING_LIST *merged_strings)
{
  int i;
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
  int i;
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

/* Return value to be freed by caller. */
/* try to locate a file called FILENAME, looking for it in the list of include
   directories. */
char *
locate_include_file (const char *filename, const STRING_LIST *include_dirs_list)
{
  char *fullpath;
  struct stat dummy;
  int i, status;

  /* Checks if filename is absolute or relative to current directory. */
  /* Note: the Perl code (in Common.pm, 'locate_include_file') handles
     a volume in a path (like "A:") using the File::Spec module. */
  if (!memcmp (filename, "/", 1)
      || (strlen (filename) >= 3 && !memcmp (filename, "../", 3))
      || (strlen (filename) >= 2 && !memcmp (filename, "./", 2)))
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

void
clear_strings_list (STRING_LIST *strings)
{
  int i;
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



void
set_conf_string (OPTION *option, const char *value)
{
  if (option->type != GOT_char && option->type != GOT_bytes)
    fatal ("set_conf_string bad option type\n");

  if (option->configured > 0)
    return;

  free (option->string);
  option->string = strdup (value);
}

/* In perl, OUTPUT_PERL_ENCODING is set too.  Note that if the perl
   version is called later on, the OUTPUT_PERL_ENCODING value will be re-set */
void
set_output_encoding (OPTIONS *customization_information, DOCUMENT *document)
{
  if (customization_information
      && document && document->global_info.input_encoding_name) {
    set_conf_string (&customization_information->OUTPUT_ENCODING_NAME,
                      document->global_info.input_encoding_name);
  }
}


/* code related to values used in files not in parsetexi */
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
delete_global_info (GLOBAL_INFO *global_info_ref)
{
  GLOBAL_INFO global_info = *global_info_ref;

  free_strings_list (&global_info.included_files);

  free (global_info.input_encoding_name);
  free (global_info.input_file_name);
  free (global_info.input_directory);

  destroy_associated_info (&global_info.other_info);

  /* perl specific information */
  free (global_info.input_perl_encoding);
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

char *
informative_command_value (const ELEMENT *element)
{
  ELEMENT *misc_args;
  char *text_arg;

  enum command_id cmd = element_builtin_data_cmd (element);
  if (builtin_command_data[cmd].flags & CF_line
      && builtin_command_data[cmd].data == LINE_lineraw)
    {
      if (builtin_command_data[cmd].args_number <= 0)
        return "1";
      /* NOTE only @set, which should be ignored, can have args.number > 1.
         We handle this case with TEXT text, but do not free memory
         as should be, as this case should never happen.
       */
      else if (element->args.number > 0)
        {
          TEXT text;
          int i;
          char *text_seen = 0;
          for (i = 0; i < element->args.number; i++)
            {
              ELEMENT *arg = element->args.list[i];
              if (arg->text.end)
                {
                  if (!text_seen)
                    text_seen = arg->text.text;
                  else
                    {
                      text_init (&text);
                      text_append (&text, text_seen);
                      text_append (&text, " ");
                      text_append (&text, arg->text.text);
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
  text_arg = lookup_extra_string (element, "text_arg");
  if (text_arg)
    return text_arg;
  misc_args = lookup_extra_element (element, "misc_args");
  if (misc_args && misc_args->contents.number > 0)
    return misc_args->contents.list[0]->text.text;
  if (builtin_command_data[cmd].flags & CF_line
      && builtin_command_data[cmd].data == LINE_line
      && element->args.number >= 1
      && element->args.list[0]->contents.number >= 1
      && element->args.list[0]->contents.list[0]->text.end > 0)
    return element->args.list[0]->contents.list[0]->text.text;

  return 0;
}

void
set_informative_command_value (OPTIONS *options, const ELEMENT *element)
{
  char *value = 0;

  value = informative_command_value (element);

  if (value)
    {
      OPTION *option;
      enum command_id cmd = element_builtin_cmd (element);
      if (cmd == CM_summarycontents)
        cmd = CM_shortcontents;

      option = get_command_option (options, cmd);
      if (option)
        {
          if (option->type == GOT_integer)
            {
              if (option->configured <= 0)
                option->integer = strtoul (value, NULL, 10);
            }
          else
            set_conf_string (option, value);
        }
    }
}

static int
in_preamble (ELEMENT *element)
{
  ELEMENT *current_element = element;
  while (current_element->parent)
    {
      if (current_element->parent->type == ET_preamble_before_content)
        return 1;
      current_element = current_element->parent;
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

  const ELEMENT_LIST *command_list
     = get_cmd_global_multi_command (global_commands, cmd);
  if (builtin_command_data[cmd].flags & CF_global)
    {
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
                  int i;
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

/*
  Notice that the only effect is to use set_conf (directly or through
  set_informative_command_value), no @-commands setting side effects are done
  and associated customization variables are not set/reset either.
 */
const ELEMENT *
set_global_document_command (GLOBAL_COMMANDS *global_commands, OPTIONS *options,
                             enum command_id cmd,
                             enum command_location command_location)
{
  const ELEMENT *element
     = get_global_document_command (global_commands, cmd,
                                    command_location);
  if (element)
    set_informative_command_value (options, element);
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


/* misc functions used in general in structuring and in conversion */

/* corresponding perl function in Common.pm */
/* the returned level will be < 0 if the command is not supposed
   to be associated to a level. */
int
section_level (const ELEMENT *section)
{
  int level = command_structuring_level[section->cmd];
  int status;
  int section_modifier = lookup_extra_integer (section, "level_modifier",
                                               &status);
  if (!status && level >= 0)
    {
      level -= section_modifier;
      if (level < min_level)
        if (command_structuring_level[section->cmd] < min_level)
          level = command_structuring_level[section->cmd];
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

  heading_level = lookup_extra_integer (element, "section_level", &status);

  /* the following condition should only be false if sectioning_structure was
     not called */
  if (status == 0)
    {
      if (command_structuring_level[element->cmd] != heading_level)
        {
          return level_to_structuring_command[element->cmd][heading_level];
        }
    }

  return element->cmd;
}

/* corresponding perl function in Common.pm */
int
is_content_empty (const ELEMENT *tree, int do_not_ignore_index_entries)
{
  int i;
  if (!tree || !tree->contents.number)
    return 1;

  for (i = 0; i < tree->contents.number; i++)
    {
      const ELEMENT *content = tree->contents.list[i];
      enum command_id data_cmd = element_builtin_data_cmd (content);

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
      if (content->text.end > 0)
        {
          char *text = element_text (content);
          /* only whitespace characters */
          if (! text[strspn (text, whitespace_chars)] == '\0')
            return 0;
        }
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
            free (button->button_info);
          unregister_perl_button (button);
        }
    }
  free (buttons->list);
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
          free (direction_icons->list[i]);
          direction_icons->list[i] = 0;
        }
    }
}

void
html_free_direction_icons (DIRECTION_ICON_LIST *direction_icons)
{
  if (!direction_icons)
    return;

  html_clear_direction_icons (direction_icons);
  free (direction_icons->list);
}


/* options and converters */
OPTIONS *
new_options (void)
{
  OPTIONS *options = (OPTIONS *) malloc (sizeof (OPTIONS));
  memset (options, 0, sizeof (OPTIONS));
  initialize_options (options);
  return options;
}

void
clear_option (OPTION *option)
{
  switch (option->type)
    {
      case GOT_char:
      case GOT_bytes:
        free (option->string);
        option->string = 0;
        break;

      case GOT_bytes_string_list:
      case GOT_file_string_list:
      case GOT_char_string_list:
        clear_strings_list (option->strlist);
        break;

      case GOT_buttons:
        html_free_button_specification_list (option->buttons);
        option->buttons = 0;
        break;

      case GOT_icons:
        html_clear_direction_icons (option->icons);
        break;

      case GOT_integer:
        option->integer = -1;

      default:
    }
}

/* option is not supposed to be accessed again */
void
free_option (OPTION *option)
{
  switch (option->type)
    {
      case GOT_char:
      case GOT_bytes:
        free (option->string);
        break;

      case GOT_bytes_string_list:
      case GOT_file_string_list:
      case GOT_char_string_list:
        destroy_strings_list (option->strlist);
        break;

      case GOT_buttons:
        html_free_button_specification_list (option->buttons);
        break;

      case GOT_icons:
        html_free_direction_icons (option->icons);
        free (option->icons);
        break;

      case GOT_integer:
      default:
    }
}

void
initialize_option (OPTION *option, enum global_option_type type)
{
  option->type = type;
  switch (type)
    {
      case GOT_integer:
        option->integer = -1;
        break;

      case GOT_bytes_string_list:
      case GOT_file_string_list:
      case GOT_char_string_list:
        option->strlist = new_string_list ();
        break;

      case GOT_char:
      case GOT_bytes:
        option->string = 0;
        break;

      case GOT_buttons:
        option->buttons = 0;
        break;

      case GOT_icons:
        option->icons = (DIRECTION_ICON_LIST *)
                          malloc (sizeof (DIRECTION_ICON_LIST));
        memset (option->icons, 0, sizeof (DIRECTION_ICON_LIST));
        break;

      default:
    }
}


/* constructors in particular called from files including perl headers */

TARGET_FILENAME *
new_target_filename (void)
{
  TARGET_FILENAME *result
    = (TARGET_FILENAME *) malloc (sizeof (TARGET_FILENAME));

  result->filename = 0;

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
