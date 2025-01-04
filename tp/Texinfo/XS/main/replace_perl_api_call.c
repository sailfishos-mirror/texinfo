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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* implement api to Perl and calls to Perl function that are called from
   pure C code */

#include <config.h>

#include <stdlib.h>
#include <string.h>

#include "document_types.h"
#include "utils.h"
#include "api_to_perl.h"
#include "call_perl_function.h"

/* in xs_utils.h */
void
set_no_perl_interpreter (int value)
{
}

int
get_no_perl_interpreter (void)
{
  return 1;
}

void
call_switch_to_global_locale (void)
{
}

void
call_sync_locale (void)
{
}

void
unregister_perl_data (void *sv)
{ 
}     
        
void
register_perl_data (void *sv)
{
}

char *
get_perl_scalar_reference_value (const void *sv_string)
{
  return 0;
}

/* it is up to the caller to do something useful if NULL is returned */
char *
call_nodenamenormalization_unicode_to_transliterate (const char *text)
{
  return 0;
}

char *
call_translations_translate_string (const char *string, const char *in_lang,
                                    const char *translation_context)
{
  return 0;
}

/* happens if not linked against Perl and a collation locale was specified
   but not found */
const void *
call_setup_collator (int use_unicode_collation, const char *locale_lang)
{
  return 0;
}

/* since call_setup_collator return 0, the following function will never
   get called */
BYTES_STRING *
call_collator_getSortKey (const void *collator_sv, const char *string)
{
  BYTES_STRING *result;
  result = (BYTES_STRING *) malloc (sizeof (BYTES_STRING));
  memset (result, 0, sizeof (BYTES_STRING));
  return result;
}

char *
call_latex_convert_to_latex_math (CONVERTER *self, const ELEMENT *element)
{ 
  return 0;
}

