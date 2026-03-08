/* Copyright 2023-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* ALTIMP perl/Texinfo/TreeElement.pm */

#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

MODULE = Texinfo::TreeElement		PACKAGE = Texinfo::TreeElement

PROTOTYPES: ENABLE

# This function does exactly the same as in pure Perl, and is not used
# to register a new element in C because there is no way to find the
# C data document to register the element in.
SV *
new (SV *element_hash)
    PREINIT:
        HV *hv_stash;
    CODE:
        /*
        fprintf (stderr, "Call of TreeElement new through XS\n");
         */
        hv_stash = gv_stashpv ("Texinfo::TreeElement", GV_ADD);
        /* the refcount needs to be increased probably because the
           argument is "mortal" and has its counters decreased upon
           leaving the function */
        RETVAL = sv_bless (newSVsv (element_hash), hv_stash);
    OUTPUT:
         RETVAL

