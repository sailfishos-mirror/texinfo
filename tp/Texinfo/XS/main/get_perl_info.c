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

#include <config.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
/* Avoid warnings about Perl headers redefining symbols that gnulib
   redefined already. */
#if defined _WIN32 && !defined __CYGWIN__
  #undef free
#endif
#include "XSUB.h"

#undef context

/*
FIXME add an initialization of translations?

#ifdef ENABLE_NLS
#include <libintl.h>
#endif
*/

#include "utils.h"
#include "document.h"
#include "convert_to_text.h"
#include "options_types.h"
#include "get_perl_info.h"

DOCUMENT *
get_document_or_warn (SV *sv_in, char *key, char *warn_string)
{
  int document_descriptor;
  DOCUMENT *document = 0;
  SV** document_descriptor_sv;
  HV *hv_in;

  dTHX;

  hv_in = (HV *)SvRV (sv_in);
  document_descriptor_sv = hv_fetch (hv_in, key, strlen (key), 0);
  if (document_descriptor_sv)
    {
      document_descriptor = SvIV (*document_descriptor_sv);
      document = retrieve_document (document_descriptor);
    }
  else if (warn_string)
    {
      fprintf (stderr, "ERROR: %s: no %s\n", warn_string, key);
      return 0;
    }
  if (! document && warn_string)
    {
      fprintf (stderr, "ERROR: %s: no document %d\n", warn_string,
                                                      document_descriptor);
    }
  return document;
}

DOCUMENT *
get_sv_tree_document (SV *tree_in, char *warn_string)
{
  dTHX;

  return get_document_or_warn (tree_in, "tree_document_descriptor",
                               warn_string);
}

DOCUMENT *
get_sv_document_document (SV *document_in, char *warn_string)
{
  dTHX;

  return get_document_or_warn (document_in, "document_descriptor",
                               warn_string);
}

void
add_svav_to_string_list (SV **sv, STRING_LIST *string_list, int dir_strings)
{
  dTHX;

  if (sv)
    {
      int i;
      SSize_t strings_nr;
      AV *av = (AV *)SvRV (*sv);
      strings_nr = av_top_index (av) +1;
      for (i = 0; i < strings_nr; i++)
        {
          SV** string_sv = av_fetch (av, i, 0);
          if (string_sv)
            {
              char *string = SvPVbyte_nolen (*string_sv);
              if (dir_strings)
                add_include_directory (string, string_list);
              else
                add_string (string, string_list);
            }
        }
    }
}

/* contains get_sv_options (), automatically generated from options_data.txt */
#include "options_get_perl.c"

OPTIONS *
copy_sv_options (SV *sv_in)
{
  OPTIONS *options = new_options ();
  get_sv_options (sv_in, options);
  return options;
}

/* map hash reference of Convert::Text options to TEXT_OPTIONS */
/* TODO more to do */
TEXT_OPTIONS *
copy_sv_options_for_convert_text (SV *sv_in)
{
  HV *hv_in;
  SV **test_option_sv;
  SV **include_directories_sv;
  SV **expanded_formats_sv;
  SV **converter_options_sv;
  SV **enabled_encoding_sv;
  SV **sort_string_option_sv;
  SV **document_descriptor_sv;
  TEXT_OPTIONS *text_options = new_text_options ();

  dTHX;

  hv_in = (HV *)SvRV (sv_in);

  test_option_sv = hv_fetch (hv_in, "TEST", strlen ("TEST"), 0);
  if (test_option_sv)
    text_options->test = SvIV (*test_option_sv);

  sort_string_option_sv = hv_fetch (hv_in, "sort_string",
                                    strlen ("sort_string"), 0);
  if (sort_string_option_sv)
    text_options->sort_string = SvIV (*sort_string_option_sv);

  enabled_encoding_sv = hv_fetch (hv_in, "enabled_encoding",
                                  strlen ("enabled_encoding"), 0);
  if (enabled_encoding_sv)
    text_options->encoding = strdup (SvPVbyte_nolen (*enabled_encoding_sv));

  include_directories_sv = hv_fetch (hv_in, "INCLUDE_DIRECTORIES",
                                     strlen ("INCLUDE_DIRECTORIES"), 0);

  add_svav_to_string_list (include_directories_sv,
                           &text_options->include_directories, 1);

  expanded_formats_sv = hv_fetch (hv_in, "expanded_formats",
                                  strlen ("expanded_formats"), 0);
  if (expanded_formats_sv)
    {
      int i;
      SSize_t formats_nr;

      AV *av = (AV *)SvRV (*expanded_formats_sv);

      formats_nr = av_top_index (av) +1;
      for (i = 0; i < formats_nr; i++)
        {
          SV** string_sv = av_fetch (av, i, 0);
          if (string_sv)
            {
              char *string = SvPVbyte_nolen (*string_sv);
              add_expanded_format (text_options->expanded_formats, string);
            }
        }
    }

  converter_options_sv = hv_fetch (hv_in, "converter_options",
                                  strlen ("converter_options"), 0);

  if (converter_options_sv)
    {
      text_options->converter_options
         = copy_sv_options (*converter_options_sv);
    }

  return text_options;
}
