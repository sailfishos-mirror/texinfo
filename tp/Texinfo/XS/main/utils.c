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
#include "uniconv.h"
#include "unistr.h"
#include "unicase.h"
#include "uniwidth.h"

#include "tree_types.h"
#include "tree.h"
#include "text.h"
#include "command_ids.h"
#include "extra.h"
#include "errors.h"
#include "debug.h"
#include "builtin_commands.h"
#include "utils.h"

#include "cmd_structuring.c"

#define min_level command_structuring_level[CM_chapter]
#define max_level command_structuring_level[CM_subsubsection]

const char *whitespace_chars = " \t\v\f\r\n";
const char *digit_chars = "0123456789";

/* to keep synchronized with enum directions in tree_types.h */
const char *direction_names[] = {"next", "prev", "up"};
const char *direction_texts[] = {"Next", "Prev", "Up"};
const size_t directions_length = sizeof (direction_names) / sizeof (direction_names[0]);


/* duplicated when creating a new expanded_formats */
struct expanded_format expanded_formats[] = {
    "html", 0,
    "docbook", 0,
    "plaintext", 0,
    "tex", 0,
    "xml", 0,
    "info", 0,
    "latex", 0,
};

void bug (char *message)
{
  fprintf (stderr, "texi2any (XS parser): bug: %s\n", message);
}

void fatal (char *message)
{
  bug (message);
  abort ();
}

int
isascii_alnum (int c)
{
  return (((c & ~0x7f) == 0) && isalnum(c));
}

int
isascii_alpha (int c)
{
  return (((c & ~0x7f) == 0) && isalpha(c));
}

int
isascii_lower (int c)
{
  return (((c & ~0x7f) == 0) && islower(c));
}

int
isascii_upper (int c)
{
  return (((c & ~0x7f) == 0) && isupper(c));
}

/* count characters, not bytes. */
size_t
count_multibyte (const char *text)
{
  /* FIXME error checking? */
  uint8_t *resultbuf = u8_strconv_from_encoding (text, "UTF-8",
                                                 iconveh_question_mark);
  size_t result = u8_mbsnlen (resultbuf, u8_strlen (resultbuf));

  free (resultbuf);

  return result;
}

char *
to_upper_or_lower_multibyte (const char *text, int lower_or_upper)
{
  char *result;
  size_t lengthp;
  /* FIXME error checking? */
  uint8_t *resultbuf = u8_strconv_from_encoding (text, "UTF-8",
                                                 iconveh_question_mark);
  uint8_t *u8_result;
  if (lower_or_upper > 0)
    u8_result = u8_toupper (resultbuf, u8_strlen (resultbuf),
                            NULL, NULL, NULL, &lengthp);
  else
    u8_result = u8_tolower (resultbuf, u8_strlen (resultbuf),
                            NULL, NULL, NULL, &lengthp);

  free (resultbuf);
  result = u8_strconv_to_encoding (u8_result, "UTF-8",
                                   iconveh_question_mark);
  free (u8_result);
  return result;
}

int
width_multibyte (const char *text)
{
  int result;
  /* FIXME error checking? */
  uint8_t *resultbuf = u8_strconv_from_encoding (text, "UTF-8",
                                                 iconveh_question_mark);
  /* FIXME the libunistring documentation described encoding as
     The encoding argument identifies the encoding (e.g. "ISO-8859-2"
     for Polish).  Looking at the code, it seems that it is only
     used to determine if it is a CJK encoding in a list of upper-case
     encodings.  We probably do not want to have this dependency to
     encoding, so use UTF-8. */
  result = u8_strwidth (resultbuf, "UTF-8");
  free (resultbuf);
  return result;
}

/* ENCODING should always be lower cased */
ENCODING_CONVERSION *
get_encoding_conversion (char *encoding,
                         ENCODING_CONVERSION_LIST *encodings_list)
{
  char *conversion_encoding = encoding;
  int encoding_index = -1;

  /* should correspond to
     Texinfo::Common::encoding_name_conversion_map.
     Thoughts on this mapping are available near
     Texinfo::Common::encoding_name_conversion_map definition
  */
  if (!strcmp (encoding, "us-ascii"))
    conversion_encoding = "iso-8859-1";

  if (!strcmp (encoding, "utf-8"))
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
          if (!strcmp (conversion_encoding,
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
    /* FIXME this will change when the list is reallocated */
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
encode_with_iconv (iconv_t our_iconv,  char *s)
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
          fprintf(stderr, "%s:%d: encoding error at byte 0x%2x\n",
            current_source_info.file_name, current_source_info.line_nr,
                                                 *(unsigned char *)inptr);
          inptr++; bytes_left--;
          break;
        }
    }

  t.text[t.end] = '\0';
  return strdup (t.text);
}

void
clear_expanded_formats (struct expanded_format *formats)
{
  int i;
  for (i = 0; i < sizeof (expanded_formats)/sizeof (*expanded_formats);
       i++)
    {
      formats[i].expandedp = 0;
    }
}

void
add_expanded_format (struct expanded_format *formats, char *format)
{
  int i;
  for (i = 0; i < sizeof (expanded_formats)/sizeof (*expanded_formats);
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

/* FORMAT is an optional argument, to set a format at the expanded_format
   structure creation */
struct expanded_format *
new_expanded_formats (char *format)
{
  struct expanded_format *formats;

  formats = malloc (sizeof (expanded_formats));
  memcpy (formats, expanded_formats, sizeof (expanded_formats));

  if (format)
    add_expanded_format (formats, format);

  return formats;
}

int
format_expanded_p (struct expanded_format *formats, char *format)
{
  int i;
  for (i = 0; i < sizeof (expanded_formats)/sizeof (*expanded_formats);
       i++)
    {
      if (!strcmp (format, formats[i].format))
        return formats[i].expandedp;
    }
  return 0;
}

ELEMENT *
get_label_element (ELEMENT *e)
{
  if ((e->cmd == CM_node || e->cmd == CM_anchor)
      && e->args.number > 0)
    return e->args.list[0];
  else if (e->cmd == CM_float && e->args.number >= 2)
    return e->args.list[1];
  return 0;
}

/* Read a name used for @set, @value and translations arguments. */
char *
read_flag_name (char **ptr)
{
  char *p = *ptr, *q;
  char *ret = 0;

  q = p;
  if (!isascii_alnum (*q) && *q != '-' && *q != '_')
    return 0; /* Invalid. */

  while (!strchr (whitespace_chars, *q)
         && !strchr ("{\\}~`^+\"<>|@", *q))
    q++;
  ret = strndup (p, q - p);
  p = q;

  *ptr = p;
  return ret;
}

/* s/\s+/ /g with re => '/a' in perl */
char *
collapse_spaces (char *text)
{
  TEXT result;
  char *p = text;

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
parse_line_directive (char *line, int *retval, int *out_line_no)
{
  char *p = line, *q;
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
  line_no = strtoul (p, &p, 10);

  p += strspn (p, " \t");
  if (*p == '"')
    {
      char saved;
      p++;
      q = strchr (p, '"');
      if (!q)
        return 0;
      saved = *q;
      *q = 0;
      filename = strdup (p);
      *q = saved;
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

char *
normalize_encoding_name (char *text, int *possible_encoding)
{
  char *p;
  char *normalized_text = strdup (text);
  char *q = normalized_text;
  *possible_encoding = 0;
    /* lower case, trim non-ascii characters and keep only alphanumeric
       characters, - and _.  iconv also seems to trim non alphanumeric
       non - _ characters */
  for (p = text; *p; p++)
    {
      /* check if ascii and alphanumeric */
      if (isascii_alnum(*p))
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

/* include directories and include file */

void
add_include_directory (char *filename, STRING_LIST *include_dirs_list)
{
  int len;
  if (include_dirs_list->number == include_dirs_list->space)
    {
      include_dirs_list->list = realloc (include_dirs_list->list,
                   sizeof (char *) * (include_dirs_list->space += 5));
    }
  filename = strdup (filename);
  include_dirs_list->list[include_dirs_list->number++] = filename;
  len = strlen (filename);
  if (len > 0 && filename[len - 1] == '/')
    filename[len - 1] = '\0';
}

void
clear_include_directories (STRING_LIST *include_dirs_list)
{
  int i;
  for (i = 0; i < include_dirs_list->number; i++)
    {
      free (include_dirs_list->list[i]);
    }
  include_dirs_list->number = 0;
}

/* Return value to be freed by caller. */
/* try to locate a file called FILENAME, looking for it in the list of include
   directories. */
char *
locate_include_file (char *filename, STRING_LIST *include_dirs_list)
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

/* floats records related functions.
   FIXME Move to a floats.c file? */
void
add_to_float_record_list (FLOAT_RECORD_LIST *float_records, char *type,
                          ELEMENT *element)
{
  if (float_records->number == float_records->space)
    {
      float_records->float_types
               = realloc (float_records->float_types,
                          (float_records->space += 5) * sizeof (FLOAT_RECORD));
    }
  float_records->float_types[float_records->number].type = type;
  float_records->float_types[float_records->number].element = element;
  float_records->number++;
}

FLOAT_RECORD *
find_float_type (FLOAT_RECORD_LIST *float_records, char *float_type)
{
  size_t i;
  for (i = 0; i < float_records->number; i++)
    {
      FLOAT_RECORD *record = &float_records->float_types[i];
      if (!strcmp (record->type, float_type))
        return record;
    }
  return 0;
}

FLOAT_RECORD_LIST *
float_list_to_listoffloats_list (FLOAT_RECORD_LIST *floats_list)
{
  FLOAT_RECORD_LIST *result = malloc (sizeof (FLOAT_RECORD_LIST));
  memset (result, 0, sizeof (FLOAT_RECORD_LIST));

  /* a zero floats_list is unusual, it cannot happen when a document
     comes from parsing of Texinfo, but it may happen with a document
     created from code */

  if (floats_list && floats_list->number > 0)
    {
      size_t i;

      for (i = 0; i < floats_list->number; i++)
        {
          FLOAT_RECORD *float_record = &floats_list->float_types[i];
          char *float_type = float_record->type;
          ELEMENT *listoffloats_element;

          FLOAT_RECORD *listoffloats_type_record = find_float_type (result,
                                                                 float_type);
          /* add a new container of floats by float_type */
          if (!listoffloats_type_record)
            {
              listoffloats_element = new_element (ET_NONE);
              add_to_float_record_list (result, strdup (float_type),
                                        listoffloats_element);
            }
          else
            listoffloats_element = listoffloats_type_record->element;

          add_to_contents_as_array (listoffloats_element,
                                   float_record->element);
        }
    }
  return result;
}

void
destroy_listoffloats_list (FLOAT_RECORD_LIST *listoffloats_list)
{
  size_t i;
  for (i = 0; i < listoffloats_list->number; i++)
    {
      free (listoffloats_list->float_types[i].type);
      destroy_element (listoffloats_list->float_types[i].element);
    }
  free (listoffloats_list->float_types);
  free (listoffloats_list);
}

void
delete_global_info (GLOBAL_INFO *global_info_ref)
{
  GLOBAL_INFO global_info = *global_info_ref;

  free (global_info.dircategory_direntry.contents.list);
  free (global_info.footnotes.contents.list);

  free (global_info.global_input_encoding_name);
  free (global_info.input_file_name);
  free (global_info.input_directory);

#define GLOBAL_CASE(cmx) \
  free (global_info.cmx.contents.list)

  GLOBAL_CASE(author);
  GLOBAL_CASE(detailmenu);
  GLOBAL_CASE(hyphenation);
  GLOBAL_CASE(insertcopying);
  GLOBAL_CASE(printindex);
  GLOBAL_CASE(subtitle);
  GLOBAL_CASE(titlefont);
  GLOBAL_CASE(listoffloats);
  GLOBAL_CASE(part);
  GLOBAL_CASE(floats);
  GLOBAL_CASE(allowcodebreaks);
  GLOBAL_CASE(clickstyle);
  GLOBAL_CASE(codequotebacktick);
  GLOBAL_CASE(codequoteundirected);
  GLOBAL_CASE(contents);
  GLOBAL_CASE(deftypefnnewline);
  GLOBAL_CASE(documentencoding);
  GLOBAL_CASE(documentlanguage);
  GLOBAL_CASE(exampleindent);
  GLOBAL_CASE(firstparagraphindent);
  GLOBAL_CASE(frenchspacing);
  GLOBAL_CASE(headings);
  GLOBAL_CASE(kbdinputstyle);
  GLOBAL_CASE(microtype);
  GLOBAL_CASE(paragraphindent);
  GLOBAL_CASE(shortcontents);
  GLOBAL_CASE(urefbreakstyle);
  GLOBAL_CASE(xrefautomaticsectiontitle);

#undef GLOBAL_CASE
}

/* in Common.pm */
/* the returned level will be < 0 if the command is not supposed
   to be associated to a level. */
int
section_level (ELEMENT *section)
{
  int level = command_structuring_level[section->cmd];
  KEY_PAIR *k_level_modifier = lookup_extra (section, "level_modifier");
  if (k_level_modifier && level >= 0)
    {
      int section_modifier = (intptr_t) k_level_modifier->value;
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

/* from Common.pm */
int
is_content_empty (ELEMENT *tree, int do_not_ignore_index_entries)
{
  int i;
  if (!tree || !tree->contents.number)
    return 1;

  for (i = 0; i < tree->contents.number; i++)
    {
      ELEMENT *content = tree->contents.list[i];
      if (content->cmd)
        {
          if (content->type == ET_index_entry_command)
            {
              if (do_not_ignore_index_entries)
                return 0;
              else
               continue;
            }
          if (builtin_command_flags(content) & CF_line)
            {
              if (command_other_flags(content) & CF_formatted_line
                  || command_other_flags(content) & CF_formattable_line)
                return 0;
              else
                continue;
            }
          else if (builtin_command_flags(content) & CF_nobrace)
            {
              if (command_other_flags(content) & CF_formatted_nobrace)
                return 0;
              else
                continue;
            }
          else if (command_other_flags(content) & CF_non_formatted_brace
                   || command_other_flags(content) & CF_non_formatted_block)
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

/* could have been in tree, but it would add a dependency on extra.h
 * Move somewhere else ? */

ELEMENT *
copy_tree_internal (ELEMENT* current, ELEMENT *parent);

void
increase_ref_counter (ELEMENT *element)
{
  KEY_PAIR *k_counter;
  intptr_t *counter_ptr;

  k_counter = lookup_extra_by_index (element, "_counter", -1);
  if (!k_counter)
    add_extra_integer (element, "_counter", 0);
  k_counter = lookup_extra_by_index (element, "_counter", -1);
  counter_ptr = (intptr_t *) &k_counter->value;
  (*counter_ptr) ++;
}

void
copy_associated_info (ASSOCIATED_INFO *info, ASSOCIATED_INFO* new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      char *key = info->info[i].key;
      ELEMENT *f = (ELEMENT *) info->info[i].value;
      ELEMENT *new_extra_contents;
      KEY_PAIR *k_copy = 0;
      int j;

      if (info->info[i].type == extra_deleted)
        continue;

      switch (info->info[i].type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp(key, "_copy"))
            break;
          k_copy = lookup_extra_by_index (f, "_copy", -1);
          if (k_copy)
            add_associated_info_key (new_info, key, (intptr_t)k_copy->value,
                                     info->info[i].type);
          else
            {
              increase_ref_counter (f);
            }
          copy_tree_internal (f, 0);
          break;
        case extra_contents:
        case extra_directions:
          new_extra_contents = new_element (ET_NONE);
          add_associated_info_key (new_info, key, (intptr_t)new_extra_contents,
                                   info->info[i].type);
          for (j = 0; j < f->contents.number; j++)
            {
              ELEMENT *e = f->contents.list[j];
              if (!e && info->info[i].type == extra_directions)
                {
                  add_to_contents_as_array (new_extra_contents, 0);
                }
              else
                {
                  k_copy = lookup_extra_by_index (e, "_copy", -1);
                  if (k_copy)
                    add_to_contents_as_array (new_extra_contents,
                                              (ELEMENT *)k_copy->value);
                  else
                    {
                      increase_ref_counter (e);
                      add_to_contents_as_array (new_extra_contents, 0);
                    }
                  copy_tree_internal (e, 0);
                }
            }
        default:
          break;
        }
    }
}

ELEMENT *
copy_tree_internal (ELEMENT* current, ELEMENT *parent)
{
  KEY_PAIR *k_copy = 0;
  ELEMENT *new;
  int i;

  k_copy = lookup_extra_by_index (current, "_copy", -1);
  if (k_copy)
    {
      new = (ELEMENT *)k_copy->value;
      if (parent && !new->parent)
        new->parent = parent;
      return new;
    }

  new = new_element(ET_NONE);
  if (current->type)
    new->type = current->type;
  if (current->cmd)
    new->cmd = current->cmd;
  if (current->text.space > 0)
    text_append (&new->text, current->text.text);

  increase_ref_counter (current);
  add_extra_element (current, "_copy", new);

  /*
  fprintf (stderr, "CTNEW %p %s %p\n", current,
                                       print_element_debug (current, 0), new);
  */

  for (i = 0; i < current->args.number; i++)
    add_to_element_args (new,
                copy_tree_internal(current->args.list[i], new));
  for (i = 0; i < current->contents.number; i++)
    add_to_element_contents (new,
                copy_tree_internal(current->contents.list[i], new));
  copy_associated_info (&current->info_info, &new->info_info);
  copy_associated_info (&current->extra_info, &new->extra_info);
  return new;
}

ELEMENT *
get_copy_ref (ELEMENT *element)
{
  KEY_PAIR *k_counter, *k_copy;
  intptr_t *counter_ptr;
  ELEMENT *result;

  k_copy = lookup_extra_by_index (element, "_copy", -1);
  result = (ELEMENT *)k_copy->value;

  k_counter = lookup_extra_by_index (element, "_counter", -2);
  counter_ptr = (intptr_t *) &k_counter->value;
  (*counter_ptr) --;

  if (*counter_ptr == 0)
    {
      element->extra_info.info_number -= 2;
    }

  return result;
}

void
copy_extra_info (ELEMENT *current, ELEMENT *new);

void
associate_info_references (ASSOCIATED_INFO *info, ASSOCIATED_INFO *new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      char *key = info->info[i].key;
      ELEMENT *f = (ELEMENT *) info->info[i].value;
      ELEMENT *new_extra_contents;
      int j;

      if (info->info[i].type == extra_deleted)
        continue;

      switch (info->info[i].type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp(key, "_copy"))
            break;
          {
            KEY_PAIR *k;
            KEY_PAIR *k_copy;
            k = lookup_associated_info (new_info, key);
            if (!k)
              {
                ELEMENT *e = get_copy_ref (f);
                add_associated_info_key (new_info, key, (intptr_t)e,
                                         info->info[i].type);
              }
            k_copy = lookup_extra_by_index (f, "_copy", -1);
            if (k_copy)
              copy_extra_info (f, (ELEMENT *) k_copy->value);
            break;
          }
        case extra_contents:
        case extra_directions:
          {
            KEY_PAIR *k = lookup_associated_info (new_info, key);
            new_extra_contents = (ELEMENT *)k->value;
            for (j = 0; j < f->contents.number; j++)
              {
                KEY_PAIR *k_copy;
                ELEMENT *e = f->contents.list[j];
                ELEMENT *new_e = new_extra_contents->contents.list[j];
                if (!e && info->info[i].type == extra_directions)
                  {
                  }
                else
                  {
                    if (!new_e)
                      {
                        ELEMENT *new_ref = get_copy_ref (e);
                        new_extra_contents->contents.list[j] = new_ref;
                      }

                    k_copy = lookup_extra_by_index (e, "_copy", -1);
                    if (k_copy)
                      copy_extra_info (e, (ELEMENT *) k_copy->value);
                  }
                }
              break;
            }
        case extra_string:
          { /* A simple string. */
            char *value = (char *) f;
            add_associated_info_key (new_info, key, (intptr_t) strdup (value),
                                     info->info[i].type);
            break;
          }
        case extra_integer:
          if (!strcmp(key, "_counter"))
            break;
          { /* A simple integer. */
            add_associated_info_key (new_info, key, (intptr_t)f,
                                     info->info[i].type);
            break;
          }
        case extra_misc_args:
          {
          int j;
          new_extra_contents = new_element (ET_NONE);
          add_associated_info_key (new_info, key, (intptr_t)new_extra_contents,
                                   info->info[i].type);
          for (j = 0; j < f->contents.number; j++)
            {
              ELEMENT *e = new_element (ET_NONE);
              KEY_PAIR *k_integer = lookup_extra (f->contents.list[j], "integer");
              if (k_integer)
                {
                  add_extra_integer (e, "integer", (intptr_t) k_integer->value);
                }
              else
                {
                  if (f->contents.list[j]->text.space > 0)
                    text_append (&e->text, f->contents.list[j]->text.text);
                }
              add_to_contents_as_array (new_extra_contents, e);
            }
          break;
          }
        default:
          fatal ("unknown extra type");
          break;
        }
    }
}



void
copy_extra_info (ELEMENT *current, ELEMENT *new)
{
  KEY_PAIR *k_copy = 0;
  int i;

  k_copy = lookup_extra_by_index (current, "_copy", -1);
  if (!k_copy)
    /* already done */
    return;
  get_copy_ref (current);

  for (i = 0; i < current->args.number; i++)
    copy_extra_info (current->args.list[i], new->args.list[i]);
  for (i = 0; i < current->contents.number; i++)
    copy_extra_info (current->contents.list[i], new->contents.list[i]);

  associate_info_references (&current->info_info, &new->info_info);
  associate_info_references (&current->extra_info, &new->extra_info);
}

ELEMENT *
copy_tree (ELEMENT *current, ELEMENT *parent)
{
  ELEMENT *copy = copy_tree_internal (current, parent);
  copy_extra_info (current, copy);
  return copy;
}

ELEMENT *
copy_contents (ELEMENT *element, enum element_type type)
{
  ELEMENT *tmp = new_element (type);
  ELEMENT *result;
  tmp->contents = element->contents;

  result = copy_tree (tmp, 0);

  tmp->contents.list = 0;
  destroy_element (tmp);

  return result;
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
  int *result = malloc (space * sizeof(int));
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
      int spec = strtol(specification, NULL, 10) + number -1;
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
