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
#include "XSUB.h"

#include "ppport.h"

#undef context

#include "options_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "text.h"
#include "extra.h"
#include "debug.h"
#include "utils.h"
#include "builtin_commands.h"
#include "errors.h"
#include "targets.h"
#include "document.h"
#include "output_unit.h"
#include "convert_to_text.h"
#include "converter.h"
#include "get_perl_info.h"

 /* See the NOTE in build_perl_info.c on use of functions related to
    memory allocation */

#define FETCH(key) key##_sv = hv_fetch (element_hv, #key, strlen(#key), 0);

/* used for debugging only */
/* This function mixes Perl and gnulib allocation functions, but since it is
   only used for debugging it is ok */
static void
debug_print_element_hv (HV *element_hv)
{
  SV **cmdname_sv;
  SV **type_sv;
  SV **text_sv;
  TEXT msg;

  dTHX;

  text_init (&msg);
  text_append (&msg, "");

  FETCH(cmdname)
  if (cmdname_sv)
    {
      text_printf (&msg, "@%s", SvPVutf8_nolen (*cmdname_sv));
    }
  FETCH(type)
  if (type_sv)
    {
      text_printf (&msg, "(%s)", SvPVutf8_nolen (*type_sv));
    }
  FETCH(text)
  if (text_sv)
    {
      int allocated = 0;
      char *text = SvPVutf8_nolen (*text_sv);
      char *protected_text = debug_protect_eol (text,
                                              &allocated);
      text_printf (&msg, "[T: %s]", protected_text);
      if (allocated)
        free (protected_text);
    }
  fprintf (stderr, "ELT_sv: %s\n", msg.text);
  free (msg.text);
}

/* used for debugging only */
void
debug_print_element_sv (SV *element_sv)
{
  dTHX;

  if (SvOK (element_sv))
    {
      HV *element_hv = (HV *) SvRV (element_sv);
      debug_print_element_hv (element_hv);
    }
  else
    {
      fprintf(stderr, "debug_print_element_sv: NUL\n");
    }
}
#undef FETCH

DOCUMENT *
get_document_or_warn (SV *sv_in, char *key, char *warn_string)
{
  int document_descriptor;
  DOCUMENT *document = 0;
  SV** document_descriptor_sv;
  HV *hv_in;

  dTHX;

  hv_in = (HV *)SvRV (sv_in);
  if (!hv_in)
    {
      fprintf (stderr, "ERROR: %s: no hash\n", warn_string);
      return 0;
    }
  document_descriptor_sv = hv_fetch (hv_in, key, strlen (key), 0);
  if (document_descriptor_sv && SvOK (*document_descriptor_sv))
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

/* caller should ensure that OUTPUT_UNIT_IN is defined */
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
add_svav_to_string_list (const SV *sv, STRING_LIST *string_list,
                         enum sv_string_type type)
{
  int i;
  SSize_t strings_nr;

  dTHX;

  if (!SvOK (sv))
    return;

  AV *av = (AV *)SvRV (sv);
  strings_nr = av_top_index (av) +1;
  for (i = 0; i < strings_nr; i++)
    {
      SV** string_sv = av_fetch (av, i, 0);
      if (string_sv)
        {
          const char *string;
          if (type == svt_char)
            string = SvPVutf8_nolen (*string_sv);
          else
            string = SvPVbyte_nolen (*string_sv);
          if (type == svt_dir)
            add_include_directory (string, string_list);
          else
            add_string (string, string_list);
        }
    }
}

#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen(#key), 0);
SOURCE_INFO *
get_source_info (SV *source_info_sv)
{
  HV *hv_in;
  SV **macro_sv;
  SV **file_name_sv;
  SV **line_nr_sv;

  dTHX;

  hv_in = (HV *)SvRV (source_info_sv);

  SOURCE_INFO *source_info = (SOURCE_INFO *) malloc (sizeof (SOURCE_INFO));
  memset (source_info, 0, sizeof (SOURCE_INFO));

  FETCH(macro)

  if (macro_sv)
    {
      char *macro = (char *) SvPVutf8_nolen (*macro_sv);
      source_info->macro = non_perl_strdup (macro);
    }

  FETCH(file_name)

  if (file_name_sv && SvOK (*file_name_sv))
    {
      char *file_name = (char *) SvPVbyte_nolen (*file_name_sv);
      source_info->file_name = non_perl_strdup (file_name);
    }

  FETCH(line_nr)

  if (line_nr_sv)
    source_info->line_nr = SvIV (*line_nr_sv);

  return source_info;
}
#undef FETCH

void
get_line_message (CONVERTER *self, enum error_type type, int continuation,
                  SV *error_location_info, const char *message)
{
  int do_warn = (self->conf->DEBUG.integer > 1);
  SOURCE_INFO *source_info = get_source_info (error_location_info);
  if (source_info->file_name)
    {
      char *saved_string = add_string (source_info->file_name,
                                       &self->small_strings);
      non_perl_free (source_info->file_name);
      source_info->file_name = saved_string;
    }

  if (source_info->macro)
    {
      char *saved_string = add_string (source_info->macro,
                                       &self->small_strings);
      non_perl_free (source_info->macro);
      source_info->macro = saved_string;
    }

  message_list_line_formatted_message (&self->error_messages,
                                       type, continuation, source_info,
                                       message, do_warn);

  non_perl_free (source_info);
}

void
get_sv_options (SV *sv, OPTIONS *options, CONVERTER *converter,
                int force)
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
          get_sv_option (options, key, value, force, converter);
        }
    }
}

void
get_sv_configured_options (SV *configured_sv_in, OPTIONS *options)
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
      SV *value = hv_iternextsv(configured_hv, &key, &retlen);
      if (value && SvOK (value))
        {
          int configured = SvIV (value);
          set_option_key_configured (options, key, configured);
        }
    }
}


OPTIONS *
init_copy_sv_options (SV *sv_in, CONVERTER *converter, int force)
{
  OPTIONS *options = new_options ();
  get_sv_options (sv_in, options, converter, force);
  return options;
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

      converter->translated_commands = (TRANSLATED_COMMAND *)
        malloc ((hv_number +1) * sizeof (TRANSLATED_COMMAND));
      memset (converter->translated_commands, 0,
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
}

void
copy_converter_conf_sv (HV *hv, CONVERTER *converter,
                        OPTIONS **conf, const char *conf_key, int force)
{
  SV **conf_sv;

  dTHX;

  conf_sv = hv_fetch (hv, conf_key, strlen (conf_key), 0);

  if (conf_sv && SvOK(*conf_sv))
    {
      if (*conf)
        clear_options (*conf);
      else
        *conf = new_options ();

      get_sv_options (*conf_sv, *conf, converter, force);
    }
}

void
converter_set_document (SV *converter_in, SV *document_in)
{
  CONVERTER *converter;
  DOCUMENT *document;

  dTHX;

  converter = get_sv_converter (converter_in, "converter_set_document");
  document = get_sv_document_document (document_in, 0);

   /*
  if (document)
    {
      fprintf (stderr, "XS|CONVERTER %d: Document %d\n",
           converter->converter_descriptor, document->descriptor);
    }
    */

  converter->document = document;

  set_output_encoding (converter->conf, converter->document);

  converter->convert_text_options
    = copy_converter_options_for_convert_text (converter);
}

/* Texinfo::Convert::Converter generic initialization for all the converters */
/* Called early, in particuliar before any format specific code has been
   called */
int
converter_initialize (SV *converter_sv)
{
  HV *hv_in;
  SV **configured_sv;
  SV **output_format_sv;
  int converter_descriptor = 0;
  CONVERTER *converter;

  dTHX;

  converter_descriptor = new_converter ();
  converter = retrieve_converter (converter_descriptor);

  hv_in = (HV *)SvRV (converter_sv);

#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen(#key), 0);
  FETCH(output_format)

  if (output_format_sv && SvOK (*output_format_sv))
    {
      converter->output_format
         = non_perl_strdup (SvPVutf8_nolen (*output_format_sv));
    }

   /*
  fprintf (stderr, "XS|CONVERTER Init: %d; doc %d; %s\n", converter_descriptor,
                   converter->document->descriptor, converter->output_format);
    */

  converter->conf = new_options ();
  /* force is not set, but at this point, the configured field should not
     be set, so it would not have an effect anyway */
  copy_converter_conf_sv (hv_in, converter, &converter->conf, "conf", 0);

  converter->init_conf = new_options ();
  copy_converter_conf_sv (hv_in, converter, &converter->init_conf,
                                              "converter_init_conf", 1);

  FETCH(configured);

  if (configured_sv && SvOK (*configured_sv))
    {
      get_sv_configured_options (*configured_sv, converter->conf);
    }

#undef FETCH
  set_translated_commands (converter, hv_in);

  get_expanded_formats (hv_in, &converter->expanded_formats);

  converter->hv = hv_in;

  /* store converter_descriptor in perl converter */
  hv_store (hv_in, "converter_descriptor",
            strlen("converter_descriptor"),
            newSViv (converter_descriptor), 0);

  return converter_descriptor;
}

/* reset output_init_conf.  Can be called after it has been modified */
void
reset_output_init_conf (SV *sv_in)
{
  CONVERTER *converter;

  dTHX;

  converter = get_sv_converter (sv_in, "reset_output_init_conf");

  if (converter)
    {
      HV *hv_in = (HV *)SvRV (sv_in);

      copy_converter_conf_sv (hv_in, converter, &converter->init_conf,
                             "output_init_conf", 1);
    }
}

INDEX_ENTRY *
find_index_entry_sv (const SV *index_entry_sv, INDEX **index_names,
                     const char *warn_string, const INDEX **entry_idx,
                     int *entry_number)
{
  HV *index_entry_hv;
  SV **index_name_sv;
  SV **entry_number_sv;
  int entry_idx_in_index;
  const char *entry_index_name = 0;
  const INDEX *idx;

  dTHX;

  index_entry_hv = (HV *) SvRV (index_entry_sv);
  index_name_sv = hv_fetch (index_entry_hv, "index_name",
                            strlen ("index_name"), 0);
  entry_number_sv = hv_fetch (index_entry_hv, "entry_number",
                              strlen ("entry_number"), 0);

  if (!index_name_sv || !entry_number_sv)
    {
      char *msg;
      const char *warn_str = warn_string;
      if (!warn_str)
        warn_str = "find_index_entry_sv";
      xasprintf (&msg, "%s: no entry info\n", warn_str);
      fatal (msg);
    }
  entry_index_name = (const char *) SvPVutf8_nolen (*index_name_sv);
  *entry_number = SvIV (*entry_number_sv);
  entry_idx_in_index = *entry_number - 1;

  idx = indices_info_index_by_name (index_names,
                                    entry_index_name);
  *entry_idx = idx;
  if (idx)
    {
      if (entry_idx_in_index < idx->entries_number)
        return &idx->index_entries[entry_idx_in_index];
    }

  return 0;
}


/* code in comments allow to sort the index names to have a fixed order
   in the data structure.  Not clear that it is useful or not, not enabled
   for now */
/* return value to be freed by caller */
/* Currently not used */
INDEX_SORTED_BY_LETTER *
get_sv_index_entries_sorted_by_letter (INDEX **index_names,
                                       SV *index_entries_sorted_by_letter)
{
  INDEX_SORTED_BY_LETTER *indices_entries_by_letter;

  HV *hv_in;
  /* for sorted index names
  AV *index_names_av;
  SV **index_names_av_array;
  SV **sorted_index_names_av_array;
  I32 i;
   */
  I32 index_names_nr;

  SSize_t j;

  dTHX;

  if (!SvOK (index_entries_sorted_by_letter))
    return 0;

  hv_in = (HV *)SvRV (index_entries_sorted_by_letter);

  index_names_nr = hv_iterinit (hv_in);

  /* when there is a memcpy just below, a condition that avoids negative
     index_names_nr is important to avoid a gcc warning */
  if (index_names_nr <= 0)
    return 0;

  /* doing an AV with the keys (first step of sorting)
  index_names_av = newAV ();

  for (i = 0; i < index_names_nr; i++)
    {
      HE *next = hv_iternext (hv_in);
      SV *index_name_sv = hv_iterkeysv(next);
      av_push (index_names_av, index_name_sv);
    }
   */
  /* copy and sort
  index_names_av_array = AvARRAY(index_names_av);
  sorted_index_names_av_array
       = (SV **) malloc (sizeof (SV *) * index_names_nr);
  memcpy (sorted_index_names_av_array, index_names_av_array,
          sizeof (SV *) * index_names_nr);
  sortsv (sorted_index_names_av_array, index_names_nr, Perl_sv_cmp);
   */

  indices_entries_by_letter = (INDEX_SORTED_BY_LETTER *)
    malloc ((index_names_nr +1) * sizeof (INDEX_SORTED_BY_LETTER));
  /* zeroed entry to mark the end of the array */
  memset (&indices_entries_by_letter[index_names_nr], 0,
          sizeof (INDEX_SORTED_BY_LETTER));

  for (j = 0; j < index_names_nr; j++)
    {
      int i;
      INDEX_SORTED_BY_LETTER *index_index_letters;
      char *idx_name = 0;
      SSize_t letter_entries_nr;
      HE *sorted_by_letter_he;
      SV *idx_name_sv;
      SV *sorted_by_letter_sv;
      AV *av;

      /* unsorted AV (to compare unsorted/sorted for debug)
      SV **idx_name_sv_ref = av_fetch (index_names_av, j, 0);
      if (!idx_name_sv_ref)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_index_entries_sorted_by_letter: %d: no index name\n", j);
          fatal (msg);
        }
      idx_name_sv = *idx_name_sv_ref;
       */
       /* sorted SV**
      idx_name_sv = sorted_index_names_av_array[j];
       */
      /* unsorted HV
       */
      HE *next = hv_iternext (hv_in);
      idx_name_sv = hv_iterkeysv (next);
      /* code common to all the cases above */
      if (!idx_name_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_index_entries_sorted_by_letter: %d: no index name\n", j);
          fatal (msg);
        }
      idx_name = (char *) SvPVutf8_nolen (idx_name_sv);

      sorted_by_letter_he = hv_fetch_ent (hv_in, idx_name_sv, 0, 0);
      if (!sorted_by_letter_he)
        {
          char *msg;
          xasprintf (&msg,
           "get_sv_index_entries_sorted_by_letter: %d: %s: cannot find index\n",
                     j, idx_name);
          fatal (msg);
        }

      sorted_by_letter_sv = HeVAL(sorted_by_letter_he);
      if (!sorted_by_letter_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_index_entries_sorted_by_letter: %d: %s: no letter entries\n",
                     j, idx_name);
          fatal (msg);
        }
      av = (AV *)SvRV (sorted_by_letter_sv);
      letter_entries_nr = av_top_index (av) +1;

      index_index_letters = &indices_entries_by_letter[j];
      index_index_letters->name = non_perl_strdup (idx_name);
      index_index_letters->letter_number = letter_entries_nr;
      index_index_letters->letter_entries
        = (LETTER_INDEX_ENTRIES *)
         malloc (letter_entries_nr * sizeof (LETTER_INDEX_ENTRIES));
      for (i = 0; i < letter_entries_nr; i++)
        {
          SV** letter_entries_sv = av_fetch (av, i, 0);
          LETTER_INDEX_ENTRIES *letter_entries
            = &index_index_letters->letter_entries[i];
          if (letter_entries_sv)
            {
              SSize_t k;
              char *letter_string;
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
              letter_string = (char *) SvPVutf8_nolen (*letter_sv);
              letter_entries->letter = non_perl_strdup (letter_string);

              entries_av = (AV *) SvRV (*entries_sv);
              entries_nr = av_top_index (entries_av) +1;
              letter_entries->entries_number = entries_nr;
              letter_entries->entries =
                (INDEX_ENTRY **) malloc (entries_nr * sizeof (INDEX_ENTRY *));
              for (k = 0; k < entries_nr; k++)
                {
                  SV** index_entry_sv = av_fetch (entries_av, k, 0);
                  const INDEX *entry_idx = 0;
                  int entry_number;
                  char *warn_string;
                  INDEX_ENTRY *index_entry = 0;

                  if (!index_entry_sv)
                    {
                      char *msg;
                      xasprintf (&msg,
  "get_sv_index_entries_sorted_by_letter: %s: %d: %s: %d: no entry\n",
                             idx_name, i, letter_entries->letter, k);
                      fatal (msg);
                    }
                  non_perl_xasprintf (&warn_string,
                         "get_sv_index_entries_sorted_by_letter: %s: %d: %s: %d",
                         idx_name, i, letter_entries->letter, k);
                  index_entry = find_index_entry_sv (*index_entry_sv, index_names,
                                                     warn_string, &entry_idx,
                                                     &entry_number);
                  non_perl_free (warn_string);

                  letter_entries->entries[k] = index_entry;

                  if (!letter_entries->entries[k])
                    {
                      char *msg;
                      char *entry_index_name = 0;
                      if (entry_idx)
                        entry_index_name = entry_idx->name;
                      xasprintf (&msg,
          "BUG: index %s letter %s position %d: %s entry %d not found\n",
                                 idx_name, letter_string, k,
                                 entry_index_name, entry_number);
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
  return indices_entries_by_letter;
}

void
set_conf (CONVERTER *converter, const char *conf, SV *value)
{
  if (converter->conf)
    get_sv_option (converter->conf, conf, value, 0, converter);
   /* Too early to have options set
  else
    fprintf (stderr, "HHH no converter conf %s\n", conf);
    */
}

void
force_conf (CONVERTER *converter, const char *conf, SV *value)
{
  if (converter->conf)
    get_sv_option (converter->conf, conf, value, 1, converter);
}

/* output format specific */

/* map hash reference of Convert::Text options to TEXT_OPTIONS */
/* _raw_state is not fetched, as it is not documented as an option,
   and there is no way to set it through text options either, it can only
   be set as a state during conversion */
#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen(#key), 0);
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
              = init_copy_sv_options (*conf_sv, 0, 1);
        }
    }
  else
    {
      text_options->self_converter_options
       = init_copy_sv_options (sv_in, 0, 1);
    }

  return text_options;
}
#undef FETCH

static int
html_get_direction_index (const CONVERTER *converter, const char *direction)
{
  int i;
  if (converter && converter->direction_unit_direction_name)
    {
      for (i = 0; converter->direction_unit_direction_name[i]; i++)
        {
          if (!strcmp (direction, converter->direction_unit_direction_name[i]))
            return i;
        }
    }
  return -1;
}

/* should be consistent with enum button_function_type */
static const char *button_function_type_string[] = {
  0,
  "::_default_panel_button_dynamic_direction_section_footer",
  "::_default_panel_button_dynamic_direction_node_footer",
  "::_default_panel_button_dynamic_direction",
  0,
};

/* HTML specific, but needs to be there for options_get_perl.c */
BUTTON_SPECIFICATION_LIST *
html_get_button_specification_list (const CONVERTER *converter,
                                    const SV *buttons_sv)
{
  BUTTON_SPECIFICATION_LIST *result;
  AV *buttons_av;
  SSize_t buttons_nr;
  SSize_t i;

  dTHX;

  /* a string may be passed, for instance through command line, therefore
     it is useful to test that buttons_sv is an array reference */
  if (!SvOK (buttons_sv) || !SvROK (buttons_sv)
      || SvTYPE (SvRV (buttons_sv)) != SVt_PVAV)
    return 0;

  result = (BUTTON_SPECIFICATION_LIST *)
            malloc (sizeof (BUTTON_SPECIFICATION_LIST));

  buttons_av = (AV *)SvRV (buttons_sv);
  /* In contrast with other cases, we do not add a reference to the array
     associated to result->av to make sure that the av is not destroyed
     while still needed, as we assume that the Perl converter will hold
     a reference longer than we need the av for */
  result->av = buttons_av;

  buttons_nr = av_top_index (buttons_av) +1;

  result->BIT_user_function_number = 0;
  result->number = (size_t) buttons_nr;
  result->list = (BUTTON_SPECIFICATION *)
    malloc (result->number * sizeof (BUTTON_SPECIFICATION));
  memset (result->list, 0, result->number * sizeof (BUTTON_SPECIFICATION));

  for (i = 0; i < buttons_nr; i++)
    {
      SV** button_sv = av_fetch (buttons_av, i, 0);
      BUTTON_SPECIFICATION *button = &result->list[i];

      button->sv = *button_sv;
      SvREFCNT_inc (button->sv);

      if (SvROK (*button_sv))
        {
          if (SvTYPE (SvRV(*button_sv)) == SVt_PVCV) /* CODE */
            {
              button->type = BST_function;
              button->sv_reference = *button_sv;
            }
          else if (SvTYPE (SvRV(*button_sv)) == SVt_PVAV)
            {
              AV *button_spec_info_av = (AV *) SvRV(*button_sv);
              SV **direction_sv = av_fetch (button_spec_info_av, 0, 0);
              SV **button_spec_info_type
                 = av_fetch (button_spec_info_av, 1, 0);

              BUTTON_SPECIFICATION_INFO *button_spec
                = (BUTTON_SPECIFICATION_INFO *)
                   malloc (sizeof (BUTTON_SPECIFICATION_INFO));
              memset (button_spec, 0, sizeof (BUTTON_SPECIFICATION_INFO));

              button->type = BST_direction_info;
              button->button_info = button_spec;

              button_spec->direction
                = html_get_direction_index (converter,
                                            SvPVutf8_nolen (*direction_sv));

              if (SvROK (*button_spec_info_type))
                {
                  if (SvTYPE (SvRV(*button_spec_info_type)) == SVt_PVCV) /* CODE */
                    {
                      int j;
                      char *button_fun_name;
                      enum button_function_type button_fun_type = 0;
                      button_spec->type = BIT_function;
                      button_spec->button_function.sv_reference
                                          = *button_spec_info_type;
                      button_fun_name
                       = SvPV_nolen (cv_name ((CV *) SvRV (*button_spec_info_type),
                                              0, 0));
                      for (j = 1; button_function_type_string[j]; j++)
                        if (strstr (button_fun_name,
                                    button_function_type_string[j]))
                          {
                            button_fun_type = j;
                            break;
                          }
                      if (button_fun_type)
                        button_spec->button_function.type = button_fun_type;
                      else
                        result->BIT_user_function_number++;
                    }
                  else
                    {
                      button_spec->type = BIT_string;
                      button_spec->sv_string = *button_spec_info_type;
                    }
                }
              else
                {
                  int j;
                  char *text_type_string
                     = SvPVutf8_nolen (*button_spec_info_type);
                  char *text_type_p;
                  if (strlen (text_type_string) > 2
                      && !(memcmp (text_type_string, "->", 2)))
                    {
                      button_spec->type
                        = BIT_selected_direction_information_type;
                      text_type_p = text_type_string +2;
                      text_type_p += strspn (text_type_p, whitespace_chars);
                    }
                  else
                    {
                      text_type_p = text_type_string;
                      button_spec->type
                        = BIT_href_direction_information_type;
                    }
                  button_spec->direction_information_type = -1;
                  for (j = 0; j < HTT_section +1; j++)
                    {
                      if (!strcmp (html_command_text_type_name[j],
                                   text_type_p))
                        {
                          button_spec->direction_information_type = j;
                          break;
                        }
                    }
                }
            }
          else
            {
              button->type = BST_string;
              button->sv_string = *button_sv;
            }
        }
      else
        {
          button->type = BST_direction;
          button->direction = html_get_direction_index (converter,
                                              SvPVutf8_nolen (*button_sv));
        }
    }

  return result;
}

/* HTML specific, but needs to be there for options_get_perl.c */
void
html_get_direction_icons_sv (const CONVERTER *converter,
                             DIRECTION_ICON_LIST *direction_icons,
                             const SV *icons_sv)
{
  HV *icons_hv;
  int i;

  dTHX;

  if (!SvOK (icons_sv))
    return;

  if (!converter || !converter->direction_unit_direction_name
       /* the following is for consistency, but is not possible */
      || converter->special_unit_varieties.number
          + NON_SPECIAL_DIRECTIONS_NR <= 0)
    return;

  if (direction_icons->number == 0)
    {
      /* consistent with direction_unit_direction_name size */
      direction_icons->number = converter->special_unit_varieties.number
                                 + NON_SPECIAL_DIRECTIONS_NR;
      direction_icons->list = (char **) malloc
           (direction_icons->number * sizeof (char *));
    }

  icons_hv = (HV *)SvRV (icons_sv);

  for (i = 0; converter->direction_unit_direction_name[i]; i++)
    {
      const char *direction_name
        = converter->direction_unit_direction_name[i];
      SV **direction_icon_sv = hv_fetch (icons_hv, direction_name,
                                         strlen (direction_name), 0);
      if (direction_icon_sv && SvOK (*direction_icon_sv))
        {
          direction_icons->list[i]
            = non_perl_strdup (SvPVutf8_nolen (*direction_icon_sv));
        }
      else
        direction_icons->list[i] = 0;
    }
}

static const INDEX_ENTRY *
find_sorted_index_names_index_entry_extra_index_entry_sv (
                                  const SORTED_INDEX_NAMES *sorted_index_names,
                                  const SV *extra_index_entry_sv)
{
  AV *extra_index_entry_av;
  SV **index_name_sv;
  const char *index_name = 0;

  dTHX;

  extra_index_entry_av = (AV *) SvRV (extra_index_entry_sv);

  index_name_sv = av_fetch (extra_index_entry_av, 0, 0);
  if (index_name_sv)
    {
      index_name = SvPVutf8_nolen (*index_name_sv);
    }

  if (index_name)
    {
      SV **number_sv = av_fetch (extra_index_entry_av, 1, 0);
      if (number_sv)
        {
          int entry_number = SvIV (*number_sv);
          if (entry_number)
            {
              size_t index_nr
                = index_number_index_by_name (sorted_index_names,
                                              index_name);
              return &sorted_index_names->list[index_nr -1]
                 ->index_entries[entry_number -1];
            }
        }
    }
  return 0;
}

static const INDEX_ENTRY *
find_document_index_entry_extra_index_entry_sv (const DOCUMENT *document,
                                             const SV *extra_index_entry_sv)
{
  AV *extra_index_entry_av;
  SV **index_name_sv;
  char *index_name = 0;
  const INDEX *idx = 0;

  dTHX;

  if (!document->index_names)
    return 0;

  extra_index_entry_av = (AV *) SvRV (extra_index_entry_sv);

  index_name_sv = av_fetch (extra_index_entry_av, 0, 0);
  if (index_name_sv)
    {
      index_name = SvPVutf8_nolen (*index_name_sv);
      idx = indices_info_index_by_name (document->index_names,
                                        index_name);
    }

  if (idx)
    {
      SV **number_sv = av_fetch (extra_index_entry_av, 1, 0);
      if (number_sv)
        {
          int entry_number = SvIV (*number_sv);
          if (entry_number)
            return &idx->index_entries[entry_number -1];
        }
    }
  return 0;
}

/* if there is a converter with sorted index names, use the
   sorted index names, otherwise use the index information from
   a document */
static const INDEX_ENTRY *
find_element_extra_index_entry_sv (const DOCUMENT *document,
                                   const CONVERTER *converter,
                                   const SV *extra_index_entry_sv)
{
  const INDEX_ENTRY *index_entry;
  if (!converter || !converter->document || !converter->document->index_names)
    {
      if (document)
        index_entry
          = find_document_index_entry_extra_index_entry_sv (document,
                                                 extra_index_entry_sv);
      else
        return 0;
    }
  else
   index_entry = find_sorted_index_names_index_entry_extra_index_entry_sv (
                    &converter->sorted_index_names, extra_index_entry_sv);

  return index_entry;
}

#define FETCH(key) key##_sv = hv_fetch (element_hv, #key, strlen(#key), 0);
/* find C tree root element corresponding to perl tree element element_hv */
const ELEMENT *
find_root_command (const DOCUMENT *document, HV *element_hv,
                   int output_units_descriptor)
{
  SV **associated_unit_sv;
  const ELEMENT *root;
  size_t i;

  dTHX;

  if (output_units_descriptor)
    {
      FETCH(associated_unit)

      if (associated_unit_sv)
        {
          /* find the associated output unit and then find the element
             in unit contents */
          HV *associated_unit_hv = (HV *) SvRV (*associated_unit_sv);
          SV **unit_index_sv = hv_fetch (associated_unit_hv, "unit_index",
                                         strlen ("unit_index"), 0);

          if (unit_index_sv)
            {
              int unit_index = SvIV (*unit_index_sv);
              const OUTPUT_UNIT_LIST *output_units
               = retrieve_output_units (output_units_descriptor);

              if (output_units && unit_index < output_units->number)
                {
                  OUTPUT_UNIT *output_unit = output_units->list[unit_index];
                  size_t i;
                  for (i = 0; i < output_unit->unit_contents.number; i++)
                    {
                      ELEMENT *content = output_unit->unit_contents.list[i];
                      if (content->hv == element_hv)
                        return content;
                    }
                }
            }
        }
    }

  /* if there are no output units go through the root element children */
  root = document->tree;
  for (i = 0; i < root->contents.number; i++)
    {
      ELEMENT *content = root->contents.list[i];
      if (content->hv == element_hv)
        return content;
    }
  return 0;
}

/* find the subentry matching ELEMENT_HV */
static const ELEMENT *
find_index_entry_subentry (const ELEMENT *index_element, HV *element_hv)
{
  const ELEMENT *current_element = index_element;

  while (1)
    {
      const ELEMENT *subentry = lookup_extra_element (current_element,
                                                      "subentry");
      if (subentry)
        {
          if (subentry->hv == element_hv)
            return subentry;
          current_element = subentry;
        }
      else
        return 0;
    }
}

#define EXTRA(key) key##_sv = hv_fetch (extra_hv, #key, strlen(#key), 0);

/* returns the subentry direct parent based on "subentry_parent" */
static SV *
subentry_hv_parent (HV *element_hv)
{
  SV **extra_sv;

  dTHX;

  FETCH(extra)

  if (extra_sv)
    {
      SV **subentry_parent_sv;
      HV *extra_hv = (HV *) SvRV (*extra_sv);

      EXTRA(subentry_parent)
      if (subentry_parent_sv)
        {
          return *subentry_parent_sv;
        }
    }
  return 0;
}

/* Find the index entry parent of a subentry going through
   "subentry_parent" until finding the index element hash */
const ELEMENT *
find_subentry_index_command_sv (const DOCUMENT *document, HV *element_hv)
{
  HV *current_parent = element_hv;
  const SV *current_sv = 0;

  dTHX;

  while (1)
    {
      const SV *subentry_parent_sv = subentry_hv_parent (current_parent);
      if (subentry_parent_sv)
        {
          current_parent = (HV *) SvRV (subentry_parent_sv);
          current_sv = subentry_parent_sv;
        }
      else
        {
          if (!current_sv)
            return 0;
          return find_element_from_sv (0, document, current_sv, 0);
        }
    }
}

/* find the INDEX_ENTRY associated element matching ELEMENT_HV.

   If the index entry was reassociated, the tree element the
   index entry is reassociated to is not index_entry->entry_element
   but index_entry->entry_associated_element.  The original
   tree element that was associated is index_entry->entry_element.
   Depending on the situation one or the other may be looked for
   and the code tries both.

   The reassociated tree element, for example, would be used
   when doing a link to the tree from the index entry.  But it may
   also be the original tree element that is used, for example
   to get the index entry tree element content, for instance
   when going through the elements associated to indices to setup
   index entries sort strings.
 */
static const ELEMENT *
find_index_entry_associated_hv (const INDEX_ENTRY *index_entry,
                                const HV *element_hv)
{
  if (index_entry->entry_associated_element
      && index_entry->entry_associated_element->hv == element_hv)
    return index_entry->entry_associated_element;

  if (index_entry->entry_element
  /* if the index entry was reassociated it is important to check */
      && index_entry->entry_element->hv == element_hv)
    return index_entry->entry_element;

  return 0;
}

/* find C Texinfo tree element based on element_sv perl tree element.
   Both DOCUMENT_IN and CONVERTER are optional, but if there is no
   document coming from one or the other, elements will not be found.
   If a DOCUMENT_IN argument is given, the corresponding document is
   used.  If there is no DOCUMENT_IN and there is a CONVERTER argument,
   the CONVERTER document is used.
   OUTPUT_UNIT_DESCRIPTOR is optional, it should allow to find sectioning
   commands faster.
   Only for global commands, commands with indices, and sectioning root
   commands.  More could be added if needed, for example nodedescription.
 */
const ELEMENT *
find_element_from_sv (const CONVERTER *converter, const DOCUMENT *document_in,
                      const SV *element_sv, int output_units_descriptor)
{
  enum command_id cmd = 0;
  HV *element_hv;
  SV **cmdname_sv;
  SV **extra_sv;
  const DOCUMENT *document = document_in;

  dTHX;

  element_hv = (HV *) SvRV (element_sv);

  if (!document && converter && converter->document)
    document = converter->document;

  FETCH(cmdname)

  if (cmdname_sv && (output_units_descriptor || document))
    {
      char *cmdname = SvPVutf8_nolen (*cmdname_sv);
      cmd = lookup_builtin_command (cmdname);

      if (builtin_command_data[cmd].flags & CF_root
          && cmd != CM_node)
        {
          const ELEMENT *element = find_root_command (document,
                                                element_hv,
                                                output_units_descriptor);
          if (element)
            return element;
        }
      else if (cmd == CM_subentry)
        {
          const ELEMENT *index_element
               = find_subentry_index_command_sv (document, element_hv);
          if (index_element)
            {
              const ELEMENT *element
                = find_index_entry_subentry (index_element, element_hv);
              if (element)
                return element;
            }
        }
    }

  FETCH(extra)

  if (extra_sv)
    {
      HV *extra_hv = (HV *) SvRV (*extra_sv);
      SV **index_entry_sv;
      SV **associated_index_entry_sv;

      if (document)
        {
          SV **global_command_number_sv;
          EXTRA(global_command_number)
          if (global_command_number_sv)
            {
              int global_command_number = SvIV (*global_command_number_sv);
              ELEMENT_LIST *global_cmd_list
                = get_cmd_global_multi_command (
                              document->global_commands, cmd);

              if (global_command_number > 0
                  && global_command_number - 1 < global_cmd_list->number)
                return global_cmd_list->list[global_command_number - 1];
            }
        }

      if (document && document->identifiers_target)
        {
          SV **normalized_sv;
          EXTRA(normalized)
          if (normalized_sv)
            {
              char *normalized = SvPVutf8_nolen (*normalized_sv);
              ELEMENT *element_found
                = find_identifier_target
                      (document->identifiers_target, normalized);
         /* check the element found in case of multiple defined identifier */
              if (element_found && element_hv == element_found->hv)
                return element_found;
            }
        }

      EXTRA(associated_index_entry)
      if (associated_index_entry_sv)
        {
          const INDEX_ENTRY *index_entry
               = find_element_extra_index_entry_sv (document,
                                                    converter,
                                              *associated_index_entry_sv);
          if (index_entry)
            {
              const ELEMENT *index_element
                = find_index_entry_associated_hv (index_entry, element_hv);
              if (index_element)
                return (index_element);
            }
        }

      EXTRA(index_entry)
      if (index_entry_sv)
        {
          const INDEX_ENTRY *index_entry
                     = find_element_extra_index_entry_sv (document,
                                                          converter,
                                                          *index_entry_sv);
          if (index_entry)
            {
              const ELEMENT *index_element
                = find_index_entry_associated_hv (index_entry, element_hv);
              if (index_element)
                return (index_element);
            }
        }
    }
  return 0;
}
#undef FETCH
