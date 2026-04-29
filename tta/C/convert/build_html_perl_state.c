/* Copyright 2010-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>. */

#include <stdio.h>
#include <stdlib.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "html_conversion_data.h"
#include "tree_types.h"
#include "converter_types.h"
/* for builtin_command_data */
#include "builtin_commands.h"
/* for HMSF_* */
#include "utils.h"
/* next two could be interesting for debugging */
/*
#include "debug.h"
#include "convert_to_texinfo.h"
 */
/* new_documentlanguage_translation */
#include "translations.h"
/* newSVpv_utf8 element_to_perl_hash */
#include "build_perl_info.h"
/* for html_conversion_context_type_names */
#include "html_converter_types.h"
#include "build_html_perl_state.h"
#include "xs_utils.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

static const char *lang_trans_key = "current_lang_translations";

#define FETCH(key) key##_sv = hv_fetch (converter_hv, #key, strlen (#key), 0);
/* TODO should set the same as
   Texinfo::Convert::HTMLNonXS::_translate_names */
static void
build_html_translated_names (HV *converter_hv, CONVERTER *converter)
{
  SV **no_arg_commands_formatting_sv;

  dTHX;

  /* pass current_lang_translations lang info */
  if (converter->current_lang_translations)
    {
      AV *current_lang_translations_av = newAV ();
      HV *lang_info_hv
        = build_lang_info (converter->current_lang_translations->info);

      av_push (current_lang_translations_av,
               newRV_noinc ((SV *) lang_info_hv));

      hv_store (converter_hv, lang_trans_key, strlen (lang_trans_key),
                newRV_noinc ((SV *) current_lang_translations_av), 0);
    }

  /* pass all the information for each context for translated commands */
  if (converter->no_arg_formatted_cmd_translated.number)
    {
      size_t j;
      HV *no_arg_commands_formatting_hv;
      FETCH(no_arg_commands_formatting);
      no_arg_commands_formatting_hv
        = (HV *) SvRV (*no_arg_commands_formatting_sv);
      for (j = 0; j < converter->no_arg_formatted_cmd_translated.number; j++)
        {
          int k;
          enum command_id cmd
            = converter->no_arg_formatted_cmd_translated.list[j];
          const char *cmdname = builtin_command_data[cmd].cmdname;
          HTML_NO_ARG_COMMAND_FORMATTING *no_arg_cmd_formatting
            = &converter->html_no_arg_command_conversion[cmd];
          SV **no_arg_command_sv
             = hv_fetch (no_arg_commands_formatting_hv,
                         cmdname, strlen (cmdname), 0);
          HV *no_arg_command_hv = (HV *) SvRV (*no_arg_command_sv);

          for (k = 0; k < NO_ARG_COMMAND_CONTEXT_NR; k++)
            {
              HTML_NO_ARG_COMMAND_CONVERSION *no_arg_cmd_context
                  = &no_arg_cmd_formatting->context_formatting[k];

              const char *context_name = html_conversion_context_type_names[k];
              SV **context_sv = hv_fetch (no_arg_command_hv,
                                 context_name, strlen (context_name), 0);
              HV *context_hv = (HV *) SvRV (*context_sv);

 #define REPLACE_STR(key,variable_hv,variable) \
              if (variable->key) \
                {               \
                  hv_store (variable_hv, #key, strlen (#key), \
                            newSVpv_utf8 (variable->key, 0), 0); \
                }   \
              else if (hv_exists (variable_hv, #key, strlen (#key))) \
                hv_delete (variable_hv, #key, strlen (#key), G_DISCARD);

              REPLACE_STR(text, context_hv, no_arg_cmd_context)
              REPLACE_STR(translated_converted, context_hv, no_arg_cmd_context)
            }

          REPLACE_STR(translated_to_convert, no_arg_command_hv,
                      no_arg_cmd_formatting)

 #undef REPLACE_STR
          if (no_arg_cmd_formatting->translated_tree)
            {
              ELEMENT *translated_tree
               = no_arg_cmd_formatting->translated_tree;
              if (!translated_tree->sv)
                element_to_perl_hash (translated_tree, 1);
              hv_store (no_arg_command_hv, "translated_tree",
                        strlen ("translated_tree"),
                        newSVsv ((SV *) translated_tree->sv), 0);
            }
          else if (hv_exists (no_arg_command_hv, "translated_tree",
                              strlen ("translated_tree")))
            hv_delete (no_arg_command_hv, "translated_tree",
                       strlen ("translated_tree"), G_DISCARD);
        }

      memset (converter->no_arg_formatted_cmd_translated.list, 0,
              converter->no_arg_formatted_cmd_translated.number
                   * sizeof (enum command_id));
      converter->no_arg_formatted_cmd_translated.number = 0;
    }

#undef FETCH

}

void
build_html_formatting_state (CONVERTER *converter)
{
  HV *converter_hv;
  unsigned long flags;

  dTHX;

  flags = converter->modified_state;

  if (!flags)
    return;

  if (converter->external_references_number <= 0)
    {
      converter->modified_state = 0;
      return;
    }

  converter_hv = (HV *) SvRV ((SV *) converter->sv);

#define STORE(key, value) hv_store (converter_hv, key, strlen (key), value, 0)

  if (flags & HMSF_current_root)
    {
      if (!converter->current_root_command)
        STORE("current_root_command", newSV (0));
      else
        STORE("current_root_command",
          newSVsv ((SV *) converter->current_root_command->sv));
    }

  if (flags & HMSF_current_node)
    {
      if (!converter->current_node)
        STORE("current_node", newSV (0));
      else
        STORE("current_node",
           newSVsv ((SV *) converter->current_node->sv));
    }

#undef STORE

  if (flags & HMSF_translations)
    build_html_translated_names (converter_hv, converter);

  converter->modified_state = 0;
}

