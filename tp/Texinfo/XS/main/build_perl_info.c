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
/* for GLOBAL_INFO ERROR_MESSAGE fatal output_unit_type_names CONVERTER */
#include "utils.h"
/* for debugging */
#include "debug.h"
#include "convert_to_texinfo.h"
#include "extra.h"
/* for element_command_name */
#include "builtin_commands.h"
#include "document.h"
#include "output_unit.h"
/* for wipe_error_message_list */
#include "errors.h"
#include "tree_perl_api.h"
#include "command_stack.h"
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

/* to be called when a tree element is destroyed, to remove the reference
   of the association with the C tree */
void
unregister_perl_tree_element (ELEMENT *e)
{
  dTHX;

  if (e->hv)
    {
      SvREFCNT_dec ((SV *) e->hv);
      e->hv = 0;
    }
}

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
               */
              static TEXT message;
              char *debug_str = print_element_debug (e->list[i], 1);
              text_init (&message);
              text_printf (&message,
                "BUG: build_perl_array oot %d: %s\n", i, debug_str);
              free (debug_str);
              fprintf (stderr, "%s", message.text);
              free (message.text);
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
                  /* NOTE This should not happen, all the elements are in-tree.
                   */
                  static TEXT message;
                  char *debug_str = print_element_debug (e->list[d], 1);
                  text_init (&message);
                  text_printf (&message,
                    "BUG: build_perl_directions oot %s: %s\n", key, debug_str);
                  free (debug_str);
                  fprintf (stderr, "%s", message.text);
                  free (message.text);
                  /* Out-of-tree element */
                  /* WARNING: This is possibly recursive. */
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
SV *
newSVpv_utf8 (const char *str, STRLEN len)
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
                  /* f->hv should not already exist the first time the tree
                     is built, but can already exist if the tree is rebuilt
              if (f->hv)
                {
                  static TEXT message;
                  char *debug_str = print_element_debug (e, 1);
                  text_init (&message);
                  text_printf (&message,
                        "element_to_perl_hash oot %s double in %s %p\n",
                               key, debug_str, f->hv);
                  free (debug_str);
                  fatal (message.text);
                  fprintf (stderr, message.text);
                }
                   */
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
              /* but can be reused when tree is rebuilt
              if (e->hv)
                fatal ("element_to_perl_hash source mark elt twice");
               */
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
static void
element_to_perl_hash (ELEMENT *e)
{
  SV *sv;

  dTHX;

   /*
  fprintf (stderr, "ETPH %p %s\n", e, print_element_debug (e, 0));
    */
  /* e->hv may already exist if there was an extra value elsewhere
     referring to e, or if the tree is rebuilt more than once. */
  if (!e->hv)
    {
      e->hv = newHV ();
    }
  else
    {
      /* reset for the case the element already exists, it is simpler than
         resetting every unset fields */
      hv_clear (e->hv);
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
      /* we do not transfer the hv ref to the perl av because we consider
         that contents.list[i]->hv still own a reference, which should only be
         released when the element is destroyed, by calling
         unregister_perl_tree_element */
          sv = newRV_inc ((SV *) e->contents.list[i]->hv);
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
              (e.type == MSG_error || e.type == MSG_document_error)
                                  ? newSVpv("error", strlen("error"))
                                  : newSVpv("warning", strlen("warning")),
            0);

  if (e.continuation)
    hv_store (hv, "continuation", strlen ("continuation"),
              newSViv (e.continuation), 0);

  if (e.type != MSG_document_error && e.type != MSG_document_warning)
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
build_document (size_t document_descriptor, int no_store)
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

    }

  hv_stash = gv_stashpv ("Texinfo::Document", GV_ADD);
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}


/*
 Return a non 0 status if pointers to perl elements from C elements are
 missing.
 NOTE that this cannot happen anymore as the hv are always set
 and never removed.
 */
static int
output_unit_to_perl_hash (OUTPUT_UNIT *output_unit)
{
  int i;
  SV *sv;
  int status = 0;
  HV *directions_hv;

  dTHX;

  /* output_unit->hv may already exist because of directions or if there was a
     first_in_page referring to output_unit, or because the output units
     list is being rebuilt */
  if (!output_unit->hv)
    output_unit->hv = newHV ();
  else
    hv_clear (output_unit->hv);

#define STORE(key) hv_store (output_unit->hv, key, strlen (key), sv, 0)
  sv = newSVpv (output_unit_type_names[output_unit->unit_type], 0);
  STORE("unit_type");

  /* setup an hash reference in any case */
  directions_hv = newHV ();
  sv = newRV_noinc ((SV *) directions_hv);
  STORE("directions");

  for (i = 0; i < RUD_type_FirstInFileNodeUp+1; i++)
    {
      if (output_unit->directions[i])
        {
          char *direction_name = relative_unit_direction_name[i];
          OUTPUT_UNIT *direction_unit = output_unit->directions[i];
          SV *unit_sv;
          /* should ony happen for reference to external nodes that have
             not yet been processed */
          if (!direction_unit->hv)
            {
              int direction_status;
              if (direction_unit->unit_type != OU_external_node_unit)
                fprintf (stderr, "BUG: not external node but no perl ref %s\n",
                                 output_unit_texi (direction_unit));
              direction_status = output_unit_to_perl_hash (direction_unit);
              status += direction_status;
            }
          unit_sv = newRV_inc ((SV *) direction_unit->hv);
          hv_store (directions_hv, direction_name, strlen (direction_name),
                    unit_sv, 0);
        }
    }

  if (output_unit->unit_command)
    {
      ELEMENT *command = output_unit->unit_command;
      if (!command->hv)
        {
          if (command->type == ET_special_unit_element)
            {
              SV *unit_sv;
              unit_sv = newRV_inc ((SV *) output_unit->hv);
              /* a virtual out of tree element, add it to perl */
              element_to_perl_hash (command);
              hv_store (command->hv, "associated_unit",
                        strlen ("associated_unit"), unit_sv, 0);
            }
        }

      if (command->hv)
        {
          sv = newRV_inc ((SV *) command->hv);
          STORE("unit_command");
        }
      else
       status++;
    }

  if (output_unit->associated_document_unit)
    {
      sv = newRV_inc ((SV *) output_unit->associated_document_unit->hv);
      STORE("associated_document_unit");
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

          if (!element_hv)
            {
              status++;
              continue;
            }

          sv = newRV_inc ((SV *) element_hv);

          av_push (av, sv);

          unit_sv = newRV_inc ((SV *) output_unit->hv);
          /* set the tree element associated_unit */
          /* TODO is it an issue if already set?
          hv_delete (element_hv, "associated_unit", strlen ("associated_unit"),
                     G_DISCARD);
           */
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

static int
fill_output_units (AV *av_output_units, OUTPUT_UNIT_LIST *output_units)
{
  SV *sv;
  int i;

  dTHX;

  for (i = 0; i < output_units->number; i++)
    {
      OUTPUT_UNIT *output_unit = output_units->list[i];
      int status = output_unit_to_perl_hash (output_unit);
      if (status)
        return 0;
      /* we do not transfer the hv ref to the perl av because we consider
         that output_unit->hv still own a reference, which should only be
         released when the output_unit is destroyed in C */
      sv = newRV_inc ((SV *) output_unit->hv);
      av_push (av_output_units, sv);
    }
  return 1;
}

SV *
build_output_units_list (size_t output_units_descriptor)
{
  int status;
  AV *av_output_units;
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  dTHX;

  if (!output_units || !output_units->number)
    return newSV(0);

  av_output_units = newAV ();

  status = fill_output_units (av_output_units, output_units);

  if (!status)
    return newSV(0);

  /* store in the first perl output unit of the list */
  hv_store (output_units->list[0]->hv, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv (output_units_descriptor), 0);

  return newRV_noinc ((SV *) av_output_units);
}

SV *
build_html_element_targets (HTML_TARGET_LIST *html_targets)
{
  HV *hv;
  int i;

  dTHX;

  hv = newHV ();

  if (!html_targets || html_targets->number <= 0)
    return newRV_noinc ((SV *) hv);

#define STORE(key, sv) hv_store (html_target_hv, key, strlen (key), sv, 0)
  for (i = 0; i < html_targets->number; i++)
    {
      HV *html_target_hv;
      HTML_TARGET *html_target = &html_targets->list[i];
      SV *target_sv = newSVpv_utf8 (html_target->target, 0);
      SV *element_sv;
      SV *html_target_sv;

      if (!html_target->element->hv)
        {
          fprintf (stderr, "BUG: No hv for target '%s'\n", html_target->target);
          return newSV(0);
        }

      element_sv = newRV_inc ((SV *) html_target->element->hv);

      html_target_hv = newHV ();
      html_target_sv = newRV_noinc ((SV *) html_target_hv);
      hv_store_ent (hv, element_sv, html_target_sv, 0);

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
    }
#undef STORE
  return newRV_noinc ((SV *) hv);
}

SV *
build_html_special_targets (HTML_TARGET_LIST **html_special_targets)
{
  HV *hv;
  SV *html_special_target_sv;

  dTHX;

  hv = newHV ();

  /* could be generalized if needed */

  HTML_TARGET_LIST *html_special_target = html_special_targets[ST_footnote_location];
  html_special_target_sv = build_html_element_targets (html_special_target);

  hv_store (hv, "footnote_location", strlen ("footnote_location"),
            html_special_target_sv, 0);

  return newRV_noinc ((SV *) hv);
}

SV *
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

  return newRV_noinc ((SV *) hv);
}

/* implements Texinfo::Report::add_formatted_message */
void
pass_converter_errors (ERROR_MESSAGE_LIST *error_messages,
                       HV *converter_hv)
{
  int i;
  SV **errors_warnings_sv;
  SV **error_nrs_sv;

  dTHX;

  if (!error_messages)
    {
      fprintf (stderr, "pass_converter_errors: NOTE: no error_messages\n");
      return;
    }

  if (!converter_hv)
    {
      fprintf (stderr, "pass_converter_errors: BUG: no perl converter\n");
      return;
    }

  errors_warnings_sv = hv_fetch (converter_hv, "errors_warnings",
                                      strlen ("errors_warnings"), 0);

  error_nrs_sv = hv_fetch (converter_hv, "error_nrs",
                                      strlen ("error_nrs"), 0);

  if (errors_warnings_sv && SvOK(*errors_warnings_sv))
    {
      AV *av = (AV *)SvRV (*errors_warnings_sv);
      int error_nrs = 0;
      if (error_nrs_sv)
        error_nrs = SvIV (*error_nrs_sv);

      for (i = 0; i < error_messages->number; i++)
        {
          ERROR_MESSAGE error_msg = error_messages->list[i];
          SV *sv = convert_error (error_msg);

          if (error_msg.type == MSG_error && !error_msg.continuation)
            error_nrs++;
          av_push (av, sv);
        }
      if (error_nrs)
        hv_store (converter_hv, "error_nrs",
                  strlen ("error_nrs"), newSViv (error_nrs), 0);
    }

  wipe_error_message_list (error_messages);
}

void
rebuild_output_units_list (SV *output_units_sv, size_t output_units_descriptor)
{
  AV *av_output_units;
  int status;

  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  dTHX;

  if (! SvOK (output_units_sv))
    {
      if (output_units && output_units->number)
        fprintf (stderr, "BUG: no input sv for %zu output units (%zu)",
                 output_units->number, output_units_descriptor);
      return;
    }

  av_output_units = (AV *) SvRV (output_units_sv);
  av_clear (av_output_units);

  /* TODO cannot associate output_units_descriptor. A problem? */
  if (!output_units || !output_units->number)
    return;

  status = fill_output_units (av_output_units, output_units);

  /* warn? */
  if (!status)
    return;

  /* store in the first perl output unit of the list */
  hv_store (output_units->list[0]->hv, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv (output_units_descriptor), 0);
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

SV *
build_html_global_units_directions (OUTPUT_UNIT **global_units_directions,
                       SPECIAL_UNIT_DIRECTION **special_units_direction_name)
{
  int i;
  SPECIAL_UNIT_DIRECTION **s;
  SPECIAL_UNIT_DIRECTION *special_unit_direction;
  HV *hv;

  dTHX;

  if (!global_units_directions)
    return newSV(0);

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

  for (s = special_units_direction_name; (special_unit_direction = *s) ; s++)
    {
      char *direction_name = special_unit_direction->direction;
      OUTPUT_UNIT *output_unit = special_unit_direction->output_unit;
      hv_store (hv, direction_name, strlen (direction_name),
                  newRV_inc ((SV *) output_unit->hv), 0);
    }

  return newRV_noinc ((SV *) hv);
}

SV *
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

  return newRV_noinc ((SV *) hv);
}

SV *
build_filenames (FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
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
          char *normalized_filename = output_unit_file->normalized_filename;
          SV *normalized_filename_sv = newSVpv_utf8 (normalized_filename, 0);

          hv_store_ent (hv, normalized_filename_sv,
                    newSVpv_utf8 (output_unit_file->filename, 0), 0);
        }
    }

  return newRV_noinc ((SV *) hv);
}

SV *
build_file_counters (FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
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

          hv_store_ent (hv, filename_sv, newSViv (output_unit_file->counter), 0);
        }
    }

  return newRV_noinc ((SV *) hv);
}

SV *
build_out_filepaths (FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
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
                        newSVpv_utf8 (output_unit_file->filepath, 0), 0);
        }
    }

  return newRV_noinc ((SV *) hv);
}

HV *
build_html_formatting_context (HTML_FORMATTING_CONTEXT *formatting_context)
{
  HV *hv;

  dTHX;

  hv = newHV ();

#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  STORE("context_name", newSVpv (formatting_context->context_name, 0));
#define STORE_INT(name) STORE(#name, newSViv (formatting_context->name))
  STORE_INT(preformatted_number);
  STORE_INT(paragraph_number);
  STORE_INT(space_protected);
  STORE_INT(no_break);
#undef STORE_INT

#define STORE_CTX(name) STORE(#name, newSViv (formatting_context->name##_ctx))
  STORE_CTX(upper_case);
#undef STORE_CTX

#undef STORE
  return hv;
}

HV *
build_html_document_context (HTML_DOCUMENT_CONTEXT *document_context)
{
  int i;
  HV *hv;
  AV *monospace_context_av;
  AV *composition_context_av;
  AV *block_commands_av;
  AV *formatting_context_av;
  AV *preformatted_classes_av;

  dTHX;

  hv = newHV ();
  monospace_context_av = newAV ();
  composition_context_av = newAV ();
  block_commands_av = newAV ();
  formatting_context_av = newAV ();
  preformatted_classes_av = newAV ();


#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  STORE ("context", newSVpv_utf8 (document_context->context, 0));

#define STORE_CTX(name) STORE(#name, newSViv (document_context->name##_ctx))
  STORE_CTX(string);
  STORE_CTX(raw);
  STORE_CTX(verbatim);
  STORE_CTX(math);
#undef STORE_CTX
  STORE ("document_global_context",
         newSVpv_utf8 (document_context->document_global_context, 0));

  for (i = 0; i < document_context->monospace_context.top; i++)
    {
      enum monospace_context context
        = document_context->monospace_context.stack[i];
      av_push (monospace_context_av, newSViv (context));
    }

  STORE ("monospace_context", newRV_noinc ((SV *) monospace_context_av));

  for (i = 0; i < document_context->composition_context.top; i++)
    {
      char *context_str = 0;
      COMMAND_OR_TYPE *context
        = &document_context->composition_context.stack[i];
      if (context->variety == CTV_type_type)
        context_str = element_type_names[context->type];
      else if (context->variety == CTV_type_command)
        context_str = builtin_command_data[context->cmd].cmdname;
      else
        context_str = "";
      av_push (composition_context_av, newSVpv (context_str, 0));
    }
  STORE ("composition_context", newRV_noinc ((SV *) composition_context_av));

  for (i = 0; i < document_context->block_commands.top; i++)
    {
      enum command_id cmd = document_context->block_commands.stack[i];
      char *context_str = builtin_command_data[cmd].cmdname;
      av_push (block_commands_av, newSVpv (context_str, 0));
    }
  STORE ("block_commands", newRV_noinc ((SV *) block_commands_av));

  for (i = 0; i < document_context->preformatted_classes.top; i++)
    {
      char *context_str = document_context->preformatted_classes.stack[i];
      av_push (preformatted_classes_av, newSVpv (context_str, 0));
    }
  STORE ("preformatted_classes", newRV_noinc ((SV *) preformatted_classes_av));

  for (i = 0; i < document_context->formatting_context.top; i++)
    {
      HTML_FORMATTING_CONTEXT *formatting_context
        = &document_context->formatting_context.stack[i];
      HV *context_hv = build_html_formatting_context (formatting_context);
      av_push (formatting_context_av, newRV_noinc ((SV *) context_hv));
    }
  STORE ("formatting_context", newRV_noinc ((SV *) formatting_context_av));

#undef STORE
  return hv;
}

/* there is no need to return anything. */
SV *
build_html_formatting_state (CONVERTER *converter)
{
  HV *hv;
  SV **document_context_sv;
  AV *document_context_av;
  SV **multiple_pass_sv;
  AV *multiple_pass_av;
  SV **files_information_sv;
  HV *files_information_hv;
  int i;

  dTHX;

  if (!converter->hv)
    return newSV (0);

  hv = converter->hv;

#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)
  STORE("document_global_context",
        newSViv (converter->document_global_context));

  STORE("ignore_notice",
        newSViv (converter->ignore_notice));

  if (!converter->current_root_command)
    STORE("current_root_command", newSV (0));
  else
    STORE("current_root_command",
       newRV_inc ((SV *) converter->current_root_command->hv));

  if (!converter->current_node)
    STORE("current_node", newSV (0));
  else
    STORE("current_node",
       newRV_inc ((SV *) converter->current_node->hv));

  if (!converter->current_output_unit)
    STORE("current_output_unit", newSV (0));
  else
    STORE("current_output_unit",
       newRV_inc ((SV *) converter->current_output_unit->hv));

  if (!converter->current_filename)
    STORE("current_filename", newSV (0));
  else
    STORE("current_filename", newSVpv_utf8 (converter->current_filename, 0));

  document_context_sv = hv_fetch (hv, "document_context",
                                  strlen ("document_context"), 0);

  if (!document_context_sv)
    {
      document_context_av = newAV ();
      STORE("document_context", newRV_noinc ((SV *) document_context_av));
    }
  else
    {
      document_context_av = (AV *) SvRV (*document_context_sv);
      av_clear (document_context_av);
    }

  for (i = 0; i < converter->html_document_context.top; i++)
    {
      HTML_DOCUMENT_CONTEXT *document_context
        = &converter->html_document_context.stack[i];
      HV *document_context_hv = build_html_document_context (document_context);
      av_push (document_context_av, newRV_noinc ((SV *) document_context_hv));
    }

  multiple_pass_sv = hv_fetch (hv, "multiple_pass",
                                  strlen ("multiple_pass"), 0);

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
      char *multiple_pass_str = converter->multiple_pass.stack[i];
      av_push (multiple_pass_av, newSVpv_utf8(multiple_pass_str, 0));
    }

  files_information_sv = hv_fetch (hv, "files_information",
                                  strlen ("files_information"), 0);

  if (!files_information_sv)
    {
      files_information_hv = newHV ();
      STORE("files_information", newRV_noinc ((SV *) files_information_hv));
    }
  else
    {
      /* TODO
      files_information_hv = (HV *) SvRV (*files_information_sv);
      hv_clear (files_information_av);
       */
    }


#undef STORE

  return newRV_noinc ((SV *) hv);
}

SV *
build_html_command_formatted_args (HTML_ARGS_FORMATTED *args_formatted)
{
  AV *av;
  int i;

  dTHX;

  if (!args_formatted)
    return newSV (0);

  av = newAV ();

  for (i = 0; i < args_formatted->number; i++)
    {
      HTML_ARG_FORMATTED *arg_formatted = &args_formatted->args[i];
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
