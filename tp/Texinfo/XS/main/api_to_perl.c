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

#include "tree_types.h"

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
call_switch_to_global_locale ()
{
  dTHX;

#if PERL_VERSION > 27 || (PERL_VERSION == 27 && PERL_SUBVERSION > 8)
  /* needed due to thread-safe locale handling in newer perls */
  switch_to_global_locale ();
#endif
}

void
call_sync_locale ()
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
