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

#include <string.h>

#include "tree_types.h"
#include "converter_types.h"
#include "build_perl_info.h"
#include "call_perl_function.h"

char *
call_nodenamenormalization_unicode_to_transliterate (char *text)
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
    croak("_unicode_to_transliterate should return 1 item\n");

  result_sv = POPs;
  /* FIXME encoding */
  result_ret = SvPV (result_sv, len);
  result = strdup (result_ret);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

char *
call_latex_convert_to_latex_math (CONVERTER *self, ELEMENT *element)
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

  /* in case of @displaymath an element containing the contents
     of the displaymath element is passed, it is not registered in perl */
  if (!element->hv)
    {
      element_to_perl_hash (element, 1);
    }

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
    croak("convert_to_latex_math should return 1 item\n");

  result_sv = POPs;
  /* FIXME encoding */
  result_ret = SvPV (result_sv, len);
  result = strdup (result_ret);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}
