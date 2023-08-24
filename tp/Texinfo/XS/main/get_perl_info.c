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

