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

#include "utils.h"
#include "tree_perl_api.h"
#include "build_perl_info.h"

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

TARGET_FILENAME *
call_file_id_setting_special_unit_target_file_name (CONVERTER *self,
                                      OUTPUT_UNIT *special_unit, char *target,
                                                    char *default_filename)
{
  SV **file_id_setting_sv;

  dTHX;

  if (!special_unit->hv)
    return 0;

  if (!self->hv)
    return 0;

  file_id_setting_sv = hv_fetch (self->hv, "file_id_setting",
                                 strlen ("file_id_setting"), 0);
  if (file_id_setting_sv)
    {
      SV **special_unit_target_file_name_sv;
      HV *file_id_setting_hv = (HV *)SvRV(*file_id_setting_sv);
      special_unit_target_file_name_sv = hv_fetch (file_id_setting_hv,
                                   "special_unit_target_file_name",
                                   strlen ("special_unit_target_file_name"), 0);

      if (special_unit_target_file_name_sv)
        {
          int count;
          char *target_ret;
          char *filename = 0;
          SV *target_ret_sv;
          SV *filename_sv;
          STRLEN len;
          TARGET_FILENAME *result
            = (TARGET_FILENAME *) malloc (sizeof (TARGET_FILENAME));
          result->filename = 0;

          dSP;

          ENTER;
          SAVETMPS;

          PUSHMARK(SP);
          EXTEND(SP, 4);

          PUSHs(sv_2mortal (newRV_inc (self->hv)));
          PUSHs(sv_2mortal (newRV_inc (special_unit->hv)));
          /* FIXME encoding */
          PUSHs(sv_2mortal (newSVpv (target, 0)));
          PUSHs(sv_2mortal (newSVpv (default_filename, 0)));
          PUTBACK;

          count = call_sv (*special_unit_target_file_name_sv, G_ARRAY);

          SPAGAIN;

          if (count != 2)
            croak("special_unit_target_file_name should return 2 items\n");

          filename_sv = POPs;
          if (SvOK (filename_sv))
            {
              STRLEN len;
              filename = SvPV (filename_sv, len);
              result->filename = strdup (filename);
            }

          target_ret_sv = POPs;
          target_ret = SvPV (target_ret_sv, len);
          result->target = strdup (target_ret);

          PUTBACK;

          FREETMPS;
          LEAVE;

          return result;
        }
    }
  return 0;
}

char *
call_file_id_setting_label_target_name (CONVERTER *self,
                       char *normalized, ELEMENT *label_element, char *target,
                       int *called)
{
  SV **file_id_setting_sv;

  dTHX;

  *called = 0;

  if (!label_element->hv)
    return 0;

  if (!self->hv)
    return 0;

  file_id_setting_sv = hv_fetch (self->hv, "file_id_setting",
                                 strlen ("file_id_setting"), 0);
  if (file_id_setting_sv)
    {
      SV **label_target_name_sv;
      HV *file_id_setting_hv = (HV *)SvRV(*file_id_setting_sv);
      label_target_name_sv = hv_fetch (file_id_setting_hv,
                                   "label_target_name",
                                   strlen ("label_target_name"), 0);

      if (label_target_name_sv)
        {
          int count;
          char *target_ret;
          STRLEN len;
          char *result;
          SV *target_ret_sv;

          *called = 1;

          dSP;

          ENTER;
          SAVETMPS;

          PUSHMARK(SP);
          EXTEND(SP, 4);

          PUSHs(sv_2mortal (newRV_inc (self->hv)));
          PUSHs(sv_2mortal (newSVpv (normalized, 0)));
          PUSHs(sv_2mortal (newRV_inc (label_element->hv)));
          PUSHs(sv_2mortal (newSVpv (target, 0)));
          PUTBACK;

          count = call_sv (*label_target_name_sv, G_ARRAY);

          SPAGAIN;

          if (count != 1)
            croak("label_target_name should return 1 item\n");

          target_ret_sv = POPs;
          target_ret = SvPV (target_ret_sv, len);
          result = strdup (target_ret);

          PUTBACK;

          FREETMPS;
          LEAVE;

          return result;
        }
    }
  return 0;
}


char *
call_file_id_setting_node_file_name (CONVERTER *self,
                       ELEMENT *target_element, char *node_filename,
                       int *called)
{
  SV **file_id_setting_sv;

  dTHX;

  *called = 0;

  if (!target_element->hv)
    return 0;

  if (!self->hv)
    return 0;

  file_id_setting_sv = hv_fetch (self->hv, "file_id_setting",
                                 strlen ("file_id_setting"), 0);
  if (file_id_setting_sv)
    {
      SV **node_file_name_sv;
      HV *file_id_setting_hv = (HV *)SvRV(*file_id_setting_sv);
      node_file_name_sv = hv_fetch (file_id_setting_hv,
                                   "node_file_name",
                                   strlen ("node_file_name"), 0);

      if (node_file_name_sv)
        {
          int count;
          char *result;
          SV *node_filename_ret_sv;
          *called = 1;

          dSP;

          ENTER;
          SAVETMPS;

          PUSHMARK(SP);
          EXTEND(SP, 3);

          PUSHs(sv_2mortal (newRV_inc (self->hv)));
          PUSHs(sv_2mortal (newRV_inc (target_element->hv)));
          PUSHs(sv_2mortal (newSVpv (node_filename, 0)));
          PUTBACK;

          count = call_sv (*node_file_name_sv, G_ARRAY);

          SPAGAIN;

          if (count != 1)
            croak("node_file_name should return 1 item\n");

          node_filename_ret_sv = POPs;
          /* user can return undef */
          if (SvOK (node_filename_ret_sv))
            {
              char *node_filename_ret;
              STRLEN len;
              node_filename_ret = SvPV (node_filename_ret_sv, len);
              result = strdup (node_filename_ret);
            }
          else
            result = 0;

          PUTBACK;

          FREETMPS;
          LEAVE;

          return result;
        }
    }
  return 0;
}

TARGET_CONTENTS_FILENAME *
call_file_id_setting_sectioning_command_target_name (CONVERTER *self,
                      ELEMENT *command, char *target, char *target_contents,
                      char *target_shortcontents, char *filename)
{
  SV **file_id_setting_sv;

  dTHX;

  if (!command->hv)
    return 0;

  if (!self->hv)
    return 0;

  file_id_setting_sv = hv_fetch (self->hv, "file_id_setting",
                                 strlen ("file_id_setting"), 0);
  if (file_id_setting_sv)
    {
      SV **sectioning_command_target_name_sv;
      HV *file_id_setting_hv = (HV *)SvRV(*file_id_setting_sv);
      sectioning_command_target_name_sv = hv_fetch (file_id_setting_hv,
                                 "sectioning_command_target_name",
                                 strlen ("sectioning_command_target_name"), 0);

      if (sectioning_command_target_name_sv)
        {
          int count;
          STRLEN len;
          SV *target_ret_sv;
          SV *target_contents_ret_sv;
          SV *target_shortcontents_ret_sv;
          SV *filename_ret_sv;
          char *target_ret;
          char *target_contents_ret;
          char *target_shortcontents_ret;
          char *filename_ret;
          TARGET_CONTENTS_FILENAME *result = (TARGET_CONTENTS_FILENAME *)
                                malloc (sizeof (TARGET_CONTENTS_FILENAME));

          dSP;

          ENTER;
          SAVETMPS;

          PUSHMARK(SP);
          EXTEND(SP, 6);

          PUSHs(sv_2mortal (newRV_inc (self->hv)));
          PUSHs(sv_2mortal (newRV_inc (command->hv)));
          PUSHs(sv_2mortal (newSVpv (target, 0)));
          PUSHs(sv_2mortal (newSVpv (target_contents, 0)));
          PUSHs(sv_2mortal (newSVpv (target_shortcontents, 0)));
          PUSHs(sv_2mortal (newSVpv (filename, 0)));
          PUTBACK;

          count = call_sv (*sectioning_command_target_name_sv, G_ARRAY);

          SPAGAIN;

          if (count != 4)
            croak("sectioning_command_target_name should return 4 items\n");

          filename_ret_sv = POPs;
          filename_ret = SvPV (filename_ret_sv, len);
          result->filename = strdup (filename_ret);
          target_shortcontents_ret_sv = POPs;
          target_shortcontents_ret = SvPV (target_shortcontents_ret_sv,
                                           len);
          result->target_shortcontents = strdup (target_shortcontents_ret);
          target_contents_ret_sv = POPs;
          target_contents_ret = SvPV (target_contents_ret_sv, len);
          result->target_contents = strdup (target_contents_ret);
          target_ret_sv = POPs;
          target_ret = SvPV (target_ret_sv, len);
          result->target = strdup (target_ret);

          PUTBACK;

          FREETMPS;
          LEAVE;

          return result;
        }
    }
  return 0;
}

FILE_NAME_PATH *
call_file_id_setting_unit_file_name (CONVERTER *self, OUTPUT_UNIT *output_unit,
                                     char *filename, char *filepath)
{
  SV **file_id_setting_sv;

  dTHX;

  if (!output_unit->hv)
    return 0;

  if (!self->hv)
    return 0;

  file_id_setting_sv = hv_fetch (self->hv, "file_id_setting",
                                 strlen ("file_id_setting"), 0);
  if (file_id_setting_sv)
    {
      SV **unit_file_name_sv;
      HV *file_id_setting_hv = (HV *)SvRV(*file_id_setting_sv);
      unit_file_name_sv = hv_fetch (file_id_setting_hv,
                                   "unit_file_name",
                                   strlen ("unit_file_name"), 0);

      if (unit_file_name_sv)
        {
          int count;
          SV *filepath_ret_sv;
          SV *filename_ret_sv;
          FILE_NAME_PATH *result
            = (FILE_NAME_PATH *) malloc (sizeof (FILE_NAME_PATH));
          memset (result, 0, sizeof (FILE_NAME_PATH));

          dSP;

          ENTER;
          SAVETMPS;

          PUSHMARK(SP);
          EXTEND(SP, 4);

          PUSHs(sv_2mortal (newRV_inc (self->hv)));
          PUSHs(sv_2mortal (newRV_inc (output_unit->hv)));
          PUSHs(sv_2mortal (newSVpv (filename, 0)));
          PUSHs(sv_2mortal (newSVpv (filepath, 0)));
          PUTBACK;

          count = call_sv (*unit_file_name_sv, G_ARRAY);

          SPAGAIN;

          if (count != 2)
            croak("unit_file_name should return 2 items\n");

          filepath_ret_sv = POPs;
          if (SvOK (filepath_ret_sv))
            {
              STRLEN len;
              char *filepath_ret = SvPV (filepath_ret_sv, len);
              result->filepath = strdup (filepath_ret);
            }

          filename_ret_sv = POPs;
          if (SvOK (filename_ret_sv))
            {
              STRLEN len;
              char *filename_ret = SvPV (filename_ret_sv, len);
              result->filename = strdup (filename_ret);
            }

          PUTBACK;

          FREETMPS;
          LEAVE;

          return result;
        }
    }
  return 0;
}

char *
call_formatting_function_format_title_titlepage (CONVERTER *self)
{
  int count;
  char *result;
  char *result_ret;
  STRLEN len;
  SV *result_sv;
  SV *formatting_reference
    = self->formatting_references[FR_format_title_titlepage].sv_reference;

  dTHX;

  if (!self->hv)
    return 0;

  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 1);

  PUSHs(sv_2mortal (newRV_inc (self->hv)));
  PUTBACK;

  count = call_sv (formatting_reference,
                   G_SCALAR);

  SPAGAIN;

  if (count != 1)
    croak("format_title_titlepage should return 1 item\n");

  result_sv = POPs;
  /* FIXME encoding */
  result_ret = SvPV (result_sv, len);
  result = strdup (result_ret);

  PUTBACK;

  FREETMPS;
  LEAVE;

  return result;
}
