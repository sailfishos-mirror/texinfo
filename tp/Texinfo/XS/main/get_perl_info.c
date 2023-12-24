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
#include "document_types.h"
#include "converter_types.h"
#include "utils.h"
#include "builtin_commands.h"
#include "errors.h"
#include "document.h"
#include "output_unit.h"
#include "convert_to_text.h"
#include "converter.h"
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
add_svav_to_string_list (SV *sv, STRING_LIST *string_list, enum sv_string_type type)
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
          char *string;
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
      source_info->macro = strdup (macro);
    }

  FETCH(file_name)

  if (file_name_sv && SvOK (*file_name_sv))
    {
      char *file_name = (char *) SvPVbyte_nolen (*file_name_sv);
      source_info->file_name = strdup (file_name);
    }

  FETCH(line_nr)

  if (line_nr_sv)
    source_info->line_nr = SvIV (*line_nr_sv);

  return source_info;
}
#undef FETCH

void
get_line_message (CONVERTER *self, enum error_type type, int continuation,
                  SV *error_location_info, char *message)
{
  int do_warn = (self->conf->DEBUG > 1);
  SOURCE_INFO *source_info = get_source_info (error_location_info);
  if (source_info->file_name)
    {
      char *saved_string = add_string (source_info->file_name,
                                       self->document->small_strings);
      free (source_info->file_name);
      source_info->file_name = saved_string;
    }

  if (source_info->macro)
    {
      char *saved_string = add_string (source_info->macro,
                                       self->document->small_strings);
      free (source_info->macro);
      source_info->macro = saved_string;
    }

  message_list_line_formatted_message (&self->error_messages,
                                       type, continuation, source_info,
                                       message, do_warn);

  free (source_info);
}

void
get_sv_options (SV *sv, OPTIONS *options, CONVERTER *converter)
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
          get_sv_option (options, key, value, converter);
        }
    }
}


OPTIONS *
copy_sv_options (SV *sv_in, CONVERTER *converter)
{
  OPTIONS *options = new_options ();
  get_sv_options (sv_in, options, converter);
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
                  translated_command->translation = strdup (tmp_spec);
                  translated_command->cmd = cmd;
                }
            }
        }
    }
}

/* Texinfo::Convert::Converter generic initialization for all the converters */
int
converter_initialize (SV *converter_sv)
{
  HV *hv_in;
  SV **conf_sv;
  SV **converter_init_conf_sv;
  SV **output_format_sv;
  DOCUMENT *document;
  int converter_descriptor = 0;
  CONVERTER *converter;

  dTHX;

  converter_descriptor = new_converter ();
  converter = retrieve_converter (converter_descriptor);

  hv_in = (HV *)SvRV (converter_sv);

  document = get_sv_document_document (converter_sv, 0);
  if (!document)
    {
      /* happens in tests for PlainTexinfo for example */
      unregister_converter_descriptor (converter_descriptor);
      return 0;
      /*
      I32 hv_number;
      I32 i;
      hv_number = hv_iterinit (hv_in);
      fprintf (stderr, "REMARK: no document for SV %p HV %p\n", converter_sv,
                       hv_in);
      for (i = 0; i < hv_number; i++)
        {
          char *key;
          I32 retlen;
          SV *value = hv_iternextsv(hv_in, &key, &retlen);
          if (value && SvOK (value))
            {
              fprintf (stderr, "  %s: %p\n", key, value);
            }
        }
       */
    }
  converter->document = document;

#define FETCH(key) key##_sv = hv_fetch (hv_in, #key, strlen(#key), 0);
  FETCH(output_format)

  if (output_format_sv && SvOK (*output_format_sv))
    {
      converter->output_format
         = strdup (SvPVutf8_nolen (*output_format_sv));
    }

   /*
  fprintf (stderr, "XS|CONVERTER Init: %d; doc %d; %s\n", converter_descriptor,
                   converter->document->descriptor, converter->output_format);
    */
  FETCH(conf)

  if (conf_sv && SvOK (*conf_sv))
    {
      converter->conf
         = copy_sv_options (*conf_sv, converter);
    }

  FETCH(converter_init_conf)

  if (converter_init_conf_sv && SvOK (*converter_init_conf_sv))
    {
      converter->init_conf
         = copy_sv_options (*converter_init_conf_sv, converter);
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

void
recopy_converter_conf_sv (HV *hv, CONVERTER *converter,
                          OPTIONS **conf, const char *conf_key)
{
  SV **conf_sv;

  dTHX;

  conf_sv = hv_fetch (hv, conf_key, strlen (conf_key), 0);

  if (conf_sv && SvOK(*conf_sv))
    {
      if (*conf)
        free_options (*conf);
      free (*conf);

      *conf = copy_sv_options (*conf_sv, converter);
    }
}

/* initialize an XS converter from a perl converter right before conversion */
CONVERTER *
set_output_converter_sv (SV *sv_in, const char *warn_string)
{
  HV *hv_in;
  CONVERTER *converter = 0;

  dTHX;

  converter = get_sv_converter (sv_in, warn_string);

  hv_in = (HV *)SvRV (sv_in);

  recopy_converter_conf_sv (hv_in, converter, &converter->conf, "conf");

  recopy_converter_conf_sv (hv_in, converter, &converter->init_conf,
                            "output_init_conf");
  return converter;
}

/* code in comments allow to sort the index names to have a fixed order
   in the data structure.  Not clear that it is useful or not, not enabled
   for now */
/* return value to be freed by caller */
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
      index_index_letters->name = strdup (idx_name);
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
              letter_entries->letter = strdup (letter_string);

              entries_av = (AV *) SvRV (*entries_sv);
              entries_nr = av_top_index (entries_av) +1;
              letter_entries->entries_number = entries_nr;
              letter_entries->entries =
                (INDEX_ENTRY **) malloc (entries_nr * sizeof (INDEX_ENTRY *));
              for (k = 0; k < entries_nr; k++)
                {
                  SV** index_entry_sv = av_fetch (entries_av, k, 0);
                  HV *index_entry_hv;
                  SV** index_name_sv;
                  SV** entry_number_sv;
                  INDEX *idx;
                  char *entry_index_name;
                  int entry_number;
                  int entry_idx_in_index;

                  letter_entries->entries[k] = 0;

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
                  if (!index_name_sv || !entry_number_sv)
                    {
                      char *msg;
                      xasprintf (&msg,
  "get_sv_index_entries_sorted_by_letter: %s: %d: %s: %d: no entry info\n",
                             idx_name, i, letter_entries->letter, k);
                      fatal (msg);
                    }
                  entry_index_name = (char *) SvPVutf8_nolen (*index_name_sv);
                  entry_number = SvIV (*entry_number_sv);
                  entry_idx_in_index = entry_number - 1;

                  idx = indices_info_index_by_name (index_names,
                                                    entry_index_name);

                  if (idx)
                    {
                      if (entry_idx_in_index < idx->entries_number)
                        letter_entries->entries[k]
                          = &idx->index_entries[entry_idx_in_index];
                    }
                  if (!letter_entries->entries[k])
                    {
                      char *msg;
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
    get_sv_option (converter->conf, conf, value, converter);
   /* Too early to have options set
  else
    fprintf (stderr, "HHH no converter conf %s\n", conf);
    */
}

/* output format specific */

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
                             &text_options->include_directories, svt_dir);

  get_expanded_formats (hv_in, &text_options->expanded_formats);

  other_converter_options_sv = hv_fetch (hv_in, "other_converter_options",
                                         strlen ("other_converter_options"), 0);

  if (other_converter_options_sv)
    {
      text_options->other_converter_options
         = copy_sv_options (*other_converter_options_sv, 0);
    }

  self_converter_options_sv = hv_fetch (hv_in, "self_converter_options",
                                         strlen ("self_converter_options"), 0);

  if (self_converter_options_sv)
    {
      text_options->self_converter_options
         = copy_sv_options (*self_converter_options_sv, 0);
    }

  return text_options;
}

int
html_get_direction_index (CONVERTER *converter, const char *direction)
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
   /* we could do the following, but there is no point in getting the
      buttons if not all can be determined */
   /*
  else
    {
      for (i = 0; i < NON_SPECIAL_DIRECTIONS_NR; i++)
        {
          if (!strcmp (direction, html_button_direction_names[i]))
            return i;
        }
    }
    */
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
html_get_button_specification_list (CONVERTER *converter, SV *buttons_sv)
{
  BUTTON_SPECIFICATION_LIST *result;
  AV *buttons_av;
  SSize_t buttons_nr;
  SSize_t i;

  dTHX;

  if (!SvOK (buttons_sv))
    return 0;

  result = (BUTTON_SPECIFICATION_LIST *)
            malloc (sizeof (BUTTON_SPECIFICATION_LIST));

  buttons_av = (AV *)SvRV (buttons_sv);
  /* TODO increase ref count of result->av? */
  result->av = buttons_av;

  buttons_nr = av_top_index (buttons_av) +1;

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
                      button_spec->button_function.type = button_fun_type;
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
html_get_direction_icons_sv (CONVERTER *converter,
                             DIRECTION_ICON_LIST *direction_icons,
                             SV *icons_sv)
{
  HV *icons_hv;
  int i;

  dTHX;

  if (!SvOK (icons_sv))
    return;

  if (!converter || !converter->direction_unit_direction_name)
    return;

  direction_icons->number = converter->special_unit_varieties.number
                        + NON_SPECIAL_DIRECTIONS_NR;
  direction_icons->list = (char **) malloc
           (direction_icons->number * sizeof (char *));
  memset (direction_icons->list, 0, direction_icons->number * sizeof (char *));

  icons_hv = (HV *)SvRV (icons_sv);

  for (i = 0; converter->direction_unit_direction_name[i] ; i++)
    {
      const char *direction_name
        = converter->direction_unit_direction_name[i];
      SV **direction_icon_sv = hv_fetch (icons_hv, direction_name,
                                         strlen (direction_name), 0);
      if (direction_icon_sv && SvOK (*direction_icon_sv))
        {
          direction_icons->list[i]
            = strdup (SvPVutf8_nolen (*direction_icon_sv));
        }
    }
}

