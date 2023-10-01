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

#ifdef ENABLE_NLS
#include <libintl.h>
#endif

#include "global_commands_types.h"
#include "tree_types.h"
#include "tree.h"
#include "element_types.h"
/* for GLOBAL_INFO ERROR_MESSAGE fatal output_unit_type_names */
#include "utils.h"
/* for debugging */
#include "debug.h"
#include "convert_to_texinfo.h"
#include "extra.h"
/* for element_command_name */
#include "builtin_commands.h"
#include "document.h"
#include "output_unit.h"
#include "build_perl_info.h"

#define LOCALEDIR DATADIR "/locale"

  /* NOTE: Do not call 'malloc' or 'free' in any function called in this file.
     Since this file (build_perl_info.c) includes the Perl headers,
     we get the Perl redefinitions, which we do not want, as we don't use
     them throughout the rest of the program. */

  /* Can't use asprintf here, because it might come from Gnulib, and
     will then use malloc that is different from Perl's malloc, whereas
     free below is redirected to Perl's implementation.  This could
     cause crashes if the two malloc/free implementations were different.  */

#ifdef ENABLE_NLS

int
init (int texinfo_uninstalled, char *builddir)
{
  setlocale (LC_ALL, "");

  /* Note: this uses the installed translations even when running an
     uninstalled program. */
  bindtextdomain (PACKAGE, LOCALEDIR);

  textdomain (PACKAGE);

  return 1;
}

#else

int
init (int texinfo_uninstalled, char *builddir)
{
  return 1;
}

#endif

static void element_to_perl_hash (ELEMENT *e);

/* Return reference to Perl array built from e.  If any of
   the elements in E don't have 'hv' set, set it to an empty
   hash table, or create it if there is no parent element, indicating the
   element is not in the tree.
   Note that not having 'hv' set should be rare (actually never happen),
   as the contents and args children are processed before the extra
   information where build_perl_array is called.
 */
static SV *
build_perl_array (ELEMENT_LIST *e)
{
  SV *sv;
  AV *av;
  int i;

  dTHX;

  av = newAV ();
  sv = newRV_inc ((SV *) av);

  for (i = 0; i < e->number; i++)
    {
      if (!e->list[i]->hv)
        {
          if (e->list[i]->parent)
            e->list[i]->hv = newHV ();
          else
            {
              /* NOTE should not be possible, all the elements in
                 extra_contents should be in-tree.  Checked in 2023.
                 Also, if this happens it is likely that this will
                 trigger errors because some elements will be processed
                 twice.
               */
              /* Out-of-tree element */
              /* WARNING: This is possibly recursive. */
              element_to_perl_hash (e->list[i]);
            }
        }
      av_store (av, i, newRV_inc ((SV *) e->list[i]->hv));
    }
  return sv;
}

static SV *
build_perl_directions (ELEMENT_LIST *e)
{
  SV *sv;
  HV *hv;
  int d;

  dTHX;

  hv = newHV ();
  sv = newRV_inc ((SV *) hv);

  for (d = 0; d < directions_length; d++)
    {
      if (e->list[d])
        {
          const char *key = direction_names[d];
          if (!e->list[d]->hv)
            {
              if (e->list[d]->parent)
                e->list[d]->hv = newHV ();
              else
                {
                  /* NOTE This should not happen.  This will trigger an
                     element_to_perl_hash oot error (and probably others) as
                     it will be processed both below and with extra additional
                     information.
                   */
                  /* Out-of-tree element */
                  /* WARNING: This is possibly recursive. */
                  static TEXT message;
                  char *debug_str = print_element_debug (e->list[d], 1);
                  text_init (&message);
                  text_printf (&message,
                    "BUG: build_perl_directions oot %s: %s\n", key, debug_str);
                  free (debug_str);
                  /* could also call fatal here */
                  fprintf (stderr, message.text);
                  free (message.text);
                  element_to_perl_hash (e->list[d]);
                }
            }
          hv_store (hv, key, strlen (key),
                    newRV_inc ((SV *) e->list[d]->hv), 0);
        }
    }
  return sv;
}


/* Used to create a "Perl-internal" string that represents a sequence
   of Unicode codepoints with no specific encoding. */
static SV *
newSVpv_utf8 (char *str, STRLEN len)
{
  SV *sv;
  dTHX;

  sv = newSVpv (str, len);
  SvUTF8_on (sv);
  return sv;
}

static void
store_additional_info (ELEMENT *e, ASSOCIATED_INFO* a, char *key)
{
  dTHX;

  if (a->info_number > 0)
    {
      HV *extra;
      int i;
      int nr_info = 0; /* number of info type stored */


      /* Use sv_2mortal so that reference count is decremented if
         the hash is not saved. */
      extra = (HV *) sv_2mortal((SV *)newHV ());

      for (i = 0; i < a->info_number; i++)
        {
#define STORE(sv) hv_store (extra, key, strlen (key), sv, 0)
          char *key = a->info[i].key;
          ELEMENT *f = (ELEMENT *) a->info[i].value;

          if (a->info[i].type == extra_deleted)
            continue;
          nr_info++;

          switch (a->info[i].type)
            {
            case extra_element:
              /* For references to other parts of the tree, create the hash so
                 we can point to it. */
              /* Note that this does not happen much, as the contents
                 and args are processed before the extra information.  It only
                 happens for root commands (sections, nodes) and associated
                 commands, and could also happen for subentry as it is not
                 a children of the associated index command */
              if (!f->hv)
                f->hv = newHV ();
              STORE(newRV_inc ((SV *)f->hv));
              break;
            case extra_element_oot:
              /* Note that this is only used for info hash in the parser, with
                 simple elements that are associated to one element only, should
                 not be referred to elsewhere (and should not contain other
                 commands or containers).
                 In other codes, can be used for more complex subtrees or special
                 out of tree elements, but must always be associated to only one
                 element and must not refer to the tree through args or contents.
               */
              if (f->hv)
                {
                  static TEXT message;
                  char *debug_str = print_element_debug (e, 1);
                  text_init (&message);
                  text_printf (&message,
                        "element_to_perl_hash oot %s double in %s\n",
                               key, debug_str);
                  free (debug_str);
                  fatal (message.text);
                }
              element_to_perl_hash (f);
              STORE(newRV_inc ((SV *)f->hv));
              break;
            case extra_contents:
              {
              if (f)
                STORE(build_perl_array (&f->contents));
              break;
              }
            case extra_directions:
              {
              if (f)
                STORE(build_perl_directions (&f->contents));
              break;
              }
            case extra_string:
              { /* A simple string. */
              char *value = (char *) f;
              STORE(newSVpv_utf8 (value, 0));
              break;
              }
            case extra_integer:
              { /* A simple integer.  The intptr_t cast here prevents
                   a warning on MinGW ("cast from pointer to integer of
                   different size"). */
              IV value = (IV) (intptr_t) f;
              STORE(newSViv (value));
              break;
              }
            case extra_misc_args:
              {
              int j;
              AV *av;
              av = newAV ();
              av_unshift (av, f->contents.number);

              STORE(newRV_inc ((SV *)av));
              /* An array of strings or integers. */
              for (j = 0; j < f->contents.number; j++)
                {
                  KEY_PAIR *k_integer;
                  k_integer = lookup_extra (f->contents.list[j], "integer");
                  if (k_integer)
                    {
                      IV value = (IV) (intptr_t) k_integer->value;
                      av_store (av, j, newSViv (value));
                    }
                  else if (f->contents.list[j]->text.end > 0)
                    {
                      SV *sv = newSVpv_utf8 (f->contents.list[j]->text.text,
                                             f->contents.list[j]->text.end);
                      av_store (av, j, sv);
                    }
                  else
                    {
                      /* Empty strings permitted. */
                      av_store (av, j, newSVpv ("", 0));
                    }
                }
              break;
              }
            default:
              fatal ("unknown extra type");
              break;
            }
        }
#undef STORE

      if (nr_info > 0)
        hv_store (e->hv, key, strlen (key),
                  newRV_inc((SV *)extra), 0);
    }
}

static void
store_source_mark_list (ELEMENT *e)
{
  dTHX;

  if (e->source_mark_list.number > 0)
    {
      AV *av;
      SV *sv;
      int i;
      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      hv_store (e->hv, "source_marks", strlen ("source_marks"), sv, 0);

      for (i = 0; i < e->source_mark_list.number; i++)
        {
          HV *source_mark;
          SV *sv;
          SOURCE_MARK *s_mark = e->source_mark_list.list[i];
          IV source_mark_position;
          IV source_mark_counter;
          source_mark = newHV ();
#define STORE(key, value) hv_store (source_mark, key, strlen (key), value, 0)
           /* A simple integer.  The intptr_t cast here prevents
              a warning on MinGW ("cast from pointer to integer of
              different size"). */
          source_mark_counter = (IV) (intptr_t) s_mark->counter;
          STORE("counter", newSViv (source_mark_counter));
          if (s_mark->position > 0)
            {
              source_mark_position = (IV) (intptr_t) s_mark->position;
              STORE("position", newSViv (source_mark_position));
            }
          if (s_mark->element)
            {
              ELEMENT *e = s_mark->element;
              /* should only be referred to in one source mark */
              if (e->hv)
                fatal ("element_to_perl_hash source mark elt twice");
              element_to_perl_hash (e);
              STORE("element", newRV_inc ((SV *)e->hv));
            }
          if (s_mark->line)
            {
              SV *sv = newSVpv_utf8 (s_mark->line, 0);
              STORE("line", sv);
            }

#define SAVE_S_M_STATUS(X) \
           case SM_status_ ## X: \
           sv = newSVpv_utf8 (#X, 0);\
           STORE("status", sv); \
           break;

          switch (s_mark->status)
            {
              SAVE_S_M_STATUS (start)
              SAVE_S_M_STATUS (end)

              /* for SM_status_none */
              default:
                break;
            }

#define SAVE_S_M_TYPE(X) \
           case SM_type_ ## X: \
           sv = newSVpv_utf8 (#X, 0);\
           STORE("sourcemark_type", sv); \
           break;

          switch (s_mark->type)
            {
              SAVE_S_M_TYPE (include)
              SAVE_S_M_TYPE (setfilename)
              SAVE_S_M_TYPE (delcomment)
              SAVE_S_M_TYPE (defline_continuation)
              SAVE_S_M_TYPE (macro_expansion)
              SAVE_S_M_TYPE (linemacro_expansion)
              SAVE_S_M_TYPE (value_expansion)
              SAVE_S_M_TYPE (ignored_conditional_block)
              SAVE_S_M_TYPE (expanded_conditional_command)

              /* for SM_type_none */
              default:
                break;
            }

          av_push (av, newRV_noinc ((SV *)source_mark));
#undef STORE
        }
    }
}

static int hashes_ready = 0;
static U32 HSH_parent = 0;
static U32 HSH_type = 0;
static U32 HSH_cmdname = 0;
static U32 HSH_contents = 0;
static U32 HSH_args = 0;
static U32 HSH_text = 0;
static U32 HSH_extra = 0;
static U32 HSH_info = 0;
static U32 HSH_source_info = 0;
static U32 HSH_file_name = 0;
static U32 HSH_line_nr = 0;
static U32 HSH_macro = 0;

/* Set E->hv and 'hv' on E's descendants.  e->parent->hv is assumed
   to already exist. */
/* Note that it is not possible to call element_to_perl_hash twice on
   an element as hv_store should not be called twice for the same key */
static void
element_to_perl_hash (ELEMENT *e)
{
  SV *sv;

  dTHX;

   /*
  fprintf (stderr, "ETPH %p %s\n", e, print_element_debug (e, 0));
    */
  /* e->hv may already exist if there was an extra value elsewhere
     referring to e. */
  if (!e->hv)
    {
      e->hv = newHV ();
    }

  if (!hashes_ready)
    {
      hashes_ready = 1;
      PERL_HASH(HSH_parent, "parent", strlen ("parent"));
      PERL_HASH(HSH_type, "type", strlen ("type"));
      PERL_HASH(HSH_cmdname, "cmdname", strlen ("cmdname"));
      PERL_HASH(HSH_contents, "contents", strlen ("contents"));
      PERL_HASH(HSH_args, "args", strlen ("args"));
      PERL_HASH(HSH_text, "text", strlen ("text"));
      PERL_HASH(HSH_extra, "extra", strlen ("extra"));
      PERL_HASH(HSH_info, "info", strlen ("info"));
      PERL_HASH(HSH_source_info, "source_info", strlen ("source_info"));

      PERL_HASH(HSH_file_name, "file_name", strlen ("file_name"));
      PERL_HASH(HSH_line_nr, "line_nr", strlen ("line_nr"));
      PERL_HASH(HSH_macro, "macro", strlen ("macro"));
    }

  if (e->parent)
    {
      if (!e->parent->hv)
        {
          static TEXT message;
          char *debug_str = print_element_debug (e, 1);
          text_init (&message);
          text_printf (&message, "parent %p hv not set in %s '%s'\n",
                            e->parent, debug_str, convert_to_texinfo (e));
          free (debug_str);
          fatal (message.text);
        }
      sv = newRV_inc ((SV *) e->parent->hv);
      hv_store (e->hv, "parent", strlen ("parent"), sv, HSH_parent);
    }

  if (e->type)
    {
      sv = newSVpv (element_type_names[e->type], 0);
      hv_store (e->hv, "type", strlen ("type"), sv, HSH_type);
    }

  if (e->cmd)
    {
      sv = newSVpv (element_command_name (e), 0);
      hv_store (e->hv, "cmdname", strlen ("cmdname"), sv, HSH_cmdname);

      /* Note we could optimize the call to newSVpv here and
         elsewhere by passing an appropriate second argument. */
    }

  if (e->contents.number > 0)
    {
      AV *av;
      int i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      av_unshift (av, e->contents.number);

      hv_store (e->hv, "contents", strlen ("contents"), sv, HSH_contents);
      for (i = 0; i < e->contents.number; i++)
        {
          element_to_perl_hash (e->contents.list[i]);
          sv = newRV_noinc ((SV *) e->contents.list[i]->hv);
          av_store (av, i, sv);
        }
    }

  if (e->args.number > 0)
    {
      AV *av;
      int i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      av_unshift (av, e->args.number);

      hv_store (e->hv, "args", strlen ("args"), sv, HSH_args);
      for (i = 0; i < e->args.number; i++)
        {
          element_to_perl_hash (e->args.list[i]);
          sv = newRV_inc ((SV *) e->args.list[i]->hv);
          av_store (av, i, sv);
        }
    }

  if (e->text.space > 0)
    {
      sv = newSVpv_utf8 (e->text.text, e->text.end);
      hv_store (e->hv, "text", strlen ("text"), sv, HSH_text);
    }

  store_additional_info (e, &e->extra_info, "extra");
  store_additional_info (e, &e->info_info, "info");

  store_source_mark_list (e);

  if (e->source_info.line_nr)
    {
#define STORE(key, sv, hsh) hv_store (hv, key, strlen (key), sv, hsh)
      SOURCE_INFO *source_info = &e->source_info;
      HV *hv = newHV ();
      hv_store (e->hv, "source_info", strlen ("source_info"),
                newRV_noinc((SV *)hv), HSH_source_info);

      if (source_info->file_name)
        {
          STORE("file_name", newSVpv (source_info->file_name, 0),
                HSH_file_name);
        }
      else
        STORE("file_name", newSVpv ("", 0), HSH_file_name);

      if (source_info->line_nr)
        {
          STORE("line_nr", newSViv (source_info->line_nr), HSH_line_nr);
        }

      if (source_info->macro)
        {
          STORE("macro", newSVpv_utf8 (source_info->macro, 0), HSH_macro);
        }
      else
        STORE("macro", newSVpv ("", 0), HSH_macro);
#undef STORE
    }
}

HV *
build_texinfo_tree (ELEMENT *root)
{
  if (! root)
      /* use an empty element with contents if there is nothing.
         This should only happen if the input file was not opened
         or no parse_* function was called after initialization
         and should not happen with the current calling code.
      */
      root = new_element (ET_NONE);
  /*
  fprintf (stderr, "BTT ------------------------------------------------\n");
   */
  element_to_perl_hash (root);
  return root->hv;
}

/* remove elements hv such that the tree can be rebuilt later */
void
clean_texinfo_tree (ELEMENT *e);

void
clean_additional_info (ELEMENT *e, ASSOCIATED_INFO* a, char *key)
{
  if (a->info_number > 0)
    {
      int i;
      for (i = 0; i < a->info_number; i++)
        {
          /*
          char *key = a->info[i].key;
           */

          switch (a->info[i].type)
            {
            case extra_element_oot:
              {
                ELEMENT *f = (ELEMENT *) a->info[i].value;
                clean_texinfo_tree (f);
              }
              break;
            default:
              break;
            }
        }
    }
}

void
clean_source_mark_list (ELEMENT *e)
{
  if (e->source_mark_list.number > 0)
    {
      int i;
      for (i = 0; i < e->source_mark_list.number; i++)
        {
          SOURCE_MARK *s_mark = e->source_mark_list.list[i];
          if (s_mark->element)
            {
              clean_texinfo_tree (s_mark->element);
            }
        }
    }
}

void
clean_texinfo_tree (ELEMENT *e)
{
  e->hv = 0;

  if (e->contents.number > 0)
    {
      int i;
      for (i = 0; i < e->contents.number; i++)
        clean_texinfo_tree (e->contents.list[i]);
    }

  if (e->args.number > 0)
    {
      int i;
      for (i = 0; i < e->args.number; i++)
        clean_texinfo_tree (e->args.list[i]);
    }
  clean_additional_info (e, &e->extra_info, "extra");
  clean_additional_info (e, &e->info_info, "info");

  clean_source_mark_list (e);
}

/* Return array of target elements.  build_texinfo_tree must
   be called first. */
AV *
build_target_elements_list (LABEL *labels_list, size_t labels_number)
{
  AV *target_array;
  SV *sv;
  int i;

  dTHX;

  target_array = newAV ();
  av_unshift (target_array, labels_number);

  for (i = 0; i < labels_number; i++)
    {
      sv = newRV_inc (labels_list[i].element->hv);
      av_store (target_array, i, sv);
    }

  return target_array;
}

HV *
build_identifiers_target (LABEL_LIST *identifiers_target)
{
  HV* hv;

  dTHX;

  hv = newHV ();

  if (identifiers_target->number > 0)
    {
      int i;
      for (i = 0; i < identifiers_target->number; i++)
        {
          SV *sv = newRV_inc (identifiers_target->list[i].element->hv);
          hv_store (hv, identifiers_target->list[i].identifier,
                    strlen (identifiers_target->list[i].identifier),
                    sv, 0);
        }
    }
  return hv;
}

AV *
build_internal_xref_list (ELEMENT **internal_xref_list,
                          size_t internal_xref_number)
{
  AV *list_av;
  SV *sv;
  int i;

  dTHX;

  list_av = newAV ();
  av_unshift (list_av, internal_xref_number);

  for (i = 0; i < internal_xref_number; i++)
    {
      sv = newRV_inc (internal_xref_list[i]->hv);
      av_store (list_av, i, sv);
    }

  return list_av;
}

AV *
build_elements_contents_list (ELEMENT *element)
{
  AV *list_av;
  SV *sv;
  int i;

  dTHX;

  list_av = newAV ();

  av_unshift (list_av, element->contents.number);

  for (i = 0; i < element->contents.number; i++)
    {
      sv = newRV_inc (element->contents.list[i]->hv);
      av_store (list_av, i, sv);
    }

  return list_av;
}

/* Return hash for list of @float's that appeared in the file. */
HV *
build_float_types_list (FLOAT_RECORD *floats_list, size_t floats_number)
{
  HV *float_hash;
  SV *sv;
  int i;

  dTHX;

  float_hash = newHV ();

  for (i = 0; i < floats_number; i++)
    {
      AV *av = 0;
      SV *float_type = newSVpv_utf8 (floats_list[i].type, 0);
      /* use hv_fetch_ent to be able to pass a SV string for the key and
         not a char to be able to signal that it is UTF-8 encoded.  In recent
         perlapi, it is said that a negative len can be used to specify
         that the key is UTF-8 encoded, but it is not clear in which
         perl version this was added, it does not seem to be documented
         in 5.10.0.
      */
      HE *type_array_entry = hv_fetch_ent (float_hash,
                                           float_type, 0, 0);
      if (type_array_entry)
        {
          SV *type_array_value = HeVAL (type_array_entry);
          if (type_array_value)
            av = (AV *) SvRV (type_array_value);
        }
      if (!av)
        {
          av = newAV ();
          hv_store_ent (float_hash, float_type,
                        newRV_noinc ((SV *)av), 0);
        }
      sv = newRV_inc ((SV *)floats_list[i].element->hv);
      av_push (av, sv);
    }

  return float_hash;
}

/* returns a hash for a single entry in $self->{'index_names'}, containing
   information about a single index. */
static HV *
build_single_index_data (INDEX *i)
{
#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  HV *hv;
  AV *entries;
  int j;
  int entry_number;

  dTHX;

  hv = newHV ();

  STORE("name", newSVpv_utf8 (i->name, 0));
  STORE("in_code", i->in_code ? newSViv(1) : newSViv(0));

  if (i->merged_in)
    {
      STORE("merged_in", newSVpv_utf8 (i->merged_in->name, 0));
    }

  if (i->index_number > 0)
    {
      entries = newAV ();
      av_unshift (entries, i->index_number);
      STORE("index_entries", newRV_noinc ((SV *) entries));
#undef STORE

      entry_number = 1;
      for (j = 0; j < i->index_number; j++)
        {
#define STORE2(key, value) hv_store (entry, key, strlen (key), value, 0)
          HV *entry;
          INDEX_ENTRY *e;

          e = &i->index_entries[j];
          entry = newHV ();

          STORE2("index_name", newSVpv_utf8 (i->name, 0));
          STORE2("entry_element",
                 newRV_inc ((SV *)e->entry_element->hv));
          if (e->entry_associated_element)
            STORE2("entry_associated_element",
                   newRV_inc ((SV *)e->entry_associated_element->hv));
          STORE2("entry_number", newSViv (entry_number));

          av_store (entries, j, newRV_noinc ((SV *)entry));

          entry_number++;
#undef STORE2
        }
    }
  return hv;
}

/* Return object to be used as $self->{'index_names'} in the perl code.
   build_texinfo_tree must be called before this so all the 'hv' fields
   are set on the elements in the tree. */
HV *
build_index_data (INDEX **index_names_in)
{
  HV *hv;
  INDEX **i, *idx;

  dTHX;

  hv = newHV ();

  for (i = index_names_in; (idx = *i); i++)
    {
      HV *hv2 = build_single_index_data (idx);
      hv_store (hv, idx->name, strlen (idx->name), newRV_noinc ((SV *)hv2), 0);
    }

  return hv;
}


/* Return object to be used as 'info', retrievable with the
   'global_information' function. */
HV *
build_global_info (GLOBAL_INFO *global_info_ref)
{
  HV *hv;
  int i;
  ELEMENT *e;
  GLOBAL_INFO global_info = *global_info_ref;

  dTHX;

  hv = newHV ();
  if (global_info.input_encoding_name)
    hv_store (hv, "input_encoding_name", strlen ("input_encoding_name"),
              newSVpv (global_info.input_encoding_name, 0), 0);
  if (global_info.input_file_name)
    hv_store (hv, "input_file_name", strlen ("input_file_name"),
              newSVpv (global_info.input_file_name, 0), 0);
  if (global_info.input_directory)
    hv_store (hv, "input_directory", strlen ("input_directory"),
              newSVpv (global_info.input_directory, 0), 0);

  if (global_info.dircategory_direntry.contents.number > 0)
    {
      AV *av = newAV ();
      hv_store (hv, "dircategory_direntry", strlen ("dircategory_direntry"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_info.dircategory_direntry.contents.number; i++)
        {
          e = contents_child_by_index (&global_info.dircategory_direntry, i);
          if (e->hv)
            av_push (av, newRV_inc ((SV *) e->hv));
        }
    }

  return hv;
}

/* Return object to be used as 'commands_info', which holds references
   to tree elements. */
HV *
build_global_commands (GLOBAL_COMMANDS *global_commands_ref)
{
  HV *hv;
  AV *av;
  int i;
  ELEMENT *e;
  GLOBAL_COMMANDS global_commands = *global_commands_ref;

  dTHX;

  hv = newHV ();

  /* These should be unique elements. */

#define GLOBAL_UNIQUE_CASE(cmd) \
  if (global_commands.cmd && global_commands.cmd->hv) \
    { \
      hv_store (hv, #cmd, strlen (#cmd), \
                newRV_inc ((SV *) global_commands.cmd->hv), 0); \
    }

  GLOBAL_UNIQUE_CASE(setfilename);

#include "main/global_unique_commands_case.c"

#undef GLOBAL_UNIQUE_CASE

  /* The following are arrays of elements. */

  if (global_commands.footnotes.contents.number > 0)
    {
      av = newAV ();
      hv_store (hv, "footnote", strlen ("footnote"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_commands.footnotes.contents.number; i++)
        {
          e = contents_child_by_index (&global_commands.footnotes, i);
          if (e->hv)
            av_push (av, newRV_inc ((SV *) e->hv));
        }
    }

  /* float is a type, it does not work there, use floats instead */
  if (global_commands.floats.contents.number > 0)
    {
      av = newAV ();
      hv_store (hv, "float", strlen ("float"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_commands.floats.contents.number; i++)
        {
          e = contents_child_by_index (&global_commands.floats, i);
          if (e->hv)
            av_push (av, newRV_inc ((SV *) e->hv));
        }
    }

#define GLOBAL_CASE(cmd) \
  if (global_commands.cmd.contents.number > 0)                              \
    {                                                                   \
      av = newAV ();                                                    \
      hv_store (hv, #cmd, strlen (#cmd),                                \
                newRV_noinc ((SV *) av), 0);                              \
      for (i = 0; i < global_commands.cmd.contents.number; i++)             \
        {                                                               \
          e = contents_child_by_index (&global_commands.cmd, i);            \
          if (e->hv)                                                    \
            av_push (av, newRV_inc ((SV *) e->hv));                     \
        }                                                               \
    }

#include "global_multi_commands_case.c"

#undef GLOBAL_CASE


  return hv;
}




static void
build_source_info_hash (SOURCE_INFO source_info, HV *hv)
{
  dTHX;

  if (source_info.file_name)
    {
      hv_store (hv, "file_name", strlen ("file_name"),
                newSVpv (source_info.file_name, 0), 0);
    }
  else
    {
      hv_store (hv, "file_name", strlen ("file_name"),
                newSVpv ("", 0), 0);
    }

  if (source_info.line_nr)
    {
      hv_store (hv, "line_nr", strlen ("line_nr"),
                newSViv (source_info.line_nr), 0);
    }

  if (source_info.macro)
    {
      hv_store (hv, "macro", strlen ("macro"),
                newSVpv_utf8 (source_info.macro, 0), 0);
    }
  else
    {
      hv_store (hv, "macro", strlen ("macro"),
                newSVpv_utf8 ("", 0), 0);
    }
}

static SV *
convert_error (ERROR_MESSAGE e)
{
  HV *hv;
  SV *msg;
  SV *err_line;

  dTHX;

  hv = newHV ();

  msg = newSVpv_utf8 (e.message, 0);
  err_line = newSVpv_utf8 (e.error_line, 0);

  hv_store (hv, "text", strlen ("text"), msg, 0);
  hv_store (hv, "error_line", strlen ("error_line"), err_line, 0);
  hv_store (hv, "type", strlen ("type"),
              e.type == error ? newSVpv("error", strlen("error"))
                              : newSVpv("warning", strlen("warning")),
            0);

  if (e.continuation)
    hv_store (hv, "continuation", strlen ("continuation"),
              newSViv (e.continuation), 0);

  build_source_info_hash (e.source_info, hv);

  return newRV_noinc ((SV *) hv);
}

/* Errors */
AV *
get_errors (ERROR_MESSAGE* error_list, size_t error_number)
{
  AV *av;
  int i;

  dTHX;

  av = newAV ();

  for (i = 0; i < error_number; i++)
    {
      SV *sv = convert_error (error_list[i]);
      av_push (av, sv);
    }

  return av;
}



/* Return Texinfo::Document perl object corresponding to the
   C document structure corresponding to DOCUMENT_DESCRIPTOR.
   If NO_CLEAN_PERl_REFS is set, do not remove the pointers to perl
   tree elements in C tree elements. It should normally only be set for
   a tree that does not change anymore and will not be rebuilt.
   If NO_STORE is set, destroy the C document.
 */
SV *
build_document (size_t document_descriptor, int no_clean_perl_refs,
                int no_store)
{
  HV *hv;
  SV *sv;
  DOCUMENT *document;
  HV *hv_tree;
  HV *hv_info;
  HV *hv_commands_info;
  HV *hv_index_names;
  HV *hv_listoffloats_list;
  AV *av_internal_xref;
  HV *hv_identifiers_target;
  AV *av_labels_list;
  AV *av_errors_list;
  AV *av_nodes_list = 0;
  AV *av_sections_list = 0;
  HV *hv_stash;

  dTHX;

  hv = newHV ();

  document = retrieve_document (document_descriptor);

  hv_tree = build_texinfo_tree (document->tree);

  hv_info = build_global_info (document->global_info);

  hv_commands_info = build_global_commands (document->global_commands);

  hv_index_names = build_index_data (document->index_names);

  /* NOTE there is also a document->listoffloats which structure
     is more like the hv_listoffloats_list, so it could be
     possible to replace build_float_types_list by a new function,
     for example build_listoffloats_list that would create the
     hv_listoffloats_list based on document->listoffloats. */
  hv_listoffloats_list
         = build_float_types_list (document->floats->float_types,
                                   document->floats->number);

  av_internal_xref = build_internal_xref_list (
                    document->internal_references->list,
                    document->internal_references->number);

  hv_identifiers_target = build_identifiers_target (document->identifiers_target);

  av_labels_list = build_target_elements_list (document->labels_list->list,
                                               document->labels_list->number);

  av_errors_list = get_errors (document->error_messages->list,
                               document->error_messages->number);

  if (document->nodes_list)
    av_nodes_list = build_elements_contents_list (document->nodes_list);

  if (document->sections_list)
    av_sections_list = build_elements_contents_list (document->sections_list);

#define STORE(key, value) hv_store (hv, key, strlen (key), newRV_inc ((SV *) value), 0)

  /* must be kept in sync with Texinfo::Document register keys */
  STORE("tree", hv_tree);
  STORE("indices", hv_index_names);
  STORE("listoffloats_list", hv_listoffloats_list);
  STORE("internal_references", av_internal_xref);
  STORE("commands_info", hv_commands_info);
  STORE("info", hv_info);
  STORE("identifiers_target", hv_identifiers_target);
  STORE("labels_list", av_labels_list);
  STORE("errors", av_errors_list);

  if (av_nodes_list)
    STORE("nodes_list", av_nodes_list);

  if (av_sections_list)
    STORE("sections_list", av_sections_list);
#undef STORE

  if (no_store)
    remove_document_descriptor (document_descriptor);
  else
    {
      hv_store (hv, "document_descriptor", strlen ("document_descriptor"),
                newSViv (document_descriptor), 0);

      hv_store (hv_tree, "tree_document_descriptor",
                strlen ("tree_document_descriptor"),
                newSViv (document_descriptor), 0);

      /* if removing references to perl element, we do it here and not when
         building the tree, as later on the tree may have changed and all the hv
         may not be reachable.
       */
      if (!no_clean_perl_refs)
        clean_texinfo_tree (document->tree);
    }

  hv_stash = gv_stashpv ("Texinfo::Document", GV_ADD);
  /* FIXME why _noinc? */
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}


/*
 Return a non 0 status if pointers to perl elements from C elements are
 missing.
 TODO could have been better to know earlier that the perl output units list
 could not be built from the C output units
 */
static int
output_unit_to_perl_hash (OUTPUT_UNIT *output_unit)
{
  SV *sv;
  int status = 0;

  dTHX;

  /* output_unit->hv may already exist because of directions or if there was a
     first_in_page referring to output_unit */
  if (!output_unit->hv)
    output_unit->hv = newHV ();

#define STORE(key) hv_store (output_unit->hv, key, strlen (key), sv, 0)
  sv = newSVpv (output_unit_type_names[output_unit->unit_type], 0);
  STORE("unit_type");

  if (output_unit->unit_command)
    {
      if (!output_unit->unit_command->hv)
        status++;
      else
        {
          sv = newRV_inc ((SV *) output_unit->unit_command->hv);
          STORE("unit_command");
        }
    }

  if (output_unit->unit_filename)
    {
      /* FIXME check if utf8 or binary */
      sv = newSVpv_utf8 (output_unit->unit_filename,
                         strlen (output_unit->unit_filename));
      STORE("unit_filename");
    }

  if (output_unit->unit_contents.number)
    {
      AV *av;
      int i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      STORE("unit_contents");

      for (i = 0; i < output_unit->unit_contents.number; i++)
        {
          HV *element_hv = output_unit->unit_contents.list[i]->hv;
          SV *unit_sv;

          /* case of a tree where hv have been removed. */
          if (!element_hv)
            {
              status++;
              continue;
            }

          sv = newRV_inc ((SV *) element_hv);

          av_push (av, sv);

          unit_sv = newRV_inc ((SV *) output_unit->hv);
          /* set the tree element associated_unit */
          /* TODO is it an issue if already set? */
          hv_store (element_hv, "associated_unit", strlen ("associated_unit"),
                    unit_sv, 0);
        }
    }

  if (output_unit->tree_unit_directions[0]
      || output_unit->tree_unit_directions[1])
    {
      int i;
      int directions_nr = sizeof (output_unit->tree_unit_directions)
                           / sizeof (output_unit->tree_unit_directions[0]);
      HV *hv_tree_unit_directions = newHV ();
      sv = newRV_noinc ((SV *) hv_tree_unit_directions);
      STORE("tree_unit_directions");

      for (i = 0; i < directions_nr; i++)
        {
          OUTPUT_UNIT *target = output_unit->tree_unit_directions[i];
          if (target)
            {
              if (!target->hv)
                target->hv = newHV ();
              sv = newRV_inc ((SV *) target->hv);
              hv_store (hv_tree_unit_directions, direction_names[i],
                        strlen (direction_names[i]), sv, 0);
            }
        }
    }

  if (output_unit->first_in_page)
    {
      OUTPUT_UNIT *target = output_unit->first_in_page;
      if (!target->hv)
        target->hv = newHV ();
      sv = newRV_inc ((SV *) target->hv);
      STORE("first_in_page");
    }

  if (output_unit->special_unit_variety)
    {
      sv = newSVpv_utf8 (output_unit->special_unit_variety,
                         strlen (output_unit->special_unit_variety));
      STORE("special_unit_variety");
    }

#undef STORE

  return status;
}

SV *
build_output_units_list (size_t output_units_descriptor)
{
  SV *sv;
  AV *av_output_units;
  int i;
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  dTHX;

  if (!output_units || !output_units->number)
    return newSV(0);

  av_output_units = newAV ();

  for (i = 0; i < output_units->number; i++)
    {
      OUTPUT_UNIT *output_unit = output_units->list[i];
      int status = output_unit_to_perl_hash (output_unit);
      if (status)
        return newSV(0);
      sv = newRV_noinc ((SV *) output_unit->hv);
      av_push (av_output_units, sv);
    }

  /* store in the first perl output unit of the list */
  hv_store (output_units->list[0]->hv, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv (output_units_descriptor), 0);

  return newRV_noinc ((SV *) av_output_units);
}
