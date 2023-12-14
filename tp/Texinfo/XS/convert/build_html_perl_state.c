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
#include "converter_types.h"
/* for fatal HMSF_* */
#include "utils.h"
#include "extra.h"
/* for debugging */
#include "debug.h"
#include "convert_to_texinfo.h"
#include "output_unit.h"
#include "command_stack.h"
#include "build_perl_info.h"
/* for NAMED_STRING_ELEMENT_LIST */
#include "translations.h"
#include "convert_html.h"
#include "build_html_perl_state.h"

#define LOCALEDIR DATADIR "/locale"

  /* TODO the following NOTE could be obsolete, as this code is now part
     of a library that is not linked against Gnulib.  However, XS dynamic
     shared object link against both the library this code is part of and
     another library that does not use perl headers and do not link against
     perl libraries but links against Gnulib. */

  /* NOTE: Do not call 'malloc' or 'free' in any function called in this file.
     Since this file (build_perl_info.c) includes the Perl headers,
     we get the Perl redefinitions, which we do not want, as we don't use
     them throughout the rest of the program. */

  /* Can't use asprintf here, because it might come from Gnulib, and
     will then use malloc that is different from Perl's malloc, whereas
     free below is redirected to Perl's implementation.  This could
     cause crashes if the two malloc/free implementations were different.  */

#define STORE(key, sv) hv_store (html_target_hv, key, strlen (key), sv, 0)
HV *
build_html_target (HTML_TARGET *html_target)
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

static void
add_html_element_target (HV *hv, HTML_TARGET *html_target)
{
  SV *html_target_sv;
  HV *html_target_hv;
  SV *element_sv;

  dTHX;

  html_target_hv = build_html_target (html_target);

  if (!html_target->element->hv)
    {
      fprintf (stderr, "BUG: No hv for target '%s'\n", html_target->target);
      fatal ("No hv for target");
    }

  element_sv = newRV_inc ((SV *) html_target->element->hv);
  html_target_sv = newRV_noinc ((SV *) html_target_hv);
  hv_store_ent (hv, element_sv, html_target_sv, 0);
}

/* this function is used to set the initial targets information. */
/* Dynamical changes are done in other functions, build_html_translated_names
   .... */
void
build_html_element_targets (HV *hv, HTML_TARGET_LIST *html_targets)
{
  int i;

  dTHX;

  if (!html_targets || html_targets->number <= 0)
    return;

  for (i = 0; i < html_targets->number; i++)
    {
      HTML_TARGET *html_target = &html_targets->list[i];
      add_html_element_target (hv, html_target);
    }
}

void
pass_html_element_targets (SV *converter_sv, HTML_TARGET_LIST *html_targets)
{
  HV *targets_hv;
  HV *hv;

  dTHX;

  hv = (HV *) SvRV (converter_sv);

  targets_hv = newHV ();
  build_html_element_targets (targets_hv, html_targets);

  hv_store (hv, "targets", strlen ("targets"),
            newRV_noinc ((SV *) targets_hv), 0);
}

HV *
build_html_special_targets (HTML_TARGET_LIST *html_special_targets)
{
  HV *hv;
  HV *html_special_target_hv;

  dTHX;

  hv = newHV ();

  /* could be generalized if needed */

  HTML_TARGET_LIST *html_special_target
    = &html_special_targets[ST_footnote_location];
  html_special_target_hv = newHV ();
  build_html_element_targets (html_special_target_hv, html_special_target);

  hv_store (hv, "footnote_location", strlen ("footnote_location"),
            newRV_noinc ((SV *) html_special_target_hv), 0);

  return hv;
}

void
pass_html_special_targets (SV *converter_sv,
                          HTML_TARGET_LIST *html_special_targets)
{
  HV *special_targets_hv;
  HV *hv;

  dTHX;

  hv = (HV *) SvRV (converter_sv);

  special_targets_hv = build_html_special_targets (html_special_targets);

  hv_store (hv, "special_targets", strlen ("special_targets"),
            newRV_noinc ((SV *) special_targets_hv), 0);
}

HV *
build_html_seen_ids (STRING_LIST *seen_ids)
{
  HV *hv;
  int i;

  dTHX;

  hv = newHV ();

  if (seen_ids && seen_ids->number > 0)
    {
      for (i = 0; i < seen_ids->number; i++)
        {
          char *target = seen_ids->list[i];
          SV *target_sv = newSVpv_utf8 (target, 0);
          hv_store_ent (hv, target_sv, newSViv (1), 0);
        }
    }

  return hv;
}

void
pass_html_seen_ids (SV *converter_sv, STRING_LIST *seen_ids)
{
  HV *seen_ids_hv;
  HV *hv;

  dTHX;

  hv = (HV *) SvRV (converter_sv);

  seen_ids_hv = build_html_seen_ids (seen_ids);

  hv_store (hv, "seen_ids", strlen ("seen_ids"),
            newRV_noinc ((SV *) seen_ids_hv), 0);
}

SV *
build_html_files_source_info (FILE_SOURCE_INFO_LIST *files_source_info)
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
          FILE_SOURCE_INFO * file_source_info = &files_source_info->list[i];
          HV *file_source_info_hv;
          SV *file_source_info_sv;
          char *filename = file_source_info->filename;
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

HV *
build_html_global_units_directions (const OUTPUT_UNIT **global_units_directions,
                       SPECIAL_UNIT_DIRECTION *special_units_direction_name)
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
          char *direction_name = html_global_unit_direction_names[i];
          hv_store (hv, direction_name, strlen (direction_name),
                    newRV_inc ((SV *) global_units_directions[i]->hv), 0);
        }
    }

  /* html_prepare_units_directions_files is allocated because
     html_prepare_units_directions_files was called before */
  for (i = 0; special_units_direction_name[i].output_unit; i++)
    {
      SPECIAL_UNIT_DIRECTION *special_unit_direction
       = &special_units_direction_name[i];
      char *direction_name = special_unit_direction->direction;
      const OUTPUT_UNIT *output_unit = special_unit_direction->output_unit;
      hv_store (hv, direction_name, strlen (direction_name),
                  newRV_inc ((SV *) output_unit->hv), 0);
    }

  return hv;
}

void
pass_html_global_units_directions (SV *converter_sv,
                       const OUTPUT_UNIT **global_units_directions,
                       SPECIAL_UNIT_DIRECTION *special_units_direction_name)
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
  SV **targets_sv;
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
      xasprintf (&key, "%s_tree", type_name);
      hv_store (special_unit_info_hv, key, strlen (key),
                newRV_noinc ((SV *) special_unit_hv), 0);
      free (key);
    }

  /* remove some info that will be redone on demand */
  if (converter->reset_target_commands.number > 0)
    {
      int j;
      HV *targets_hv;
      FETCH(targets);
      targets_hv = (HV *) SvRV (*targets_sv);

      for (j = 0; j < converter->reset_target_commands.number; j++)
        {
          ELEMENT *command = converter->reset_target_commands.list[j];
          SV *command_sv = newRV_noinc ((SV *) command->hv);
          HE *target_he = hv_fetch_ent (targets_hv, command_sv, 0, 0);
          if (!target_he)
            {
              char *element_str = print_element_debug (command, 0);
              fprintf (stderr, "BUG: cannot retrieve target %d %s\n",
                       j, element_str);
              free (element_str);
            }
          else
            {
              SV *target_sv = HeVAL (target_he);
              HV *target_hv = (HV *) SvRV (target_sv);
              if (hv_exists (target_hv, "text", strlen ("text")))
                hv_delete (target_hv, "text", strlen ("text"), G_DISCARD);
              if (hv_exists (target_hv, "string", strlen ("string")))
                hv_delete (target_hv, "string", strlen ("string"), G_DISCARD);
              if (hv_exists (target_hv, "tree", strlen ("tree")))
                hv_delete (target_hv, "tree", strlen ("tree"), G_DISCARD);
            }
        }
      converter->reset_target_commands.number = 0;
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
          char *cmdname = builtin_command_data[cmd].cmdname;
          SV **no_arg_command_sv
             = hv_fetch (no_arg_commands_formatting_hv,
                         cmdname, strlen (cmdname), 0);
          HV *no_arg_command_hv = (HV *) SvRV (*no_arg_command_sv);
          for (k = 0; k < max_context; k++)
            {
              HTML_COMMAND_CONVERSION *no_arg_cmd_context
                  = &conversion_contexts[k];

              char *context_name = html_conversion_context_type_names[k];
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

              if (no_arg_cmd_context->tree)
                {
                  if (!no_arg_cmd_context->tree->hv)
                    element_to_perl_hash (no_arg_cmd_context->tree, 1);
                  hv_store (context_hv, "tree", strlen ("tree"),
                          newRV_inc ((SV *) no_arg_cmd_context->tree->hv), 0);
                }
              else if (hv_exists (context_hv, "tree", strlen ("tree")))
                hv_delete (context_hv, "tree", strlen ("tree"), G_DISCARD);
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
build_html_formatting_context_ctx (HV *hv,
                                   HTML_FORMATTING_CONTEXT *formatting_context)
{
  dTHX;

#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)
#define STORE_INT(name) STORE(#name, newSViv (formatting_context->name))
  STORE_INT(preformatted_number);
  STORE_INT(paragraph_number);
  STORE_INT(space_protected);
  STORE_INT(no_break);
#undef STORE_INT

#define STORE_CTX(name) STORE(#name, newSViv (formatting_context->name##_ctx))
  STORE_CTX(upper_case);
#undef STORE_CTX
}

HV *
build_html_formatting_context (HTML_FORMATTING_CONTEXT *formatting_context)
{
  HV *hv;

  dTHX;

  hv = newHV ();

#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  STORE("context_name", newSVpv (formatting_context->context_name, 0));

#undef STORE
  build_html_formatting_context_ctx (hv, formatting_context);

  return hv;
}

AV *
build_html_formatting_context_stack (
      HTML_FORMATTING_CONTEXT_STACK *formatting_context_stack)
{
  int i;
  AV *formatting_context_av;

  dTHX;

  formatting_context_av = newAV ();
  for (i = 0; i < formatting_context_stack->top; i++)
    {
      HTML_FORMATTING_CONTEXT *formatting_context
        = &formatting_context_stack->stack[i];
      HV *context_hv = build_html_formatting_context (formatting_context);
      av_push (formatting_context_av, newRV_noinc ((SV *) context_hv));
    }
  return formatting_context_av;
}

AV *
build_html_composition_context_stack
          (COMMAND_OR_TYPE_STACK *composition_context_stack)
{
  AV *composition_context_av;
  int i;

  dTHX;

  composition_context_av = newAV ();

  for (i = 0; i < composition_context_stack->top; i++)
    {
      char *context_str = 0;
      COMMAND_OR_TYPE *context
        = &composition_context_stack->stack[i];
      if (context->variety == CTV_type_type)
        context_str = element_type_names[context->type];
      else if (context->variety == CTV_type_command)
        context_str = builtin_command_data[context->cmd].cmdname;
      else
        context_str = "";
      av_push (composition_context_av, newSVpv (context_str, 0));
    }
  return composition_context_av;
}

AV *
build_html_preformatted_classes_stack
          (STRING_STACK *preformatted_classes_stack)
{
  AV *preformatted_classes_av;
  int i;

  dTHX;

  preformatted_classes_av = newAV ();

  for (i = 0; i < preformatted_classes_stack->top; i++)
    {
      char *context_str = preformatted_classes_stack->stack[i];
      av_push (preformatted_classes_av, newSVpv (context_str, 0));
    }
  return preformatted_classes_av;
}

AV *
build_html_block_commands_stack (COMMAND_STACK *block_commands_stack)
{
  AV *block_commands_av;
  int i;

  dTHX;

  block_commands_av = newAV ();

  for (i = 0; i < block_commands_stack->top; i++)
    {
      enum command_id cmd = block_commands_stack->stack[i];
      char *context_str = builtin_command_data[cmd].cmdname;
      av_push (block_commands_av, newSVpv (context_str, 0));
    }
  return block_commands_av;
}

/* there is no need to return anything. */
SV *
build_html_formatting_state (CONVERTER *converter, unsigned long flags)
{
  HV *hv;
  /*
  SV **files_information_sv;
  HV *files_information_hv;
   */
  int i;

  dTHX;

  if (!converter->hv)
    return newSV (0);

  hv = converter->hv;

#define FETCH(key) key##_sv = hv_fetch (hv, #key, strlen (#key), 0);
#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  if (flags & HMSF_converter_state)
    {
      STORE("ignore_notice",
        newSViv (converter->ignore_notice));
    }

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

  if (flags & HMSF_current_output_unit)
    {
      if (!converter->current_output_unit)
        STORE("current_output_unit", newSV (0));
      else
        STORE("current_output_unit",
           newRV_inc ((SV *) converter->current_output_unit->hv));
    }

  /* for scalars corresponding to value that can be found in get_info
     the value associated to the key in the 'converter_info' hash is
     a reference to the value in the converter, such as
     \$converter->{"current_filename"}.
     *current_filename_sv corresponds to $converter->{"current_filename"},
     the value should be changed, but the SV should not be replaced */
  if (flags & HMSF_current_filename)
    {
      SV **current_filename_sv;
      current_filename_sv = hv_fetch (hv, "current_filename",
                                      strlen ("current_filename"), 1);
      sv_setpv (*current_filename_sv, converter->current_filename.filename);
      if (converter->current_filename.filename)
        SvUTF8_on (*current_filename_sv);
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

  if (flags & HMSF_referred_command_stack)
    {
      SV **referred_command_stack_sv;
      AV *referred_command_stack_av;

      FETCH(referred_command_stack);

      if (!referred_command_stack_sv)
        {
          referred_command_stack_av = newAV ();
          STORE("referred_command_stack",
                newRV_noinc ((SV *) referred_command_stack_av));
        }
      else
        {
          referred_command_stack_av = (AV *) SvRV (*referred_command_stack_sv);
          av_clear (referred_command_stack_av);
        }

      for (i = 0; i < converter->referred_command_stack.top; i++)
        {
          const ELEMENT *referred_e = converter->referred_command_stack.stack[i];
          av_push (referred_command_stack_av,
                   newRV_inc ((SV *) referred_e->hv));
        }
    }

  if (converter->added_targets.number)
    {
      SV **targets_sv;
      HV *targets_hv;

      FETCH(targets);
      targets_hv = (HV *) SvRV (*targets_sv);

      int j;
      for (j = 0; j < converter->added_targets.number; j++)
        {
          HTML_TARGET *html_target = converter->added_targets.list[j];
          add_html_element_target (targets_hv, html_target);
        }
      converter->added_targets.number = 0;
    }

  if (flags & HMSF_shared_conversion_state_integer)
    {
      int j;
      SV **shared_conversion_state_sv;
      HV *shared_conversion_state_hv;

      FETCH(shared_conversion_state)

      if (!shared_conversion_state_sv)
        {
          shared_conversion_state_hv = newHV ();
          STORE("shared_conversion_state",
             newRV_noinc ((SV *) shared_conversion_state_hv));
        }
      else
        shared_conversion_state_hv
          = (HV *) SvRV (*shared_conversion_state_sv);

      for (j = 0; j < converter->shared_conversion_state_integer.number; j++)
        {
          const char *key = converter->shared_conversion_state_integer.list[j];
          KEY_PAIR *k
            = lookup_associated_info (
                 &converter->shared_conversion_state.integers, key);

          SV **int_key_sv = hv_fetch (shared_conversion_state_hv,
                                  key, strlen (key), 0);
          if (!int_key_sv)
            {
              SV *int_value_sv = newSViv ((IV) k->integer);
              SV *int_sv = newRV_noinc (int_value_sv);
              hv_store (shared_conversion_state_hv, key,
                        strlen (key), int_sv, 0);
            }
          else
            {
              SV *int_value_sv = SvRV (*int_key_sv);
              sv_setiv (int_value_sv, (IV) k->integer);
            }
        }
      clear_strings_list (&converter->shared_conversion_state_integer);
    }

#undef STORE

  if (flags & HMSF_translations)
    build_html_translated_names (hv, converter);

  return newRV_noinc ((SV *) hv);
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
      if (arg_formatted->tree)
        {
          int j;
          HV *arg_formated_hv = newHV ();
          av_push (av, newRV_noinc ((SV *) arg_formated_hv));

          hv_store (arg_formated_hv, "tree", strlen ("tree"),
                    newRV_inc ((SV *) arg_formatted->tree->hv), 0);

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
build_simpletitle (CONVERTER *converter, HV *converter_hv)
{

  dTHX;

  hv_store (converter_hv, "simpletitle_tree",
            strlen ("simpletitle_tree"),
            newRV_inc ((SV *) converter->simpletitle_tree->hv), 0);
  hv_store (converter_hv, "simpletitle_command_name",
            strlen ("simpletitle_command_name"),
            newSVpv (builtin_command_name (converter->simpletitle_cmd), 0), 0);
}
