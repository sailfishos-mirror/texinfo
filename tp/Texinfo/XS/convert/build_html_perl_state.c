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

#undef context

#include "tree_types.h"
#include "converter_types.h"
/* for builtin_command_name */
#include "builtin_commands.h"
/* for fatal HMSF_* */
#include "utils.h"
#include "extra.h"
/* for debugging */
#include "debug.h"
#include "convert_to_texinfo.h"
#include "output_unit.h"
#include "command_stack.h"
/* also for perl_only_* wrappers */
#include "build_perl_info.h"
/* for NAMED_STRING_ELEMENT_LIST */
#include "translations.h"
/* also for html_argument_formatting_type_names */
#include "convert_html.h"
#include "build_html_perl_state.h"

#define LOCALEDIR DATADIR "/locale"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

#define STORE(key, sv) hv_store (html_target_hv, key, strlen (key), sv, 0)
HV *
build_html_target (const HTML_TARGET *html_target)
{
  HV *html_target_hv;
  SV *target_sv;

  dTHX;

  target_sv = newSVpv_utf8 (html_target->target, 0);

  html_target_hv = newHV ();

  STORE("target", target_sv);
  if (html_target->special_unit_filename)
    STORE("special_unit_filename",
          newSVpv_utf8 (html_target->special_unit_filename, 0));
  if (html_target->node_filename)
    STORE("node_filename",
          newSVpv_utf8 (html_target->node_filename, 0));
  if (html_target->section_filename)
    STORE("section_filename",
          newSVpv_utf8 (html_target->section_filename, 0));
  if (html_target->contents_target)
    STORE("contents_target",
          newSVpv_utf8 (html_target->contents_target, 0));
  if (html_target->shortcontents_target)
    STORE("shortcontents_target",
          newSVpv_utf8 (html_target->shortcontents_target, 0));
#undef STORE
  return html_target_hv;
}

SV *
build_no_arg_commands_formatting (const CONVERTER *converter)
{
  HV *no_arg_commands_formatting_hv;
  int i;

  dTHX;

  no_arg_commands_formatting_hv = newHV ();

  for (i = 0; i < no_arg_formatted_cmd.number; i++)
    {
      enum command_id cmd = no_arg_formatted_cmd.list[i];
      enum conversion_context cctx;
      const char *command_name = builtin_command_name (cmd);

      HV *context_hv = newHV ();
      hv_store (no_arg_commands_formatting_hv, command_name,
                strlen (command_name), newRV_noinc ((SV *) context_hv), 0);

      for (cctx = 0; cctx < HCC_type_css_string+1; cctx++)
        {
          const HTML_COMMAND_CONVERSION *no_arg_format
            = &converter->html_command_conversion[cmd][cctx];
          const char *context_name = html_conversion_context_type_names[cctx];

          HV *spec_hv = newHV ();

          hv_store (context_hv, context_name, strlen (context_name),
                    newRV_noinc ((SV *) spec_hv), 0);

#define STORE(key, sv) hv_store (spec_hv, key, strlen (key), sv, 0)
#define STORE_FIELD(field) \
          if (no_arg_format->field) \
            STORE(#field, newSVpv_utf8 (no_arg_format->field, 0));

          STORE_FIELD(element)

          if (no_arg_format->unset)
            STORE("unset", newSViv (1));

          STORE_FIELD(text)
          STORE_FIELD(translated_converted)
          STORE_FIELD(translated_to_convert)

#undef STORE_FIELD
#undef STORE
        }
    }
  return newRV_noinc ((SV *) no_arg_commands_formatting_hv);
}

SV *
build_directions_strings (const CONVERTER *converter)
{
  HV *directions_strings_hv;
  enum direction_string_type DS_type;
  int nr_string_directions;
  int nr_dir_str_contexts = TDS_context_string +1;

  dTHX;

  nr_string_directions = NON_SPECIAL_DIRECTIONS_NR - FIRSTINFILE_NR
                     + converter->special_unit_varieties.number;

  directions_strings_hv = newHV ();

  for (DS_type = 0; DS_type < TDS_TYPE_MAX_NR; DS_type++)
    {
      int i;
      const char *type_name = direction_string_type_names[DS_type];

      HV *direction_hv = newHV ();

      hv_store (directions_strings_hv, type_name,
                strlen (type_name), newRV_noinc ((SV *) direction_hv), 0);

      /* those will be determined from translatable strings */
      if (DS_type < TDS_TRANSLATED_MAX_NR)
        continue;

      for (i = 0; i < nr_string_directions; i++)
        {
          int j;
          const char *direction_name;
          HV *context_hv = newHV ();

          if (i < FIRSTINFILE_MIN_IDX)
            direction_name = html_button_direction_names[i];
          else
            direction_name
              = converter->special_unit_info[SUI_type_direction]
                                   [i - FIRSTINFILE_MIN_IDX];

          hv_store (direction_hv, direction_name, strlen (direction_name),
                    newRV_noinc ((SV *) context_hv), 0);

          for (j = 0; j < nr_dir_str_contexts; j++)
            {
              const char *context_name
                = direction_string_context_names[j];
              if (converter->directions_strings[DS_type][i][j])
                {
                  hv_store (context_hv, context_name, strlen (context_name),
                           newSVpv_utf8 (
                          converter->directions_strings[DS_type][i][j], 0), 0);
                }
            }
        }
    }

  return newRV_noinc ((SV *) directions_strings_hv);
}


#define STORE(key, sv) hv_store (converter_hv, key, strlen (key), sv, 0)
#define STORE_INFO(key, sv) hv_store (converter_info_hv, key, strlen (key), sv, 0)
void
html_pass_converter_output_state (SV *converter_sv, const CONVERTER *converter)
{
  HV *converter_hv;
  SV **converter_info_sv;
  HV *converter_info_hv;
  const char *non_breaking_space;
  const char *paragraph_symbol;
  const char *line_break_element;
  SV *non_breaking_space_sv;
  SV *paragraph_symbol_sv;
  SV *line_break_element_sv;
  SV **expanded_formats_sv;
  SV *no_arg_commands_formatting_sv;
  SV *directions_strings_sv;

  dTHX;

  converter_hv = (HV *) SvRV (converter_sv);
  converter_info_sv = hv_fetch (converter_hv, "converter_info",
                             strlen ("converter_info"), 0);
  converter_info_hv = (HV *) SvRV (*converter_info_sv);

  non_breaking_space
           = converter->special_character[SC_non_breaking_space].string;
  line_break_element = converter->line_break_element.string;
  paragraph_symbol
          = converter->special_character[SC_paragraph_symbol].string;

  non_breaking_space_sv = newSVpv_utf8 (non_breaking_space, 0);

  STORE("non_breaking_space", non_breaking_space_sv);
  SvREFCNT_inc (non_breaking_space_sv);
  STORE_INFO("non_breaking_space", non_breaking_space_sv);

  paragraph_symbol_sv = newSVpv_utf8 (paragraph_symbol, 0);

  STORE_INFO("paragraph_symbol", paragraph_symbol_sv);

  line_break_element_sv = newSVpv_utf8 (line_break_element, 0);

  STORE("line_break_element", line_break_element_sv);
  SvREFCNT_inc (line_break_element_sv);
  STORE_INFO("line_break_element", line_break_element_sv);

  /* add expanded_formats to converter_info */
  expanded_formats_sv
    = hv_fetch (converter_hv, "expanded_formats",
                strlen ("expanded_formats"), 0);

  if (expanded_formats_sv && SvOK (*expanded_formats_sv))
    {
      SvREFCNT_inc (*expanded_formats_sv);
      STORE_INFO("expanded_formats", *expanded_formats_sv);
    }

  no_arg_commands_formatting_sv = build_no_arg_commands_formatting (converter);
  STORE("no_arg_commands_formatting", no_arg_commands_formatting_sv);

  directions_strings_sv = build_directions_strings (converter);
  STORE("directions_strings", directions_strings_sv);

#undef STORE
#undef STORE_INFO
}

/* Currently unused */
SV *
build_html_files_source_info (const FILE_SOURCE_INFO_LIST *files_source_info)
{
  int i;
  HV *hv;

  dTHX;

  hv = newHV ();

  if (files_source_info)
    {
#define STORE(key, sv) hv_store (file_source_info_hv, key, strlen (key), sv, 0)
      for (i = 0; i < files_source_info->number; i++)
        {
          const FILE_SOURCE_INFO * file_source_info = &files_source_info->list[i];
          HV *file_source_info_hv;
          SV *file_source_info_sv;
          const char *filename = file_source_info->filename;
          SV *filename_sv = newSVpv_utf8 (filename, 0);

          file_source_info_hv = newHV ();
          file_source_info_sv = newRV_noinc ((SV *) file_source_info_hv);

          hv_store_ent (hv, filename_sv, file_source_info_sv, 0);

          STORE("file_info_type", newSVpv_utf8 (file_source_info->type, 0));
          if (file_source_info->name)
            STORE("file_info_name", newSVpv_utf8 (file_source_info->name, 0));
          /* not actually used in downstream code, but present also in perl */
          if (file_source_info->path)
            STORE("file_info_path", newSVpv_utf8 (file_source_info->path, 0));
          else
            STORE("file_info_path", newSV(0));

          if (file_source_info->element)
            {
              SV *element_sv = newRV_inc ((SV *) file_source_info->element->hv);
              STORE("file_info_element", element_sv);
            }
        }
#undef STORE
    }
  return newRV_noinc ((SV *) hv);
}

static HV *
build_html_global_units_directions (const OUTPUT_UNIT **global_units_directions,
                     const SPECIAL_UNIT_DIRECTION *special_units_direction_name)
{
  int i;
  HV *hv;

  dTHX;

  if (!global_units_directions)
    return 0;

  hv = newHV ();

  for (i = 0; i < D_Last+1; i++)
    {
      if (global_units_directions[i])
        {
          const char *direction_name = html_global_unit_direction_names[i];
          hv_store (hv, direction_name, strlen (direction_name),
                    newRV_inc ((SV *) global_units_directions[i]->hv), 0);
        }
    }

  /* special_units_direction_name is allocated because
     html_prepare_output_units_global_targets or
     html_prepare_units_directions_files was called before
     calling pass_html_global_units_directions */
  for (i = 0; special_units_direction_name[i].output_unit; i++)
    {
      const SPECIAL_UNIT_DIRECTION *special_unit_direction
       = &special_units_direction_name[i];
      const char *direction_name = special_unit_direction->direction;
      const OUTPUT_UNIT *output_unit = special_unit_direction->output_unit;
      hv_store (hv, direction_name, strlen (direction_name),
                  newRV_inc ((SV *) output_unit->hv), 0);
    }

  return hv;
}

void
pass_html_global_units_directions (SV *converter_sv,
                       const OUTPUT_UNIT **global_units_directions,
                   const SPECIAL_UNIT_DIRECTION *special_units_direction_name)
{
  HV *global_units_directions_hv;
  SV *global_units_directions_sv;
  HV *converter_hv;

  dTHX;

  converter_hv = (HV *) SvRV (converter_sv);

  global_units_directions_hv
    = build_html_global_units_directions (global_units_directions,
                                        special_units_direction_name);
  if (global_units_directions_hv)
    global_units_directions_sv
     = newRV_noinc ((SV *) global_units_directions_hv);
  else
    global_units_directions_sv = newSV (0);

  hv_store (converter_hv, "global_units_directions",
            strlen ("global_units_directions"), global_units_directions_sv, 0);
}

HV *
build_html_elements_in_file_count (
                 FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  int i;
  HV *hv;

  dTHX;

  hv = newHV ();

  if (output_unit_files)
    {
      for (i = 0; i < output_unit_files->number; i++)
        {
          FILE_NAME_PATH_COUNTER *output_unit_file
            = &output_unit_files->list[i];
          char *filename = output_unit_file->filename;
          SV *filename_sv = newSVpv_utf8 (filename, 0);

          hv_store_ent (hv, filename_sv,
                        newSViv (output_unit_file->elements_in_file_count), 0);
        }
    }

  return hv;
}

void
pass_html_elements_in_file_count (SV *converter_sv,
                   FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  HV *elements_in_file_count_hv;
  HV *converter_hv;

  dTHX;

  converter_hv = (HV *) SvRV (converter_sv);

  elements_in_file_count_hv
   = build_html_elements_in_file_count (output_unit_files);

  hv_store (converter_hv, "elements_in_file_count",
            strlen ("elements_in_file_count"),
            newRV_noinc ((SV *) elements_in_file_count_hv), 0);
}

void
build_html_translated_names (HV *hv, CONVERTER *converter)
{
  int j;
  SV **directions_strings_sv;
  HV *directions_strings_hv;
  SV **special_unit_info_sv;
  HV *special_unit_info_hv;
  SV **no_arg_commands_formatting_sv;
  HV *direction_string_hv;

  dTHX;

  /* reset with empty hash */
#define FETCH(key) key##_sv = hv_fetch (hv, #key, strlen (#key), 0);
  FETCH(directions_strings);
  directions_strings_hv = (HV *) SvRV (*directions_strings_sv);
#define tds_type(name) \
  direction_string_hv = newHV (); \
  hv_store (directions_strings_hv, #name, strlen (#name), \
               newRV_noinc ((SV *) direction_string_hv), 0);
   TDS_TRANSLATED_TYPES_LIST
#undef tds_type

  FETCH(special_unit_info);
  special_unit_info_hv = (HV *) SvRV (*special_unit_info_sv);

  /* reset with empty hash */
  for (j = 0; translated_special_unit_info[j].tree_type != SUIT_type_none; j++)
    {
      enum special_unit_info_type string_type
        = translated_special_unit_info[j].string_type;
      const char *type_name = special_unit_info_type_names[string_type];
      char *key;
      HV *special_unit_hv = newHV ();
      key = perl_only_malloc (strlen (type_name) + strlen ("_tree") + 1);
      sprintf (key, "%s_tree", type_name);
      hv_store (special_unit_info_hv, key, strlen (key),
                newRV_noinc ((SV *) special_unit_hv), 0);
      perl_only_free (key);
    }

  /* pass all the information for each context for translated commands */
  if (converter->no_arg_formatted_cmd_translated.number)
    {
      int max_context = HCC_type_css_string +1;
      int j;
      HV *no_arg_commands_formatting_hv;
      FETCH(no_arg_commands_formatting);
      no_arg_commands_formatting_hv
        = (HV *) SvRV (*no_arg_commands_formatting_sv);
      for (j = 0; j < converter->no_arg_formatted_cmd_translated.number; j++)
        {
          int k;
          enum command_id cmd
            = converter->no_arg_formatted_cmd_translated.list[j];
          HTML_COMMAND_CONVERSION *conversion_contexts
                = converter->html_command_conversion[cmd];
          const char *cmdname = builtin_command_data[cmd].cmdname;
          SV **no_arg_command_sv
             = hv_fetch (no_arg_commands_formatting_hv,
                         cmdname, strlen (cmdname), 0);
          HV *no_arg_command_hv = (HV *) SvRV (*no_arg_command_sv);
          for (k = 0; k < max_context; k++)
            {
              HTML_COMMAND_CONVERSION *no_arg_cmd_context
                  = &conversion_contexts[k];

              const char *context_name = html_conversion_context_type_names[k];
              SV **context_sv = hv_fetch (no_arg_command_hv,
                                 context_name, strlen (context_name), 0);
              HV *context_hv = (HV *) SvRV (*context_sv);

 #define REPLACE_STR(key) \
              if (no_arg_cmd_context->key) \
                {               \
                  hv_store (context_hv, #key, strlen (#key), \
                            newSVpv_utf8 (no_arg_cmd_context->key, 0), 0); \
                }   \
              else if (hv_exists (context_hv, #key, strlen (#key))) \
                hv_delete (context_hv, #key, strlen (#key), G_DISCARD);

              REPLACE_STR(text)
              REPLACE_STR(translated_converted)
              REPLACE_STR(translated_to_convert)
 #undef REPLACE_STR

              if (no_arg_cmd_context->translated_tree)
                {
                  ELEMENT *translated_tree
                    = no_arg_cmd_context->translated_tree;
                  if (!translated_tree->hv)
                    element_to_perl_hash (translated_tree, 1);
                  hv_store (context_hv, "translated_tree",
                            strlen ("translated_tree"),
                            newRV_inc ((SV *) translated_tree->hv), 0);
                }
              else if (hv_exists (context_hv, "translated_tree",
                                  strlen ("translated_tree")))
                hv_delete (context_hv, "translated_tree",
                           strlen ("translated_tree"), G_DISCARD);
            }
        }

      memset (converter->no_arg_formatted_cmd_translated.list, 0,
              converter->no_arg_formatted_cmd_translated.number
                   * sizeof (enum command_id));
      converter->no_arg_formatted_cmd_translated.number = 0;
    }

#undef FETCH

}

void
build_html_formatting_state (CONVERTER *converter, unsigned long flags)
{
  HV *hv;
  int i;

  dTHX;

  if (!converter->hv)
    return;

  if (converter->external_references_number <= 0)
    return;

  hv = converter->hv;

#define FETCH(key) key##_sv = hv_fetch (hv, #key, strlen (#key), 0);
#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  if (flags & HMSF_current_root)
    {
      if (!converter->current_root_command)
        STORE("current_root_command", newSV (0));
      else
        STORE("current_root_command",
          newRV_inc ((SV *) converter->current_root_command->hv));
    }

  if (flags & HMSF_current_node)
    {
      if (!converter->current_node)
        STORE("current_node", newSV (0));
      else
        STORE("current_node",
           newRV_inc ((SV *) converter->current_node->hv));
    }

  if (flags & HMSF_multiple_pass)
    {
      SV **multiple_pass_sv;
      AV *multiple_pass_av;

      FETCH(multiple_pass);

      if (!multiple_pass_sv)
        {
          multiple_pass_av = newAV ();
          STORE("multiple_pass", newRV_noinc ((SV *) multiple_pass_av));
        }
      else
        {
          multiple_pass_av = (AV *) SvRV (*multiple_pass_sv);
          av_clear (multiple_pass_av);
        }

      for (i = 0; i < converter->multiple_pass.top; i++)
        {
          const char *multiple_pass_str = converter->multiple_pass.stack[i];
          av_push (multiple_pass_av, newSVpv_utf8(multiple_pass_str, 0));
        }
    }

#undef STORE

  if (flags & HMSF_translations)
    build_html_translated_names (hv, converter);
}

SV *
build_html_command_formatted_args (const HTML_ARGS_FORMATTED *args_formatted)
{
  AV *av;
  int i;

  dTHX;

  if (!args_formatted)
    return newSV (0);

  av = newAV ();

  for (i = 0; i < args_formatted->number; i++)
    {
      const HTML_ARG_FORMATTED *arg_formatted = &args_formatted->args[i];
      if (arg_formatted->arg_tree)
        {
          int j;
          HV *arg_formated_hv = newHV ();
          av_push (av, newRV_noinc ((SV *) arg_formated_hv));

          hv_store (arg_formated_hv, "arg_tree", strlen ("arg_tree"),
                    newRV_inc ((SV *) arg_formatted->arg_tree->hv), 0);

          for (j = 0; j < AFT_type_raw+1; j++)
            {
              if (arg_formatted->formatted[j])
                {
                  const char *format_name
                     = html_argument_formatting_type_names[j];
                  hv_store (arg_formated_hv, format_name, strlen (format_name),
                            newSVpv_utf8 (arg_formatted->formatted[j], 0), 0);
                }
            }
        }
      else
        av_push (av, newSV(0));
    }

  return newRV_noinc ((SV *) av);
}

SV *
build_replaced_substrings (NAMED_STRING_ELEMENT_LIST *replaced_substrings)
{
  HV *hv;
  int i;

  dTHX;

  if (!replaced_substrings)
    return newSV (0);

  hv = newHV ();

  for (i = 0; i < replaced_substrings->number; i++)
    {
      NAMED_STRING_ELEMENT *named_string_elt = &replaced_substrings->list[i];
      SV *name_sv = newSVpv_utf8 (named_string_elt->name, 0);
      SV *value_sv = 0;

      if (named_string_elt->element)
        value_sv = newRV_inc ((SV *) named_string_elt->element->hv);
      else if (named_string_elt->string)
        value_sv = newSVpv_utf8 (named_string_elt->string, 0);

      if (value_sv)
        hv_store_ent (hv, name_sv, value_sv, 0);
    }

  return newRV_noinc ((SV *) hv);
}

void
build_pending_footnotes (AV *av, HTML_PENDING_FOOTNOTE_STACK *stack)
{
  dTHX;

  if (stack->top > 0)
    {
      size_t i;
      for (i = 0; i < stack->top; i++)
        {
          HTML_PENDING_FOOTNOTE *pending_footnote = stack->stack[i];

          AV *pending_footnote_av = newAV ();
          SV *sv = newRV_noinc ((SV *) pending_footnote_av);
          av_push (av, sv);

          av_push (pending_footnote_av,
                   newRV_inc ((SV *) pending_footnote->command->hv));
          av_push (pending_footnote_av,
                   newSVpv_utf8 (pending_footnote->footid, 0));
          av_push (pending_footnote_av,
                   newSVpv_utf8 (pending_footnote->docid, 0));
          av_push (pending_footnote_av,
                   newSViv (pending_footnote->number_in_doc));
          av_push (pending_footnote_av,
           newSVpv_utf8 (pending_footnote->footnote_location_filename, 0));
          if (pending_footnote->multi_expanded_region)
            av_push (pending_footnote_av,
                     newSVpv_utf8 (pending_footnote->multi_expanded_region, 0));
          else
            av_push (pending_footnote_av, newSV (0));
        }
    }
}

void
build_simpletitle (CONVERTER *converter, HV *converter_info_hv)
{
  dTHX;

  hv_store (converter_info_hv, "simpletitle_tree",
            strlen ("simpletitle_tree"),
            newRV_inc ((SV *) converter->simpletitle_tree->hv), 0);
  hv_store (converter_info_hv, "simpletitle_command_name",
            strlen ("simpletitle_command_name"),
            newSVpv (builtin_command_name (converter->simpletitle_cmd), 0), 0);
}

void
pass_jslicenses (JSLICENSE_CATEGORY_LIST *jslicenses, HV *converter_info_hv)
{
  HV *jslicenses_hv;
  size_t i;

  dTHX;

  jslicenses_hv = newHV ();

  for (i = 0; i < jslicenses->number; i++)
    {
      size_t j;
      JSLICENSE_FILE_INFO_LIST *jslicences_files_info = &jslicenses->list[i];
      SV *category_sv = newSVpv_utf8 (jslicences_files_info->category, 0);
      HV *jslicences_files_info_hv = newHV ();
      hv_store_ent (jslicenses_hv, category_sv,
                    newRV_noinc ((SV *)jslicences_files_info_hv), 0);
      for (j = 0; j < jslicences_files_info->number; j++)
        {
          JSLICENSE_FILE_INFO *jslicense_file_info
            = &jslicences_files_info->list[j];
          SV *filename_sv = newSVpv_utf8 (jslicense_file_info->filename, 0);
          AV *jslicence_file_info_av = newAV ();
          hv_store_ent (jslicences_files_info_hv, filename_sv,
                        newRV_noinc ((SV *)jslicence_file_info_av), 0);
          av_push (jslicence_file_info_av,
                   newSVpv_utf8 (jslicense_file_info->license, 0));
          av_push (jslicence_file_info_av,
                   newSVpv_utf8 (jslicense_file_info->url, 0));
          av_push (jslicence_file_info_av,
                   newSVpv_utf8 (jslicense_file_info->source, 0));
        }
    }

  hv_store (converter_info_hv, "jslicenses", strlen ("jslicenses"),
            newRV_noinc ((SV *) jslicenses_hv), 0);
}

