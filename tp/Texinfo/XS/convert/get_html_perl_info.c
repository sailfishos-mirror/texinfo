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

#include "converter_types.h"
#include "utils.h"
#include "converter.h"
#include "convert_html.h"
#include "get_perl_info.h"
#include "get_html_perl_info.h"

/* Following is HTML specific */
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

int
compare_ints (const void *a, const void *b)
{
  const enum command_id *int_a = (const enum command_id *) a;
  const enum command_id *int_b = (const enum command_id *) b;

  return (*int_a > *int_b) - (*int_a < *int_b);
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
  HV *converter_hv;
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

  converter_hv = (HV *)SvRV (converter_sv);

  default_formatting_references_hv
    = (HV *)SvRV (default_formatting_references);
  default_css_string_formatting_references_hv
    = (HV *)SvRV (default_css_string_formatting_references);

#define FETCH(key) key##_sv = hv_fetch (converter_hv, #key, strlen(#key), 0);
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
      enum special_unit_info_type j;
      SV **special_unit_info_sv;
      HV *special_unit_info_hv;

      STRING_LIST *special_unit_varieties = &converter->special_unit_varieties;
      if (sorted_special_unit_varieties_sv)
        add_svav_to_string_list (*sorted_special_unit_varieties_sv,
                                 special_unit_varieties, 0);

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
                      enum conversion_context k;
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
                                    = (char *) SvPVutf8_nolen (spec_sv);
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

  converter->hv = converter_hv;

  converter_descriptor = register_converter (converter);

  /* store converter_descriptor in perl converter */
  hv_store (converter_hv, "converter_descriptor",
            strlen("converter_descriptor"),
            newSViv (converter_descriptor), 0);

  return converter_descriptor;
}

