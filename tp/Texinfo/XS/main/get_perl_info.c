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
#include "document.h"
#include "output_unit.h"
#include "convert_to_text.h"
#include "converter.h"
#include "indices_in_conversion.h"
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
      fprintf (stderr, "get_sv_output_units_descriptor: undef in\n");
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
add_svav_to_string_list (SV **sv, STRING_LIST *string_list, int dir_strings)
{
  dTHX;

  if (sv)
    {
      int i;
      SSize_t strings_nr;
      AV *av = (AV *)SvRV (*sv);
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
}

/* contains get_sv_options (), automatically generated from options_data.txt */
#include "options_get_perl.c"

OPTIONS *
copy_sv_options (SV *sv_in)
{
  OPTIONS *options = new_options ();
  get_sv_options (sv_in, options);
  return options;
}

/* map hash reference of Convert::Text options to TEXT_OPTIONS */
/* TODO more to do */
TEXT_OPTIONS *
copy_sv_options_for_convert_text (SV *sv_in)
{
  HV *hv_in;
  SV **test_option_sv;
  SV **include_directories_sv;
  SV **expanded_formats_sv;
  SV **other_converter_options_sv;
  SV **self_converter_options_sv;
  SV **enabled_encoding_sv;
  SV **sort_string_option_sv;
  TEXT_OPTIONS *text_options = new_text_options ();

  dTHX;

  hv_in = (HV *)SvRV (sv_in);

  test_option_sv = hv_fetch (hv_in, "TEST", strlen ("TEST"), 0);
  if (test_option_sv)
    text_options->test = SvIV (*test_option_sv);

  sort_string_option_sv = hv_fetch (hv_in, "sort_string",
                                    strlen ("sort_string"), 0);
  if (sort_string_option_sv)
    text_options->sort_string = SvIV (*sort_string_option_sv);

  enabled_encoding_sv = hv_fetch (hv_in, "enabled_encoding",
                                  strlen ("enabled_encoding"), 0);
  if (enabled_encoding_sv)
    text_options->encoding = strdup (SvPVbyte_nolen (*enabled_encoding_sv));

  include_directories_sv = hv_fetch (hv_in, "INCLUDE_DIRECTORIES",
                                     strlen ("INCLUDE_DIRECTORIES"), 0);

  add_svav_to_string_list (include_directories_sv,
                           &text_options->include_directories, 1);

  expanded_formats_sv = hv_fetch (hv_in, "expanded_formats",
                                  strlen ("expanded_formats"), 0);
  if (expanded_formats_sv)
    {
      int i;
      SSize_t formats_nr;

      AV *av = (AV *)SvRV (*expanded_formats_sv);

      formats_nr = av_top_index (av) +1;
      for (i = 0; i < formats_nr; i++)
        {
          SV** string_sv = av_fetch (av, i, 0);
          if (string_sv)
            {
              char *string = SvPVbyte_nolen (*string_sv);
              add_expanded_format (text_options->expanded_formats, string);
            }
        }
    }

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


static char *special_unit_info_type_names[SUI_type_heading_tree + 1] =
{
  /* #define sui_type(name) [SUI_type_ ## name] = #name, */
  #define sui_type(name) #name,
    SUI_TYPES_LIST
  #undef sui_type

  /* [SUI_type_heading_tree] = "heading_tree", */
  "heading_tree",
};

int
html_converter_initialize (SV *sv_in)
{
  HV *hv_in;
  SV **converter_init_conf_sv;
  SV **converter_sv;
  SV **sorted_special_unit_varieties_sv;
  CONVERTER *converter = new_converter ();
  int converter_descriptor = 0;
  DOCUMENT *document;
  int nr_special_units = 0;

  dTHX;

  hv_in = (HV *)SvRV (sv_in);

  document = get_sv_document_document (sv_in, 0);
  converter->document = document;

  converter_init_conf_sv = hv_fetch (hv_in, "converter_init_conf",
                                   strlen ("converter_init_conf"), 0);

  if (converter_init_conf_sv && SvOK (*converter_init_conf_sv))
    {
      converter->init_conf
         = copy_sv_options (*converter_init_conf_sv);
    }

  sorted_special_unit_varieties_sv
     = hv_fetch (hv_in, "sorted_special_unit_varieties",
                 strlen ("sorted_special_unit_varieties"), 0);

  if (sorted_special_unit_varieties_sv)
    {
      int j;
      SV **special_unit_info_sv;
      HV *special_unit_info_hv;

      STRING_LIST *special_unit_varieties
       = (STRING_LIST *) malloc (sizeof (STRING_LIST));
      memset (special_unit_varieties, 0, sizeof (STRING_LIST));
      add_svav_to_string_list (sorted_special_unit_varieties_sv,
                               special_unit_varieties, 0);

      nr_special_units = special_unit_varieties->number;

      converter->special_unit_varieties = special_unit_varieties;

      special_unit_info_sv = hv_fetch (hv_in, "special_unit_info",
                                       strlen ("special_unit_info"), 0);

      special_unit_info_hv = (HV *) SvRV(*special_unit_info_sv);

      for (j = 0; j < SUI_type_heading_tree+1; j++)
        {
          SV **special_unit_info_type_sv;
          char *sui_type = special_unit_info_type_names[j];
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
                            = (char *) SvPVbyte_nolen (*info_type_variety_sv);
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

  converter->global_units_directions
    = (OUTPUT_UNIT **) malloc ((D_Last + nr_special_units+1)
                               * sizeof (OUTPUT_UNIT));
  memset (converter->global_units_directions, 0,
    (D_Last + nr_special_units+1) * sizeof (OUTPUT_UNIT));

  converter->error_messages
    = (ERROR_MESSAGE_LIST *) malloc (sizeof (ERROR_MESSAGE_LIST));
  memset (converter->error_messages, 0, sizeof (ERROR_MESSAGE_LIST));

  converter_descriptor = register_converter (converter);
  /* a fresh converter, registered */
  converter = retrieve_converter (converter_descriptor);

  /* store converter_descriptor in perl converter */
  converter_sv = hv_fetch (hv_in, "converter",
                                   strlen ("converter"), 0);
  if (converter_sv && SvOK(*converter_sv))
    {
      HV *converter_hv = (HV *)SvRV(*converter_sv);
      hv_store (converter_hv, "converter_descriptor",
                strlen("converter_descriptor"),
                newSViv (converter_descriptor), 0);
      converter->hv = converter_hv;
    }

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

INDEX_SORTABLE_ENTRIES **
get_sv_sortable_entries (SV *sortable_entries_in)
{
  AV *av_in;
  SSize_t av_number;
  SSize_t j;
  INDEX_SORTABLE_ENTRIES **result;

  dTHX;

  if (!SvOK (sortable_entries_in))
    return 0;

  av_in = (AV *)SvRV (sortable_entries_in);

  av_number = av_top_index (av_in) +1;

  if (!av_number)
    return 0;

  result = (INDEX_SORTABLE_ENTRIES **)
     malloc ((av_number +1) * sizeof (INDEX_SORTABLE_ENTRIES *));

  result[av_number] = 0;

  for (j = 0; j < av_number; j++)
    {
      int i;
      char *idx_name = 0;
      SSize_t index_entries_nr;
      AV *index_encoded_sortable_entries_av;
      SV **idx_name_sv;
      SV **encoded_sortable_entries_sv;
      AV *av;

      SV **index_encoded_sortable_entries_sv = av_fetch (av_in, j, 0);
      if (!index_encoded_sortable_entries_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_sortable_entries: %d: no index sortable entries\n", j);
          fatal (msg);
        }

      index_encoded_sortable_entries_av
        = (AV *)SvRV (*index_encoded_sortable_entries_sv);

      idx_name_sv = av_fetch (index_encoded_sortable_entries_av, 0, 0);
      if (!idx_name_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_sortable_entries: %d: no index name\n", j);
          fatal (msg);
        }
      idx_name = (char *) SvPVbyte_nolen (*idx_name_sv);

      encoded_sortable_entries_sv
        = av_fetch (index_encoded_sortable_entries_av, 1, 0);
      if (!encoded_sortable_entries_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_sortable_entries: %d: %s: no sortable entries\n",
                     j, idx_name);
          fatal (msg);
        }

      result[j] = (INDEX_SORTABLE_ENTRIES *)
         malloc (sizeof (INDEX_SORTABLE_ENTRIES));
      result[j]->name = strdup (idx_name);

      av = (AV *)SvRV (*encoded_sortable_entries_sv);

      index_entries_nr = av_top_index (av) +1;
      result[j]->number = index_entries_nr;
      result[j]->sortable_entries = (SORTABLE_ENTRY *)
        malloc (index_entries_nr * sizeof (SORTABLE_ENTRY));
      for (i = 0; i < index_entries_nr; i++)
        {
          SV** sortable_entry_sv = av_fetch (av, i, 0);
          if (sortable_entry_sv)
            {
              SV **number_sv;
              SV **index_name_sv;
              SV **keys_sv;
              SV **entry_keys_sv;
              SORTABLE_ENTRY * sortable_entry = &result[j]->sortable_entries[i];

              HV *hv_sortable_entry = (HV *)SvRV (*sortable_entry_sv);

              number_sv = hv_fetch (hv_sortable_entry, "number",
                                   strlen ("number"), 0);
              if (number_sv)
                {
                  sortable_entry->number = SvIV (*number_sv);
                }
              else
                {
                  char *msg;
                  xasprintf (&msg,
            "get_sv_sortable_entries: %s: %d: no number\n", idx_name, i);
                  fatal (msg);
                }

              index_name_sv = hv_fetch (hv_sortable_entry, "index_name",
                                        strlen ("index_name"), 0);
              if (index_name_sv)
                {
                  char *index_name_tmp
                    = (char *) SvPVbyte_nolen (*index_name_sv);
                  sortable_entry->index_name = strdup (index_name_tmp);
                }
              else
                {
                  char *msg;
                  xasprintf (&msg,
            "get_sv_sortable_entries: %s: %d: no index_name\n", idx_name, i);
                  fatal (msg);
                }

              keys_sv = hv_fetch (hv_sortable_entry, "keys",
                                  strlen ("keys"), 0);
              entry_keys_sv = hv_fetch (hv_sortable_entry, "entry_keys",
                                  strlen ("entry_keys"), 0);

              if (keys_sv && entry_keys_sv)
                {
                  int k;
                  SSize_t keys_nr;
                  SSize_t entry_keys_nr;
                  AV *keys_av = (AV *) SvRV (*keys_sv);
                  AV *entry_keys_av = (AV *) SvRV (*entry_keys_sv);
                  keys_nr = av_top_index (keys_av) +1;
                  entry_keys_nr = av_top_index (entry_keys_av) +1;
                  if (keys_nr != entry_keys_nr)
                    {
                      char *msg;
                      xasprintf (&msg,
            "get_sv_sortable_entries: %s: %d: keys_nr %d != entry_keys_nr %d\n",
                                 idx_name, i, keys_nr, entry_keys_nr);
                      fatal (msg);
                    }

                  sortable_entry->keys_number = keys_nr;
                  sortable_entry->keys
                    = (KEY_ALPHA *) malloc (keys_nr * sizeof (KEY_ALPHA));
                  sortable_entry->entry_keys
                    = (char **) malloc (keys_nr * sizeof (char*));

                  for (k = 0; k < keys_nr; k++)
                    {
                      SV** key_sv = av_fetch (keys_av, k, 0);
                      SV** entry_key_sv = av_fetch (entry_keys_av, k, 0);
                      if (key_sv)
                        {
                          KEY_ALPHA *key_alpha = &sortable_entry->keys[k];
                          AV *key_alpha_av = (AV *) SvRV (*key_sv);
                          SV **key_string_sv = av_fetch (key_alpha_av, 0, 0);
                          SV **key_alpha_sv = av_fetch (key_alpha_av, 1, 0);
                          char *key_string_tmp;
                          if (!key_string_sv || !key_alpha_sv)
                            {
                              char *msg;
                              xasprintf (&msg,
                           "get_sv_sortable_entries: %s: %d: %d: no key string or alpha\n",
                                        idx_name, i, k);
                              fatal (msg);
                            }
                          key_string_tmp = (char *) SvPVbyte_nolen (*key_string_sv);
                          key_alpha->key = strdup (key_string_tmp);
                          key_alpha->alpha = SvIV (*key_alpha_sv);
                        }
                      else
                        {
                          char *msg;
                          xasprintf (&msg,
                           "get_sv_sortable_entries: %s: %d: %d: no key\n",
                                     idx_name, i, k);
                          fatal (msg);
                        }

                      if (entry_key_sv)
                        {
                          char *entry_key_tmp
                            = (char *) SvPVbyte_nolen (*entry_key_sv);
                          sortable_entry->entry_keys[k] = strdup (entry_key_tmp);
                        }
                      else
                        {
                          char *msg;
                          xasprintf (&msg,
                           "get_sv_sortable_entries: %s: %d: %d: no entry_key\n",
                                     idx_name, i, k);
                          fatal (msg);
                        }
                    }
                }
              else
                {
                  char *msg;
                  xasprintf (&msg,
            "get_sv_sortable_entries: %s: %d: no keys\n", idx_name, i);
                  fatal (msg);
                }
            }
        }
    }
  return result;
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
      AV *index_encoded_sorted_by_letter_av;
      SV **idx_name_sv;
      SV **encoded_sorted_by_letter_sv;
      AV *av;

      SV **index_encoded_sorted_by_letter_sv = av_fetch (av_in, j, 0);
      if (!index_encoded_sorted_by_letter_sv)
        {
          char *msg;
          xasprintf (&msg,
      "get_sv_index_entries_sorted_by_letter: %d: no index sorted entries\n", j);
          fatal (msg);
        }

      index_encoded_sorted_by_letter_av
        = (AV *)SvRV (*index_encoded_sorted_by_letter_sv);

      idx_name_sv = av_fetch (index_encoded_sorted_by_letter_av, 0, 0);
      if (!idx_name_sv)
        {
          char *msg;
          xasprintf (&msg,
            "get_sv_index_entries_sorted_by_letter: %d: no index name\n", j);
          fatal (msg);
        }
      idx_name = (char *) SvPVbyte_nolen (*idx_name_sv);

      encoded_sorted_by_letter_sv
        = av_fetch (index_encoded_sorted_by_letter_av, 1, 0);
      if (!encoded_sorted_by_letter_sv)
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

      av = (AV *)SvRV (*encoded_sorted_by_letter_sv);

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
              AV *letter_entries_av = (AV *) SvRV (*letter_entries_sv);
              SV **encoded_letter_sv = av_fetch (letter_entries_av, 0, 0);
              SV **entries_sv = av_fetch (letter_entries_av, 1, 0);
              if (!encoded_letter_sv || !entries_sv)
                {
                  char *msg;
                  xasprintf (&msg,
  "get_sv_index_entries_sorted_by_letter: %s: %d: no letter and entries\n",
                             idx_name, i);
                  fatal (msg);
                }
              letter_entries->letter
                = (char *) SvPVbyte_nolen (*encoded_letter_sv);

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
                  /* FIXME probably not SvPVbyte_nolen as entered as newSVpv_utf8 */
                  entry_index_name = (char *) SvPVbyte_nolen (*index_name_sv);
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
