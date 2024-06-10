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
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

/* Avoid namespace conflicts. */
#define context perl_context

#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#undef context

#ifdef ENABLE_NLS
#include <libintl.h>
#endif

#include "command_ids.h"
#include "element_types.h"
#include "types_data.h"
#include "tree_types.h"
#include "global_commands_types.h"
/* for GLOBAL_INFO ERROR_MESSAGE */
#include "document_types.h"
/* CONVERTER sv_string_type */
#include "converter_types.h"
/* for new_element */
#include "tree.h"
#include "extra.h"
/* for element_command_name */
#include "builtin_commands.h"
/* for xasprintf get_encoding_conversion output_conversions fatal
   direction_names expanded_formats_number output_unit_type_names
   informative_command_value get_global_document_command */
#include "utils.h"
/* for debugging */
#include "debug.h"
/* for clear_error_message_list */
#include "errors.h"
#include "convert_to_texinfo.h"
#include "document.h"
#include "output_unit.h"
#include "get_perl_info.h"
#include "build_perl_info.h"

#define LOCALEDIR DATADIR "/locale"

  /* NOTE This file includes the Perl headers, therefore we get the Perl
     redefinitions of functions related to memory allocation, such as
     'free' or 'malloc'.  In other files, the Gnulib redefinition of
     those functions are used.  It is wrong to mix functions from Perl
     and Gnulib.  If memory is allocated with Gnulib defined malloc,
     and then freed with Perl defined free (or vice versa), then an
     error can occur like "Free to wrong pool".
    https://lists.gnu.org/archive/html/bug-texinfo/2016-01/msg00016.html
   */

   /* Functions defined in files with Gnulib definition should therefore
      be used to allocate or free to match with the functions used to
      free or allocate in files using Gnulib definitions.

      To be sure to use Perl defined functions, wrappers
      can be used, from build_perl_info.h:
       perl_only_free, perl_only_strdup, perl_only_strndup, perl_only_malloc.

      To be sure to use non Perl defined functions, constructors and wrappers
      can be used, from utils.h:
       non_perl_free, non_perl_malloc, non_perl_strdup, non_perl_strndup,
       non_perl_xvasprintf, non_perl_xasprintf.
    */

/* wrappers to be sure to use Perl defined functions */
void
perl_only_free (void *ptr)
{
  free (ptr);
}

void *
perl_only_malloc (size_t size)
{
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

int
init (int texinfo_uninstalled, char *builddir)
{
#ifdef ENABLE_NLS

  setlocale (LC_ALL, "");

  /* Note: this uses the installed translations even when running an
     uninstalled program. */
  bindtextdomain (PACKAGE_CONFIG, LOCALEDIR);

  textdomain (PACKAGE_CONFIG);
#else

#endif

  /* do that before any other call to get_encoding_conversion with
     &output_conversions. */
  get_encoding_conversion ("utf-8", &output_conversions);

  return 1;
}


void element_to_perl_hash (ELEMENT *e, int avoid_recursion);

/* Return reference to Perl array built from e.  If any of
   the elements in E don't have 'hv' set, set it to an empty
   hash table, or create it if there is no parent element, indicating the
   element is not in the tree.
   Note that not having 'hv' set should be rare (actually never happen),
   as the contents and args children are processed before the extra
   information where build_perl_array is called.
 */
static SV *
build_perl_array (const ELEMENT_LIST *e, int avoid_recursion)
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
      /* Calling free in this file on data possibly allocated with gnulib
         is not ok in general, but ok here, as it should never be called */
              free (debug_str);
              fprintf (stderr, "%s", message.text);
              free (message.text);
              /* Out-of-tree element */
              /* WARNING: This is possibly recursive. */
              element_to_perl_hash (e->list[i], avoid_recursion);
            }
        }
      av_store (av, i, newRV_inc ((SV *) e->list[i]->hv));
    }
  return sv;
}

/* contents appears in other parts of the tree */
void
build_perl_container (ELEMENT *e, int avoid_recursion)
{
  SV *sv;

  dTHX;

  if (!e->hv)
    e->hv = newHV ();
  else
    hv_clear (e->hv);

  sv = build_perl_array (&e->e.c->contents, avoid_recursion);

  hv_store (e->hv, "contents", strlen ("contents"), sv, 0);
}

static SV *
build_perl_directions (const ELEMENT_LIST *e, int avoid_recursion)
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
      /* Calling free in this file on data possibly allocated with gnulib
         is not ok in general, but ok here, as it should never be called */
                  free (debug_str);
                  fprintf (stderr, "%s", message.text);
                  free (message.text);
                  /* Out-of-tree element */
                  /* WARNING: This is possibly recursive. */
                  element_to_perl_hash (e->list[d], avoid_recursion);
                }
            }
          hv_store (hv, key, strlen (key),
                    newRV_inc ((SV *) e->list[d]->hv), 0);
        }
    }
  return sv;
}


/* Used to create a string considered as bytes by perl */
SV *
newSVpv_byte (const char *str, STRLEN len)
{
  SV *sv;
  dTHX;

  sv = newSVpv (str, len);
  SvUTF8_off (sv);
  return sv;
}

static void
build_additional_info (HV *extra, const ASSOCIATED_INFO *a,
                       int avoid_recursion, int *nr_info)
{
  dTHX;

  if (a->info_number > 0)
    {
      int i;

      for (i = 0; i < a->info_number; i++)
        {
          const KEY_PAIR *k = &a->info[i];
#define STORE(sv) hv_store (extra, key, strlen (key), sv, 0)
          const char *key = k->key;

          if (k->type == extra_deleted)
            continue;
          (*nr_info)++;

          switch (k->type)
            {
            case extra_element:
              {
              /* For references to other parts of the tree, create the hash so
                 we can point to it. */
              /* Note that this does not happen much, as the contents
                 and args are processed before the extra information.  It only
                 happens for root commands (sections, nodes) and associated
                 commands, and could also happen for subentry as it is not
                 a children of the associated index command */
              ELEMENT *f = k->k.element;
              if (!f->hv)
                f->hv = newHV ();
              STORE(newRV_inc ((SV *)f->hv));
              break;
              }
            case extra_element_oot:
              {
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
              ELEMENT *f = k->k.element;
              if (!f->hv || !avoid_recursion)
                element_to_perl_hash (f, avoid_recursion);
              STORE(newRV_inc ((SV *)f->hv));
              break;
              }
            case extra_container:
              {
              ELEMENT *f = k->k.element;
              build_perl_container (f, avoid_recursion);
              STORE(newRV_inc ((SV *)f->hv));
              break;
              }
            case extra_contents:
              {
              const ELEMENT_LIST *l = k->k.list;
              if (l && l->number)
                STORE(build_perl_array (l, avoid_recursion));
              break;
              }
            case extra_directions:
              {
              STORE(build_perl_directions (k->k.list, avoid_recursion));
              break;
              }
            case extra_string:
              { /* A simple string. */
              const char *value = k->k.string;
              STORE(newSVpv_utf8 (value, 0));
              break;
              }
            case extra_integer:
              { /* A simple integer.  The intptr_t cast here prevents
                   a warning on MinGW ("cast from pointer to integer of
                   different size"). */
              IV value = (IV) (intptr_t) k->k.integer;
              STORE(newSViv (value));
              break;
              }
            case extra_misc_args:
              {
              size_t j;
              const ELEMENT_LIST *l = k->k.list;
              AV *av = newAV ();
              av_unshift (av, l->number);

              STORE(newRV_inc ((SV *)av));
              /* An array of strings or integers. */
              for (j = 0; j < l->number; j++)
                {
                  const ELEMENT *e = l->list[j];
                  if (e->type == ET_other_text)
                    {
                      if (e->e.text->end > 0)
                        {
                          SV *sv = newSVpv_utf8 (e->e.text->text,
                                                 e->e.text->end);
                          av_store (av, j, sv);
                        }
                      else
                        /* Empty strings permitted. */
                        av_store (av, j, newSVpv ("", 0));
                    }
                  else
                    {
                      const KEY_PAIR *k_integer;
                      k_integer = lookup_extra (e, "integer");
                      if (k_integer)
                        {
                          IV value = (IV) k_integer->k.integer;
                          av_store (av, j, newSViv (value));
                        }
                    }
                }
              break;
              }
            default:
              fatal ("store_additional_info: unknown extra type");
              break;
            }
        }
#undef STORE
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

  build_additional_info (hv, a, avoid_recursion, &nr_info);

  if (*info_hv == 0 && nr_info > 0)
    hv_store (e->hv, key, strlen (key),
              newRV_inc ((SV *)hv), 0);
}

static void
store_source_mark_list (const ELEMENT *e)
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
          const SOURCE_MARK *s_mark = e->source_mark_list.list[i];
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
              if (e->hv)
                fatal ("element_to_perl_hash source mark elt twice");
               */
              element_to_perl_hash (s_m_e, 0);
              STORE("element", newRV_inc ((SV *)s_m_e->hv));
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

static void
setup_info_hv (ELEMENT *e, const char *type_key, HV **info_hv)
{
  dTHX;

  if (*info_hv == 0)
    {
      *info_hv = (HV *) newHV ();
      hv_store (e->hv, type_key, strlen (type_key),
                newRV_inc ((SV *)*info_hv), 0);
    }
}

static void
store_info_element (ELEMENT *e, ELEMENT *info_element, const char *type_key,
                    const char *key, int avoid_recursion, HV **info_hv)
{
  dTHX;

  if (!info_element->hv || !avoid_recursion)
    element_to_perl_hash (info_element, avoid_recursion);

  setup_info_hv (e, type_key, info_hv);
  hv_store (*info_hv, key, strlen (key),
            newRV_inc ((SV *)info_element->hv), 0);
}

static void
store_info_string (ELEMENT *e, const char *string, const char *type_key,
                   const char *key, HV **info_hv)
{
  dTHX;

  setup_info_hv (e, type_key, info_hv);
  hv_store (*info_hv, key, strlen (key),
            newSVpv_utf8 (string, strlen (string)), 0);
}

static void
store_info_integer (ELEMENT *e, int value, const char *type_key,
                     const char *key, HV **info_hv)
{
  dTHX;

  setup_info_hv (e, type_key, info_hv);
  hv_store (*info_hv, key, strlen (key), newSViv (value), 0);
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
/* If AVOID_RECURSION is set, recurse in children elements only if
   hv is not set */
void
element_to_perl_hash (ELEMENT *e, int avoid_recursion)
{
  SV *sv;
  HV *info_hv = 0;
  HV *extra_hv = 0;

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
          fatal (message.text);
          non_perl_free (debug_str);
        }
      sv = newRV_inc ((SV *) e->parent->hv);
      hv_store (e->hv, "parent", strlen ("parent"), sv, HSH_parent);
    }

  store_source_mark_list (e);

  if (e->flags & EF_inserted)
    store_info_integer (e, 1, "info", "inserted", &info_hv);

  if (type_data[e->type].flags & TF_text)
    {
      if (e->type != ET_normal_text && e->type != ET_other_text)
        {
          sv = newSVpv (type_data[e->type].name, 0);
          hv_store (e->hv, "type", strlen ("type"), sv, HSH_type);
        }
      sv = newSVpv_utf8 (e->e.text->text, e->e.text->end);
      hv_store (e->hv, "text", strlen ("text"), sv, HSH_text);
      return;
    }

  /* non-text elements */

  if (e->type
      && (!(type_data[e->type].flags & TF_at_command)
          || e->type == ET_index_entry_command
          || e->type == ET_definfoenclose_command))
    {
      sv = newSVpv (type_data[e->type].name, 0);
      hv_store (e->hv, "type", strlen ("type"), sv, HSH_type);
    }

  if (e->type == ET_block_line_arg || e->type == ET_line_arg)
    {
      ELEMENT *f = e->elt_info[eit_comment_at_end];
      if (f)
        store_info_element (e, f, "info", "comment_at_end",
                            avoid_recursion, &info_hv);
    }

  if (e->cmd)
    {
      /* Note we could optimize the call to newSVpv here and
         elsewhere by passing an appropriate second argument. */
      sv = newSVpv (element_command_name (e), 0);
      hv_store (e->hv, "cmdname", strlen ("cmdname"), sv, HSH_cmdname);
    }

  if (type_data[e->type].flags & TF_braces)
    {
      ELEMENT *f = e->elt_info[eit_spaces_after_cmd_before_arg];
      if (f)
        store_info_element (e, f, "info", "spaces_after_cmd_before_arg",
                            avoid_recursion, &info_hv);
    }

  if (type_data[e->type].flags & TF_spaces_before)
    {
      ELEMENT *f;
      if (e->type != ET_context_brace_command)
        f = e->elt_info[eit_spaces_before_argument];
      else
        f = e->elt_info[eit_brace_content_spaces_before_argument];

      if (f)
        store_info_element (e, f, "info", "spaces_before_argument",
                            avoid_recursion, &info_hv);
    }

  if (type_data[e->type].flags & TF_spaces_after)
    {
      ELEMENT *f = e->elt_info[eit_spaces_after_argument];
      if (f)
        store_info_element (e, f, "info", "spaces_after_argument",
                            avoid_recursion, &info_hv);
    }

  if (e->cmd || type_data[e->type].flags & TF_macro_call)
    {
      if (e->e.c->string_info[sit_alias_of])
        store_info_string (e, e->e.c->string_info[sit_alias_of],
                          "info", "alias_of", &info_hv);
    }

  if (e->type == ET_lineraw_command)
    {
      if (e->e.c->string_info[sit_arg_line])
        store_info_string (e, e->e.c->string_info[sit_arg_line],
                          "info", "arg_line", &info_hv);
    }
  else if (e->type == ET_definfoenclose_command
           || e->type == ET_index_entry_command
           || type_data[e->type].flags & TF_macro_call)
    {
      if (e->e.c->string_info[sit_command_name])
        store_info_string (e, e->e.c->string_info[sit_command_name],
                          "info", "command_name", &info_hv);
    }
  else if (e->cmd == CM_verb && e->e.c->args.number > 0)
    {
       store_info_string (e, e->e.c->string_info[sit_delimiter],
                          "info", "delimiter", &info_hv);
    }
  /* TODO the flags are  checked for all the elements, it is probably
     quite inefficient, as is the code above for elt_info and string_info */

#define store_flag(flag) \
  if (e->flags & EF_##flag) \
    store_info_integer (e, 1, "extra", #flag, &extra_hv);

  /* kbd */
  store_flag(code)
  /* node */
  store_flag(isindex)
  /* node, anchor, float */
  store_flag(is_target)
  /* flags & CF_def block/line for @def*x */
  store_flag(omit_def_name_space)
  /* @def*x */
  store_flag(not_after_command)
  /* @*macro */
  store_flag(invalid_syntax)
  /* kbd as command_as_arg */
  store_flag(command_as_argument_kbd_code)
  /* ET_paragraph */
  store_flag(indent)
  /* ET_paragraph */
  store_flag(noindent)
#undef store_flag

  if (e->e.c->contents.number > 0)
    {
      AV *av;
      int i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      av_unshift (av, e->e.c->contents.number);

      hv_store (e->hv, "contents", strlen ("contents"), sv, HSH_contents);
      for (i = 0; i < e->e.c->contents.number; i++)
        {
          ELEMENT *child = e->e.c->contents.list[i];
          if (!child->hv || !avoid_recursion)
            element_to_perl_hash (child, avoid_recursion);
      /* we do not transfer the hv ref to the perl av because we consider
         that contents.list[i]->hv still own a reference, which should only be
         released when the element is destroyed, by calling
         unregister_perl_tree_element */
          sv = newRV_inc ((SV *) child->hv);
          av_store (av, i, sv);
        }
    }

  if (e->e.c->args.number > 0)
    {
      AV *av;
      int i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      av_unshift (av, e->e.c->args.number);

      hv_store (e->hv, "args", strlen ("args"), sv, HSH_args);
      for (i = 0; i < e->e.c->args.number; i++)
        {
          ELEMENT *child = e->e.c->args.list[i];
          if (!child->hv || !avoid_recursion)
            element_to_perl_hash (child, avoid_recursion);
          sv = newRV_inc ((SV *) child->hv);
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
          hv_store (e->hv, "associated_unit", strlen ("associated_unit"),
                    newRV_inc ((SV *) e->e.c->associated_unit->hv), 0);
        }
    }

  if (e->e.c->source_info.line_nr)
    {
#define STORE(key, sv, hsh) hv_store (hv, key, strlen (key), sv, hsh)
      const SOURCE_INFO *source_info = &e->e.c->source_info;
      HV *hv = newHV ();
      hv_store (e->hv, "source_info", strlen ("source_info"),
                newRV_noinc ((SV *)hv), HSH_source_info);

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
}

HV *
build_texinfo_tree (ELEMENT *root, int avoid_recursion)
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
  if (!root->hv || !avoid_recursion)
    element_to_perl_hash (root, avoid_recursion);
  return root->hv;
}

/* Return array of target elements.  build_texinfo_tree must
   be called first. */
AV *
build_target_elements_list (const LABEL_LIST *labels_list)
{
  AV *target_array;
  SV *sv;
  int i;

  dTHX;

  target_array = newAV ();
  av_unshift (target_array, labels_list->number);

  for (i = 0; i < labels_list->number; i++)
    {
      sv = newRV_inc (labels_list->list[i].element->hv);
      av_store (target_array, i, sv);
    }

  return target_array;
}

HV *
build_identifiers_target (const LABEL_LIST *identifiers_target)
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
build_internal_xref_list (const ELEMENT_LIST *internal_xref_list)
{
  AV *list_av;
  SV *sv;
  int i;

  dTHX;

  list_av = newAV ();
  av_unshift (list_av, internal_xref_list->number);

  for (i = 0; i < internal_xref_list->number; i++)
    {
      sv = newRV_inc (internal_xref_list->list[i]->hv);
      av_store (list_av, i, sv);
    }

  return list_av;
}

AV *
build_elements_list (const ELEMENT_LIST *list)
{
  AV *list_av;
  SV *sv;
  int i;

  dTHX;

  list_av = newAV ();

  av_unshift (list_av, list->number);

  for (i = 0; i < list->number; i++)
    {
      sv = newRV_inc (list->list[i]->hv);
      av_store (list_av, i, sv);
    }

  return list_av;
}

/* Return hash for list of @float's that appeared in the file. */
HV *
build_float_types_list (const FLOAT_RECORD_LIST *floats)
{
  HV *float_hash;
  SV *sv;
  int i;

  dTHX;

  float_hash = newHV ();

  for (i = 0; i < floats->number; i++)
    {
      AV *av = 0;
      SV *float_type = newSVpv_utf8 (floats->list[i].type, 0);
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
      sv = newRV_inc ((SV *)floats->list[i].element->hv);
      av_push (av, sv);
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
  int j;
  int entry_number;

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


AV *
build_string_list (const STRING_LIST *strings_list, enum sv_string_type type)
{
  AV *av;
  int i;

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


/* Return object to be used as 'info', retrievable with the
   'global_information' function. */
HV *
build_global_info (const GLOBAL_INFO *global_info_ref,
                   const GLOBAL_COMMANDS *global_commands_ref)
{
  HV *hv;
  const GLOBAL_INFO global_info = *global_info_ref;
  const GLOBAL_COMMANDS global_commands = *global_commands_ref;
  const ELEMENT *document_language;
  int nr_info;

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
  if (global_info.input_perl_encoding)
    hv_store (hv, "input_perl_encoding", strlen ("input_perl_encoding"),
              newSVpv (global_info.input_perl_encoding, 0), 0);

  if (global_info.included_files.number)
    {
      AV *av = build_string_list (&global_info.included_files, svt_byte);
      hv_store (hv, "included_files", strlen ("included_files"),
                newRV_noinc ((SV *) av), 0);
    }

  build_additional_info (hv, &global_info.other_info, 0, &nr_info);

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
HV *
build_global_commands (const GLOBAL_COMMANDS *global_commands_ref)
{
  HV *hv;
  AV *av;
  int i;
  const GLOBAL_COMMANDS global_commands = *global_commands_ref;

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

  /* list of direntry and dircategory */
  if (global_commands.dircategory_direntry.number > 0)
    {
      AV *av = newAV ();
      hv_store (hv, "dircategory_direntry", strlen ("dircategory_direntry"),
                newRV_noinc ((SV *) av), 0);
      for (i = 0; i < global_commands.dircategory_direntry.number; i++)
        {
          const ELEMENT *e = global_commands.dircategory_direntry.list[i];
          if (e->hv)
            av_push (av, newRV_inc ((SV *) e->hv));
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
          if (e->hv)
            av_push (av, newRV_inc ((SV *) e->hv));
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
          if (e->hv)
            av_push (av, newRV_inc ((SV *) e->hv));
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
          if (e->hv)                                                    \
            av_push (av, newRV_inc ((SV *) e->hv));                     \
        }                                                               \
    }

#include "global_multi_commands_case.c"

#undef GLOBAL_CASE


  return hv;
}




static void
build_source_info_hash (const SOURCE_INFO source_info, HV *hv)
{
  dTHX;

  if (source_info.file_name)
    {
      hv_store (hv, "file_name", strlen ("file_name"),
                newSVpv (source_info.file_name, 0), 0);
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
}

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
    build_source_info_hash (e.source_info, hv);

  return newRV_noinc ((SV *) hv);
}

/* Errors */
AV *
build_errors (const ERROR_MESSAGE *error_list, size_t error_number)
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
  int i;

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
          AV *av = (AV *)SvRV (*errors_warnings_sv);

          for (i = 0; i < error_messages->number; i++)
            {
              const ERROR_MESSAGE error_msg = error_messages->list[i];
              SV *sv = convert_error (error_msg);

              if (error_msg.type == MSG_error && !error_msg.continuation)
                error_nrs++;
              av_push (av, sv);
            }

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

void
pass_document_parser_errors_to_registrar (int document_descriptor,
                                          SV *parser_sv)
{
  DOCUMENT *document;
  SV *errors_warnings_sv = 0;
  SV *error_nrs_sv = 0;

  dTHX;

  document = retrieve_document (document_descriptor);

  /* This cannot happen, the function is called on a document that
     was just registered
  if (!document)
    return;
   */

  pass_errors_to_registrar (&document->parser_error_messages, parser_sv,
                            &errors_warnings_sv, &error_nrs_sv);
  clear_error_message_list (&document->parser_error_messages);
}



/* build a minimal document, without tree/global commands/indices, only
   with the document descriptor information, errors and information that do
   not refer directly to tree elements */
SV *
get_document (size_t document_descriptor)
{
  HV *hv_stash;
  HV *hv;
  DOCUMENT *document;
  SV *sv;
  HV *hv_tree;
  HV *hv_info;

  dTHX;

  document = retrieve_document (document_descriptor);

  hv = newHV ();
  hv_tree = newHV ();

  hv_info = build_global_info (&document->global_info,
                               &document->global_commands);

#define STORE(key, value) hv_store (hv, key, strlen (key), newRV_inc ((SV *) value), 0)
  STORE("tree", hv_tree);
  STORE("global_info", hv_info);

  document->modified_information &= ~F_DOCM_global_info;
#undef STORE

  hv_store (hv, "document_descriptor", strlen ("document_descriptor"),
            newSViv (document_descriptor), 0);

  hv_store (hv_tree, "tree_document_descriptor",
            strlen ("tree_document_descriptor"),
            newSViv (document_descriptor), 0);

  hv_stash = gv_stashpv ("Texinfo::Document", GV_ADD);
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}

static void
fill_document_hv (HV *hv, size_t document_descriptor, int no_store)
{
  DOCUMENT *document;
  HV *hv_tree;
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

  dTHX;

  document = retrieve_document (document_descriptor);

  hv_tree = build_texinfo_tree (document->tree, 0);

  hv_info = build_global_info (&document->global_info,
                               &document->global_commands);

  hv_commands_info = build_global_commands (&document->global_commands);

  hv_index_names = build_index_data (&document->indices_info);

  /* NOTE there is also a document->listoffloats which structure
     is more like the hv_listoffloats_list, so it could be
     possible to replace build_float_types_list by a new function,
     for example build_listoffloats_list that would create the
     hv_listoffloats_list based on document->listoffloats. */
  hv_listoffloats_list
         = build_float_types_list (&document->floats);

  av_internal_xref = build_internal_xref_list (&document->internal_references);

  hv_identifiers_target = build_identifiers_target (&document->identifiers_target);

  av_labels_list = build_target_elements_list (&document->labels_list);

  if (document->nodes_list)
    av_nodes_list = build_elements_list (document->nodes_list);

  if (document->sections_list)
    av_sections_list = build_elements_list (document->sections_list);

  if (document->indices_sort_strings)
    hv_indices_sort_strings = build_indices_sort_strings (
                                      document->indices_sort_strings,
                                      hv_index_names);

#define STORE(key, value) hv_store (hv, key, strlen (key), newRV_inc ((SV *) value), 0)

  /* must be kept in sync with Texinfo::Document register keys */
  STORE("tree", hv_tree);
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

  if (av_nodes_list)
    {
      STORE("nodes_list", av_nodes_list);
      document->modified_information &= ~F_DOCM_nodes_list;
    }

  if (av_sections_list)
    {
      STORE("sections_list", av_sections_list);
      document->modified_information &= ~F_DOCM_sections_list;
    }

  if (hv_indices_sort_strings)
    {
      STORE("index_entries_sort_strings", hv_indices_sort_strings);
      document->modified_information &= ~F_DOCM_indices_sort_strings;
    }
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
}

/* Return Texinfo::Document perl object corresponding to the
   C document structure corresponding to DOCUMENT_DESCRIPTOR.
   If NO_STORE is set, destroy the C document.
 */
SV *
build_document (size_t document_descriptor, int no_store)
{
  HV *hv;
  SV *sv;
  HV *hv_stash;

  dTHX;

  hv = newHV ();

  fill_document_hv (hv, document_descriptor, no_store);

  hv_stash = gv_stashpv ("Texinfo::Document", GV_ADD);
  sv = newRV_noinc ((SV *) hv);
  sv_bless (sv, hv_stash);
  return sv;
}

/* Currently unused, but could be */
void
rebuild_document (SV *document_in, int no_store)
{
  HV *hv;
  SV **document_descriptor_sv;
  char *descriptor_key = "document_descriptor";
  dTHX;

  hv = (HV *)SvRV (document_in);

  document_descriptor_sv = hv_fetch (hv, descriptor_key,
                                     strlen (descriptor_key), 0);

  if (document_descriptor_sv)
    {
      int document_descriptor = SvIV (*document_descriptor_sv);
      fill_document_hv (hv, document_descriptor, no_store);
    }
  else
    {
      fprintf (stderr, "ERROR: document rebuild: no %s\n", descriptor_key);
    }
}

SV *
store_texinfo_tree (DOCUMENT *document, HV *document_hv)
{
  SV *result_sv = 0;
  const char *key = "tree";

  dTHX;

  if (document->modified_information & F_DOCM_tree)
    {
      HV *result_hv = build_texinfo_tree (document->tree, 0);
      hv_store (result_hv, "tree_document_descriptor",
                strlen ("tree_document_descriptor"),
                newSViv (document->descriptor), 0);
      result_sv = newRV_inc ((SV *) result_hv);
      hv_store (document_hv, key, strlen (key), result_sv, 0);
      document->modified_information &= ~F_DOCM_tree;
    }
  return result_sv;
}

/* there are 2 differences between BUILD_PERL_DOCUMENT_ITEM and
   BUILD_PERL_DOCUMENT_LIST: in BUILD_PERL_DOCUMENT_LIST no check on existing
    and the address of document->fieldname is passed.
 */

#define BUILD_PERL_DOCUMENT_ITEM(funcname,fieldname,keyname,flagname,buildname,HVAV) \
SV * \
funcname (SV *document_in) \
{ \
  HV *document_hv; \
  SV *result_sv = 0; \
  const char *key = keyname; \
\
  dTHX;\
\
  document_hv = (HV *) SvRV (document_in); \
  DOCUMENT *document = get_sv_document_document (document_in, #funcname); \
\
  if (document && document->fieldname)\
    {\
      store_texinfo_tree (document, document_hv);\
      if (document->modified_information & flagname)\
        {\
          HVAV *result_av_hv = buildname (document->fieldname);\
          result_sv = newRV_inc ((SV *) result_av_hv);\
          hv_store (document_hv, key, strlen (key), result_sv, 0);\
          document->modified_information &= ~flagname;\
        }\
    }\
\
  if (!result_sv)\
    {\
      SV **sv_reference = hv_fetch (document_hv, key, strlen (key), 0);\
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



BUILD_PERL_DOCUMENT_ITEM(document_nodes_list,nodes_list,"nodes_list",F_DOCM_nodes_list,build_elements_list,AV)

BUILD_PERL_DOCUMENT_ITEM(document_sections_list,sections_list,"sections_list",F_DOCM_sections_list,build_elements_list,AV)

#undef BUILD_PERL_DOCUMENT_ITEM

#define BUILD_PERL_DOCUMENT_LIST(funcname,fieldname,keyname,flagname,buildname,HVAV) \
SV * \
funcname (SV *document_in) \
{ \
  HV *document_hv; \
  SV *result_sv = 0; \
  const char *key = keyname; \
\
  dTHX;\
\
  document_hv = (HV *) SvRV (document_in); \
  DOCUMENT *document = get_sv_document_document (document_in, #funcname); \
\
  if (document)\
    {\
      store_texinfo_tree (document, document_hv);\
      if (document->modified_information & flagname)\
        {\
          HVAV *result_av_hv = buildname (&document->fieldname);\
          result_sv = newRV_inc ((SV *) result_av_hv);\
          hv_store (document_hv, key, strlen (key), result_sv, 0);\
          document->modified_information &= ~flagname;\
        }\
    }\
\
  if (!result_sv)\
    {\
      SV **sv_reference = hv_fetch (document_hv, key, strlen (key), 0);\
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

BUILD_PERL_DOCUMENT_LIST(document_floats_information,floats,"listoffloats_list",F_DOCM_floats,build_float_types_list,HV)

BUILD_PERL_DOCUMENT_LIST(document_internal_references_information,internal_references,"internal_references",F_DOCM_internal_references,build_internal_xref_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_labels_list,labels_list,"labels_list",F_DOCM_labels_list,build_target_elements_list,AV)

BUILD_PERL_DOCUMENT_LIST(document_indices_information,indices_info,"indices",F_DOCM_index_names,build_index_data,HV)

BUILD_PERL_DOCUMENT_LIST(document_labels_information,identifiers_target,"identifiers_target",F_DOCM_identifiers_target,build_identifiers_target,HV)

BUILD_PERL_DOCUMENT_LIST(document_global_commands_information,global_commands,"commands_info",F_DOCM_global_commands,build_global_commands,HV)

#undef BUILD_PERL_DOCUMENT_LIST

SV *
document_global_information (SV *document_in)
{
  HV *document_hv;
  SV *result_sv = 0;
  const char *key = "global_info";

  dTHX;

  document_hv = (HV *) SvRV (document_in);

  DOCUMENT *document = get_sv_document_document (document_in,
                                     "document_global_information");
  if (document)
    {
      if (document->modified_information & F_DOCM_global_info)
        {
          HV *result_hv = build_global_info (&document->global_info,
                                             &document->global_commands);
          result_sv = newRV_inc ((SV *) result_hv);
          hv_store (document_hv, key, strlen (key), result_sv, 0);
          document->modified_information &= ~F_DOCM_global_info;
        }
    }

  if (!result_sv)
    {
      SV **sv_reference = hv_fetch (document_hv, key, strlen (key), 0);
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
    output_unit->hv = newHV ();
  else
    hv_clear (output_unit->hv);

#define STORE(key) hv_store (output_unit->hv, key, strlen (key), sv, 0)
  sv = newSVpv (output_unit_type_names[output_unit->unit_type], 0);
  STORE("unit_type");

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
          OUTPUT_UNIT *direction_unit = output_unit->directions[i];
          SV *unit_sv;
          /* should only happen for references to external nodes that have
             not yet been processed */
          if (!direction_unit->hv)
            {
              if (direction_unit->unit_type != OU_external_node_unit)
                {
                  char *msg;
                  xasprintf (&msg, "BUG: not external node but no"
                                   " output unit Perl ref: %s",
                                   output_unit_texi (direction_unit));
                  fatal (msg);
                  free (msg);
                }
              output_unit_to_perl_hash (direction_unit);
            }
          unit_sv = newRV_inc ((SV *) direction_unit->hv);
          hv_store (directions_hv, direction_name, strlen (direction_name),
                    unit_sv, 0);
        }
    }

  if (output_unit->unit_command)
    {
      const ELEMENT *command;
      if (!output_unit->unit_command->hv
          && output_unit->unit_command->type == ET_special_unit_element)
        {
          SV *unit_sv;

          /* a virtual out of tree element, add it to perl */
          element_to_perl_hash (output_unit->unit_command, 0);

          unit_sv = newRV_inc ((SV *) output_unit->hv);
          hv_store (output_unit->unit_command->hv, "associated_unit",
                    strlen ("associated_unit"), unit_sv, 0);
        }

      command = output_unit->unit_command;

      if (!command->hv)
        fatal ("Missing output unit unit_command hv");

      sv = newRV_inc ((SV *) command->hv);
      STORE("unit_command");
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
      int i;

      av = newAV ();
      sv = newRV_noinc ((SV *) av);
      STORE("unit_contents");

      for (i = 0; i < output_unit->unit_contents.number; i++)
        {
          HV *element_hv = output_unit->unit_contents.list[i]->hv;
          SV *unit_sv;

          if (!element_hv)
            fatal ("Missing output unit unit_contents element hv");

          sv = newRV_inc ((SV *) element_hv);

          av_push (av, sv);

          unit_sv = newRV_inc ((SV *) output_unit->hv);
          /* set the tree element associated_unit */
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
}

static int
fill_output_units_descriptor_av (AV *av_output_units,
                                 size_t output_units_descriptor)
{
  const OUTPUT_UNIT_LIST *output_units;
  size_t i;

  dTHX;

  output_units = retrieve_output_units (output_units_descriptor);

  if (!output_units || !output_units->number)
    return 0;

  for (i = 0; i < output_units->number; i++)
    {
      SV *sv;
      OUTPUT_UNIT *output_unit = output_units->list[i];
      output_unit_to_perl_hash (output_unit);
      /* we do not transfer the hv ref to the perl av because we consider
         that output_unit->hv still own a reference, which should only be
         released when the output_unit is destroyed in C */
      sv = newRV_inc ((SV *) output_unit->hv);
      av_push (av_output_units, sv);
    }

  /* store in the first perl output unit of the list */
  hv_store (output_units->list[0]->hv, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv (output_units_descriptor), 0);
  return 1;
}

SV *
build_output_units_list (size_t output_units_descriptor)
{
  AV *av_output_units;

  dTHX;

  av_output_units = newAV ();

  if (!fill_output_units_descriptor_av (av_output_units,
                                        output_units_descriptor))
    {/* no output unit */
      av_undef (av_output_units);
      return newSV (0);
    }
  else
    return newRV_noinc ((SV *) av_output_units);
}

/* a fake output units list that only holds a descriptor allowing
   to retrieve the C data */
SV *
setup_output_units_handler (size_t output_units_descriptor)
{
  AV *av_output_units;
  HV *dummy_output_unit;
  SV *sv;
  const OUTPUT_UNIT_LIST *output_units;

  dTHX;

  output_units = retrieve_output_units (output_units_descriptor);

  if (!output_units || !output_units->number)
    return newSV (0);

  av_output_units = newAV ();

  dummy_output_unit = newHV ();

  hv_store (dummy_output_unit, "output_units_descriptor",
            strlen ("output_units_descriptor"),
            newSViv (output_units_descriptor), 0);

  sv = newRV_inc ((SV *) dummy_output_unit);
  av_push (av_output_units, sv);

  return newRV_noinc ((SV *) av_output_units);
}

void
rebuild_output_units_list (SV *output_units_sv, size_t output_units_descriptor)
{
  AV *av_output_units;

  dTHX;

  if (!SvOK (output_units_sv))
    {
      const OUTPUT_UNIT_LIST *output_units
        = retrieve_output_units (output_units_descriptor);
      if (output_units && output_units->number)
        fprintf (stderr, "BUG: no input sv for %zu output units (%zu)\n",
                 output_units->number, output_units_descriptor);
      return;
    }

  av_output_units = (AV *) SvRV (output_units_sv);
  av_clear (av_output_units);

  if (!fill_output_units_descriptor_av (av_output_units,
                                        output_units_descriptor))
    {
 /* the output_units_descriptor is not found.  In the codes calling
    this function, the output_units_descriptor should have been found
    within the Perl reference used as argument here.  If there is
    something to rebuild, this should mean that there is an output
    units list in C, therefore we output an error here.  It could
    be redundant with errors output earlier in calling code, but it
    is better to have more debug messages.
  */
      fprintf (stderr, "BUG: rebuild_output_units_list: output unit"
                  " descriptor not found: %zu\n", output_units_descriptor);
      return;
    }
}



SV *
get_conf (const CONVERTER *converter, const char *option_name)
{
  dTHX;

  if (converter->conf)
    return build_sv_option (converter->conf, option_name, converter);
  return newSV (0);
}

AV *
build_integer_stack (const INTEGER_STACK *integer_stack)
{
  AV *av;
  int i;

  dTHX;

  av = newAV ();

  for (i = 0; i < integer_stack->top; i++)
    {
      int value = integer_stack->stack[i];
      av_push (av, newSViv (value));
    }
  return av;
}

SV *
build_filenames (const FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  int i;
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

SV *
build_file_counters (const FILE_NAME_PATH_COUNTER_LIST *output_unit_files)
{
  int i;
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
  int i;
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
  STORE (file_counters);
  STORE (out_filepaths);
#undef STORE
}

/* Texinfo::Common output_files_information API */
void
build_output_files_unclosed_files (HV *hv,
                 const OUTPUT_FILES_INFORMATION *output_files_information)
{
  SV **unclosed_files_sv;
  HV *unclosed_files_hv;

  const FILE_STREAM_LIST *unclosed_files;
  int i;

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
         the stream can then be passed to perl through a call of
         the XS interface Texinfo::Convert::ConvertXS::get_unclosed_stream.
         This is normally done by calling get_output_files_XS_unclosed_streams
         as this method retrieves the file streams of all the unclosed file
         paths that came from XS and are not associated to a stream.

         Register that there is an unclosed file from XS by associating
         with undef; if from perl, it would be associated with a file handle */
          SV *file_path_sv = newSVpv_byte (file_path, 0);
          hv_store_ent (unclosed_files_hv, file_path_sv, newSV (0), 0);
        }
    }
}

/* input hv should be an output_files hv, in general setup by
 $converter->{'output_files'} = Texinfo::Common::output_files_initialize(); */
void
build_output_files_opened_files (HV *hv,
                    const OUTPUT_FILES_INFORMATION *output_files_information)
{
  SV **opened_files_sv;
  HV *opened_files_hv;

  const STRING_LIST *opened_files;
  int i;

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

/* not used for now */
SV *
build_expanded_formats (const EXPANDED_FORMAT *expanded_formats)
{
  int i;
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
  return newRV_noinc ((SV *)expanded_hv);
}

SV *
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
              free (message);

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
          free (message);

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
              free (message);

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

SV *
html_build_direction_icons (const CONVERTER *converter,
                            const DIRECTION_ICON_LIST *direction_icons)
{
  HV *icons_hv;
  int i;

  dTHX;

  if (!direction_icons)
    return newSV (0);

  if (!converter || !converter->direction_unit_direction_name)
    return newSV (0);

  icons_hv = newHV ();

  for (i = 0; converter->direction_unit_direction_name[i]; i++)
    {
      if (direction_icons->list[i])
        {
          const char *direction_name
            = converter->direction_unit_direction_name[i];
          hv_store (icons_hv, direction_name, strlen (direction_name),
                    newSVpv_utf8 (direction_icons->list[i], 0), 0);
        }
    }
  return newRV_noinc ((SV *)icons_hv);
}

void
build_tree_to_build (ELEMENT_LIST *tree_to_build)
{
  if (tree_to_build->number > 0)
    {
      int i;
      for (i = 0; i < tree_to_build->number; i++)
        {
          build_texinfo_tree (tree_to_build->list[i], 1);
        }
      tree_to_build->number = 0;
    }
}

