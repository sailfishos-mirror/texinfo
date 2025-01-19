/* Copyright 2010-2025 Free Software Foundation, Inc.

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

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "tree_types.h"
#include "converter_types.h"
#include "document_types.h"
#include "build_perl_info.h"
#include "get_perl_info.h"
#include "get_converter_perl_info.h"
#include "xs_utils.h"
#include "converter.h"
#include "call_conversion_perl.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */


int
call_config_GNUT_load_init_file (const char *file_path)
{
  int count;

  dTHX;

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 1);

  PUSHs(sv_2mortal (newSVpv_byte (file_path, 0)));

  PUTBACK;

  count = call_pv ("Texinfo::Config::GNUT_load_init_file",
                   G_VOID);

  SPAGAIN;

  if (count != 0)
    croak ("Texinfo::Config::GNUT_load_init_file should not return anything\n");

  PUTBACK;

  FREETMPS;
  LEAVE;

  return 1;
}

CONVERTER *
get_sv_converter (SV *sv_in, const char *warn_string)
{
  size_t converter_descriptor = 0;
  CONVERTER *converter = 0;
  SV** converter_descriptor_sv;
  HV *hv_in;
  char *key = "converter_descriptor";

  dTHX;

  hv_in = (HV *)SvRV (sv_in);
  converter_descriptor_sv = hv_fetch (hv_in, key, strlen (key), 0);
  if (converter_descriptor_sv)
    {
      converter_descriptor = (size_t) SvIV (*converter_descriptor_sv);
      converter = retrieve_converter (converter_descriptor);
    }
  else if (warn_string)
    {
      fprintf (stderr, "ERROR: %s: no %s\n", warn_string, key);
      return 0;
    }
  if (! converter && warn_string)
    {
      fprintf (stderr, "ERROR: %s: no converter %zu\n", warn_string,
                                                      converter_descriptor);
    }
  return converter;
}

CONVERTER_INITIALIZATION_INFO *
call_module_converter_defaults (const char *module_name,
                                OPTIONS_LIST *customizations)
{
  SV *options_list_sv;
  int count;
  SV *result_sv;
  CONVERTER_INITIALIZATION_INFO *result;

  dTHX;

  options_list_sv
    = build_sv_options_from_options_list (customizations, 0);

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  SvREFCNT_inc (options_list_sv);

  PUSHs(sv_2mortal (newSVpv (module_name, 0)));
  PUSHs(sv_2mortal (options_list_sv));
  PUTBACK;

  count = call_method ("converter_defaults",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_convert_converter should return 1 item\n");

  result_sv = POPs;

  result = get_converter_info_from_sv (result_sv, module_name, 0);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

CONVERTER *
call_convert_converter (const char *module_name,
                        const CONVERTER_INITIALIZATION_INFO *conf)
{
  SV *options_list_sv;
  int count;
  CONVERTER *result;
  SV *result_sv;

  dTHX;

  /* TODO add a function to build from CONVERTER_INITIALIZATION_INFO */
  options_list_sv
    = build_sv_options_from_options_list (&conf->conf, 0);

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  SvREFCNT_inc (options_list_sv);

  PUSHs(sv_2mortal (newSVpv (module_name, 0)));
  PUSHs(sv_2mortal (options_list_sv));
  PUTBACK;

  count = call_method ("converter",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_convert_converter should return 1 item\n");

  result_sv = POPs;
  result = get_sv_converter (result_sv, "call_convert_converter");

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

/* call converter->output and converter->output_files_information if needed
   and return an OUTPUT_TEXT_FILES_INFO which contains both the resulting text
   and the output files information, if not already in the converter. */
/* FIXME it would probably be better to be able to keep the converter
   SV to keep the blessing information instead of needing the module name */
OUTPUT_TEXT_FILES_INFO *
call_converter_output (const char *module_name, CONVERTER *self,
                       DOCUMENT *document)
{
  SV *document_sv;
  SV *converter_sv;
  int count;
  OUTPUT_TEXT_FILES_INFO *result;
  const char *result_ret;
  STRLEN len;
  SV *result_sv;
  HV *hv_stash;

  dTHX;

  document_sv = get_document (document->descriptor);
  SvREFCNT_inc (document_sv);

  converter_sv = newRV_inc (self->hv);
  SvREFCNT_inc (converter_sv);

  hv_stash = gv_stashpv (module_name, 0);
  sv_bless (converter_sv, hv_stash);

  result = (OUTPUT_TEXT_FILES_INFO *)
    non_perl_malloc (sizeof (OUTPUT_TEXT_FILES_INFO));

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);

  PUSHs(sv_2mortal (converter_sv));
  PUSHs(sv_2mortal (document_sv));
  PUTBACK;

  count = call_method ("output",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_output should return 1 item\n");

  result_sv = POPs;
  result_ret = SvPVutf8 (result_sv, len);
  result->text = non_perl_strndup (result_ret, len);
  result->output_files_information = 0;

  PUTBACK;

  FREETMPS;
  LEAVE;

  /* already set in the converter, no need to get from Perl.
     Case of converters implemented in C, for instance HTML */
  if (self->output_files_information.opened_files.number > 0
      || self->output_files_information.unclosed_files.number > 0)
    return result;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 1);

  PUSHs(sv_2mortal (converter_sv));
  PUTBACK;

  count = call_method ("output_files_information",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_output should return 1 item\n");

  result_sv = POPs;
  result->output_files_information = get_output_files_information (result_sv);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

/* FIXME it would probably be better to be able to keep the converter
   SV to keep the blessing information instead of needing the module name */
char *
call_sort_element_counts (const char *module_name, CONVERTER *self,
                          DOCUMENT *document, int use_sections,
                          int count_words)
{
  SV *document_sv;
  SV *converter_sv;
  int count;
  const char *result_ret;
  char *result;
  STRLEN len;
  SV *result_sv;
  HV *hv_stash;

  dTHX;

  document_sv = get_document (document->descriptor);
  SvREFCNT_inc (document_sv);

  converter_sv = newRV_inc (self->hv);
  SvREFCNT_inc (converter_sv);

  hv_stash = gv_stashpv (module_name, 0);
  sv_bless (converter_sv, hv_stash);

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 4);

  PUSHs(sv_2mortal (converter_sv));
  PUSHs(sv_2mortal (document_sv));
  PUSHs(sv_2mortal (newSViv (use_sections)));
  PUSHs(sv_2mortal (newSViv (count_words)));
  PUTBACK;

  count = call_method ("sort_element_counts",
                       G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak ("call_sort_element_counts should return 1 item\n");

  result_sv = POPs;
  result_ret = SvPVutf8 (result_sv, len);
  result = non_perl_strndup (result_ret, len);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}

