/* Copyright 2010-2025 Free Software Foundation, Inc.

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

/* NOTE we store in AV lists indexed as size_t.  AV max size seems to be
   the max of SSize_t, if it is < SIZE_MAX there could theoretically be
   overflows.  However, Perl documentation says sizeof(SSize_t) == sizeof(Size_t)
   and "Size_t ... is usually size_t".  In addition these are very big numbers.
   In Perl documentation there is no description of a constant that would
   give the max of SSize_t.

   We build index numbers, document, output units and converter descriptors
   indexed as size_t to Perl SV using newSViv ((IV)descriptor).  There
   could theoretically be and overflow of IV if PERL_QUAD_MAX < SIZE_MAX.
   (PERL_QUAD_MAX is the max size of IV in Perl).  On an Intel 64 bit
   GNU Linux, PERL_QUAD_MAX is half of SIZE_MAX.  However those are
   big numbers, while the Texinfo command numbers are quite small and other
   descriptor numbers should be very small so this should not be an issue
   in practice.

   We also get IV and cast to size_t when getting info from Perl, like
   descriptor = (size_t) SvIV (descriptor_sv).  In that case there is no
   reason to overflow.
 */

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stddef.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#include "command_ids.h"
#include "element_types.h"
#include "types_data.h"
#include "tree_types.h"
#include "global_commands_types.h"
#include "option_types.h"
/* for GLOBAL_INFO ERROR_MESSAGE CL_* */
#include "document_types.h"
/* CONVERTER sv_string_type CONVERTER_INITIALIZATION_INFO */
#include "converter_types.h"
/* non_perl_* */
#include "xs_utils.h"
/* fatal */
#include "base_utils.h"
/* for ai_key_names elt_info_names */
#include "tree.h"
/* for lookup_extra */
#include "extra.h"
/* for element_command_name */
#include "builtin_commands.h"
#include "hashmap.h"
/* for xasprintf get_encoding_conversion output_conversions
   direction_names expanded_formats_number output_unit_type_names
   informative_command_value get_global_document_command */
#include "utils.h"
/* find_option_string */
#include "customization_options.h"
/* for debugging */
#include "debug.h"
/* for clear_error_message_list */
#include "errors.h"
#include "convert_to_texinfo.h"
#include "document.h"
#include "output_unit.h"
/* for TEXT_OPTIONS */
#include "convert_to_text.h"
/* also button_function_type_string */
#include "get_perl_info.h"
#include "build_perl_info.h"

  /* NOTE This file includes the Perl headers, therefore we get the Perl
     redefinitions of functions, in particular for functions related to
     memory allocation, such as 'free' or 'malloc'.  In other files, the
     C library or Gnulib redefinition of those functions are used.  It is
     wrong to mix functions from Perl and C library plus Gnulib.  If memory
     is allocated with C library malloc, and then freed with Perl defined
     free (or vice versa), then an error can occur like "Free to wrong pool".
    https://lists.gnu.org/archive/html/bug-texinfo/2016-01/msg00016.html
   */

   /* Functions defined in files with C library plus Gnulib definition should
      therefore be used to allocate or free to match with the functions
      used to free or allocate in other files using C library plus Gnulib
      definitions.

      To be sure to use non Perl defined functions, constructors and wrappers
      must be used, from xs_utils.h:
       non_perl_free, non_perl_malloc, non_perl_strdup, non_perl_strndup,
       non_perl_xvasprintf, non_perl_xasprintf.

      This is often needed, when memory is allocated or free'd in
      'pure' C code (code that does not include Perl headers), as it is
      safer to assume that C library or Gnulib function definitions are
      always used in 'pure' C code.

      To be sure to use Perl defined functions in files that include
      both Gnulib and Perl headers, wrappers can be used, from
      build_perl_info.h:
       perl_only_free, perl_only_strdup, perl_only_strndup, perl_only_malloc.

      In November 2024, no file is compiled with both Perl and Gnulib
      headers as it lead to many errors on MS-Windows, therefore the
      perl_only_* wrappers are currently unused.

    */

/* wrappers to be sure to use Perl defined functions */
/* NB this function does not appear to be used currently. */
void
perl_only_free (void *ptr)
{
  dTHX;
  free (ptr);
}

/* NB this function does not appear to be used currently. */
void *
perl_only_malloc (size_t size)
{
  dTHX;
  return malloc (size);
}

/* Implement as we are not sure that Perl will define a version of this
   function. */
/* NB this function does not appear to be used currently. */
char *
perl_only_strdup (const char *s)
{
  size_t len = strlen (s);
  char *ret = perl_only_malloc (len+1);
  memcpy (ret, s, len+1);
  return ret;
}

/* Implement as we are not sure that Perl will define a version of this
   function. */
/* NB this function does not appear to be used currently. */
char *
perl_only_strndup (const char *s, size_t n)
{
  size_t len = strlen (s);
  if (len > n)
    len = n;

  char *ret = perl_only_malloc (len+1);
  memcpy (ret, s, len);
  ret[len] = '\0';
  return ret;
}

/* Increase both SV and the HV SV refers too.  Similar to newRV_inc regarding
   reference counting, but for the SV, not the HV.  Note that when this
   function is used, the returned SV is the same as the input SV, which means
   that assigning to the one, in Perl, also modifies the other.  In many cases
   we do not want that, and, newSVsv should be used instead to create a new
   reference, similar to newRV_*inc.  In general, there is one place where
   keeping the same reference is ok, but other references should be
   copied and not reused.
 */
SV *
SvREFHVCNT_inc (SV *sv)
{
  HV *hv;

  dTHX;

  hv = (HV *) SvRV (sv);
  SvREFCNT_inc ((SV *)hv);
  return SvREFCNT_inc (sv);
}


/* Build Texinfo tree data and Texinfo tree to Perl */

static HV *
new_element_perl_data (ELEMENT *e)
{
  HV *element_hv;
  HV *hv_stash;
  SV *element_sv;

  dTHX;

  element_hv = newHV ();
  hv_stash = gv_stashpv ("Texinfo::TreeElement", GV_ADD);
  /* retain a reference in C code */
  element_sv = newRV_inc ((SV *) element_hv);
  sv_bless (element_sv, hv_stash);

  e->sv = element_sv;

  return element_hv;
}

void element_to_perl_hash (ELEMENT *e, int avoid_recursion);

/* Return reference to Perl array built from e.  If any of
   the elements in E don't have 'sv' set, set it to an empty
   hash table, or create it if there is no parent element, indicating the
   element is not in the tree.
   Note that not having 'sv' set should be rare (actually never happen),
   as the contents children are processed before the extra
   information where build_perl_array is called.
 */
static SV *
build_perl_array (const ELEMENT_LIST *e_l, int avoid_recursion)
{
  SV *sv;
  AV *av;
  size_t i;

  dTHX;

  av = newAV ();
  sv = newRV_inc ((SV *) av);

  for (i = 0; i < e_l->number; i++)
    {
      if (!e_l->list[i]->sv)
        {
          if (e_l->list[i]->parent)
            {
              new_element_perl_data (e_l->list[i]);
            }
          else
            {
              /* NOTE should not be possible, all the elements in
                 extra_contents should be in-tree.  Checked in 2023.
               */
              static TEXT message;
              char *debug_str = print_element_debug (e_l->list[i], 1);
              text_init (&message);
              text_printf (&message,
                "BUG: build_perl_array oot %d: %s\n", i, debug_str);
              non_perl_free (debug_str);
              fprintf (stderr, "%s", message.text);
              non_perl_free (message.text);
              /* Out-of-tree element */
              /* WARNING: This is possibly recursive. */
              element_to_perl_hash (e_l->list[i], avoid_recursion);
            }
        }
      av_store (av, (SSize_t) i, newSVsv ((SV *) e_l->list[i]->sv));
    }
  return sv;
}

static SV *
build_perl_const_element_array (const CONST_ELEMENT_LIST *e_l, int avoid_recursion)
{
  SV *sv;
  AV *av;
  size_t i;

  dTHX;

  av = newAV ();
  sv = newRV_inc ((SV *) av);

  for (i = 0; i < e_l->number; i++)
    {
      if (!e_l->list[i]->sv)
        {
          ELEMENT *f = (ELEMENT *)e_l->list[i];
          if (f->parent)
            {
              new_element_perl_data (f);
            }
          else
            {
              /* NOTE should not be possible, all the elements in
                 extra_contents should be in-tree.  Checked in 2023.
               */
              static TEXT message;
              char *debug_str = print_element_debug (f, 1);
              text_init (&message);
              text_printf (&message,
                "BUG: build_perl_const_element_array oot %d: %s\n", i, debug_str);
              non_perl_free (debug_str);
              fprintf (stderr, "%s", message.text);
              non_perl_free (message.text);
              /* Out-of-tree element */
              /* WARNING: This is possibly recursive. */
              element_to_perl_hash (f, avoid_recursion);
            }
        }
      av_store (av, (SSize_t) i, newSVsv ((SV *) e_l->list[i]->sv));
    }
  return sv;
}

/* contents appears in other parts of the tree */
static void
build_perl_container (ELEMENT *e, int avoid_recursion)
{
  SV *sv;
  HV *element_hv;

  dTHX;

  if (!e->sv)
    {
      element_hv = new_element_perl_data (e);
    }
  else
    {
      element_hv = (HV *) SvRV ((SV *) e->sv);
      hv_clear (element_hv);
    }

  sv = build_perl_array (&e->e.c->contents, avoid_recursion);

  hv_store (element_hv, "contents", strlen ("contents"), sv, 0);
}

static SV *
build_perl_directions (const ELEMENT * const *e_l, int avoid_recursion)
{
  SV *sv;
  HV *hv;
  size_t d;

  dTHX;

  hv = newHV ();
  sv = newRV_inc ((SV *) hv);

  for (d = 0; d < directions_length; d++)
    {
      if (e_l[d])
        {
          const char *key = direction_names[d];
          const ELEMENT *e = e_l[d];
          if (!e->sv)
            {
              /* recast to a non const element, as we need to modify it */
              ELEMENT *f = (ELEMENT *)e;
              if (e->parent)
                {
                  new_element_perl_data (f);
                }
              else
                {
                  /* NOTE This should not happen, all the elements are in-tree.
                   */
                  static TEXT message;
                  char *debug_str = print_element_debug (e, 1);
                  text_init (&message);
                  text_printf (&message,
                    "BUG: build_perl_directions oot %s: %s\n", key, debug_str);
                  non_perl_free (debug_str);
                  fprintf (stderr, "%s", message.text);
                  non_perl_free (message.text);
                  /* Out-of-tree element */
                  /* WARNING: This is possibly recursive. */
                  element_to_perl_hash (f, avoid_recursion);
                }
            }
          hv_store (hv, key, strlen (key), newSVsv ((SV *) e->sv), 0);
        }
    }
  return sv;
}

static SV *
build_extra_misc_args (const STRING_LIST *l)
{
  size_t j;
  AV *av;

  dTHX;

  av = newAV ();
  av_unshift (av, l->number);

  /* A small array of strings. */
  for (j = 0; j < l->number; j++)
    {
      SV *sv = newSVpv_utf8 (l->list[j],
                             strlen (l->list[j]));
      av_store (av, j, sv);
    }
  return newRV_inc ((SV *)av);
}

static SV *
build_extra_index_entry (const INDEX_ENTRY_LOCATION *entry_loc)
{
  AV *av;
  SV *sv;

  dTHX;

  av = newAV ();

  av_unshift (av, 2);

  sv = newSVpv_utf8 (entry_loc->index_name,
                     strlen (entry_loc->index_name));
  av_store (av, 0, sv);
  sv = newSViv ((IV) entry_loc->number);
  av_store (av, 1, sv);
  return newRV_inc ((SV *)av);
}

static SV *
build_key_pair_info (const KEY_PAIR *k, int avoid_recursion)
{
  enum ai_key_name key;
  enum extra_type k_type;

  dTHX;

  key = k->key;
  k_type = associated_info_table[key].type;
  switch (k_type)
    {
    case extra_element:
      {
      /* For references to other parts of the tree, create the hash so
         we can point to it. */
      /* Note that this does not happen much, as the contents
         are often processed before the extra information. */
      const ELEMENT *f = k->k.const_element;
      if (!f->sv)
        {
      /* need to cast to remove const to add the Perl object reference */
          ELEMENT *e = (ELEMENT *)f;
          new_element_perl_data (e);
        }

      return newSVsv ((SV *)f->sv);
      break;
      }
    case extra_element_oot:
      {
      /*
         Can be used for complex subtrees or special
         out of tree elements, but must always be associated to only one
         element and must not refer to the tree through contents.
       */
          /* f->sv should not already exist the first time the tree
             is built, but can already exist if the tree is rebuilt
      if (f->sv)
        {
          static TEXT message;
          char *debug_str = print_element_debug (e, 1);
          text_init (&message);
          text_printf (&message,
                "element_to_perl_hash oot %s double in %s %p\n",
                       key, debug_str, f->sv);
          non_perl_free (debug_str);
          fatal (message.text);
          fprintf (stderr, message.text);
        }
           */
      ELEMENT *f = k->k.element;
      if (!f->sv || !avoid_recursion)
        element_to_perl_hash (f, avoid_recursion);

      return newSVsv ((SV *)f->sv);
      break;
      }
    case extra_container:
      {
      ELEMENT *f = k->k.element;
      build_perl_container (f, avoid_recursion);

      return newSVsv ((SV *)f->sv);
      break;
      }
    case extra_contents:
      {
      const CONST_ELEMENT_LIST *l = k->k.const_list;
      if (l && l->number)
        return build_perl_const_element_array (l, avoid_recursion);
      break;
      }
    case extra_directions:
      {
      return build_perl_directions (k->k.directions, avoid_recursion);
      break;
      }
    case extra_string:
      { /* A simple string. */
      return newSVpv_utf8 (k->k.string, 0);
      break;
      }
    case extra_integer:
      { /* A simple integer. */
      return newSViv (k->k.integer);
      break;
      }
    case extra_misc_args:
      {
      return build_extra_misc_args (k->k.strings_list);
      break;
      }
    case extra_index_entry:
      {
      return build_extra_index_entry (k->k.index_entry);
      break;
      }
    default:
      fatal ("build_key_pair_info: unknown extra type");
      break;
    }
  return 0;
}

/* In this function, elements handles only are registerd, with
   register_element_handle_in_sv */
SV *
build_element_attribute (const ELEMENT *element, const char *attribute,
                         DOCUMENT *document)
{
  enum ai_key_name key;

  dTHX;

  key = find_associated_info_key (attribute);

  if (key)
    {
      enum extra_type k_type = associated_info_table[key].type;

      switch (k_type)
        {
        case extra_string:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return newSVpv_utf8 (k->k.string, 0);
          break;
          }
        case extra_integer:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return newSViv (k->k.integer);
          break;
          }
        case extra_flag:
          {
          if (element->flags & associated_info_table[key].data)
            return newSViv (1);
          break;
          }
        case extra_element_info:
          {
          int idx = associated_info_table[key].data;
          if (idx < type_data[element->type].elt_info_number
              && element->elt_info[idx])
            {
              ELEMENT *info_element = element->elt_info[idx];
              register_element_handle_in_sv (info_element, document);
              return newSVsv ((SV *)info_element->sv);
            }
          break;
          }
        case extra_misc_args:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return build_extra_misc_args (k->k.strings_list);
          break;
          }
        case extra_index_entry:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return build_extra_index_entry (k->k.index_entry);
          break;
          }
        case extra_element_oot:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            {
              ELEMENT *oot_element = k->k.element;
              register_element_handle_in_sv (oot_element, document);
              return newSVsv ((SV *)oot_element->sv);
            }
          break;
          }
        case extra_string_info:
          {
          int idx = associated_info_table[key].data;
          switch (key)
            {
            case AI_key_command_name:
              if ((element->type == ET_index_entry_command
                   || element->type == ET_definfoenclose_command
                   || type_data[element->type].flags & TF_macro_call)
                  && element->e.c->string_info[idx])
                return newSVpv_utf8 (element->e.c->string_info[idx], 0);
              break;
            case AI_key_arg_line:
              if (element->type == ET_lineraw_command
                  && element->e.c->string_info[idx])
                return newSVpv_utf8 (element->e.c->string_info[idx], 0);
              break;
            case AI_key_delimiter:
              if (element->e.c->cmd == CM_verb
                  && element->e.c->string_info[idx])
                return newSVpv_utf8 (element->e.c->string_info[idx], 0);
              break;
            case AI_key_alias_of:
              if ((element->e.c->cmd
                   || type_data[element->type].flags & TF_macro_call)
                  && element->e.c->string_info[idx])
                return newSVpv_utf8 (element->e.c->string_info[idx], 0);
              break;
            default:
              break;
            }
          break;
          }
        default:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return build_key_pair_info (k, 0);
          break;
          }
        }
    }

  return 0;
}

static void
build_associated_info (HV *extra, const ASSOCIATED_INFO *a,
                       int avoid_recursion, int *nr_info)
{
  dTHX;

  if (a->info_number > 0)
    {
      size_t i;

      for (i = 0; i < a->info_number; i++)
        {
          const KEY_PAIR *k = &a->info[i];
          enum ai_key_name key = k->key;
          enum extra_type k_type = associated_info_table[key].type;
          const char *key_name;
          SV *sv;

          if (k_type == extra_none)
            continue;

          key_name = associated_info_table[key].name;

          (*nr_info)++;

          sv = build_key_pair_info (k, avoid_recursion);
          if (sv)
            hv_store (extra, key_name, strlen (key_name), sv, 0);
        }
    }
}

static void
store_additional_info (const ELEMENT *e, const ASSOCIATED_INFO *a,
                       const char *key, int avoid_recursion, HV **info_hv)
{
  HV *hv;
  int nr_info = 0;

  dTHX;

  if (*info_hv == 0)
    /* Use sv_2mortal so that reference count is decremented if
           the hash is not saved. */
    hv = (HV *) sv_2mortal ((SV *)newHV ());
  else
    hv = *info_hv;

  build_associated_info (hv, a, avoid_recursion, &nr_info);

  if (*info_hv == 0 && nr_info > 0)
    {
      HV *element_hv = (HV *) SvRV ((SV*) e->sv);
      hv_store (element_hv, key, strlen (key),
                newRV_inc ((SV *)hv), 0);
    }
}

static void
store_source_mark_list (const ELEMENT *e)
{
  dTHX;

  if (e->source_mark_list)
    {
      AV *av;
      SV *sv;
      size_t i;
      HV *element_hv = (HV *) SvRV ((SV*) e->sv);

      if (e->source_mark_list->number == 0)
        {
          fprintf (stderr, "BUG: store_source_mark_list: 0 source marks but "
                           "source_mark_list\n");
          return;
        }

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      hv_store (element_hv, "source_marks", strlen ("source_marks"), sv, 0);

      for (i = 0; i < e->source_mark_list->number; i++)
        {
          HV *source_mark;
          SV *sv;
          const SOURCE_MARK *s_mark = e->source_mark_list->list[i];
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
              ELEMENT *s_m_e = s_mark->element;
              /* should only be referred to in one source mark */
              /* but can be reused when tree is rebuilt
              if (e->sv)
                fatal ("element_to_perl_hash source mark elt twice");
               */
              element_to_perl_hash (s_m_e, 0);
              STORE("element", newSVsv ((SV *)s_m_e->sv));
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

          switch (s_mark->type)
            {
#define sm_type(X) \
              case SM_type_ ## X: \
              sv = newSVpv_utf8 (#X, 0);\
              STORE("sourcemark_type", sv); \
              break;

            SM_TYPES_LIST
#undef sm_type

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
static U32 HSH_text = 0;
static U32 HSH_extra = 0;
static U32 HSH_info = 0;
static U32 HSH_source_info = 0;
static U32 HSH_file_name = 0;
static U32 HSH_line_nr = 0;
static U32 HSH_macro = 0;


static void
setup_info_hv (ELEMENT *e, HV **info_hv)
{
  dTHX;

  if (*info_hv == 0)
    {
      HV *element_hv = (HV *) SvRV ((SV*) e->sv);
      *info_hv = (HV *) newHV ();
      hv_store (element_hv, "info", strlen ("info"),
                newRV_inc ((SV *)*info_hv), HSH_info);
    }
}

static void
store_info_string (ELEMENT *e, const char *string,
                   const char *key, HV **info_hv)
{
  dTHX;

  if (!string)
    return;

  setup_info_hv (e, info_hv);
  hv_store (*info_hv, key, strlen (key),
            newSVpv_utf8 (string, strlen (string)), 0);
}

static void
store_info_integer (ELEMENT *e, int value,
                     const char *key, HV **info_hv)
{
  dTHX;

  setup_info_hv (e, info_hv);
  hv_store (*info_hv, key, strlen (key), newSViv (value), 0);
}


static void
store_extra_flag (ELEMENT *e, const char *key, HV **extra_hv)
{
  dTHX;

  if (*extra_hv == 0)
    {
      HV *element_hv = (HV *) SvRV ((SV*) e->sv);
      *extra_hv = (HV *) newHV ();
      hv_store (element_hv, "extra", strlen ("extra"),
                newRV_inc ((SV *)*extra_hv), HSH_extra);
    }
  hv_store (*extra_hv, key, strlen (key), newSViv (1), 0);
}

void
build_source_info_hash (const SOURCE_INFO *source_info, HV *hv)
{
#define STORE(key, sv, hsh) hv_store (hv, key, strlen (key), sv, hsh)
  dTHX;

  if (source_info->file_name)
    {
      STORE("file_name", newSVpv (source_info->file_name, 0),
            HSH_file_name);
    }

  if (source_info->line_nr)
    {
      STORE("line_nr", newSViv (source_info->line_nr), HSH_line_nr);
    }

  if (source_info->macro)
    {
      STORE("macro", newSVpv_utf8 (source_info->macro, 0), HSH_macro);
    }
#undef STORE
}


/* Set E->sv and 'hv' on E's descendants.  e->parent->sv is assumed
   to already exist. */
/* If AVOID_RECURSION is set, recurse in children elements only if
   hv is not set */
void
element_to_perl_hash (ELEMENT *e, int avoid_recursion)
{
  SV *sv;
  HV *info_hv = 0;
  HV *extra_hv = 0;
  HV *element_hv;

  dTHX;

   /*
  fprintf (stderr, "ETPH %p %s\n", e, print_element_debug (e, 0));
    */
  /* e->sv may already exist if there was an extra value elsewhere
     referring to e, or if the tree is rebuilt more than once. */
  if (!e->sv)
    {
      element_hv = new_element_perl_data (e);
    }
  else
    {
      /* reset for the case the element already exists, it is simpler than
         resetting every unset fields */
      element_hv = (HV *) SvRV ((SV *) e->sv);
      hv_clear (element_hv);
    }

  if (!hashes_ready)
    {
      hashes_ready = 1;
      PERL_HASH(HSH_parent, "parent", strlen ("parent"));
      PERL_HASH(HSH_type, "type", strlen ("type"));
      PERL_HASH(HSH_cmdname, "cmdname", strlen ("cmdname"));
      PERL_HASH(HSH_contents, "contents", strlen ("contents"));
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
      if (!e->parent->sv)
        {
          static TEXT message;
          char *debug_str = print_element_debug (e, 1);
          text_init (&message);
          text_printf (&message, "parent %p sv not set in %s '%s'\n",
                            e->parent, debug_str, convert_to_texinfo (e));
          fatal (message.text);
          non_perl_free (debug_str);
        }
      /* copy the SV instead of simply reusing it, otherwise the changes
         to the corresponding reference in Perl will affect all the
         references.  See:
       https://lists.gnu.org/archive/html/bug-texinfo/2025-06/msg00018.html
       */
      sv = newSVsv ((SV *) e->parent->sv);
      hv_store (element_hv, "parent", strlen ("parent"), sv, HSH_parent);
    }

  store_source_mark_list (e);

  if (e->flags & EF_inserted)
    store_info_integer (e, 1, "inserted", &info_hv);

  if (type_data[e->type].flags & TF_text)
    {
      if (e->type != ET_normal_text)
        {
          sv = newSVpv (type_data[e->type].name, 0);
          hv_store (element_hv, "type", strlen ("type"), sv, HSH_type);
        }
      sv = newSVpv_utf8 (e->e.text->text, e->e.text->end);
      hv_store (element_hv, "text", strlen ("text"), sv, HSH_text);
      return;
    }

  /* non-text elements */

  if (e->type
      && !(type_data[e->type].flags & TF_c_only))
    {
      sv = newSVpv (type_data[e->type].name, 0);
      hv_store (element_hv, "type", strlen ("type"), sv, HSH_type);
    }


#define store_flag(flag) \
  if (e->flags & EF_##flag) \
    store_extra_flag (e, #flag, &extra_hv); \

  /* node */
  store_flag(isindex)
  /* node, anchor, float */
  store_flag(is_target)
  /* def_line for block/line for @def*x */
  store_flag(omit_def_name_space)
  /* @def*x */
  store_flag(not_after_command)
  /* @*table */
  store_flag(command_as_argument_kbd_code)
  store_flag(invalid_syntax)
  /* kbd */
  store_flag(code)
  /* ET_paragraph */
  store_flag(indent)
  /* ET_paragraph */
  store_flag(noindent)

#undef store_flag

  /* process cmd and info_string array */
  if (e->e.c->cmd)
    {
      /* Note we could optimize the call to newSVpv here and
         elsewhere by passing an appropriate second argument. */
      sv = newSVpv (element_command_name (e), 0);
      hv_store (element_hv, "cmdname", strlen ("cmdname"), sv, HSH_cmdname);

      store_info_string (e, e->e.c->string_info[sit_alias_of],
                         "alias_of", &info_hv);

      if (e->type == ET_index_entry_command
          || e->type == ET_definfoenclose_command)
        {
          store_info_string (e, e->e.c->string_info[sit_command_name],
                            "command_name", &info_hv);
        }
      else if (e->type == ET_lineraw_command)
        {
          store_info_string (e, e->e.c->string_info[sit_arg_line],
                            "arg_line", &info_hv);
        } /* verb is a brace command type and so cannot be confused
             with the preceding types */
      else if (e->e.c->cmd == CM_verb && e->e.c->contents.number > 0)
        store_info_string (e, e->e.c->string_info[sit_delimiter],
                           "delimiter", &info_hv);
    }
  else if (type_data[e->type].flags & TF_macro_call)
    {
      store_info_string (e, e->e.c->string_info[sit_alias_of],
                         "alias_of", &info_hv);
      store_info_string (e, e->e.c->string_info[sit_command_name],
                         "command_name", &info_hv);
    }

  /* process elt_info array */
  if (type_data[e->type].elt_info_number > 0)
    {
      int i;
      for (i = 0; i < type_data[e->type].elt_info_number; i++)
        {
          ELEMENT *info_element = e->elt_info[i];
          if (info_element)
            {
              if (!info_element->sv || !avoid_recursion)
                element_to_perl_hash (info_element, avoid_recursion);

              setup_info_hv (e, &info_hv);

              hv_store (info_hv, elt_info_names[i],
                        strlen (elt_info_names[i]),
                        newSVsv ((SV *)info_element->sv), 0);
           }
       }
    }

  if (e->e.c->contents.number > 0)
    {
      AV *av;
      size_t i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      av_unshift (av, e->e.c->contents.number);

      hv_store (element_hv, "contents", strlen ("contents"), sv, HSH_contents);
      for (i = 0; i < e->e.c->contents.number; i++)
        {
          ELEMENT *child = e->e.c->contents.list[i];
          if (!child->sv || !avoid_recursion)
            element_to_perl_hash (child, avoid_recursion);
      /* we do not transfer the sv ref to the perl av because we consider
         that contents.list[i]->sv still own a reference, which should only be
         released when the element is destroyed, by calling
         unregister_perl_tree_element */
          sv = SvREFHVCNT_inc ((SV *) child->sv);
          av_store (av, i, sv);
        }
    }

  store_additional_info (e, &e->e.c->extra_info, "extra",
                         avoid_recursion, &extra_hv);

  if (e->e.c->associated_unit)
    {
      /* output_unit_to_perl_hash uses the unit_contents elements hv,
         so we may want to setup the tree hv before building the output
         units.  In that case, the output unit hv is not ready, so here
         we do not error out if the hv is not set.
          */
      if (e->e.c->associated_unit->hv)
        {
          hv_store (element_hv, "associated_unit", strlen ("associated_unit"),
                    newRV_inc ((SV *) e->e.c->associated_unit->hv), 0);
        }
    }

  if (e->e.c->source_info.line_nr)
    {
      const SOURCE_INFO *source_info = &e->e.c->source_info;
      HV *hv = newHV ();
      build_source_info_hash (source_info, hv);
      hv_store (element_hv, "source_info", strlen ("source_info"),
                newRV_noinc ((SV *)hv), HSH_source_info);
    }
}

SV *
build_texinfo_tree (ELEMENT *root, int avoid_recursion)
{
  /* should not happen because caller should make sure to call with a tree */
  if (! root)
    return 0;
  /*
  fprintf (stderr, "BTT ------------------------------------------------\n");
   */
  if (!root->sv || !avoid_recursion)
    element_to_perl_hash (root, avoid_recursion);
  return root->sv;
}

void
build_tree_to_build (ELEMENT_LIST *tree_to_build)
{
  if (tree_to_build->number > 0)
    {
      size_t i;
      for (i = 0; i < tree_to_build->number; i++)
        {
          build_texinfo_tree (tree_to_build->list[i], 1);
        }
      tree_to_build->number = 0;
    }
}



/* build often used C data to Perl */

AV *
build_string_list (const STRING_LIST *strings_list, enum sv_string_type type)
{
  AV *av;
  size_t i;

  dTHX;

  av = newAV ();

  for (i = 0; i < strings_list->number; i++)
    {
      const char *value = strings_list->list[i];
      if (!value)
        av_push (av, newSV (0));
      else if (type == svt_char)
        av_push (av, newSVpv_utf8 (value, 0));
      else
        av_push (av, newSVpv_byte (value, 0));
    }
  return av;
}

/* currently unused */
AV *
build_elements_list (const CONST_ELEMENT_LIST *list)
{
  AV *list_av;
  SV *sv;
  size_t i;

  dTHX;

  list_av = newAV ();

  av_unshift (list_av, list->number);

  for (i = 0; i < list->number; i++)
    {
      /* newSVsv could also be used here, depending on why
         this function is called */
      sv = SvREFHVCNT_inc (list->list[i]->sv);
      av_store (list_av, i, sv);
    }

  return list_av;
}

#define STORE_RELS_INFO_ELEMENT(keyname) \
       if (relations->keyname) \
        { \
          sv = newSVsv ((SV *) relations->keyname->sv); \
          hv_store (relations_hv, #keyname, \
                    strlen (#keyname), sv, 0); \
        }

#define STORE_RELS_INFO_SECTION_RELATIONS(keyname) \
       if (relations->keyname) \
        { \
          if (!relations->keyname->hv) \
            { \
              SECTION_RELATIONS *section = (SECTION_RELATIONS *) \
                relations->keyname; \
              section->hv = newHV (); \
            } \
          sv = newRV_inc ((SV *) relations->keyname->hv); \
          hv_store (relations_hv, #keyname, \
                    strlen (#keyname), sv, 0); \
        }

#define STORE_RELS_INFO_NODE_RELATIONS(keyname) \
       if (relations->keyname) \
        { \
          if (!relations->keyname->hv) \
            { \
              NODE_RELATIONS *node = (NODE_RELATIONS *) \
                relations->keyname; \
              node->hv = newHV (); \
            } \
          sv = newRV_inc ((SV *) relations->keyname->hv); \
          hv_store (relations_hv, #keyname, \
                    strlen (#keyname), sv, 0); \
        }

static void
build_node_relations (NODE_RELATIONS *relations)
{
  HV *relations_hv;
  SV *sv;

  dTHX;

  if (!relations->hv)
    {
      relations->hv = newHV ();
    }

  relations_hv = relations->hv;

  sv = newSVsv ((SV *) relations->element->sv);
  hv_store (relations_hv, "element", strlen ("element"), sv, 0);
  STORE_RELS_INFO_SECTION_RELATIONS(associated_section)
  STORE_RELS_INFO_ELEMENT(associated_title_command)
  STORE_RELS_INFO_SECTION_RELATIONS(node_preceding_part)
  STORE_RELS_INFO_ELEMENT(node_description)
  STORE_RELS_INFO_ELEMENT(node_long_description)
  if (relations->menus)
    {
      sv = build_perl_const_element_array (relations->menus, 0);
      hv_store (relations_hv, "menus", strlen ("menus"), sv, 0);
    }
  if (relations->menu_directions)
    {
      sv = build_perl_directions (relations->menu_directions, 0);
      hv_store (relations_hv, "menu_directions",
                strlen ("menu_directions"), sv, 0);
    }
  if (relations->node_directions)
    {
      sv = build_perl_directions (relations->node_directions, 0);
      hv_store (relations_hv, "node_directions",
                strlen ("node_directions"), sv, 0);
    }
}

AV *
build_node_relations_list (const NODE_RELATIONS_LIST *list)
{
  AV *list_av;
  size_t i;

  dTHX;

  list_av = newAV ();

  av_unshift (list_av, list->number);

  for (i = 0; i < list->number; i++)
    {
      NODE_RELATIONS *relations = list->list[i];
      build_node_relations (relations);
      /* In case the HV was just created, keep the reference created by
         newHV instead of transferring it to the list_av, considering
         that it is associated to the C code */
      av_store (list_av, i, newRV_inc ((SV *) relations->hv));
    }

  return list_av;
}

static SV *
build_perl_section_directions (const SECTION_RELATIONS * const *s_d)
{
  SV *sv;
  HV *hv;
  size_t d;

  dTHX;

  hv = newHV ();
  sv = newRV_inc ((SV *) hv);

  for (d = 0; d < directions_length; d++)
    {
      if (s_d[d])
        {
          const char *key = direction_names[d];

          if (!s_d[d]->hv)
            {
              /* cast to modify */
              SECTION_RELATIONS *relations = (SECTION_RELATIONS *)s_d[d];
              relations->hv = newHV ();
            }
          hv_store (hv, key, strlen (key),
            newRV_inc ((SV *) s_d[d]->hv), 0);
        }
    }
  return sv;
}

static SV *
build_perl_section_relations_array (const SECTION_RELATIONS_LIST *list)
{
  SV *sv;
  AV *av;
  size_t i;

  dTHX;

  av = newAV ();
  sv = newRV_inc ((SV *) av);

  for (i = 0; i < list->number; i++)
    {
      SECTION_RELATIONS *relations = list->list[i];
      if (!relations->hv)
        relations->hv = newHV ();
      av_store (av, (SSize_t) i, newRV_inc ((SV *) relations->hv));
    }
  return sv;
}

static void
build_section_relations (SECTION_RELATIONS *relations)
{
  HV *relations_hv;
  SV *sv;

  dTHX;

  if (!relations->hv)
    {
      relations->hv = newHV ();
    }

  relations_hv = relations->hv;

  sv = newSVsv ((SV *) relations->element->sv);
  hv_store (relations_hv, "element", strlen ("element"), sv, 0);
  STORE_RELS_INFO_NODE_RELATIONS(associated_node)
  STORE_RELS_INFO_NODE_RELATIONS(associated_anchor_command)
  STORE_RELS_INFO_SECTION_RELATIONS(associated_part)
  STORE_RELS_INFO_SECTION_RELATIONS(part_associated_section)
  STORE_RELS_INFO_SECTION_RELATIONS(part_following_node)
  if (relations->section_directions)
    {
      sv = build_perl_section_directions (relations->section_directions);
      hv_store (relations_hv, "section_directions",
                strlen ("section_directions"), sv, 0);
    }
  if (relations->toplevel_directions)
    {
      sv = build_perl_section_directions (relations->toplevel_directions);
      hv_store (relations_hv, "toplevel_directions",
                strlen ("toplevel_directions"), sv, 0);
    }
  if (relations->section_childs)
    {
      sv = build_perl_section_relations_array (relations->section_childs);
      hv_store (relations_hv, "section_childs",
                strlen ("section_childs"), sv, 0);
    }
}

AV *
build_section_relations_list (const SECTION_RELATIONS_LIST *list)
{
  AV *list_av;
  size_t i;

  dTHX;

  list_av = newAV ();

  av_unshift (list_av, list->number);

  for (i = 0; i < list->number; i++)
    {
      SECTION_RELATIONS *relations = list->list[i];
      build_section_relations (relations);
      /* In case the HV was just created, keep the reference created by
         newHV instead of transferring it to the list_av, considering
         that it is associated to the C code */
      av_store (list_av, i, newRV_inc ((SV *) relations->hv));
    }

  return list_av;
}

AV *
build_heading_relations_list (const HEADING_RELATIONS_LIST *list)
{
  AV *list_av;
  SV *sv;
  size_t i;

  dTHX;

  list_av = newAV ();

  av_unshift (list_av, list->number);

  for (i = 0; i < list->number; i++)
    {
      HEADING_RELATIONS *relations = list->list[i];
      HV *relations_hv;
      if (!relations->hv)
        relations->hv = newHV ();
      relations_hv = relations->hv;

      sv = newSVsv ((SV *) relations->element->sv);
      hv_store (relations_hv, "element", strlen ("element"), sv, 0);
      STORE_RELS_INFO_NODE_RELATIONS(associated_anchor_command)
      av_store (list_av, i, newRV_inc ((SV *) relations_hv));
    }

  return list_av;
}

#undef STORE_RELS_INFO_ELEMENT

/* currently unused */
AV *
build_integer_stack (const INTEGER_STACK *integer_stack)
{
  AV *av;
  size_t i;

  dTHX;

  av = newAV ();

  for (i = 0; i < integer_stack->top; i++)
    {
      int value = integer_stack->stack[i];
      av_push (av, newSViv (value));
    }
  return av;
}



/* build error messages data to Perl, for Parser, Document and Converters */

/* build perl already 'formatted' message, same as the output of
   Texinfo::Report::format*message */
static SV *
convert_error (const ERROR_MESSAGE e)
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
                                  ? newSVpv ("error", strlen ("error"))
                                  : newSVpv ("warning", strlen ("warning")),
            0);

  if (e.continuation)
    hv_store (hv, "continuation", strlen ("continuation"),
              newSViv (e.continuation), 0);

  if (e.type != MSG_document_error && e.type != MSG_document_warning)
    build_source_info_hash (&e.source_info, hv);

  return newRV_noinc ((SV *) hv);
}

/* Errors */
AV *
build_errors (const ERROR_MESSAGE *error_list, size_t error_number)
{
  AV *av;
  size_t i;

  dTHX;

  av = newAV ();

  for (i = 0; i < error_number; i++)
    {
      SV *sv = convert_error (error_list[i]);
      av_push (av, sv);
    }

  return av;
}

/* add C messages to a Texinfo::Report object, like
   Texinfo::Report::add_formatted_message does.
   NOTE probably not useful for converters as errors need to be passed
   explicitely both from Perl and XS and are added at that point.

   Returns $report->{'errors_warnings'} in ERRORS_WARNINGS_OUT and
   $report->{'error_nrs'} in ERRORS_NRS_OUT, even if ERROR_MESSAGES is
   0, to avoid the need to fetch them from report_hv if calling code
   is interested in those SV.
 */
static void
add_formatted_error_messages (const ERROR_MESSAGE_LIST *error_messages,
                              HV *report_hv, SV **errors_warnings_out,
                              SV **error_nrs_out)
{
  SV **errors_warnings_sv;
  SV **error_nrs_sv;
  size_t i;

  dTHX;

  *errors_warnings_out = 0;
  *error_nrs_out = 0;

  errors_warnings_sv = hv_fetch (report_hv, "errors_warnings",
                                 strlen ("errors_warnings"), 0);

  error_nrs_sv = hv_fetch (report_hv, "error_nrs",
                                      strlen ("error_nrs"), 0);

  if (errors_warnings_sv && SvOK (*errors_warnings_sv))
    {
      int error_nrs = 0;
      /* initialize number of errors from the existing errors in Perl */
      if (error_nrs_sv && SvOK (*error_nrs_sv))
        {
          error_nrs = SvIV (*error_nrs_sv);
          *error_nrs_out = *error_nrs_sv;
        }
      *errors_warnings_out = *errors_warnings_sv;

      if (!error_messages)
        {
          /* See the comment before pass_errors_to_registrar, this probably
             cannot happen.  We do not warn here, there should already
             be other warnings as it means that no XS document was found.
           */
          return;
        }
      else
        {
          /* add errors from error_messages */
          AV *av = (AV *)SvRV (*errors_warnings_sv);

          for (i = 0; i < error_messages->number; i++)
            {
              const ERROR_MESSAGE error_msg = error_messages->list[i];
              SV *sv = convert_error (error_msg);

              av_push (av, sv);
            }

          error_nrs += error_messages->error_nrs;

          if (error_nrs)
            {
              if (error_nrs_sv && SvOK (*error_nrs_sv))
                {
                  sv_setiv (*error_nrs_sv, error_nrs);
                }
              else
                {
                  SV *new_error_nrs_sv = newSViv (error_nrs);
                  hv_store (report_hv, "error_nrs",
                       strlen ("error_nrs"), new_error_nrs_sv, 0);
                  *error_nrs_out = new_error_nrs_sv;
                }
            }
        }
    }
  else
    {
      /* warn if it does not looks like a Texinfo::Report object, as
         it is likely that the error messages are going to disappear */
      fprintf (stderr, "BUG? no 'errors_warnings'. Not a Perl Texinfo::Report?\n");
    }
}

/* ERROR_MESSAGES could be 0, in that case the function is used to get
   the perl references but they are not modified.
   Error messages set to 0, however, cannot happen in practice, as it cannot
   happen when called through pass_document_parser_errors_to_registrar for
   parser errors, and for document errors it would mean no XS document found,
   which cannot happen right now and would probably trigger many warnings.
 */
SV *
pass_errors_to_registrar (const ERROR_MESSAGE_LIST *error_messages,
                          SV *object_sv,
                          SV **errors_warnings_out, SV **error_nrs_out)
{
  HV *object_hv;
  SV **registrar_sv;
  const char *registrar_key = "registrar";

  dTHX;

  object_hv = (HV *) SvRV (object_sv);

  registrar_sv = hv_fetch (object_hv, registrar_key,
                           strlen (registrar_key), 0);
  /* A registrar is systematically added to document by parsers, so the
     condition should always be true.  errors_warnings_out
     should always be set and it is a good thing because
     errors_warnings_out is not supposed to be undef */
  if (registrar_sv && SvOK (*registrar_sv))
    {
      HV *report_hv = (HV *) SvRV (*registrar_sv);
      add_formatted_error_messages (error_messages, report_hv,
                                    errors_warnings_out, error_nrs_out);
      return newRV_inc ((SV *) report_hv);
    }
  *errors_warnings_out = 0;
  *error_nrs_out = 0;
  return newSV (0);
}

/* same as calling Texinfo::Report::new() */
static SV *
new_texinfo_report (void)
{
  HV *hv_stash;
  HV *hv;
  SV *sv;
  AV *errors_warnings;

  dTHX;

  hv = newHV ();

  hv_store (hv, "error_nrs", strlen ("error_nrs"), newSViv (0), 0);

  errors_warnings = newAV ();
  hv_store (hv, "errors_warnings", strlen ("errors_warnings"),
            newRV_noinc ((SV *) errors_warnings), 0);

  hv_stash = gv_stashpv ("Texinfo::Report", GV_ADD);
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}

void
pass_document_parser_errors_to_registrar (DOCUMENT *document,
                                          SV *parser_sv)
{
  SV *registrar_sv;
  SV *errors_warnings_sv = 0;
  SV *error_nrs_sv = 0;
  HV *parser_hv;
  SV **parser_registrar_sv;

  dTHX;

  parser_hv = (HV *) SvRV (parser_sv);

  /* This cannot happen, the function is called on a document that
     was just registered
  if (!document)
    return;
   */

  /* Add error registrar to Parser if needed */
  parser_registrar_sv = hv_fetch (parser_hv, "registrar",
                                  strlen ("registrar"), 0);
  if (parser_registrar_sv)
    {
      registrar_sv = *parser_registrar_sv;
    }
  else
    {
      registrar_sv = new_texinfo_report ();
      SvREFCNT_inc (registrar_sv);
      hv_store (parser_hv, "registrar", strlen ("registrar"), registrar_sv, 0);
    }

  pass_errors_to_registrar (&document->parser_error_messages, parser_sv,
                            &errors_warnings_sv, &error_nrs_sv);
  clear_error_message_list (&document->parser_error_messages);
}



/* Build data registered in Texinfo Document to Perl and Document */

/* Return array of target elements.  build_texinfo_tree must
   be called first. */
static AV *
build_target_elements_list (const LABEL_LIST *labels_list)
{
  AV *target_array;
  SV *sv;
  size_t i;

  dTHX;

  target_array = newAV ();
  av_unshift (target_array, labels_list->number);

  for (i = 0; i < labels_list->number; i++)
    {
      sv = newSVsv (labels_list->list[i].element->sv);
      av_store (target_array, i, sv);
    }

  return target_array;
}

static HV *
build_identifiers_target (const struct C_HASHMAP *identifiers_target)
{
  HV* hv;

  dTHX;

  hv = newHV ();

  if (identifiers_target)
    {
      struct BUCKET_ARENA_ITERATOR *hash_iterator = 0;
      const char *key;
      const ELEMENT *element;

      while (1)
        {
          element = c_hashmap_iterator_next_value (identifiers_target,
                                                   &hash_iterator, &key);
          if (!key)
            break;
          SV *sv = newSVsv (element->sv);
          hv_store (hv, key, strlen (key), sv, 0);
        }
    }
  return hv;
}

static AV *
build_internal_xref_list (const ELEMENT_LIST *internal_xref_list)
{
  AV *list_av;
  SV *sv;
  size_t i;

  dTHX;

  list_av = newAV ();
  av_unshift (list_av, internal_xref_list->number);

  for (i = 0; i < internal_xref_list->number; i++)
    {
      sv = newSVsv (internal_xref_list->list[i]->sv);
      av_store (list_av, i, sv);
    }

  return list_av;
}

/* Return hash for list of @float's that appeared in the file. */
static HV *
build_listoffloats_list (LISTOFFLOATS_TYPE_LIST *listoffloats)
{
  HV *float_hash;
  SV *sv;
  size_t i;

  dTHX;

  float_hash = newHV ();

  for (i = 0; i < listoffloats->number; i++)
    {
      size_t j;
      LISTOFFLOATS_TYPE *listoffloat = &listoffloats->float_types[i];
      FLOAT_INFORMATION_LIST *float_list = &listoffloat->float_list;
      SV *float_type = newSVpv_utf8 (listoffloat->type, 0);
      AV *av = newAV ();
      hv_store_ent (float_hash, float_type,
                    newRV_noinc ((SV *)av), 0);
      for (j = 0; j < float_list->number; j++)
        {
          const FLOAT_INFORMATION *float_info = &float_list->list[j];
          const ELEMENT *float_elt = float_info->float_element;
          const SECTION_RELATIONS *float_section = float_info->float_section;
          AV *float_section_av = newAV ();
          sv = newSVsv ((SV *)float_elt->sv);
          av_push (float_section_av, sv);
          if (float_section)
            {
              if (!float_section->hv)
                fatal ("Need to build sections first");
              sv = newRV_inc ((SV *)float_section->hv);
              av_push (float_section_av, sv);
            }
          else
            av_push (float_section_av, newSV (0));
          av_push (av, newRV_noinc ((SV *) float_section_av));
        }
    }
  return float_hash;
}

/* returns a hash for a single entry in $self->{'index_names'}, containing
   information about a single index. */
static HV *
build_single_index_data (const INDEX *index)
{
#define STORE(key, value) hv_store (hv, key, strlen (key), value, 0)

  HV *hv;
  AV *entries;
  size_t j;
  size_t entry_number;

  dTHX;

  hv = newHV ();

  STORE("name", newSVpv_utf8 (index->name, 0));
  STORE("in_code", index->in_code ? newSViv (1) : newSViv (0));

  if (index->merged_in)
    {
      STORE("merged_in", newSVpv_utf8 (index->merged_in->name, 0));
    }

  if (index->entries_number > 0)
    {
      entries = newAV ();
      av_unshift (entries, index->entries_number);
      STORE("index_entries", newRV_noinc ((SV *) entries));
#undef STORE

      entry_number = 1;
      for (j = 0; j < index->entries_number; j++)
        {
#define STORE2(key, value) hv_store (entry, key, strlen (key), value, 0)
          HV *entry;
          const INDEX_ENTRY *e;

          e = &index->index_entries[j];
          entry = newHV ();

          STORE2("index_name", newSVpv_utf8 (index->name, 0));
          STORE2("entry_element",
                 newSVsv ((SV *)e->entry_element->sv));
          if (e->entry_associated_element)
            STORE2("entry_associated_element",
                   newSVsv ((SV *)e->entry_associated_element->sv));
          /* NOTE theoretical IV overflow if PERL_QUAD_MAX < SIZE_MAX */
          STORE2("entry_number", newSViv ((IV) entry_number));

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
static HV *
build_index_data (const INDEX_LIST *indices_info)
{
  size_t i;
  HV *hv;

  dTHX;

  hv = newHV ();

  for (i = 0; i < indices_info->number; i++)
    {
      const INDEX *idx = indices_info->list[i];
      HV *hv2 = build_single_index_data (idx);
      hv_store (hv, idx->name, strlen (idx->name),
                newRV_noinc ((SV *)hv2), 0);
    }

  return hv;
}

/* Return object to be used as global info, retrievable with the
   'global_information' function.  Reuse the Perl hash associated to
   the DOCUMENT if it is passed and found */
static HV *
build_global_info (DOCUMENT *document,
                   const GLOBAL_INFO *global_info_ref,
                   const GLOBAL_COMMANDS *global_commands_ref)
{
  HV *hv = 0;
  const GLOBAL_INFO global_info = *global_info_ref;
  const GLOBAL_COMMANDS global_commands = *global_commands_ref;
  const ELEMENT *document_language;
  size_t i;

  dTHX;

  if (document && document->hv)
    {
      const char *key = "global_info";
      SV **global_info_sv = hv_fetch (document->hv, key, strlen (key), 0);
      if (global_info_sv && SvOK (*global_info_sv))
        {
          hv = (HV *) SvRV (*global_info_sv);
          SvREFCNT_inc ((SV *) hv);
        }
    }

  if (!hv)
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

  if (global_info.included_files.number)
    {
      AV *av = build_string_list (&global_info.included_files, svt_byte);
      hv_store (hv, "included_files", strlen ("included_files"),
                newRV_noinc ((SV *) av), 0);
    }

  for (i = 0; i < global_info.other_info.info_number; i++)
    {
      const KEY_STRING_PAIR *k = &global_info.other_info.info[i];
      hv_store (hv, k->key, strlen (k->key), newSVpv_utf8 (k->string, 0), 0);
    }

  /* duplicate information with global_commands to avoid needing to use
     global_commands and build tree elements in other codes, for
     information useful for structuring and transformation codes */
  if (global_commands.novalidate)
    hv_store (hv, "novalidate", strlen ("novalidate"),
              newSViv (1), 0);

  if (global_commands.setfilename)
    {
      const char *setfilename_text
        = informative_command_value (global_commands.setfilename);
      if (setfilename_text)
      hv_store (hv, "setfilename", strlen ("setfilename"),
                newSVpv_utf8 (setfilename_text, 0), 0);
    }

  document_language = get_global_document_command (global_commands_ref,
                                       CM_documentlanguage, CL_preamble);
  if (document_language)
    {
      const char *language = informative_command_value (document_language);
      hv_store (hv, "documentlanguage", strlen ("documentlanguage"),
                newSVpv (language, 0), 0);
    }

  return hv;
}

/* Return object to be used as 'commands_info', which holds references
   to tree elements. */
static HV *
build_global_commands (const GLOBAL_COMMANDS *global_commands_ref)
{
  HV *hv;
  AV *av;
  size_t i;
  const GLOBAL_COMMANDS global_commands = *global_commands_ref;

  dTHX;

  hv = newHV ();

  /* These should be unique elements. */

#define GLOBAL_UNIQUE_CASE(cmd) \
  if (global_commands.cmd && global_commands.cmd->sv) \
    { \
      hv_store (hv, #cmd, strlen (#cmd), \
                newSVsv ((SV *) global_commands.cmd->sv), 0); \
    }

  GLOBAL_UNIQUE_CASE(setfilename);

#include "main/global_unique_commands_case.c"

#undef GLOBAL_UNIQUE_CASE

  /* list of direntry and dircategory */
  if (global_commands.dircategory_direntry.number > 0)
    {
      AV *av = newAV ();
      hv_store (hv, "dircategory_direntry", strlen ("dircategory_direntry"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_commands.dircategory_direntry.number; i++)
        {
          const ELEMENT *e = global_commands.dircategory_direntry.list[i];
          if (e->sv)
            av_push (av, newSVsv ((SV *) e->sv));
        }
    }

  /* The following are arrays of elements. */

  if (global_commands.footnotes.number > 0)
    {
      av = newAV ();
      hv_store (hv, "footnote", strlen ("footnote"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_commands.footnotes.number; i++)
        {
          const ELEMENT *e = global_commands.footnotes.list[i];
          if (e->sv)
            av_push (av, newSVsv ((SV *) e->sv));
        }
    }

  /* float is a type, it does not work there, use floats instead */
  if (global_commands.floats.number > 0)
    {
      av = newAV ();
      hv_store (hv, "float", strlen ("float"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_commands.floats.number; i++)
        {
          const ELEMENT *e = global_commands.floats.list[i];
          if (e->sv)
            av_push (av, newSVsv ((SV *) e->sv));
        }
    }

#define GLOBAL_CASE(cmd) \
  if (global_commands.cmd.number > 0)                              \
    {                                                                   \
      av = newAV ();                                                    \
      hv_store (hv, #cmd, strlen (#cmd),                                \
                newRV_noinc ((SV *) av), 0);                              \
      for (i = 0; i < global_commands.cmd.number; i++)             \
        {                                                               \
          const ELEMENT *e = global_commands.cmd.list[i];            \
          if (e->sv)                                                    \
            av_push (av, newSVsv ((SV *) e->sv));                     \
        }                                                               \
    }

#include "global_multi_commands_case.c"

#undef GLOBAL_CASE


  return hv;
}

/* build a minimal document, without tree/global commands/indices, only
   with the document descriptor information, errors and information that do
   not refer directly to tree elements */
SV *
build_minimal_document (DOCUMENT *document)
{
  HV *hv_stash;
  HV *hv;
  SV *sv;
  HV *hv_info;
  SV *registrar_sv;

  dTHX;

  /* We do not attempt to reuse a pre-existing C document hv, as
     build_minimal_document is only called on documents that were just
     created and do not already have associated hv */
  /* There is a bug message below if there is already a C document hv */
  hv = newHV ();

  hv_info = build_global_info (0, &document->global_info,
                               &document->global_commands);

#define STORE(key, value) hv_store (hv, key, strlen (key), newRV_inc ((SV *) value), 0)
  if (document->tree)
    {
      HV *hv_tree = newHV ();
      STORE("tree", hv_tree);

      hv_store (hv_tree, "tree_document_descriptor",
                strlen ("tree_document_descriptor"),
                newSViv (document->descriptor), 0);
    }

  STORE("global_info", hv_info);

  document->modified_information &= ~F_DOCM_global_info;
#undef STORE

  hv_store (hv, "document_descriptor", strlen ("document_descriptor"),
            newSViv (document->descriptor), 0);

  /* New error registrar for document to be used after parsing, for
     structuring and tree modifications */
  registrar_sv = new_texinfo_report ();
  SvREFCNT_inc (registrar_sv);
  hv_store (hv, "registrar", strlen ("registrar"), registrar_sv, 0);

  if (!document->hv)
    {
      document->hv = (void *) hv;
      SvREFCNT_inc ((SV *)hv);
    }
  else
    {
      fprintf (stderr,
       "BUG: build_minimal_document: %zu: already %p and new %p document hv\n",
               document->descriptor, document->hv, hv);
    }

  hv_stash = gv_stashpv ("Texinfo::Document", GV_ADD);
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}

static HV *
build_sectioning_root (SECTIONING_ROOT *sectioning_root)
{
  HV *hv = 0;

  dTHX;

  hv = newHV ();

  SV *sv = build_perl_section_relations_array (
                            &sectioning_root->section_childs);
  hv_store (hv, "section_childs", strlen ("section_childs"), sv, 0);

  hv_store (hv, "section_root_level", strlen ("section_root_level"),
            newSViv (sectioning_root->section_root_level), 0);
  return hv;
}

static void
fill_document_hv (HV *hv, DOCUMENT *document, int no_store)
{
  SV *sv_tree = 0;
  HV *hv_info;
  HV *hv_commands_info;
  HV *hv_index_names;
  HV *hv_listoffloats_list;
  HV *hv_indices_sort_strings = 0;
  AV *av_internal_xref;
  HV *hv_identifiers_target;
  AV *av_labels_list;
  AV *av_nodes_list = 0;
  AV *av_sections_list = 0;
  AV *av_headings_list = 0;
  HV *hv_sectioning_root = 0;

  dTHX;

  if (document->tree)
    sv_tree = build_texinfo_tree (document->tree, 0);

  hv_info = build_global_info (0, &document->global_info,
                               &document->global_commands);

  hv_commands_info = build_global_commands (&document->global_commands);

  hv_index_names = build_index_data (&document->indices_info);

  hv_listoffloats_list
         = build_listoffloats_list (&document->listoffloats);

  av_internal_xref = build_internal_xref_list (&document->internal_references);

  hv_identifiers_target
   = build_identifiers_target (&document->identifiers_target);

  av_labels_list = build_target_elements_list (&document->labels_list);

  av_nodes_list = build_node_relations_list (&document->nodes_list);

  av_sections_list = build_section_relations_list (&document->sections_list);

  av_headings_list = build_heading_relations_list (&document->headings_list);

  if (document->sectioning_root)
    hv_sectioning_root = build_sectioning_root (document->sectioning_root);

  if (document->indices_sort_strings)
    hv_indices_sort_strings = build_indices_sort_strings (
                                      document->indices_sort_strings,
                                      hv_index_names);

#define STORE(key, value) hv_store (hv, key, strlen (key), newRV_inc ((SV *) value), 0)

  /* must be kept in sync with Texinfo::Document register keys */
  if (sv_tree)
    hv_store (hv, "tree", strlen ("tree"), SvREFHVCNT_inc ((SV *) sv_tree), 0);
  document->modified_information &= ~F_DOCM_tree;
  STORE("indices", hv_index_names);
  document->modified_information &= ~F_DOCM_index_names;
  STORE("listoffloats_list", hv_listoffloats_list);
  document->modified_information &= ~F_DOCM_floats;
  STORE("internal_references", av_internal_xref);
  document->modified_information &= ~F_DOCM_internal_references;
  STORE("commands_info", hv_commands_info);
  document->modified_information &= ~F_DOCM_global_commands;
  STORE("global_info", hv_info);
  document->modified_information &= ~F_DOCM_global_info;
  STORE("identifiers_target", hv_identifiers_target);
  document->modified_information &= ~F_DOCM_identifiers_target;
  STORE("labels_list", av_labels_list);
  document->modified_information &= ~F_DOCM_labels_list;

  STORE("nodes_list", av_nodes_list);
  document->modified_information &= ~F_DOCM_nodes_list;

  STORE("sections_list", av_sections_list);
  document->modified_information &= ~F_DOCM_sections_list;

  if (hv_sectioning_root)
    {
      STORE("sectioning_root", hv_sectioning_root);
      document->modified_information &= ~F_DOCM_sectioning_root;
    }

  STORE("headings_list", av_headings_list);
  document->modified_information &= ~F_DOCM_headings_list;

  if (hv_indices_sort_strings)
    {
      STORE("index_entries_sort_strings", hv_indices_sort_strings);
      document->modified_information &= ~F_DOCM_indices_sort_strings;
    }
#undef STORE

  if (no_store)
    remove_document (document);
  else
    {
      hv_store (hv, "document_descriptor", strlen ("document_descriptor"),
                newSViv (document->descriptor), 0);

      if (sv_tree)
        {
          HV *hv_tree = (HV *) SvRV ((SV *) sv_tree);
          hv_store (hv_tree, "tree_document_descriptor",
                    strlen ("tree_document_descriptor"),
                    newSViv (document->descriptor), 0);
        }

      if (!document->hv)
        {
          document->hv = (void *) hv;
          SvREFCNT_inc ((SV *)hv);
        }
      else if ((HV *)document->hv != hv)
        {
          fprintf (stderr,
           "BUG: fill_document_hv: %zu: %p and new %p document hv differ\n",
                     document->descriptor, document->hv, hv);
        }
    }
}

/* Return a Texinfo::Document perl object corresponding to the
   C document structure corresponding to DOCUMENT_DESCRIPTOR.
   If NO_STORE is set, destroy the C document.
 */
SV *
build_document (DOCUMENT *document, int no_store)
{
  HV *hv;
  SV *sv;
  HV *hv_stash;
  SV *registrar_sv;

  dTHX;

  if (document->hv)
    {
      hv = document->hv;
      SvREFCNT_inc ((SV *) hv);
    }
  else
    {
      hv = newHV ();

      /* error registrar for document to be used after parsing, for
         structuring and tree modifications */
      registrar_sv = new_texinfo_report ();
      SvREFCNT_inc (registrar_sv);
      hv_store (hv, "registrar", strlen ("registrar"), registrar_sv, 0);
    }

  fill_document_hv (hv, document, no_store);

  hv_stash = gv_stashpv ("Texinfo::Document", GV_ADD);
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}

SV *
store_document_texinfo_tree (DOCUMENT *document)
{
  SV *result_sv = 0;
  const char *key = "tree";

  dTHX;

  if (document->modified_information & F_DOCM_tree
      && document->tree)
    {
      SV *result_sv = build_texinfo_tree (document->tree, 0);
      HV *result_hv = (HV *) SvRV ((SV *)result_sv);
      hv_store (result_hv, "tree_document_descriptor",
                strlen ("tree_document_descriptor"),
                newSViv (document->descriptor), 0);
      hv_store (document->hv, key, strlen (key), SvREFHVCNT_inc (result_sv), 0);
      document->modified_information &= ~F_DOCM_tree;
    }
  /* systematically rebuild, as section relations
     can be accessed from the tree.  Done in this function,
     as it is supposed to be called before an access to modified
     tree and sectioning structure.
   */
  /* Also store, such that next call that get cached values
     get the right information */
  if (document->modified_information & F_DOCM_sections_list)
    {
      const char *key = "sections_list";
      AV *av_list
        = build_section_relations_list (&document->sections_list);
      hv_store (document->hv, key, strlen (key),
                newRV_inc ((SV *) av_list), 0);

      document->modified_information &= ~F_DOCM_sections_list;
    }

  if (document->modified_information & F_DOCM_nodes_list)
    {
      const char *key = "nodes_list";
      AV *av_list
        = build_node_relations_list (&document->nodes_list);
      hv_store (document->hv, key, strlen (key),
                newRV_inc ((SV *) av_list), 0);

      document->modified_information &= ~F_DOCM_nodes_list;
    }

  if (document->modified_information & F_DOCM_headings_list)
    {
      const char *key = "headings_list";
      AV *av_list
        = build_heading_relations_list (&document->headings_list);
      hv_store (document->hv, key, strlen (key),
                newRV_inc ((SV *) av_list), 0);

      document->modified_information &= ~F_DOCM_headings_list;
    }

  /*
  if (document->sectioning_root
      && document->modified_information & F_DOCM_sectioning_root)
    {
      build_sectioning_root (document->sectioning_root);
      document->modified_information &= ~F_DOCM_sectioning_root;
    }
   */
  return result_sv;
}

/* Build Output unit and output units lists to Perl*/

static void
output_unit_to_perl_hash (OUTPUT_UNIT *output_unit)
{
  int i;
  SV *sv;
  HV *directions_hv;

  dTHX;

  /* output_unit->hv may already exist because of directions or if there was a
     first_in_page referring to output_unit, or because the output units
     list is being rebuilt */
  if (!output_unit->hv)
    /* the reference created by newHV is considered to be retained by the
       C code and is released when the output unit is destroyed in C */
    output_unit->hv = newHV ();
  else
    hv_clear (output_unit->hv);

#define STORE(key) hv_store (output_unit->hv, key, strlen (key), sv, 0)
  sv = newSVpv (output_unit_type_names[output_unit->unit_type], 0);
  STORE("unit_type");

  if (output_unit->unit_type == OU_special_unit)
    {
      ELEMENT *command = output_unit->uc.special_unit_command;
      if (!command->sv)
        {
          SV *unit_sv;
          HV *element_hv;

          /* a virtual out of tree element, add it to perl */
          element_to_perl_hash (command, 0);
          element_hv = (HV *) SvRV ((SV *) command->sv);

          unit_sv = newRV_inc ((SV *) output_unit->hv);
          hv_store (element_hv, "associated_unit",
                    strlen ("associated_unit"), unit_sv, 0);
        }
      sv = newSVsv ((SV *) command->sv);
      STORE("unit_command");
    }
  else
    {
      const ELEMENT *command = output_unit->uc.unit_command;

      if (command)
        {
          if (!command->sv)
            {
              char *msg;
              char *output_unit_text = output_unit_texi (output_unit);
              xasprintf (&msg, "Missing output unit unit_command sv: %s",
                         output_unit_text);
              free (output_unit_text);
              fatal (msg);
              free (msg);
            }

          sv = newSVsv ((SV *) command->sv);
          STORE("unit_command");
        }
      if (output_unit->unit_section)
        {
          sv = newRV_inc ((SV *) output_unit->unit_section->hv);
          STORE("unit_section");
        }
      if (output_unit->unit_node)
        {
          sv = newRV_inc ((SV *) output_unit->unit_node->hv);
          STORE("unit_node");
        }
   /* there is nothing else of use for external_node_unit, exit now */
      if (output_unit->unit_type == OU_external_node_unit)
        return;
    }

  /* NOTE theoretical IV overflow if PERL_QUAD_MAX < SIZE_MAX */
  sv = newSViv ((IV) output_unit->index);
  STORE("unit_index");

  /* setup an hash reference in any case */
  directions_hv = newHV ();
  sv = newRV_noinc ((SV *) directions_hv);
  STORE("directions");

  for (i = 0; i < RUD_type_FirstInFileNodeBack+1; i++)
    {
      if (output_unit->directions[i])
        {
          const char *direction_name = relative_unit_direction_name[i];
          /* remove const in case hv needs to be added */
          OUTPUT_UNIT *direction_unit
               = (OUTPUT_UNIT *) output_unit->directions[i];
          SV *unit_sv;
          if (!direction_unit->hv)
            {
  /* If it is known in advance that Perl data needs to be rebuilt, the Perl
     references should exist for all the output units because they are
     setup and built to Perl if needed in _prepare_conversion_units,
     while directions are setup afterwards in _prepare_units_directions_files.
     external_node_target are not set in _prepare_conversion_units, but
     are set before rebuilding the other output units in
     _prepare_units_directions_files XS code.

     However, if the output units are built late because they are built
     to Perl from a user function, the output units were never built
     to Perl and there are already directions that will point to output
     units not already built to Perl, so it is not an error.

              char *msg;
              xasprintf (&msg, "BUG: %s: no output unit Perl ref: %s",
                                   direction_name,
                                   output_unit_texi (direction_unit));
              fatal (msg);
              non_perl_free (msg);
   */
              direction_unit->hv = newHV ();
            }
          unit_sv = newRV_inc ((SV *) direction_unit->hv);
          hv_store (directions_hv, direction_name, strlen (direction_name),
                    unit_sv, 0);
        }
    }

  if (output_unit->associated_document_unit)
    {
      sv = newRV_inc ((SV *) output_unit->associated_document_unit->hv);
      STORE("associated_document_unit");
    }

  if (output_unit->unit_filename)
    {
      sv = newSVpv_utf8 (output_unit->unit_filename,
                         strlen (output_unit->unit_filename));
      STORE("unit_filename");
    }

  if (output_unit->unit_contents.number)
    {
      AV *av;
      size_t i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      STORE("unit_contents");

      for (i = 0; i < output_unit->unit_contents.number; i++)
        {
          const ELEMENT *element = output_unit->unit_contents.list[i];
          SV *element_sv;
          SV *unit_sv;

          if (!element->sv)
            fatal ("Missing output unit unit_contents element sv");

          element_sv = newSVsv ((SV *) element->sv);

          av_push (av, element_sv);

          if (element->e.c->associated_unit == output_unit)
            {
              HV *element_hv = (HV *) SvRV ((SV *) element_sv);
              unit_sv = newRV_inc ((SV *) output_unit->hv);
              /* set the tree element associated_unit */
              hv_store (element_hv, "associated_unit",
                        strlen ("associated_unit"),
                        unit_sv, 0);
            }
        }
    }

  if (output_unit->tree_unit_directions[0]
      || output_unit->tree_unit_directions[1])
    {
      size_t i;
      size_t directions_nr = sizeof (output_unit->tree_unit_directions)
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
}

/* build output unit hashes but do not put output units hashes in
   an array.  Useful for external_nodes_units, which are to be
   built to Perl, but have no array in Perl, they are only referred to
   in directions. */
static void
output_units_list_to_perl_hash (const DOCUMENT *document,
                                size_t output_units_descriptor)
{
  const OUTPUT_UNIT_LIST *output_units;
  size_t i;

  output_units = retrieve_output_units (document, output_units_descriptor);

  if (!output_units || !output_units->number)
    return;

  for (i = 0; i < output_units->number; i++)
    {
      OUTPUT_UNIT *output_unit = output_units->list[i];
      output_unit_to_perl_hash (output_unit);
    }
}

/* Can be called to rebuild output units when the converter
   is available, and also when the lists should be built/rebuilt.
 */
SV *
store_output_units_texinfo_tree (CONVERTER *converter, SV **output_units_sv,
                                 SV **special_units_sv,
                                 SV **associated_special_units_sv)
{
  SV *result_sv = 0;

  dTHX;

  if (converter->document)
    {
 /* need to setup the Perl tree before rebuilding the output units as
    they refer to Perl root command elements */

      if (converter->document->tree)
        result_sv = store_document_texinfo_tree (converter->document);

      if (converter->document->modified_information & F_DOCM_output_units)
        {
          int associated;

          if (!output_units_sv && converter->sv)
            {
              HV *converter_hv = (HV *) SvRV ((SV *)converter->sv);
              output_units_sv = hv_fetch (converter_hv, "document_units",
                                          strlen ("document_units"), 0);
            }

          associated = output_units_sv && (*output_units_sv)
                           && SvOK (*output_units_sv);

      /* build external_nodes_units before rebuilding the other
         output units as the external_nodes_units may have never been built,
         while other units were already built without directions
         information in html_prepare_conversion_units.
       */

          output_units_list_to_perl_hash (converter->document,
            converter->output_units_descriptors[OUDT_external_nodes_units]);

          pass_output_units_list (converter->document, output_units_sv,
                           converter->output_units_descriptors[OUDT_units]);
          pass_output_units_list (converter->document, special_units_sv,
                      converter->output_units_descriptors[OUDT_special_units]);
          pass_output_units_list (converter->document,
                                  associated_special_units_sv,
           converter->output_units_descriptors[OUDT_associated_special_units]);

          if (!associated && (*output_units_sv) && converter->sv)
            {
              HV *converter_hv = (HV *) SvRV ((SV *)converter->sv);

              SvREFCNT_inc (*output_units_sv);
              hv_store (converter_hv, "document_units",
                       strlen ("document_units"), *output_units_sv, 0);
            }

          converter->document->modified_information &= ~F_DOCM_output_units;
        }
    }

  return result_sv;
}

/* Can be called to rebuild output units when the converter is not known.
   Output units are kept in the document, but are setup and destroyed by
   converters.  If converters accessed concurently documents, there may
   be trouble here (and in other codes too).
 */
SV *
store_document_tree_output_units (DOCUMENT *document)
{
  SV *result_sv = 0;

  dTHX;

  if (document)
    {
 /* need to setup the Perl tree before rebuilding the output units as
    they refer to Perl root command elements */

      if (document->tree)
        result_sv = store_document_texinfo_tree (document);

      /* we hope that there are not two output units lists referring to the
         tree... */
      if (document->modified_information & F_DOCM_output_units)
        {
          const OUTPUT_UNIT_LISTS *output_units_lists
            = &document->output_units_lists;
          size_t i;

          if (output_units_lists->number > OUDT_external_nodes_units+1)
            fprintf (stderr, "WARNING: %zu output units built to Perl\n",
                     output_units_lists->number);

          for (i = 0; i < output_units_lists->number; i++)
            {
              output_units_list_to_perl_hash (document, i+1);
            }

          document->modified_information &= ~F_DOCM_output_units;
        }
    }
  return result_sv;
}

void
register_element_handle_in_sv (ELEMENT *element, DOCUMENT *document)
{
  HV *element_hv;
  SV **element_document_descriptor_sv;
  SV **handle_sv;
  const char *document_key = "element_document_descriptor";
  const char *handle_key = "_handle";

  dTHX;

  if (!element->sv)
    element_hv = new_element_perl_data (element);
  else
    element_hv = (HV *) SvRV ((SV *)element->sv);

  element_document_descriptor_sv
    = hv_fetch (element_hv, document_key, strlen (document_key), 0);

  if (!element_document_descriptor_sv)
    {
      hv_store (element_hv, document_key, strlen (document_key),
                newSViv (document->descriptor), 0);
    }

  handle_sv = hv_fetch (element_hv, handle_key, strlen(handle_key), 0);
  if (!handle_sv)
    {
      add_to_element_list (&document->element_handles, element);
      hv_store (element_hv, handle_key, strlen(handle_key),
                newSViv (document->element_handles.number), 0);
    }
}

/* Get a reference to the document tree.  Either from C data if the
   document could be found and if HANDLER_ONLY is not set, else from
   a Perl document, if possible the one associated with C data, otherwise
   DOCUMENT_IN.
   If the C document data was not stored, the tree will be only be
   in DOCUMENT_IN. */
SV *
document_tree (SV *document_in, int handler_only)
{
  SV *result_sv = 0;
  DOCUMENT *document = 0;

  dTHX;

  document = get_sv_document_document (document_in, 0);

  if (!handler_only && document)
    result_sv = store_document_tree_output_units (document);

  if (!result_sv)
    {
      SV **sv_reference = 0;
      /* Prefer the tree of the Perl document associated to the C data */
      if (document)
        sv_reference = hv_fetch (document->hv, "tree", strlen ("tree"), 0);

      if (!sv_reference)
        {
          HV *document_hv = (HV *) SvRV (document_in);
          sv_reference = hv_fetch (document_hv, "tree", strlen ("tree"), 0);
        }

      if (sv_reference && SvOK (*sv_reference))
        {
          result_sv = *sv_reference;
          if (document)
            register_element_handle_in_sv (document->tree, document);
        }
    }

  if (result_sv)
    {
      SvREFCNT_inc (result_sv);
      return result_sv;
    }
  else
    return newSV (0);
}

/* Build Texinfo Document registered data to Perl */

/* Note that the built Perl data is cached in the same place where pure Perl
   code looks for.  The Perl data is returned if nothing changed in C.  It
   means that after the first build to Perl, pure Perl code can change the
   Perl data and get the modified Perl data back even if XS is used, without
   XS/C code noticing any change.  In that case the C data will drift away
   from the Perl data, which could lead to subtle bugs.
 */

/* there are 2 differences between BUILD_PERL_DOCUMENT_ITEM and
   BUILD_PERL_DOCUMENT_LIST: in BUILD_PERL_DOCUMENT_LIST no check on existing
   document->fieldname and the address of document->fieldname is passed,
   not document->fieldname directly.
 */

#define BUILD_PERL_DOCUMENT_ITEM(funcname,fieldname,keyname,flagname,buildname,HVAV) \
SV * \
funcname (SV *document_in) \
{ \
  SV *result_sv = 0; \
  const char *key = keyname; \
\
  dTHX;\
\
  DOCUMENT *document = get_sv_document_document (document_in, #funcname); \
\
  if (document && document->fieldname)\
    {\
      store_document_tree_output_units (document);\
      if (document->modified_information & flagname)\
        {\
          HVAV *result_av_hv = buildname (document->fieldname);\
          result_sv = newRV_inc ((SV *) result_av_hv);\
          hv_store (document->hv, key, strlen (key), result_sv, 0);\
          document->modified_information &= ~flagname;\
        }\
    }\
\
  if (!result_sv)\
    {\
      SV **sv_reference = hv_fetch (document->hv, key, strlen (key), 0);\
      if (sv_reference && SvOK (*sv_reference))\
        result_sv = *sv_reference;\
    }\
\
  if (result_sv)\
    {\
      SvREFCNT_inc (result_sv);\
    }\
  else\
    result_sv = newSV (0);\
\
  return result_sv;\
}

/*
BUILD_PERL_DOCUMENT_ITEM(funcname,fieldname,keyname,flagname,buildname,HVAV)
 */


BUILD_PERL_DOCUMENT_ITEM(document_sectioning_root,sectioning_root,"sectioning_root",F_DOCM_sectioning_root,build_sectioning_root,HV)


#undef BUILD_PERL_DOCUMENT_ITEM

#define BUILD_PERL_DOCUMENT_LIST(funcname,fieldname,keyname,flagname,buildname,HVAV) \
SV * \
funcname (SV *document_in) \
{ \
  SV *result_sv = 0; \
  const char *key = keyname; \
\
  dTHX;\
\
  DOCUMENT *document = get_sv_document_document (document_in, #funcname); \
\
  if (document)\
    {\
      store_document_tree_output_units (document);\
      if (document->modified_information & flagname)\
        {\
          HVAV *result_av_hv = buildname (&document->fieldname);\
          result_sv = newRV_inc ((SV *) result_av_hv);\
          hv_store (document->hv, key, strlen (key), result_sv, 0);\
          document->modified_information &= ~flagname;\
        }\
    }\
\
  if (!result_sv)\
    {\
      SV **sv_reference = hv_fetch (document->hv, key, strlen (key), 0);\
      if (sv_reference && SvOK (*sv_reference))\
        result_sv = *sv_reference;\
    }\
\
  if (result_sv)\
    {\
      SvREFCNT_inc (result_sv);\
    }\
  else\
    result_sv = newSV (0);\
\
  return result_sv;\
}

/*
BUILD_PERL_DOCUMENT_LIST(funcname,fieldname,keyname,flagname,buildname,HVAV)
*/

BUILD_PERL_DOCUMENT_LIST(document_nodes_list,nodes_list,"nodes_list",F_DOCM_nodes_list,build_node_relations_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_sections_list,sections_list,"sections_list",F_DOCM_sections_list,build_section_relations_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_headings_list,headings_list,"headings_list",F_DOCM_headings_list,build_heading_relations_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_floats_information,listoffloats,"listoffloats_list",F_DOCM_floats,build_listoffloats_list,HV)

BUILD_PERL_DOCUMENT_LIST(document_internal_references_information,internal_references,"internal_references",F_DOCM_internal_references,build_internal_xref_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_labels_list,labels_list,"labels_list",F_DOCM_labels_list,build_target_elements_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_indices_information,indices_info,"indices",F_DOCM_index_names,build_index_data,HV)

BUILD_PERL_DOCUMENT_LIST(document_labels_information,identifiers_target,"identifiers_target",F_DOCM_identifiers_target,build_identifiers_target,HV)

BUILD_PERL_DOCUMENT_LIST(document_global_commands_information,global_commands,"commands_info",F_DOCM_global_commands,build_global_commands,HV)

#undef BUILD_PERL_DOCUMENT_LIST

SV *
document_global_information (SV *document_in)
{
  SV *result_sv = 0;
  const char *key = "global_info";

  dTHX;

  DOCUMENT *document = get_sv_document_document (document_in,
                                     "document_global_information");
  if (document)
    {
      if (document->modified_information & F_DOCM_global_info)
        {
          HV *result_hv = build_global_info (document,
                                             &document->global_info,
                                             &document->global_commands);
          result_sv = newRV_inc ((SV *) result_hv);
          hv_store (document->hv, key, strlen (key), result_sv, 0);
          document->modified_information &= ~F_DOCM_global_info;
        }
    }

  if (!result_sv)
    {
      SV **sv_reference = hv_fetch (document->hv, key, strlen (key), 0);
      if (sv_reference && SvOK (*sv_reference))
        result_sv = *sv_reference;
    }

  if (result_sv)
    {
      SvREFCNT_inc (result_sv);
    }
  else
    result_sv = newSV (0);

  return result_sv;
}



/* Build indices information for Perl */

static SV *
find_idx_name_entry_number_sv (HV *indices_information_hv,
                               const char* index_name, int entry_number,
                               const char *message)
{
  SV **index_info_sv;
  SV *index_entry_sv = 0;

  dTHX;

  index_info_sv = hv_fetch (indices_information_hv, index_name,
                            strlen (index_name), 0);
  if (!index_info_sv)
    {
      fprintf (stderr, "%s index %s not found\n", message, index_name);
    }
  else
    {
      HV *index_info_hv = (HV *) SvRV (*index_info_sv);
      SV **index_info_index_entries_sv = hv_fetch (index_info_hv,
             "index_entries", strlen ("index_entries"), 0);

      if (!index_info_index_entries_sv)
        {
          fprintf (stderr, "%s index %s 'index_entries' not found\n",
                           message, index_name);
        }
      else
        {
          AV *index_info_entries_av
              = (AV *) SvRV (*index_info_index_entries_sv);

          SV **index_entry_info_sv = av_fetch (index_info_entries_av,
                                             entry_number -1, 0);

          if (!index_entry_info_sv)
            {
              fprintf (stderr, "%s: %d in %s not found\n", message,
                       entry_number, index_name);
            }
          else
            index_entry_sv = *index_entry_info_sv;
        }
    }
  return index_entry_sv;
}

HV *
build_indices_sort_strings (const INDICES_SORT_STRINGS *indices_sort_strings,
                            HV *indices_information_hv)
{
  HV *indices_sort_strings_hv;
  size_t i;

  dTHX;

  if (!indices_sort_strings)
    return 0;

  indices_sort_strings_hv = newHV ();

  for (i = 0; i < indices_sort_strings->number; i++)
    {
      const INDEX_SORT_STRINGS *index_sort_strings
         = &indices_sort_strings->indices[i];
      const char *index_name = index_sort_strings->index->name;

      if (index_sort_strings->entries_number > 0)
        {
          size_t j;
          AV *sort_string_entries_av = newAV ();

          hv_store (indices_sort_strings_hv, index_name, strlen (index_name),
                    newRV_noinc ((SV *)sort_string_entries_av), 0);

          for (j = 0; j < index_sort_strings->entries_number; j++)
            {
              const INDEX_ENTRY_SORT_STRING *index_entry_sort_string
                = &index_sort_strings->sort_string_entries[j];
              const INDEX_ENTRY *entry = index_entry_sort_string->entry;
              const char *entry_index_name = entry->index_name;
              int entry_number = entry->number;
              char *message;
              SV *index_entry_sv;
              HV *index_entry_sort_string_hv;
              AV *sort_string_subentries_av;
              size_t k;

              if (index_entry_sort_string->subentries_number <= 0)
                {
                  fprintf (stderr, "BUG: build_indices_sort_strings:"
                   " %s: entry %zu: no subentries", index_name, j);
                  continue;
                }

              xasprintf (&message, "BUG: build_indices_sort_strings:"
                                   " %s: entry %zu", index_name, j);
              index_entry_sv
                = find_idx_name_entry_number_sv (indices_information_hv,
                                                 entry_index_name, entry_number,
                                                 message);
              non_perl_free (message);

              /* probably not possible, unless there is a bug */
              if (!index_entry_sv)
                continue;

              index_entry_sort_string_hv = newHV ();
              av_push (sort_string_entries_av,
                       newRV_noinc ((SV *) index_entry_sort_string_hv));

              hv_store (index_entry_sort_string_hv, "index_name",
                        strlen ("index_name"),
                        newSVpv_utf8 (entry->index_name, 0), 0);
              hv_store (index_entry_sort_string_hv, "number",
                        strlen ("number"), newSViv (entry->number), 0);

              SvREFCNT_inc (index_entry_sv);
              hv_store (index_entry_sort_string_hv, "entry",
                        strlen ("entry"), index_entry_sv, 0);

              sort_string_subentries_av = newAV ();
              hv_store (index_entry_sort_string_hv, "sort_strings",
                        strlen ("sort_strings"),
                        newRV_noinc ((SV *) sort_string_subentries_av), 0);

              for (k = 0; k < index_entry_sort_string->subentries_number; k++)
                {
                  const INDEX_SUBENTRY_SORT_STRING *subentry_sort_string
                    = &index_entry_sort_string->sort_string_subentries[k];
                  HV *subentry_sort_string_hv = newHV ();

                  av_push (sort_string_subentries_av,
                           newRV_noinc ((SV *) subentry_sort_string_hv));

                  hv_store (subentry_sort_string_hv, "sort_string",
                            strlen ("sort_string"),
                     newSVpv_utf8 (subentry_sort_string->sort_string, 0), 0);
                  hv_store (subentry_sort_string_hv, "alpha",
                            strlen ("alpha"),
                            newSViv (subentry_sort_string->alpha), 0);
                }
            }
        }
    }
  return indices_sort_strings_hv;
}

HV *
build_sorted_indices_by_index (
                      const INDEX_SORTED_BY_INDEX *index_entries_by_index,
                      HV *indices_information_hv)
{
  HV *indices_hv;
  const INDEX_SORTED_BY_INDEX *idx;

  dTHX;

  if (!index_entries_by_index)
    return 0;

  indices_hv = newHV ();

  for (idx = index_entries_by_index; idx->name; idx++)
    {
      AV *entries_av = newAV ();
      size_t j;

      hv_store (indices_hv, idx->name, strlen (idx->name),
                newRV_noinc ((SV *)entries_av), 0);

      for (j = 0; j < idx->entries_number; j++)
        {
          const INDEX_ENTRY *entry = idx->entries[j];
          const char *index_name = entry->index_name;
          int entry_number = entry->number;
          char *message;
          SV *index_entry_sv;

          xasprintf (&message, "BUG: build_sorted_indices_by_index:"
                               " %s: entry %zu", idx->name, j);
          index_entry_sv
            = find_idx_name_entry_number_sv (indices_information_hv,
                                             index_name, entry_number,
                                             message);
          non_perl_free (message);

          if (index_entry_sv)
            {
              SvREFCNT_inc (index_entry_sv);
              av_push (entries_av, index_entry_sv);
            }
        }
    }
  return indices_hv;
}

HV *
build_sorted_indices_by_letter (
                      const INDEX_SORTED_BY_LETTER *index_entries_by_letter,
                      HV *indices_information_hv)
{
  HV *indices_hv;
  const INDEX_SORTED_BY_LETTER *idx;

  dTHX;

  if (!index_entries_by_letter)
    return 0;

  indices_hv = newHV ();

  for (idx = index_entries_by_letter; idx->name; idx++)
    {
      AV *sorted_letters_av;
      size_t i;

      if (idx->letter_number <= 0)
        continue;

      sorted_letters_av = newAV ();

      hv_store (indices_hv, idx->name, strlen (idx->name),
                newRV_noinc ((SV *)sorted_letters_av), 0);

      for (i = 0; i < idx->letter_number; i++)
        {
          size_t j;
          HV *letter_hv = newHV ();
          AV *entries_av = newAV ();
          const LETTER_INDEX_ENTRIES *letter = &idx->letter_entries[i];

          hv_store (letter_hv, "letter", strlen ("letter"),
                    newSVpv_utf8 (letter->letter, 0), 0);

          hv_store (letter_hv, "entries", strlen ("entries"),
                    newRV_noinc ((SV *)entries_av), 0);

          av_push (sorted_letters_av, newRV_noinc ((SV *)letter_hv));

          for (j = 0; j < letter->entries_number; j++)
            {
              const INDEX_ENTRY *entry = letter->entries[j];
              const char *index_name = entry->index_name;
              int entry_number = entry->number;
              char *message;
              SV *index_entry_sv;
              xasprintf (&message, "BUG: build_sorted_indices_by_letter:"
                                   " %s: %s: entry %zu", idx->name,
                                   letter->letter, j);
              index_entry_sv
                = find_idx_name_entry_number_sv (indices_information_hv,
                                                 index_name, entry_number,
                                                 message);
              non_perl_free (message);

              if (index_entry_sv)
                {
                  SvREFCNT_inc (index_entry_sv);
                  av_push (entries_av, index_entry_sv);
                }
            }
        }
    }
  return indices_hv;
}



static int
fill_output_units_descriptor_av (const DOCUMENT *document,
                                 AV *av_output_units,
                                 size_t output_units_descriptor)
{
  const OUTPUT_UNIT_LIST *output_units;
  size_t i;

  dTHX;

  output_units = retrieve_output_units (document, output_units_descriptor);

  if (!output_units || !output_units->number)
    return 0;

  for (i = 0; i < output_units->number; i++)
    {
      SV *sv;
      OUTPUT_UNIT *output_unit = output_units->list[i];
      output_unit_to_perl_hash (output_unit);
      /* increase counter for the reference in the array */
      sv = newRV_inc ((SV *) output_unit->hv);
      av_push (av_output_units, sv);
    }

  /* store in the first perl output unit of the list */
  /* NOTE theoretical IV overflow if PERL_QUAD_MAX < SIZE_MAX */
  hv_store (output_units->list[0]->hv, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv ((IV)output_units_descriptor), 0);
  hv_store (output_units->list[0]->hv, "output_units_document_descriptor",
            strlen ("output_units_document_descriptor"),
            newSViv ((IV)document->descriptor), 0);
  return 1;
}

/* a fake output units list that only holds a descriptor allowing
   to retrieve the C data */
SV *
setup_output_units_handler (const DOCUMENT *document,
                            size_t output_units_descriptor)
{
  AV *av_output_units;
  HV *dummy_output_unit;
  SV *sv;
  const OUTPUT_UNIT_LIST *output_units;

  dTHX;

  output_units = retrieve_output_units (document, output_units_descriptor);

  if (!output_units || !output_units->number)
    return newSV (0);

  av_output_units = newAV ();

  dummy_output_unit = newHV ();

  hv_store (dummy_output_unit, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv (output_units_descriptor), 0);
  hv_store (dummy_output_unit, "output_units_document_descriptor",
            strlen ("output_units_document_descriptor"),
            newSViv ((IV)document->descriptor), 0);

  sv = newRV_inc ((SV *) dummy_output_unit);
  av_push (av_output_units, sv);

  return newRV_noinc ((SV *) av_output_units);
}

void
pass_output_units_list (const DOCUMENT *document, SV **output_units_sv,
                        size_t output_units_descriptor)
{
  AV *av_output_units;

  dTHX;

  if (!output_units_sv)
    {
      output_units_list_to_perl_hash (document, output_units_descriptor);
      return;
    }

  if ((*output_units_sv) && SvOK (*output_units_sv))
    {
      av_output_units = (AV *) SvRV (*output_units_sv);
      av_clear (av_output_units);
    }
  else
    {
      if (*output_units_sv)
        { /* !SvOK (*output_units_sv) */
          const OUTPUT_UNIT_LIST *output_units
            = retrieve_output_units (document, output_units_descriptor);
          if (output_units && output_units->number)
            fprintf (stderr, "BUG: undef input sv for %zu output units (%zu)\n",
                     output_units->number, output_units_descriptor);
          *output_units_sv = 0;
        }
      av_output_units = newAV ();
    }

  if (!fill_output_units_descriptor_av (document, av_output_units,
                                        output_units_descriptor))
    {
      if (*output_units_sv)
        {
 /* the output_units_descriptor is not found.  In the codes calling
    this function, the output_units_descriptor should have been found
    within the Perl reference used as argument here.  If there is
    something to rebuild, this should mean that there is an output
    units list in C, therefore we output an error here.  It could
    be redundant with errors output earlier in calling code, but it
    is better to have more debug messages.
  */
          fprintf (stderr, "BUG: pass_output_units_list: output unit"
                  " descriptor not found: %zu\n", output_units_descriptor);
        }
      else
        {/* no output unit */
          av_undef (av_output_units);
          *output_units_sv = newSV (0);
        }
    }
  else if (!(*output_units_sv))
    *output_units_sv = newRV_noinc ((SV *) av_output_units);
}



static HV *
build_expanded_formats (const EXPANDED_FORMAT *expanded_formats)
{
  size_t i;
  HV *expanded_hv;

  dTHX;

  expanded_hv = newHV ();
  for (i = 0; i < expanded_formats_number (); i++)
    {
      if (expanded_formats[i].expandedp)
        {
          const char *format = expanded_formats[i].format;
          hv_store (expanded_hv, format, strlen (format),
                    newSViv (1), 0);
        }
    }
  return expanded_hv;
}

static HV *
build_translated_commands (const TRANSLATED_COMMAND_LIST *translated_commands)
{
  size_t i;
  HV *translated_hv;

  dTHX;

  translated_hv = newHV ();
  for (i = 0; i < translated_commands->number; i++)
    {
      enum command_id cmd = translated_commands->list[i].cmd;
      const char *translation = translated_commands->list[i].translation;
      const char *command_name = builtin_command_name (cmd);
      hv_store (translated_hv, command_name, strlen (command_name),
                newSVpv_utf8 (translation, 0), 0);
    }
  return translated_hv;
}

SV *
build_convert_text_options (TEXT_OPTIONS *text_options)
{
  HV *text_options_hv;
  HV *expanded_formats_hv;
  HV *translated_commands_hv;

  dTHX;

  text_options_hv = newHV ();

#define STORE(key, sv) hv_store (text_options_hv, key, strlen (key), sv, 0)

  if (text_options->ASCII_GLYPH)
    STORE("ASCII_GLYPH", newSViv (1));

  if (text_options->DEBUG)
    STORE("DEBUG", newSViv (1));

  if (text_options->DOC_ENCODING_FOR_INPUT_FILE_NAME)
    STORE("DOC_ENCODING_FOR_INPUT_FILE_NAME", newSViv (1));

  if (text_options->NUMBER_SECTIONS)
    STORE("NUMBER_SECTIONS", newSViv (1));

  if (text_options->TEST)
    STORE("TEST", newSViv (1));

  if (text_options->sort_string)
    STORE("sort_string", newSViv (1));

  if (text_options->encoding)
    STORE("enabled_encoding", newSVpv_utf8 (text_options->encoding, 0));

  if (text_options->set_case)
    STORE("set_case", newSViv (text_options->set_case));

  if (text_options->code_state)
    STORE("_code_state", newSViv (text_options->code_state));

  if (text_options->documentlanguage)
    STORE("documentlanguage",
           newSVpv_utf8 (text_options->documentlanguage, 0));

  if (text_options->INPUT_FILE_NAME_ENCODING)
    STORE("INPUT_FILE_NAME_ENCODING",
           newSVpv_utf8 (text_options->INPUT_FILE_NAME_ENCODING, 0));

  if (text_options->LOCALE_ENCODING)
    STORE("LOCALE_ENCODING",
           newSVpv_utf8 (text_options->LOCALE_ENCODING, 0));

  expanded_formats_hv = build_expanded_formats (text_options->expanded_formats);
  STORE("expanded_formats", newRV_noinc ((SV *)expanded_formats_hv));

  if (text_options->include_directories.number > 0)
    {
      AV *av = build_string_list (&text_options->include_directories, svt_byte);
      STORE("INCLUDE_DIRECTORIES", newRV_noinc ((SV *) av));
    }

  translated_commands_hv
    = build_translated_commands (&text_options->translated_commands);
  STORE("translated_commands", newRV_noinc ((SV *) translated_commands_hv));

  if (text_options->converter && text_options->converter->sv)
    {
      SvREFCNT_inc (text_options->converter->sv);
      STORE("converter", text_options->converter->sv);
    }
#undef STORE

  return newRV_noinc ((SV *)text_options_hv);
}

void
pass_document_sv_to_converter_sv (SV *converter_sv, SV *document_in)
{
  HV *converter_hv;

  dTHX;

  converter_hv = (HV *)SvRV (converter_sv);

  if (document_in && SvOK (document_in))
    {
      SvREFCNT_inc (document_in);
      hv_store (converter_hv, "document", strlen ("document"),
                document_in, 0);
    }
}

void
pass_converter_text_options (const CONVERTER *converter, SV *converter_sv)
{
  HV *converter_hv;

  dTHX;

  converter_hv = (HV *)SvRV (converter_sv);

  if (converter && converter->convert_text_options)
    {
      SV *text_options_sv
       = build_convert_text_options (converter->convert_text_options);
      hv_store (converter_hv,
                "convert_text_options", strlen("convert_text_options"),
                text_options_sv, 0);
    }
}



/* build customization options to Perl */

/* build a Perl button data from pure C button structure.
   This is a partial implementation.
   This function can only be called for default buttons for now, so we do
   not need to handle other types of buttons, which are either not
   interesting to handle, or need Perl info */
static SV *
html_build_button (const CONVERTER *converter, BUTTON_SPECIFICATION *button,
                   int *user_function_number)
{
  dTHX;

  *user_function_number = 0;

  switch (button->type)
    {
      const char *direction_name;
      case BST_direction:
        if (button->b.direction < 0)
          direction_name = button->direction_string;
        else
          direction_name
            = direction_unit_direction_name (button->b.direction,
                                             converter);
        if (!direction_name)
          {
            char *msg;
            xasprintf (&msg, "No name for button direction %d",
                       button->b.direction);
            fatal (msg);
            non_perl_free (msg);
          }
        return newSVpv_utf8 (direction_name, 0);
        break;

      case BST_direction_info:
        {
          BUTTON_SPECIFICATION_INFO *button_spec = button->b.button_info;
          AV *button_spec_info_av;

          if (button_spec->direction < 0)
            direction_name = button->direction_string;
          else
            direction_name
              = direction_unit_direction_name (button_spec->direction,
                                               converter);
          if (!direction_name)
            {
              char *msg;
              xasprintf (&msg, "No name for array button direction %d",
                              button_spec->direction);
              fatal (msg);
              non_perl_free (msg);
            }

          if (button_spec->type == BIT_function)
            {
              /* contains a leading :: */
              const char *sub_name = html_button_function_type_string[
                                      button_spec->bi.button_function.type];
              if (sub_name)
                {
                  char *sub_full_name;
                  CV *button_function_cv;

                  xasprintf (&sub_full_name, "Texinfo::Convert::HTML%s",
                             sub_name);
                  button_function_cv = get_cv (sub_full_name, 0);
                  if (!button_function_cv)
                    fprintf (stderr, "BUG: %s: not found\n", sub_full_name);

                  non_perl_free (sub_full_name);

                  button_spec_info_av = newAV ();
                  av_push (button_spec_info_av,
                           newSVpv_utf8 (direction_name, 0));
              /* not sure that the _inc leads to the same number of references
                 than with Pure perl defined buttons, but it is needed
                 as tested  */
                  av_push (button_spec_info_av,
                           newRV_inc ((SV *) button_function_cv));
                  return newRV_inc ((SV *) button_spec_info_av);
                }
            }
        }
        break;

      default:
        break;
    }
  return newSV (0);
}

SV *
html_build_buttons_specification (CONVERTER *converter,
                                  BUTTON_SPECIFICATION_LIST *buttons)
{
  AV *buttons_av;
  size_t i;

  dTHX;

  buttons_av = newAV ();

  buttons->av = buttons_av;

  for (i = 0; i < buttons->number; i++)
    {
      int user_function_number;
      BUTTON_SPECIFICATION *button = &buttons->list[i];

      SV *button_sv = html_build_button (converter, button,
                                         &user_function_number);
      buttons->BIT_user_function_number += user_function_number;

      if (converter)
        converter->external_references_number += user_function_number;

      button->sv = button_sv;

      /* retain a reference in C */
      SvREFCNT_inc (button->sv);

      av_push (buttons_av, button_sv);
    }

  /* add a refcount to retain one in C */
  return newRV_inc ((SV *)buttons_av);
}

SV *
html_build_direction_icons (const DIRECTION_ICON_LIST *direction_icons)
{
  HV *icons_hv;
  size_t i;

  dTHX;

  if (!direction_icons)
    return newSV (0);

  icons_hv = newHV ();

  for (i = 0; i < direction_icons->number; i++)
    {
      DIRECTION_ICON *icon = &direction_icons->icons_list[i];
      if (icon->direction_name)
        {
          SV *name_sv;
          SV *direction_name_sv = newSVpv_utf8 (icon->direction_name, 0);
          if (icon->name)
            name_sv = newSVpv_utf8 (icon->name, 0);
          else
            name_sv = newSV (0);
          hv_store_ent (icons_hv, direction_name_sv, name_sv, 0);
        }
    }

  return newRV_noinc ((SV *)icons_hv);
}

SV *
build_sv_option (const OPTION *option, CONVERTER *converter)
{
  dTHX;

  switch (option->type)
    {
      case GOT_integer:
        if (option->o.integer == -1)
          return newSV (0);
        return newSViv (option->o.integer);
        break;

      case GOT_char:
        if (!option->o.string)
          return newSV (0);
        return newSVpv_utf8 (option->o.string, 0);
        break;

      case GOT_bytes:
        if (!option->o.string)
          return newSV (0);
        return newSVpv_byte (option->o.string, 0);
        break;

      case GOT_bytes_string_list:
        return newRV_noinc ((SV *) build_string_list(option->o.strlist,
                            svt_byte));
        break;

      case GOT_file_string_list:
        return newRV_noinc ((SV *) build_string_list(option->o.strlist,
                            svt_dir));
        break;

      case GOT_char_string_list:
        return newRV_noinc ((SV *) build_string_list(option->o.strlist,
                            svt_char));
        break;

      case GOT_buttons:
        if (option->o.buttons)
          {
            if (!option->o.buttons->av)
              html_build_buttons_specification (converter, option->o.buttons);
            return newRV_inc ((SV *) option->o.buttons->av);
          }
        break;

      case GOT_icons:
        return html_build_direction_icons (option->o.icons);
        break;

      default:
        break;
    }
  return newSV (0);
}

/* not much used, as in general the options are only stored in C and
   accessed through the API and built when accessed through a converter.
   This is only used when there is no converter, when a function is called with
   a class name only and returns an option hash */
SV *
build_sv_options_from_options_list (const OPTIONS_LIST *options_list,
                                    CONVERTER *converter)
{
  size_t i;
  HV *options_hv;

  dTHX;

  options_hv = newHV ();

  for (i = 0; i < options_list->number; i++)
    {
      size_t index = options_list->list[i] -1;
      const OPTION *option = options_list->sorted_options[index];
      const char *key = option->name;
      SV *option_sv = build_sv_option (option, converter);

      /* we store all values as they appear, the later overriding earlier
         values, and do not treat undef nor C option  configured field
         especially */
      if (SvOK (option_sv))
        SvREFCNT_inc (option_sv);

      hv_store (options_hv, key, strlen (key), option_sv, 0);
    }

  return newRV_noinc ((SV *)options_hv);
}



/* pass generic converter information to Perl */

static HV *
build_deprecated_directories (
           const DEPRECATED_DIRS_LIST *deprecated_directories)
{
  size_t i;
  HV *deprecated_directories_hv;

  dTHX;

  deprecated_directories_hv = newHV ();
  for (i = 0; i < deprecated_directories->number; i++)
    {
      const char *reference_dir
        = deprecated_directories->list[i].reference_dir;
      const char *obsolete_dir
        = deprecated_directories->list[i].obsolete_dir;
      SV *reference_dir_sv = newSVpv_utf8 (reference_dir, 0);
      SV *obsolete_dir_sv = newSVpv_utf8 (obsolete_dir, 0);
      hv_store_ent (deprecated_directories_hv, obsolete_dir_sv,
                    reference_dir_sv, 0);
    }
  return deprecated_directories_hv;
}

/* Build a converter info hash reference based on CONF */
SV *
build_sv_converter_info_from_converter_initialization_info
  (const CONVERTER_INITIALIZATION_INFO *conf, CONVERTER *converter)
{
  SV *result;
  HV *deprecated_directories_hv;
  HV *translated_commands_hv;
  HV *result_hv;

  dTHX;

  result = build_sv_options_from_options_list (&conf->conf, converter);

  result_hv = (HV *) SvRV (result);
#define STORE(key, sv) hv_store (result_hv, key, strlen (key), sv, 0);
  translated_commands_hv
    = build_translated_commands (&conf->translated_commands);
  STORE("translated_commands", newRV_noinc ((SV *) translated_commands_hv));

  deprecated_directories_hv
    = build_deprecated_directories (&conf->deprecated_config_directories);
  STORE("deprecated_config_directories",
        newRV_noinc ((SV *) deprecated_directories_hv));
#undef STORE

  return result;
}

void
pass_generic_converter_to_converter_sv (SV *converter_sv,
                                        const CONVERTER *converter)
{
  HV *converter_hv;
  HV *expanded_formats_hv;
  HV *translated_commands_hv;
  HV *deprecated_directories_hv;
  HV *output_files_hv;
  HV *unclosed_files_hv;
  HV *opened_files_hv;

  dTHX;

  converter_hv = (HV *)SvRV (converter_sv);

#define STORE(key, sv) hv_store (converter_hv, key, strlen (key), sv, 0);
  /* $converter->{'output_files'}
        = Texinfo::Convert::Utils::output_files_initialize(); */
  output_files_hv = newHV ();
  STORE("output_files", newRV_noinc ((SV *) output_files_hv));

  unclosed_files_hv = newHV ();
  opened_files_hv = newHV ();
  hv_store (output_files_hv, "unclosed_files", strlen ("unclosed_files"),
            newRV_noinc ((SV *) unclosed_files_hv), 0);
  hv_store (output_files_hv, "opened_files",
            strlen ("opened_files"),
            newRV_noinc ((SV *) opened_files_hv), 0);

  expanded_formats_hv
    = build_expanded_formats (converter->expanded_formats);
  STORE("expanded_formats", newRV_noinc ((SV *) expanded_formats_hv));

  translated_commands_hv
    = build_translated_commands (&converter->translated_commands);
  STORE("translated_commands", newRV_noinc ((SV *) translated_commands_hv));

  deprecated_directories_hv
    = build_deprecated_directories (&converter->deprecated_config_directories);
  STORE("deprecated_config_directories",
        newRV_noinc ((SV *) deprecated_directories_hv));

  /* store converter_descriptor in perl converter */
  /* NOTE unlikely IV overflow if PERL_QUAD_MAX < SIZE_MAX */
  STORE("converter_descriptor", newSViv ((IV)converter->converter_descriptor));

#undef STORE
}



/* API to access output file names associated with output units */

static SV *
build_filenames (const FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  size_t i;
  HV *hv;

  dTHX;

  hv = newHV ();

  if (output_unit_files)
    {
      for (i = 0; i < output_unit_files->number; i++)
        {
          const FILE_NAME_PATH_COUNTER *output_unit_file
            = &output_unit_files->list[i];
          const char *normalized_filename
             = output_unit_file->normalized_filename;
          SV *normalized_filename_sv = newSVpv_utf8 (normalized_filename, 0);

          hv_store_ent (hv, normalized_filename_sv,
                    newSVpv_utf8 (output_unit_file->filename, 0), 0);
        }
    }

  return newRV_noinc ((SV *) hv);
}

static SV *
build_file_counters (const FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  size_t i;
  HV *hv;

  dTHX;

  hv = newHV ();

  if (output_unit_files)
    {
      for (i = 0; i < output_unit_files->number; i++)
        {
          const FILE_NAME_PATH_COUNTER *output_unit_file
            = &output_unit_files->list[i];
          const char *filename = output_unit_file->filename;
          SV *filename_sv = newSVpv_utf8 (filename, 0);

          hv_store_ent (hv, filename_sv, newSViv (output_unit_file->counter), 0);
        }
    }

  return newRV_noinc ((SV *) hv);
}

SV *
build_out_filepaths (const FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  size_t i;
  HV *hv;

  dTHX;

  hv = newHV ();

  if (output_unit_files)
    {
      for (i = 0; i < output_unit_files->number; i++)
        {
          const FILE_NAME_PATH_COUNTER *output_unit_file
            = &output_unit_files->list[i];
          const char *filename = output_unit_file->filename;
          SV *filename_sv = newSVpv_utf8 (filename, 0);

          hv_store_ent (hv, filename_sv,
                        newSVpv_utf8 (output_unit_file->filepath, 0), 0);
        }
    }

  return newRV_noinc ((SV *) hv);
}

/* currently unused */
/* Not needed because all the information is already in overriden functions,
   setup in _prepare_units_directions_files (calling _html_set_pages_files)
   and _node_redirections, and accessed through _html_convert_output
   and count_elements_in_filename. */
void
pass_output_unit_files (SV *converter_sv,
                        const FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  SV *filenames_sv;
  SV *file_counters_sv;
  SV *out_filepaths_sv;

  dTHX;

  HV *converter_hv = (HV *) SvRV (converter_sv);

  filenames_sv = build_filenames (output_unit_files);
  file_counters_sv = build_file_counters (output_unit_files);
  out_filepaths_sv = build_out_filepaths (output_unit_files);

#define STORE(key) \
  hv_store (converter_hv, #key, strlen (#key), key##_sv, 0); \
  SvREFCNT_inc (key##_sv);
  STORE(filenames);
  STORE(file_counters);
  STORE(out_filepaths);
#undef STORE
}



/* Texinfo::Convert::Utils output_files_information API */
static void
build_output_files_unclosed_files (HV *hv,
                 const OUTPUT_FILES_INFORMATION *output_files_information)
{
  SV **unclosed_files_sv;
  HV *unclosed_files_hv;

  const FILE_STREAM_LIST *unclosed_files;
  size_t i;

  dTHX;

  unclosed_files_sv = hv_fetch (hv, "unclosed_files",
                                strlen ("unclosed_files"), 0);

  if (!unclosed_files_sv)
    {
      unclosed_files_hv = newHV ();
      hv_store (hv, "unclosed_files", strlen ("unclosed_files"),
                newRV_noinc ((SV *) unclosed_files_hv), 0);
    }
  else
    {
      unclosed_files_hv = (HV *)SvRV (*unclosed_files_sv);
    }

  unclosed_files = &output_files_information->unclosed_files;
  if (unclosed_files->number > 0)
    {
      for (i = 0; i < unclosed_files->number; i++)
        {
          const FILE_STREAM *file_stream = &unclosed_files->list[i];
          const char *file_path = file_stream->file_path;
      /* It is not possible to associate the unclosed stream to a SV.
         It is possible to obtain a PerlIO from a FILE, as described in
           https://perldoc.perl.org/perlapio
         with
           PerlIO *   PerlIO_importFILE  (FILE *stdio, const char *mode)
         However, it is not possible to create an IO * SV from the PerlIO
         or associate to an already existing IO *. An IO * SV is created by
           IO *  newIO()
         and it is possible to get the associated PerlIO, with
           PerlIO *IoOFP(IO *io);
         but not to set it.

         However, it is possible to pass a stream through the XS
         interface.  Therefore here, the unclosed file name is registered,
         the stream can then be passed to Perl through a call of
         the XS interface Texinfo::Convert::ConvertXS::get_unclosed_stream.

         Register that there is an unclosed file from XS by associating
         with undef; if from Perl, it would be associated with a file handle */
          SV *file_path_sv = newSVpv_byte (file_path, 0);
          hv_store_ent (unclosed_files_hv, file_path_sv, newSV (0), 0);
        }
    }
}

/* input hv should be an output_files hv, in general setup by
 $converter->{'output_files'} = Texinfo::Convert::Utils::output_files_initialize(); */
static void
build_output_files_opened_files (HV *hv,
                    const OUTPUT_FILES_INFORMATION *output_files_information)
{
  SV **opened_files_sv;
  HV *opened_files_hv;

  const STRING_LIST *opened_files;
  size_t i;

  dTHX;

  opened_files_sv = hv_fetch (hv, "opened_files", strlen ("opened_files"), 0);

  if (!opened_files_sv)
    {
      opened_files_hv = newHV ();
      hv_store (hv, "opened_files", strlen ("opened_files"),
                newRV_noinc ((SV *) opened_files_hv), 0);
    }
  else
    {
      opened_files_hv = (HV *)SvRV (*opened_files_sv);
    }

  opened_files = &output_files_information->opened_files;
  if (opened_files->number > 0)
    {
      for (i = 0; i < opened_files->number; i++)
        {
          const char *file_path = opened_files->list[i];
          SV *file_path_sv = newSVpv_byte (file_path, 0);
          hv_store_ent (opened_files_hv, file_path_sv, newSViv (1), 0);
        }
    }
}

void
build_output_files_information (SV *converter_sv,
                   const OUTPUT_FILES_INFORMATION *output_files_information)
{
  HV *hv;
  SV **output_files_sv;
  HV *output_files_hv;

  dTHX;

  hv = (HV *) SvRV (converter_sv);

  output_files_sv = hv_fetch (hv, "output_files",
                                strlen ("output_files"), 0);

  if (!output_files_sv)
    {
      output_files_hv = newHV ();
      hv_store (hv, "output_files", strlen ("output_files"),
                newRV_noinc ((SV *) output_files_hv), 0);
    }
  else
    {
      output_files_hv = (HV *)SvRV (*output_files_sv);
    }

  build_output_files_opened_files (output_files_hv,
                                   output_files_information);
  build_output_files_unclosed_files (output_files_hv,
                                     output_files_information);
}


static const char *latex_math_options[] = {
  "DEBUG", "OUTPUT_CHARACTERS", "OUTPUT_ENCODING_NAME", "TEST", 0
};

HV *
latex_build_options_for_convert_to_latex_math (CONVERTER *converter)
{
  HV *options_latex_math_hv;
  int i;

  dTHX;

  options_latex_math_hv = newHV ();

  for (i = 0; latex_math_options[i]; i++)
    {
      const char *option_name = latex_math_options[i];
      const OPTION *option = find_option_string (converter->sorted_options,
                                                 option_name);
      /* no testing if option is NULL, we know that latex_math_options exist */
      SV *option_sv = build_sv_option (option, converter);
      if (SvOK (option_sv))
        {
          SvREFCNT_inc (option_sv);
          hv_store (options_latex_math_hv, option_name,
                    strlen (option_name), option_sv, 0);
        }
    }

  return options_latex_math_hv;
}

