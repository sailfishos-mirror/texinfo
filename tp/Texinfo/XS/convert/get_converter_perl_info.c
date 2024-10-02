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

#include <stdlib.h>
#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#undef context

#include "converter_types.h"
#include "builtin_commands.h"
#include "utils.h"
#include "converter.h"
#include "get_perl_info.h"
#include "get_converter_perl_info.h"

CONVERTER *
get_sv_converter (SV *sv_in, const char *warn_string)
{
  int converter_descriptor = 0;
  CONVERTER *converter = 0;
  SV** converter_descriptor_sv;
  HV *hv_in;
  char *key = "converter_descriptor";

  dTHX;

  hv_in = (HV *)SvRV (sv_in);
  converter_descriptor_sv = hv_fetch (hv_in, key, strlen (key), 0);
  if (converter_descriptor_sv)
    {
      converter_descriptor = SvIV (*converter_descriptor_sv);
      converter = retrieve_converter (converter_descriptor);
    }
  else if (warn_string)
    {
      fprintf (stderr, "ERROR: %s: no %s\n", warn_string, key);
      return 0;
    }
  if (! converter && warn_string)
    {
      fprintf (stderr, "ERROR: %s: no converter %d\n", warn_string,
                                                      converter_descriptor);
    }
  return converter;
}

CONVERTER *
converter_set_document_from_sv (SV *converter_in, SV *document_in)
{
  CONVERTER *converter;
  DOCUMENT *document = 0;

  dTHX;

  converter = get_sv_converter (converter_in, "converter_set_document");
  if (document_in)
    document = get_sv_document_document (document_in, 0);

  converter_set_document (converter, document);

  return converter;
}

TRANSLATED_COMMAND *
set_translated_commands (SV *translated_commands_sv, CONVERTER *converter)
{
  TRANSLATED_COMMAND *translated_commands = 0;

  dTHX;

  if (translated_commands_sv)
    {
      HV *translated_commands_hv = 0;
      I32 hv_number;
      I32 i;

      if (!SvOK (translated_commands_sv))
        hv_number = 0;
      else
        {
          HV *translated_commands_hv
            = (HV *)SvRV (translated_commands_sv);

          hv_number = hv_iterinit (translated_commands_hv);
        }

      translated_commands = (TRANSLATED_COMMAND *)
        malloc ((hv_number +1) * sizeof (TRANSLATED_COMMAND));
      memset (translated_commands, 0,
              (hv_number +1) * sizeof (TRANSLATED_COMMAND));

      for (i = 0; i < hv_number; i++)
        {
          char *cmdname;
          I32 retlen;
          SV *translation_sv = hv_iternextsv (translated_commands_hv,
                                              &cmdname, &retlen);
          if (SvOK (translation_sv))
            {
              enum command_id cmd = lookup_builtin_command (cmdname);

              if (!cmd)
                fprintf (stderr, "ERROR: %s: no translated command\n", cmdname);
              else
                {
                  char *tmp_spec = (char *) SvPVutf8_nolen (translation_sv);
                  TRANSLATED_COMMAND *translated_command
                    = &converter->translated_commands[i];
                  translated_command->translation = non_perl_strdup (tmp_spec);
                  translated_command->cmd = cmd;
                }
            }
        }
    }
  return translated_commands;
}

/* OPTION should be already allocated but otherwise set to 0 */
static int
get_option_from_sv (OPTION *option, SV *option_sv, CONVERTER *converter,
                    OPTION **sorted_options, const char *option_name)
{
  int status;

  const OPTION *ref_option = find_option_string (sorted_options, option_name);
  if (!ref_option)
    return -2;

  initialize_option (option, ref_option->type, ref_option->name);
  option->number = ref_option->number;

  status = get_sv_option (option, option_sv, 0, 0, converter);

  return status;
}

static void
set_non_customization_sv (HV *converter_hv, SV *defaults_sv,
                          STRING_LIST *non_valid_customization)
{
  dTHX;

  if (non_valid_customization->number > 0)
    {
      HV *defaults_hv = (HV *) SvRV (defaults_sv);
      size_t i;
      for (i = 0; i < non_valid_customization->number; i++)
        {
          const char *key
               = non_valid_customization->list[i];
          /* not a customization variable, set in converter */
          SV **value = hv_fetch (defaults_hv, key, strlen (key), 0);
          if (*value)
            {
              if (SvOK (*value))
                SvREFCNT_inc (*value);
              hv_store (converter_hv, key, strlen (key), *value, 0);
            }
        }
    }
}

static int
get_converter_defaults_from_sv (SV *conf_sv, CONVERTER *converter,
                                OPTION **sorted_options,
                                CONVERTER_DEFAULTS_INFO *defaults_info)
{
  dTHX;

  if (conf_sv && SvOK (conf_sv))
    {
      I32 hv_number;
      I32 i;

      HV *conf_hv = (HV *)SvRV (conf_sv);

      hv_number = hv_iterinit (conf_hv);

      if (!hv_number)
        return 0;

      defaults_info->conf.list
        = (OPTION *) malloc (sizeof (OPTION) * hv_number);
      memset (defaults_info->conf.list, 0, sizeof (OPTION) * hv_number);

      for (i = 0; i < hv_number; i++)
        {
          OPTION *option = &defaults_info->conf.list[defaults_info->conf.number];
          char *key;
          I32 retlen;
          SV *value = hv_iternextsv (conf_hv, &key, &retlen);
          int status = get_option_from_sv (option, value, converter,
                                           sorted_options, key);
          if (!status)
            {
              defaults_info->conf.number++;
            }
          else
            {
              memset (option, 0, sizeof (OPTION));
              if (status == -2)
                {
                  add_string (key, &defaults_info->non_valid_customization);

                  if (!strcmp (key, "translated_commands"))
                    defaults_info->translated_commands
                      = set_translated_commands (value, converter);
                  else if (!strcmp (key, "output_format"))
                    defaults_info->output_format
                      = non_perl_strdup (SvPVutf8_nolen (value));
                  else if (!strcmp (key, "converted_format"))
                    defaults_info->converted_format
                      = non_perl_strdup (SvPVutf8_nolen (value));
         /* TODO in defaults here means in format_defaults or
            non customization variable
            in Texinfo::Convert::Converter::common_converters_defaults
      } elsif (!exists($defaults{$key})) {
        warn "$key not a possible configuration in $class\n";
          */
                }
              else
                fprintf (stderr, "ERROR: %s unexpected conf error\n", key);
            }
        }
      return 1;
    }
  return 0;
}

void
get_expanded_formats (HV *hv, EXPANDED_FORMAT **expanded_formats)
{
  SV **expanded_formats_sv;

  dTHX;

  expanded_formats_sv = hv_fetch (hv, "expanded_formats",
                                  strlen ("expanded_formats"), 0);
  if (expanded_formats_sv && SvOK (*expanded_formats_sv))
    {
      I32 i;
      I32 formats_nr;

      if (!*expanded_formats)
        *expanded_formats = new_expanded_formats ();

      HV *expanded_formats_hv = (HV *)SvRV (*expanded_formats_sv);

      formats_nr = hv_iterinit (expanded_formats_hv);

      for (i = 0; i < formats_nr; i++)
        {
          char *format;
          I32 retlen;
          SV *value_sv = hv_iternextsv (expanded_formats_hv, &format, &retlen);
          if (SvTRUE (value_sv))
            {
              add_expanded_format (*expanded_formats, format);
            }
        }
    }
}

/* Texinfo::Convert::Converter generic initialization for all the converters */
/* Called early, in particuliar before any format specific code has been
   called */
int
converter_get_defaults_sv (SV *converter_sv, CONVERTER *converter,
                         SV *format_defaults_sv, SV *conf_sv,
                         CONVERTER_DEFAULTS_INFO *format_defaults,
                         CONVERTER_DEFAULTS_INFO *conf)
{
  HV *converter_hv;
  int has_format_defaults;
  int has_conf;

  dTHX;

  converter_hv = (HV *)SvRV (converter_sv);

  converter->hv = converter_hv;

  has_format_defaults
    = get_converter_defaults_from_sv (format_defaults_sv, converter,
                              converter->sorted_options, format_defaults);

  has_conf = get_converter_defaults_from_sv (conf_sv, converter,
                               converter->sorted_options, conf);

  set_non_customization_sv (converter_hv, format_defaults_sv,
                            &format_defaults->non_valid_customization);

  set_non_customization_sv (converter_hv, conf_sv,
                            &conf->non_valid_customization);

   /*
  fprintf (stderr, "XS|CONVERTER Init from SV: %d; %d %d\n",
                   converter->converter_descriptor, has_format_defaults,
                   has_conf);
    */

  return has_format_defaults + has_conf;
}

/* Unused */
void
get_sv_configured_options (SV *configured_sv_in, OPTION **sorted_options)
{
  I32 hv_number;
  I32 i;
  HV *configured_hv;

  dTHX;

  configured_hv = (HV *)SvRV (configured_sv_in);

  hv_number = hv_iterinit (configured_hv);
  for (i = 0; i < hv_number; i++)
    {
      char *key;
      I32 retlen;
      SV *value = hv_iternextsv (configured_hv, &key, &retlen);
      if (value && SvOK (value))
        {
          int configured = SvIV (value);
          set_sorted_option_key_configured (sorted_options, key, configured);
        }
    }
}

/* output format specific */

/* map hash reference of Convert::Text options to TEXT_OPTIONS */
/* _raw_state is not fetched, as it is not documented as an option,
   and there is no way to set it through text options either, it can only
   be set as a state during conversion */
#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen (#key), 0);
TEXT_OPTIONS *
copy_sv_options_for_convert_text (SV *sv_in)
{
  HV *hv_in;
  SV **_code_state_sv;
  SV **ASCII_GLYPH_sv;
  SV **NUMBER_SECTIONS_sv;
  SV **TEST_sv;
  SV **INCLUDE_DIRECTORIES_sv;
  SV **converter_sv;
  SV **enabled_encoding_sv;
  SV **sort_string_sv;
  SV **set_case_sv;
  TEXT_OPTIONS *text_options = new_text_options ();

  dTHX;

  hv_in = (HV *)SvRV (sv_in);

  FETCH(ASCII_GLYPH)
  if (ASCII_GLYPH_sv)
    text_options->ASCII_GLYPH = SvIV (*ASCII_GLYPH_sv);

  FETCH(NUMBER_SECTIONS)
  if (NUMBER_SECTIONS_sv)
    text_options->NUMBER_SECTIONS = SvIV (*NUMBER_SECTIONS_sv);

  FETCH(TEST)
  if (TEST_sv)
    text_options->TEST = SvIV (*TEST_sv);

  FETCH(sort_string)
  if (sort_string_sv)
    text_options->sort_string = SvIV (*sort_string_sv);

  FETCH(enabled_encoding)
  if (enabled_encoding_sv)
    text_options->encoding
      = non_perl_strdup (SvPVutf8_nolen (*enabled_encoding_sv));

  FETCH(set_case)
  if (set_case_sv)
    text_options->set_case = SvIV (*set_case_sv);

  FETCH(_code_state)
  if (_code_state_sv)
    text_options->code_state = SvIV (*_code_state_sv);

  FETCH(INCLUDE_DIRECTORIES)
  if (INCLUDE_DIRECTORIES_sv)
    add_svav_to_string_list (*INCLUDE_DIRECTORIES_sv,
                             &text_options->include_directories, svt_dir);

  get_expanded_formats (hv_in, &text_options->expanded_formats);

  FETCH(converter)
  if (converter_sv)
    {
      CONVERTER *converter = get_sv_converter (*converter_sv, 0);
      if (converter)
        {
          text_options->other_converter_options
            = converter->conf;
          text_options->converter = converter;
        }
      else
        {
          HV *converter_hv = (HV *) SvRV (*converter_sv);
          SV **conf_sv = hv_fetch (converter_hv, "conf", strlen ("conf"), 0);
          if (conf_sv)
            text_options->other_converter_options
              = init_copy_sv_options (*conf_sv, 0, 1, 0);
        }
    }
  else
    {
      text_options->self_converter_options
       = init_copy_sv_options (sv_in, 0, 1, 0);
    }

  return text_options;
}
#undef FETCH
