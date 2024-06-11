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

#include <config.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include <string.h>

#include "tree_types.h"
#include "converter_types.h"
#include "document_types.h"
/* for non_perl_strndup and similar */
#include "utils.h"
#include "build_perl_info.h"
#include "call_perl_function.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

char *
call_nodenamenormalization_unicode_to_transliterate (const char *text)
{
  int count;
  char *result;
  char *result_ret;
  STRLEN len;
  SV *result_sv;

  dTHX;

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 1);

  PUSHs(sv_2mortal (newSVpv_utf8 (text, 0)));
  PUTBACK;

  count = call_pv (
    "Texinfo::Convert::NodeNameNormalization::_unicode_to_transliterate",
    G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("_unicode_to_transliterate should return 1 item\n");

  result_sv = POPs;
  result_ret = SvPVutf8 (result_sv, len);
  result = non_perl_strndup (result_ret, len);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

char *
call_latex_convert_to_latex_math (CONVERTER *self, const ELEMENT *element)
{
  int count;
  char *result;
  char *result_ret;
  STRLEN len;
  SV *result_sv;
  SV **options_latex_math_sv;
  SV *options_latex_math;

  dTHX;

  if (!self->hv)
    return 0;

  build_tree_to_build (&self->tree_to_build);

  dSP;

  options_latex_math_sv = hv_fetch (self->hv, "options_latex_math",
                                 strlen ("options_latex_math"), 0);

  if (options_latex_math_sv)
    {
      options_latex_math = *options_latex_math_sv;
      SvREFCNT_inc (options_latex_math);
    }
  else
    {
      options_latex_math = newSV (0);
    }


  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 3);

  PUSHs(sv_2mortal (newSV (0)));
  PUSHs(sv_2mortal (newRV_inc (element->hv)));
  PUSHs(sv_2mortal (options_latex_math));
  PUTBACK;

  count = call_pv (
    "Texinfo::Convert::LaTeX::convert_to_latex_math",
    G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("convert_to_latex_math should return 1 item\n");

  result_sv = POPs;
  result_ret = SvPVutf8 (result_sv, len);
  result = non_perl_strndup (result_ret, len);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

const void *
call_setup_collator (int use_unicode_collation, const char *locale_lang)
{
  int count;
  const void *result = 0;
  SV *collator_sv = 0;

  dTHX;

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  PUSHs(sv_2mortal (newSViv (use_unicode_collation)));
  PUSHs(sv_2mortal (newSVpv (locale_lang, 0)));

  PUTBACK;

  count = call_pv ("Texinfo::Indices::_setup_collator",
                   G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("_setup_collator should return 1 item\n");

  collator_sv = POPs;
  if (SvOK (collator_sv))
    {
      SvREFCNT_inc (collator_sv);
      result = (const void *) collator_sv;
    }

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

BYTES_STRING *
call_collator_getSortKey (const void *collator_sv, const char *string)
{
  BYTES_STRING *result;
  unsigned char *result_ret;
  STRLEN len;
  SV *result_sv;
  int count;

  dTHX;

  result = (BYTES_STRING *) non_perl_malloc (sizeof (BYTES_STRING));
  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  PUSHs((SV *) collator_sv);
  PUSHs(sv_2mortal (newSVpv_utf8 (string, 0)));

  PUTBACK;

  count = call_method ("getSortKey",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("getSortKey should return 1 item\n");

  result_sv = POPs;
  result_ret = (unsigned char *)SvPVbyte (result_sv, len);
  result->len = (size_t) len;
  result->bytes = (unsigned char *)
    non_perl_malloc (sizeof (unsigned char) * len);
  memcpy (result->bytes, result_ret, result->len);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}


