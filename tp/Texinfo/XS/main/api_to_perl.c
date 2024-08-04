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
#if defined _WIN32 && !defined __CYGWIN__
/* See comment in XSParagraph.xs for why we #undef free. */
  #undef free
#endif
#include "XSUB.h"
#include "ppport.h"

#undef context

#include "tree_types.h"
#include "option_types.h"
#include "converter_types.h"
#include "document_types.h"
/* non_perl_* */
#include "utils.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

/* for debugging */
int
get_refcount (void *sv)
{
  return SvREFCNT ((SV *) sv);
}

/* to be called when a tree element is destroyed, to remove the reference
   of the association with the C tree */
void
unregister_perl_tree_element (ELEMENT *e)
{
  dTHX;

  if (e->hv)
    {
      SvREFCNT_dec ((SV *) e->hv);
      e->hv = 0;
    }
}

void
unregister_perl_buttons_list (BUTTON_SPECIFICATION_LIST *buttons_list)
{
  dTHX;

  if (buttons_list->av)
    SvREFCNT_dec (buttons_list->av);
}

void
register_perl_buttons_list (BUTTON_SPECIFICATION_LIST *buttons_list)
{
  dTHX;

  if (buttons_list->av)
    SvREFCNT_inc (buttons_list->av);
}

void
unregister_perl_button (BUTTON_SPECIFICATION *button)
{
  dTHX;

  if (button->sv)
    SvREFCNT_dec (button->sv);
}

void
register_perl_button (BUTTON_SPECIFICATION *button)
{
  dTHX;

  if (button->sv)
    SvREFCNT_inc (button->sv);
}

void
unregister_perl_direction_icons (DIRECTION_ICON_LIST *direction_icons)
{
  dTHX;

  if (direction_icons->sv)
    SvREFCNT_dec (direction_icons->sv);
}

void
register_perl_data (void *sv)
{
  SvREFCNT_inc (sv);
}

char *
get_perl_scalar_reference_value (const void *sv_string)
{
  const SV *string_ref_sv;

  dTHX;

  string_ref_sv = (SV *) sv_string;
  if (SvOK (string_ref_sv) && SvROK (string_ref_sv))
    {
      SV *string_sv = SvRV (string_ref_sv);
      if (SvOK (string_sv))
        {
          const char *value_tmp = (char *) SvPVutf8_nolen (string_sv);
          char *value = non_perl_strdup (value_tmp);
          return value;
        }
    }
  return 0;
}

void
call_switch_to_global_locale (void)
{
  dTHX;

#if PERL_VERSION > 27 || (PERL_VERSION == 27 && PERL_SUBVERSION > 8)
  /* needed due to thread-safe locale handling in newer perls */
  switch_to_global_locale ();
#endif
}

void
call_sync_locale (void)
{
  dTHX;

#if PERL_VERSION > 27 || (PERL_VERSION == 27 && PERL_SUBVERSION > 8)
  /* needed due to thread-safe locale handling in newer perls */
  sync_locale ();
#endif
}

void
croak_message (char *message)
{
  croak ("%s\n", message);
}

/* HTML specific */
void
unregister_html_converter_perl_hv (CONVERTER *converter)
{
  dTHX;

  if (converter->pl_info_hv)
    {
      SvREFCNT_dec ((SV *)converter->pl_info_hv);
      converter->pl_info_hv = 0;
    }
}

void
unregister_document_hv (DOCUMENT *document)
{
  dTHX;

  if (document->hv)
    {
      SvREFCNT_dec ((SV *)document->hv);
      document->hv = 0;
    }
}
