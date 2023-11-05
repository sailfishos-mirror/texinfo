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

#include "options_types.h"
#include "utils.h"
#include "builtin_commands.h"
#include "document.h"
#include "output_unit.h"
#include "convert_to_text.h"
#include "converter.h"
#include "convert_html.h"
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

int
get_sv_output_units_descriptor (SV *output_units_in, char *warn_string)
{
  int output_units_descriptor = 0;
  AV *av_in;
  SSize_t output_units_nr;
  SV** first_output_unit_sv;
  char *key = "output_units_descriptor";

  dTHX;

  if (!SvOK (output_units_in))
    {
      fprintf (stderr, "get_sv_output_units_descriptor: %s: undef in\n",
                       warn_string);
      return 0;
    }

  av_in = (AV *)SvRV (output_units_in);
  output_units_nr = av_top_index (av_in) +1;

  if (output_units_nr > 0)
    {
      first_output_unit_sv = av_fetch (av_in, 0, 0);
      if (first_output_unit_sv)
        {
          HV *hv_in = (HV *)SvRV (*first_output_unit_sv);
          SV** output_units_descriptor_sv
            = hv_fetch (hv_in, key, strlen (key), 0);
          if (output_units_descriptor_sv)
            {
              output_units_descriptor = SvIV (*output_units_descriptor_sv);

              if (!output_units_descriptor && warn_string)
                fprintf (stderr, "ERROR: %s: units descriptor %d\n",
                                warn_string, output_units_descriptor);
            }
          else if (warn_string)
            fprintf (stderr, "ERROR: %s: no %s\n", warn_string, key);
        }
      else
        fprintf (stderr, "BUG: get_sv_output_units: av_fetch failed\n");
    }
  else
    {
      if (warn_string)
        fprintf (stderr, "ERROR: %s: empty units list\n", warn_string);
    }
  return output_units_descriptor;
}


OUTPUT_UNIT_LIST *
get_sv_output_units (SV *output_units_in, char *warn_string)
{
  OUTPUT_UNIT_LIST *output_units = 0;
  int output_units_descriptor
     = get_sv_output_units_descriptor (output_units_in, warn_string);
  if (output_units_descriptor)
    {
      output_units = retrieve_output_units (output_units_descriptor);
      if (!output_units && warn_string)
        fprintf (stderr, "ERROR: %s: no units %d\n", warn_string,
                                             output_units_descriptor);
    }
  return output_units;
}

void
add_svav_to_string_list (SV *sv, STRING_LIST *string_list, int dir_strings)
{
  int i;
  SSize_t strings_nr;

  dTHX;

  AV *av = (AV *)SvRV (sv);
  strings_nr = av_top_index (av) +1;
  for (i = 0; i < strings_nr; i++)
    {
      SV** string_sv = av_fetch (av, i, 0);
      if (string_sv)
        {
          char *string = SvPVbyte_nolen (*string_sv);
          if (dir_strings)
            add_include_directory (string, string_list);
          else
            add_string (string, string_list);
        }
    }
}

/* contains get_sv_option (), automatically generated from options_data.txt */
#include "options_get_perl.c"

void
get_sv_options (SV *sv, OPTIONS *options)
{
  I32 hv_number;
  I32 i;
  HV *hv;

  dTHX;

  hv = (HV *)SvRV (sv);
  hv_number = hv_iterinit (hv);
  for (i = 0; i < hv_number; i++)
    {
      char *key;
      I32 retlen;
      SV *value = hv_iternextsv(hv, &key, &retlen);
      if (value && SvOK (value))
        {
          get_sv_option (options, key, value);
        }
    }
}


OPTIONS *
copy_sv_options (SV *sv_in)
{
  OPTIONS *options = new_options ();
  get_sv_options (sv_in, options);
  return options;
}

void
get_expanded_formats (HV *hv, EXPANDED_FORMAT **expanded_formats)
{
  SV **expanded_formats_sv;

  dTHX;

  expanded_formats_sv = hv_fetch (hv, "expanded_formats",
                                  strlen ("expanded_formats"), 0);
  if (expanded_formats_sv)
    {
      I32 i;
      I32 formats_nr;

      if (!*expanded_formats)
        *expanded_formats = new_expanded_formats (0);

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

/* map hash reference of Convert::Text options to TEXT_OPTIONS */
/* TODO more to do */
TEXT_OPTIONS *
copy_sv_options_for_convert_text (SV *sv_in)
{
  HV *hv_in;
  SV **test_option_sv;
  SV **include_directories_sv;
  SV **other_converter_options_sv;
  SV **self_converter_options_sv;
  SV **enabled_encoding_sv;
  SV **sort_string_option_sv;
  TEXT_OPTIONS *text_options = new_text_options ();

  dTHX;

  hv_in = (HV *)SvRV (sv_in);

  test_option_sv = hv_fetch (hv_in, "TEST", strlen ("TEST"), 0);
  if (test_option_sv)
    text_options->TEST = SvIV (*test_option_sv);

  sort_string_option_sv = hv_fetch (hv_in, "sort_string",
                                    strlen ("sort_string"), 0);
  if (sort_string_option_sv)
    text_options->sort_string = SvIV (*sort_string_option_sv);

  enabled_encoding_sv = hv_fetch (hv_in, "enabled_encoding",
                                  strlen ("enabled_encoding"), 0);
  if (enabled_encoding_sv)
    text_options->encoding = strdup (SvPVutf8_nolen (*enabled_encoding_sv));

  include_directories_sv = hv_fetch (hv_in, "INCLUDE_DIRECTORIES",
                                     strlen ("INCLUDE_DIRECTORIES"), 0);

  if (include_directories_sv)
    add_svav_to_string_list (*include_directories_sv,
                             &text_options->include_directories, 1);

  get_expanded_formats (hv_in, &text_options->expanded_formats);

  other_converter_options_sv = hv_fetch (hv_in, "other_converter_options",
                                         strlen ("other_converter_options"), 0);

  if (other_converter_options_sv)
    {
      text_options->other_converter_options
         = copy_sv_options (*other_converter_options_sv);
    }

  self_converter_options_sv = hv_fetch (hv_in, "self_converter_options",
                                         strlen ("self_converter_options"), 0);

  if (self_converter_options_sv)
    {
      text_options->self_converter_options
         = copy_sv_options (*self_converter_options_sv);
    }

  return text_options;
}

CONVERTER *
get_sv_converter (SV *sv_in, char *warn_string)
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

int
compare_ints (const void *a, const void *b)
{
  const enum command_id *int_a = (const enum command_id *) a;
  const enum command_id *int_b = (const enum command_id *) b;

  return (*int_a > *int_b) - (*int_a < *int_b);
}

void
set_translated_commands (CONVERTER *converter, HV *hv_in)
{
  SV **translated_commands_sv;

  dTHX;

  translated_commands_sv = hv_fetch (hv_in, "translated_commands",
                                     strlen ("translated_commands"), 0);

  if (translated_commands_sv)
    {
      I32 hv_number;
      I32 i;

      HV *translated_commands_hv
        = (HV *)SvRV (*translated_commands_sv);

      hv_number = hv_iterinit (translated_commands_hv);

      converter->translated_commands = (TRANSLATED_COMMAND **)
        malloc ((hv_number +1) * sizeof (TRANSLATED_COMMAND *));
      memset (converter->translated_commands, 0,
              (hv_number +1) * sizeof (TRANSLATED_COMMAND *));

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
                  TRANSLATED_COMMAND *translated_command;

                  converter->translated_commands[i] = (TRANSLATED_COMMAND *)
                    malloc (sizeof (TRANSLATED_COMMAND));
                  translated_command = converter->translated_commands[i];

                  translated_command->translation = strdup (tmp_spec);
                  translated_command->cmd = cmd;
                }
            }
        }
    }
}

static SV **
register_formatting_reference_default (char *type_string,
                FORMATTING_REFERENCE *formatting_reference,
                const char *ref_name, HV *default_hv)
{
  SV **default_formatting_reference_sv;

  dTHX;

  default_formatting_reference_sv
   = hv_fetch (default_hv, ref_name, strlen (ref_name), 0);

  if (default_formatting_reference_sv)
    {
      if (SvOK (*default_formatting_reference_sv))
        {
          formatting_reference->sv_default = *default_formatting_reference_sv;
          /* will be replaced by customization if there are not only defaults */
          formatting_reference->sv_reference = *default_formatting_reference_sv;
          formatting_reference->status = FRS_status_default_set;
        }
      else
        formatting_reference->status = FRS_status_ignored;
    }
  return default_formatting_reference_sv;
}

static void
register_formatting_reference_with_default (char *type_string,
                FORMATTING_REFERENCE *formatting_reference,
                const char *ref_name, HV *default_hv, HV *customized_hv)
{
  SV **default_formatting_reference_sv;
  SV **formatting_reference_sv;

  dTHX;

  default_formatting_reference_sv = register_formatting_reference_default(
                 type_string, formatting_reference, ref_name, default_hv);

  formatting_reference_sv
    = hv_fetch (customized_hv, ref_name, strlen (ref_name), 0);
  if (formatting_reference_sv)
    {
      if SvOK (*formatting_reference_sv)
        {
          formatting_reference->sv_reference = *formatting_reference_sv;
          if (formatting_reference->status != FRS_status_default_set
              || SvRV(*formatting_reference_sv)
                   != SvRV(*default_formatting_reference_sv))
            formatting_reference->status = FRS_status_customization_set;
        }
      else
        formatting_reference->status = FRS_status_ignored;
    }
   /*
  fprintf (stderr, "register: %s %d '%s'\n", type_string,
           formatting_reference->status, ref_name);
    */
}

CONVERTER *
converter_initialize (SV *converter_sv)
{
  HV *hv_in;
  SV **converter_init_conf_sv;
  CONVERTER *converter = new_converter ();
  DOCUMENT *document;

  dTHX;

  hv_in = (HV *)SvRV (converter_sv);

  document = get_sv_document_document (converter_sv, 0);
  converter->document = document;

  converter_init_conf_sv
    = hv_fetch (hv_in, "converter_init_conf",
                strlen ("converter_init_conf"), 0);

  if (converter_init_conf_sv && SvOK (*converter_init_conf_sv))
    {
      converter->init_conf
         = copy_sv_options (*converter_init_conf_sv);
    }

  converter->error_messages
    = (ERROR_MESSAGE_LIST *) malloc (sizeof (ERROR_MESSAGE_LIST));
  memset (converter->error_messages, 0, sizeof (ERROR_MESSAGE_LIST));

  set_translated_commands (converter, hv_in);

  get_expanded_formats (hv_in, &converter->expanded_formats);

  return converter;
}

int
html_converter_initialize_sv (SV *converter_sv,
                              SV *default_formatting_references,
                              SV *default_css_string_formatting_references,
                              SV *default_commands_open,
                              SV *default_commands_conversion,
                              SV *default_css_string_commands_conversion,
                              SV *default_types_open,
                              SV *default_types_conversion,
                              SV *default_css_string_types_conversion,
                              SV *default_output_units_conversion)
{
  int i;
  HV *hv_in;
  HV *default_formatting_references_hv;
  HV *default_css_string_formatting_references_hv;
  HV *default_commands_open_hv;
  HV *default_commands_conversion_hv;
  HV *default_css_string_commands_conversion_hv;
  HV *default_types_open_hv;
  HV *default_types_conversion_hv;
  HV *default_css_string_types_conversion_hv;
  HV *default_output_units_conversion_hv;
  SV **formatting_function_sv;
  SV **sorted_special_unit_varieties_sv;
  SV **no_arg_commands_formatting_sv;
  SV **style_commands_formatting_sv;
  SV **types_open_sv;
  SV **types_conversion_sv;
  SV **commands_open_sv;
  SV **commands_conversion_sv;
  SV **output_units_conversion_sv;
  SV **code_types_sv;
  SV **pre_class_types_sv;
  HV *formatting_function_hv;
  HV *commands_open_hv;
  HV *commands_conversion_hv;
  HV *types_open_hv;
  HV *types_conversion_hv;
  HV *output_units_conversion_hv;
  int converter_descriptor = 0;
  CONVERTER *converter;

  dTHX;

  converter = converter_initialize (converter_sv);

  hv_in = (HV *)SvRV (converter_sv);

  default_formatting_references_hv
    = (HV *)SvRV (default_formatting_references);
  default_css_string_formatting_references_hv
    = (HV *)SvRV (default_css_string_formatting_references);

#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen(#key), 0);
  FETCH(formatting_function);

  /* no need to check if it exists */
  formatting_function_hv = (HV *)SvRV (*formatting_function_sv);

  for (i = 0; i < FR_format_translate_message+1; i++)
    {
      char *ref_name = html_formatting_reference_names[i];
      FORMATTING_REFERENCE *formatting_reference
        = &converter->formatting_references[i];
      SV **default_formatting_reference_sv
        = hv_fetch (default_formatting_references_hv, ref_name,
                    strlen (ref_name), 0);
      SV **formatting_reference_sv
        = hv_fetch (formatting_function_hv, ref_name, strlen (ref_name), 0);
      /* no check for existence, all should exist */
      if (SvOK (*default_formatting_reference_sv))
        {
          formatting_reference->sv_default = *default_formatting_reference_sv;
          formatting_reference->status = FRS_status_default_set;
        }
      if (formatting_reference_sv)
        {
          if SvOK (*formatting_reference_sv)
            {
              formatting_reference->sv_reference = *formatting_reference_sv;
              if (formatting_reference->status != FRS_status_default_set
                  || *formatting_reference_sv != *default_formatting_reference_sv)
                formatting_reference->status = FRS_status_customization_set;
            }
        }
      else
        fprintf (stderr, "BUG: formatting reference %s not found\n",
                         ref_name);
    }

  /* copy the normal formatting references and replace the css strings
     specific references */
  memcpy (&converter->css_string_formatting_references,
          &converter->formatting_references,
      (FR_format_translate_message+1) * sizeof (FORMATTING_REFERENCE));

  for (i = 0; i < FR_format_translate_message+1; i++)
    {
      char *ref_name = html_formatting_reference_names[i];
      SV **default_formatting_reference_sv
        = hv_fetch (default_css_string_formatting_references_hv, ref_name,
                    strlen (ref_name), 0);

      /* no customization, current is the default */
      if (default_formatting_reference_sv
          && SvOK (*default_formatting_reference_sv))
        {
          FORMATTING_REFERENCE *formatting_reference
            = &converter->css_string_formatting_references[i];
          formatting_reference->sv_default = *default_formatting_reference_sv;
          formatting_reference->sv_reference = *default_formatting_reference_sv;
          formatting_reference->status = FRS_status_default_set;
        }
    }

  FETCH(commands_open)
  commands_open_hv = (HV *)SvRV (*commands_open_sv);
  default_commands_open_hv = (HV *)SvRV (default_commands_open);

  FETCH(commands_conversion)
  commands_conversion_hv = (HV *)SvRV (*commands_conversion_sv);
  default_commands_conversion_hv = (HV *)SvRV (default_commands_conversion);

  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      char *ref_name;
      if (i == 0)
        ref_name = "";
      else
        ref_name = builtin_command_data[i].cmdname;
      FORMATTING_REFERENCE *open_formatting_reference
       = &converter->commands_open[i];
      FORMATTING_REFERENCE *conversion_formatting_reference
       = &converter->commands_conversion[i];

      register_formatting_reference_with_default ("command_open",
        open_formatting_reference, ref_name, default_commands_open_hv,
        commands_open_hv);
      register_formatting_reference_with_default ("command_conversion",
        conversion_formatting_reference, ref_name,
        default_commands_conversion_hv,
        commands_conversion_hv);
    }

  default_css_string_commands_conversion_hv
    = (HV *)SvRV (default_css_string_commands_conversion);
  /* copy the normal formatting references and replace the css strings
     specific references */
  memcpy (&converter->css_string_commands_conversion,
          &converter->commands_conversion,
      (BUILTIN_CMD_NUMBER) * sizeof (FORMATTING_REFERENCE));

  for (i = 0; i < BUILTIN_CMD_NUMBER; i++)
    {
      char *ref_name;
      if (i == 0)
        ref_name = "";
      else
        ref_name = builtin_command_data[i].cmdname;

     FORMATTING_REFERENCE *conversion_formatting_reference
       = &converter->css_string_commands_conversion[i];

     register_formatting_reference_default ("css_command_conversion",
        conversion_formatting_reference, ref_name,
        default_css_string_commands_conversion_hv);
    }


  FETCH(types_open)
  types_open_hv = (HV *)SvRV (*types_open_sv);
  default_types_open_hv = (HV *)SvRV (default_types_open);

  FETCH(types_conversion)
  types_conversion_hv = (HV *)SvRV (*types_conversion_sv);
  default_types_conversion_hv = (HV *)SvRV (default_types_conversion);

  for (i = 0; i < ET_special_unit_element+1; i++)
    {
      char *ref_name;
      if (i == 0)
        ref_name = "";
      else
        ref_name = element_type_names[i];
      FORMATTING_REFERENCE *open_formatting_reference
       = &converter->types_open[i];
      FORMATTING_REFERENCE *conversion_formatting_reference
       = &converter->types_conversion[i];

      register_formatting_reference_with_default ("type_open",
        open_formatting_reference, ref_name, default_types_open_hv,
        types_open_hv);
      register_formatting_reference_with_default ("type_conversion",
        conversion_formatting_reference, ref_name,
        default_types_conversion_hv,
        types_conversion_hv);
    }

  default_css_string_types_conversion_hv
     = (HV *)SvRV (default_css_string_types_conversion);
  /* copy the normal formatting references and replace the css strings
     specific references */
  memcpy (&converter->css_string_types_conversion,
          &converter->types_conversion,
      (ET_special_unit_element+1) * sizeof (FORMATTING_REFERENCE));
  for (i = 0; i < ET_special_unit_element+1; i++)
    {
      char *ref_name;
      if (i == 0)
        ref_name = "";
      else
        ref_name = element_type_names[i];
      FORMATTING_REFERENCE *conversion_formatting_reference
       = &converter->css_string_types_conversion[i];

      register_formatting_reference_default ("css_type_conversion",
        conversion_formatting_reference, ref_name,
        default_css_string_types_conversion_hv);
    }


  FETCH(output_units_conversion)
  output_units_conversion_hv = (HV *)SvRV (*output_units_conversion_sv);
  default_output_units_conversion_hv
    = (HV *)SvRV (default_output_units_conversion);

  for (i = 0; i < OU_special_unit+1; i++)
    {
      const char *ref_name = output_unit_type_names[i];
      FORMATTING_REFERENCE *conversion_formatting_reference
       = &converter->output_units_conversion[i];

      register_formatting_reference_with_default ("output_unit_conversion",
        conversion_formatting_reference, ref_name,
        default_output_units_conversion_hv,
        output_units_conversion_hv);
    }

  FETCH(sorted_special_unit_varieties)

  if (sorted_special_unit_varieties_sv)
    {
      int j;
      SV **special_unit_info_sv;
      HV *special_unit_info_hv;

      STRING_LIST *special_unit_varieties
       = (STRING_LIST *) malloc (sizeof (STRING_LIST));
      memset (special_unit_varieties, 0, sizeof (STRING_LIST));
      if (sorted_special_unit_varieties_sv)
        add_svav_to_string_list (*sorted_special_unit_varieties_sv,
                                 special_unit_varieties, 0);

      /* allocate space for translated tree types, but do not
         get from perl, it will be created for the conversion */
      for (j = 0; j < SUIT_type_heading+1; j++)
        {
          converter->special_unit_info_tree[j]
           = (ELEMENT **)
            malloc ((special_unit_varieties->number +1) * sizeof (ELEMENT *));
          memset (converter->special_unit_info_tree[j], 0,
                   (special_unit_varieties->number +1) * sizeof (ELEMENT *));
        }

      converter->special_unit_varieties = special_unit_varieties;

      FETCH(special_unit_info);

      special_unit_info_hv = (HV *) SvRV(*special_unit_info_sv);

      for (j = 0; j < SUI_type_heading+1; j++)
        {
          SV **special_unit_info_type_sv;
          const char *sui_type = special_unit_info_type_names[j];
          special_unit_info_type_sv = hv_fetch (special_unit_info_hv,
                                                sui_type, strlen (sui_type), 0);
          if (special_unit_info_type_sv)
            {
              int k;
              HV *special_unit_info_type_hv;

              if (!SvOK (*special_unit_info_type_sv))
                {
                  fprintf (stderr, "BUG: special_unit_info: %s: undef\n",
                                   sui_type);
                }

              special_unit_info_type_hv
                   = (HV *) SvRV(*special_unit_info_type_sv);

              converter->special_unit_info[j]
               = (char **)
                 malloc ((special_unit_varieties->number +1) * sizeof (char *));
              memset (converter->special_unit_info[j], 0,
                      (special_unit_varieties->number +1) * sizeof (char *));

              for (k = 0; k < special_unit_varieties->number; k++)
                {
                  char *variety_name = special_unit_varieties->list[k];
                  SV **info_type_variety_sv
                   = hv_fetch (special_unit_info_type_hv, variety_name,
                               strlen (variety_name), 0);
                  if (info_type_variety_sv)
                    {
                      /* can be undef if set undef in user init file */
                      if (SvOK (*info_type_variety_sv))
                        {
                          char *value
                            = (char *) SvPVutf8_nolen (*info_type_variety_sv);
                          converter->special_unit_info[j][k] = strdup (value);
                        }
                      else
                        converter->special_unit_info[j][k] = 0;
                    }
                }
            }
        }
      /* prepare mapping of variety names to index in global_units_directions */
      converter->varieties_direction_index = (VARIETY_DIRECTION_INDEX **)
              malloc (sizeof (VARIETY_DIRECTION_INDEX *)
                      * (special_unit_varieties->number +1));
      for (j = 0; j < special_unit_varieties->number; j++)
        {
          VARIETY_DIRECTION_INDEX *variety_direction_index
            = (VARIETY_DIRECTION_INDEX *) malloc (sizeof (VARIETY_DIRECTION_INDEX));
          converter->varieties_direction_index[j] = variety_direction_index;
          variety_direction_index->special_unit_variety
            = special_unit_varieties->list[j];
          variety_direction_index->direction_index
            = D_Last +1 +j;
        }
      converter->varieties_direction_index[j] = 0;
    }

  FETCH(code_types)

  if (code_types_sv)
    {
      I32 hv_number;
      I32 i;

      HV *code_types_hv = (HV *)SvRV (*code_types_sv);

      hv_number = hv_iterinit (code_types_hv);

      for (i = 0; i < hv_number; i++)
        {
          int j;
          enum element_type type = ET_NONE;
          I32 retlen;
          char *type_name;
          SV *code_sv = hv_iternextsv (code_types_hv,
                                       &type_name, &retlen);
          if (SvOK (code_sv))
            {
              int code_value = SvIV (code_sv);
          /* this is not very efficient, but should be done only once
             in the default case.  If this is needed more, a qsort/bfind
             could be used, but the overhead could probably only be
             justified if finding the type index happens more often */
              for (j = 1; j < ET_special_unit_element+1; j++)
                {
                  if (!strcmp (element_type_names[j], type_name))
                    {
                      type = j;
                      break;
                    }
                }
              if (type == ET_NONE)
                {
                  fprintf (stderr, "ERROR: %s: code type not found\n",
                                   type_name);
                }
              else
                converter->code_types[type] = code_value;
           }
       }
   }

  FETCH(pre_class_types)

  if (pre_class_types_sv)
    {
      I32 hv_number;
      I32 i;

      HV *pre_class_types_hv = (HV *)SvRV (*pre_class_types_sv);

      hv_number = hv_iterinit (pre_class_types_hv);

      for (i = 0; i < hv_number; i++)
        {
          int j;
          I32 retlen;
          char *type_name;
          SV *pre_class_sv = hv_iternextsv (pre_class_types_hv,
                                            &type_name, &retlen);
          if (SvOK (pre_class_sv))
            {
              enum element_type type = ET_NONE;
              char *pre_class = SvPV_nolen (pre_class_sv);
          /* this is not very efficient, but should be done only once
             in the default case.  If this is needed more, a qsort/bfind
             could be used, but the overhead could probably only be
             justified if finding the type index happens more often */
              for (j = 1; j < ET_special_unit_element+1; j++)
                {
                  if (!strcmp (element_type_names[j], type_name))
                    {
                      type = j;
                      break;
                    }
                }
              if (type == ET_NONE)
                {
                  fprintf (stderr, "ERROR: %s: pre class type not found\n",
                           type_name);
                }
              else
                converter->pre_class_types[type] = strdup (pre_class);
            }
        }
    }


  FETCH(no_arg_commands_formatting)

  if (no_arg_commands_formatting_sv)
    {
      int max_context = HCC_type_css_string;
      I32 hv_number;
      I32 i;

      HV *no_arg_commands_formatting_hv
        = (HV *)SvRV (*no_arg_commands_formatting_sv);

      hv_number = hv_iterinit (no_arg_commands_formatting_hv);

      converter->no_arg_formatted_cmd.list = (enum command_id *)
        malloc (hv_number * sizeof (enum command_id));
      converter->no_arg_formatted_cmd.number = hv_number;

      for (i = 0; i < hv_number; i++)
        {
          char *cmdname;
          I32 retlen;
          SV *context_sv = hv_iternextsv (no_arg_commands_formatting_hv,
                                          &cmdname, &retlen);
          if (SvOK (context_sv))
            {
              HV *context_hv = (HV *)SvRV (context_sv);
              enum command_id cmd = lookup_builtin_command (cmdname);

              converter->no_arg_formatted_cmd.list[i] = cmd;

              if (!cmd)
                fprintf (stderr, "ERROR: %s: no no arg command\n", cmdname);
              else
                {
                  I32 context_nr;
                  I32 j;
                  converter->html_command_conversion[cmd] =
                   (HTML_COMMAND_CONVERSION **) malloc ((max_context +1) *
                     sizeof (HTML_COMMAND_CONVERSION *));
                  memset (converter->html_command_conversion[cmd], 0,
                     (max_context +1) * sizeof (HTML_COMMAND_CONVERSION *));

                  context_nr = hv_iterinit (context_hv);
                  for (j = 0; j < context_nr; j++)
                    {
                      char *context_name;
                      I32 retlen;
                      int k;
                      int context_idx = -1;
                      SV *format_spec_sv = hv_iternextsv (context_hv,
                                                 &context_name, &retlen);
                      for (k = 0; k < max_context +1; k++)
                        {
                          if (!strcmp (context_name,
                                html_conversion_context_type_names[k]))
                            {
                              context_idx = k;
                              break;
                            }
                        }
                      if (context_idx < 0)
                        {
                          fprintf (stderr,
                              "ERROR: %s: %s: unknown no arg context\n",
                                         cmdname, context_name);
                          break;
                        }
                      if (SvOK (format_spec_sv))
                        {
                          I32 spec_number;
                          I32 s;
                          HTML_COMMAND_CONVERSION *format_spec;

                          HV *format_spec_hv = (HV *)SvRV (format_spec_sv);

                          converter->html_command_conversion[cmd][context_idx]
                           = (HTML_COMMAND_CONVERSION *)
                               malloc (sizeof (HTML_COMMAND_CONVERSION));
                          format_spec
                            = converter
                               ->html_command_conversion[cmd][context_idx];
                          memset (format_spec, 0,
                                  sizeof (HTML_COMMAND_CONVERSION));

                          spec_number = hv_iterinit (format_spec_hv);
                          for (s = 0; s < spec_number; s++)
                            {
                              char *key;
                              I32 retlen;
                              SV *spec_sv = hv_iternextsv (format_spec_hv,
                                                           &key, &retlen);
                              if (!strcmp (key, "element"))
                                {
                                  char *tmp_spec
                                    = (char *) SvPVutf8_nolen (spec_sv);
                                  format_spec->element = strdup (tmp_spec);
                                }
                              else if (!strcmp (key, "unset"))
                                format_spec->unset = SvIV (spec_sv);
                              else if (!strcmp (key, "text"))
                                {
                                  char *tmp_spec
                                    = (char *) SvPVutf8_nolen (spec_sv);
                                  format_spec->text = strdup (tmp_spec);
                                }
                              else if (!strcmp (key, "translated_converted"))
                                {
                                  char *tmp_spec
                                    = (char *) SvPVutf8_nolen (spec_sv);
                                  format_spec->translated_converted
                                    = strdup (tmp_spec);
                                }
                              else if (!strcmp (key, "translated_to_convert"))
                                {
                                  char *tmp_spec
                                    = (char *) SvPVutf8_nolen (spec_sv);
                                  format_spec->translated_to_convert
                                    = strdup (tmp_spec);
                                }
                            }
                        }
                    }
                }
            }
        }
      qsort (converter->no_arg_formatted_cmd.list, hv_number,
             sizeof (enum command_id), compare_ints);
    }

  FETCH(style_commands_formatting)

  if (style_commands_formatting_sv)
    {
      int max_context = HCC_type_string;
      I32 hv_number;
      I32 i;

      HV *style_commands_formatting_hv
        = (HV *)SvRV (*style_commands_formatting_sv);

      hv_number = hv_iterinit (style_commands_formatting_hv);
      for (i = 0; i < hv_number; i++)
        {
          char *cmdname;
          I32 retlen;
          SV *context_sv = hv_iternextsv (style_commands_formatting_hv,
                                          &cmdname, &retlen);
          if (SvOK (context_sv))
            {
              HV *context_hv = (HV *)SvRV (context_sv);
              enum command_id cmd = lookup_builtin_command (cmdname);
              if (!cmd)
                fprintf (stderr, "ERROR: %s: no style command\n", cmdname);
              else
                {
                  I32 context_nr;
                  I32 j;
                  converter->html_command_conversion[cmd] =
                   (HTML_COMMAND_CONVERSION **) malloc ((max_context +1) *
                     sizeof (HTML_COMMAND_CONVERSION *));
                  memset (converter->html_command_conversion[cmd], 0,
                     (max_context +1) * sizeof (HTML_COMMAND_CONVERSION *));

                  context_nr = hv_iterinit (context_hv);
                  for (j = 0; j < context_nr; j++)
                    {
                      char *context_name;
                      I32 retlen;
                      int k;
                      int context_idx = -1;
                      SV *format_spec_sv = hv_iternextsv (context_hv,
                                                 &context_name, &retlen);
                      for (k = 0; k < max_context +1; k++)
                        {
                          if (!strcmp (context_name,
                                html_conversion_context_type_names[k]))
                            {
                              context_idx = k;
                              break;
                            }
                        }
                      if (context_idx < 0)
                        {
                          fprintf (stderr,
                              "ERROR: %s: %s: unknown style context\n",
                                         cmdname, context_name);
                          break;
                        }
                      if (SvOK (format_spec_sv))
                        {
                          I32 spec_number;
                          I32 s;
                          HTML_COMMAND_CONVERSION *format_spec;

                          HV *format_spec_hv = (HV *)SvRV (format_spec_sv);

                          converter->html_command_conversion[cmd][context_idx]
                           = (HTML_COMMAND_CONVERSION *)
                               malloc (sizeof (HTML_COMMAND_CONVERSION));
                          format_spec
                            = converter
                               ->html_command_conversion[cmd][context_idx];
                          memset (format_spec, 0,
                                  sizeof (HTML_COMMAND_CONVERSION));

                          spec_number = hv_iterinit (format_spec_hv);
                          for (s = 0; s < spec_number; s++)
                            {
                              char *key;
                              I32 retlen;
                              SV *spec_sv = hv_iternextsv (format_spec_hv,
                                                           &key, &retlen);
                              if (!strcmp (key, "element"))
                                {
                                  char *tmp_spec
                                    = (char *) SvPVbyte_nolen (spec_sv);
                                  format_spec->element = strdup (tmp_spec);
                                }
                              else if (!strcmp (key, "quote"))
                                format_spec->quote = SvIV (spec_sv);
                            }
                        }
                    }
                }
            }
        }
    }

#undef FETCH

  html_converter_initialize (converter);

  converter_descriptor = register_converter (converter);
  /* a fresh converter, registered */
  converter = retrieve_converter (converter_descriptor);

  /* store converter_descriptor in perl converter */
  HV *converter_hv = (HV *)SvRV(converter_sv);
  hv_store (converter_hv, "converter_descriptor",
            strlen("converter_descriptor"),
            newSViv (converter_descriptor), 0);
  converter->hv = converter_hv;

  return converter_descriptor;
}


CONVERTER *
set_output_converter_sv (SV *sv_in, char *warn_string)
{
  HV *hv_in;
  SV **converter_options_sv;
  SV **converter_init_conf_sv;
  CONVERTER *converter = 0;

  dTHX;

  converter = get_sv_converter (sv_in, warn_string);

  hv_in = (HV *)SvRV (sv_in);
  converter_options_sv = hv_fetch (hv_in, "conf",
                                   strlen ("conf"), 0);

  if (converter_options_sv)
    {
      converter->conf
         = copy_sv_options (*converter_options_sv);
    }

  converter_init_conf_sv = hv_fetch (hv_in, "output_init_conf",
                                   strlen ("output_init_conf"), 0);

  if (converter_init_conf_sv && SvOK(*converter_init_conf_sv))
    {
      if (converter->init_conf)
        free_options (converter->init_conf);
      free (converter->init_conf);

      converter->init_conf
         = copy_sv_options (*converter_init_conf_sv);
    }

  return converter;
}

void
get_sv_index_entries_sorted_by_letter (CONVERTER *converter,
                                       SV *index_entries_sorted_by_letter)
{
  AV *av_in;
  SSize_t av_number;
  SSize_t j;
  INDEX **index_names = converter->document->index_names;

  dTHX;

  if (!SvOK (index_entries_sorted_by_letter))
    return;

  av_in = (AV *)SvRV (index_entries_sorted_by_letter);

  av_number = av_top_index (av_in) +1;

  if (!av_number)
    return;

  converter->index_entries_by_letter = (INDEX_SORTED_BY_LETTER **)
    malloc (av_number * sizeof (INDEX_SORTED_BY_LETTER *));

  for (j = 0; j < av_number; j++)
    {
      int i;
      char *idx_name = 0;
      SSize_t letter_entries_nr;
      AV *index_sorted_by_letter_av;
      SV **idx_name_sv;
      SV **sorted_by_letter_sv;
      AV *av;

      SV **index_sorted_by_letter_sv = av_fetch (av_in, j, 0);
      if (!index_sorted_by_letter_sv)
        {
          char *msg;
          xasprintf (&msg,
      "get_sv_index_entries_sorted_by_letter: %d: no index sorted entries\n", j);
          fatal (msg);
        }

      index_sorted_by_letter_av
        = (AV *)SvRV (*index_sorted_by_letter_sv);

      idx_name_sv = av_fetch (index_sorted_by_letter_av, 0, 0);
      if (!idx_name_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_index_entries_sorted_by_letter: %d: no index name\n", j);
          fatal (msg);
        }
      idx_name = (char *) SvPVutf8_nolen (*idx_name_sv);

      sorted_by_letter_sv
        = av_fetch (index_sorted_by_letter_av, 1, 0);
      if (!sorted_by_letter_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_index_entries_sorted_by_letter: %d: %s: no letter entries\n",
                     j, idx_name);
          fatal (msg);
        }

      converter->index_entries_by_letter[j] = (INDEX_SORTED_BY_LETTER *)
                                 malloc (sizeof (INDEX_SORTED_BY_LETTER));
      converter->index_entries_by_letter[j]->name = strdup (idx_name);

      av = (AV *)SvRV (*sorted_by_letter_sv);

      letter_entries_nr = av_top_index (av) +1;
      converter->index_entries_by_letter[j]->number = letter_entries_nr;
      converter->index_entries_by_letter[j]->letter_entries
        = (LETTER_INDEX_ENTRIES *)
         malloc (letter_entries_nr * sizeof (LETTER_INDEX_ENTRIES));
      for (i = 0; i < letter_entries_nr; i++)
        {
          SV** letter_entries_sv = av_fetch (av, i, 0);
          LETTER_INDEX_ENTRIES *letter_entries
            = &converter->index_entries_by_letter[j]->letter_entries[i];
          if (letter_entries_sv)
            {
              int k;
              SSize_t entries_nr;
              AV *entries_av;

              HV *letter_entries_hv = (HV *) SvRV (*letter_entries_sv);
              SV **letter_sv = hv_fetch (letter_entries_hv, "letter",
                                         strlen ("letter"), 0);
              SV **entries_sv = hv_fetch (letter_entries_hv, "entries",
                                         strlen ("entries"), 0);
              if (!letter_sv || !entries_sv)
                {
                  char *msg;
                  xasprintf (&msg,
  "get_sv_index_entries_sorted_by_letter: %s: %d: no letter and entries\n",
                             idx_name, i);
                  fatal (msg);
                }
              letter_entries->letter
                = (char *) SvPVutf8_nolen (*letter_sv);

              entries_av = (AV *) SvRV (*entries_sv);
              entries_nr = av_top_index (entries_av) +1;
              letter_entries->number = entries_nr;
              letter_entries->entries =
                (INDEX_ENTRY **) malloc (entries_nr * sizeof (INDEX_ENTRY *));
              for (k = 0; k < entries_nr; k++)
                {
                  SV** index_entry_sv = av_fetch (entries_av, k, 0);
                  HV *index_entry_hv;
                  SV** index_name_sv;
                  SV** entry_number_sv;
                  INDEX *idx;
                  INDEX **n;
                  char *entry_index_name;
                  int entry_number;

                  if (!index_entry_sv)
                    {
                      char *msg;
                      xasprintf (&msg,
  "get_sv_index_entries_sorted_by_letter: %s: %d: %s: %d: no entry\n",
                             idx_name, i, letter_entries->letter, k);
                      fatal (msg);
                    }
                  index_entry_hv = (HV *) SvRV (*index_entry_sv);
                  index_name_sv = hv_fetch (index_entry_hv, "index_name",
                                            strlen ("index_name"), 0);
                  entry_number_sv = hv_fetch (index_entry_hv, "entry_number",
                                              strlen ("entry_number"), 0);
                  if (!index_entry_hv || !entry_number_sv)
                    {
                      char *msg;
                      xasprintf (&msg,
  "get_sv_index_entries_sorted_by_letter: %s: %d: %s: %d: no entry info\n",
                             idx_name, i, letter_entries->letter, k);
                      fatal (msg);
                    }
                  entry_index_name = (char *) SvPVutf8_nolen (*index_name_sv);
                  entry_number = SvIV (*entry_number_sv);

                  for (n = index_names; (idx = *n); n++)
                    {
                      if (!strcmp (idx->name, entry_index_name))
                        {
                          letter_entries->entries[k]
                            = &idx->index_entries[entry_number];
                          break;
                        }
                    }
                }
            }
          else
            {
              char *msg;
              xasprintf (&msg,
    "get_sv_index_entries_sorted_by_letter: %s: %d: no letter entries\n",
                         idx_name, i);
              fatal (msg);
            }
        }
    }
}

void
set_conf (CONVERTER *converter, const char *conf, SV *value)
{
  if (converter->conf)
    get_sv_option (converter->conf, conf, value);
   /* Too early to have options set
  else
    fprintf (stderr, "HHH no converter conf %s\n", conf);
    */
}
