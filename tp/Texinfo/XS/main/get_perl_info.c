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

#include "document.h"
#include "convert_to_text.h"
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

/* Similar to Texinfo/Convert/Text.pm copy_options_for_convert_text
   but for a hash of options in the Texinfo::Convert::Text format
 */
/* TODO more to do */
TEXT_OPTIONS *
copy_sv_options_for_convert_text (SV *sv_in)
{
  HV *hv_in;
  SV **test_option_sv;
  SV **include_directories_sv;
  SV **expanded_formats_hash_sv;
  SV **enabled_encoding_sv;
  TEXT_OPTIONS *options = new_text_options ();

  dTHX;

  hv_in = (HV *)SvRV (sv_in);

  test_option_sv = hv_fetch (hv_in, "TEST", strlen ("TEST"), 0);
  if (test_option_sv)
    options->test = SvIV (*test_option_sv);

  enabled_encoding_sv = hv_fetch (hv_in, "enabled_encoding",
                                  strlen ("enabled_encoding"), 0);
  if (enabled_encoding_sv)
    options->encoding = strdup (SvPVbyte_nolen (*enabled_encoding_sv));

  include_directories_sv = hv_fetch (hv_in, "INCLUDE_DIRECTORIES",
                                     strlen ("INCLUDE_DIRECTORIES"), 0);
  if (include_directories_sv)
    {
      int i;
      SSize_t inc_dirs_nr;
      AV *include_directories = (AV *)SvRV (*include_directories_sv);
      inc_dirs_nr = av_top_index (include_directories);
      for (i = 0; i < inc_dirs_nr; i++)
        {
          SV** include_dir_sv = av_fetch (include_directories, i, 0);
          if (include_dir_sv)
            {
              char *include_dir = SvPVbyte_nolen (*include_dir_sv);
              add_include_directory (include_dir, &options->include_directories);
            }
        }
    }

  expanded_formats_hash_sv = hv_fetch (hv_in, "expanded_formats_hash",
                                       strlen ("expanded_formats_hash"), 0);
  if (expanded_formats_hash_sv)
    {
      I32 hv_number;
      I32 i;
      HV *expanded_formats_hash = (HV *)SvRV (*expanded_formats_hash_sv);

      hv_number = hv_iterinit (expanded_formats_hash);
      for (i = 0; i < hv_number; i++)
        {
          int int_value;
          char *key;
          I32 retlen;
          SV *value = hv_iternextsv(expanded_formats_hash,
                                    &key, &retlen);
          int_value = SvIV (value);
          if (int_value)
            add_expanded_format (options->expanded_formats, key);
        }
    }

  return options;
}
