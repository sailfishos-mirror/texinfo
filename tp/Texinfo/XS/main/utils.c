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

/* code that does not fit anywhere else */

#include <config.h>
#include <string.h>
#include <ctype.h>

#include "tree_types.h"
#include "tree.h"
#include "command_ids.h"
#include "extra.h"
#include "errors.h"
#include "utils.h"

const char *whitespace_chars = " \t\v\f\r\n";

int
isascii_alnum (int c)
{
  return (((c & ~0x7f) == 0) && isalnum(c));
}

int
isascii_lower (int c)
{
  return (((c & ~0x7f) == 0) && islower(c));
}

int
isascii_upper (int c)
{
  return (((c & ~0x7f) == 0) && isupper(c));
}

ELEMENT *
get_label_element (ELEMENT *e)
{
  if ((e->cmd == CM_node || e->cmd == CM_anchor)
      && e->args.number > 0)
    return e->args.list[0];
  else if (e->cmd == CM_float && e->args.number >= 2)
    return e->args.list[1];
  return 0;
}

/* Read a name used for @set, @value and translations arguments. */
char *
read_flag_name (char **ptr)
{
  char *p = *ptr, *q;
  char *ret = 0;

  q = p;
  if (!isascii_alnum (*q) && *q != '-' && *q != '_')
    return 0; /* Invalid. */

  while (!strchr (whitespace_chars, *q)
         && !strchr ("{\\}~`^+\"<>|@", *q))
    q++;
  ret = strndup (p, q - p);
  p = q;

  *ptr = p;
  return ret;
}

void
delete_global_info (GLOBAL_INFO *global_info_ref)
{
  GLOBAL_INFO global_info = *global_info_ref;

  free (global_info.dircategory_direntry.contents.list);
  free (global_info.footnotes.contents.list);

  free (global_info.global_input_encoding_name);

#define GLOBAL_CASE(cmx) \
  free (global_info.cmx.contents.list)

  GLOBAL_CASE(author);
  GLOBAL_CASE(detailmenu);
  GLOBAL_CASE(hyphenation);
  GLOBAL_CASE(insertcopying);
  GLOBAL_CASE(printindex);
  GLOBAL_CASE(subtitle);
  GLOBAL_CASE(titlefont);
  GLOBAL_CASE(listoffloats);
  GLOBAL_CASE(part);
  GLOBAL_CASE(floats);
  GLOBAL_CASE(allowcodebreaks);
  GLOBAL_CASE(clickstyle);
  GLOBAL_CASE(codequotebacktick);
  GLOBAL_CASE(codequoteundirected);
  GLOBAL_CASE(contents);
  GLOBAL_CASE(deftypefnnewline);
  GLOBAL_CASE(documentencoding);
  GLOBAL_CASE(documentlanguage);
  GLOBAL_CASE(exampleindent);
  GLOBAL_CASE(firstparagraphindent);
  GLOBAL_CASE(frenchspacing);
  GLOBAL_CASE(headings);
  GLOBAL_CASE(kbdinputstyle);
  GLOBAL_CASE(microtype);
  GLOBAL_CASE(paragraphindent);
  GLOBAL_CASE(shortcontents);
  GLOBAL_CASE(urefbreakstyle);
  GLOBAL_CASE(xrefautomaticsectiontitle);

#undef GLOBAL_CASE
}

/* could have been in tree, but it would add a dependency on extra.h
 * Move somewhere else ? */

ELEMENT *
copy_tree_internal (ELEMENT* current, ELEMENT *parent);

void
increase_ref_counter (ELEMENT *element)
{
  KEY_PAIR *k_counter;
  intptr_t *counter_ptr;

  k_counter = lookup_extra_by_index (element, "_counter", -1);
  if (!k_counter)
    add_extra_integer (element, "_counter", 0);
  k_counter = lookup_extra_by_index (element, "_counter", -1);
  counter_ptr = (intptr_t *) &k_counter->value;
  (*counter_ptr) ++;
}

void
copy_associated_info (ASSOCIATED_INFO *info, ASSOCIATED_INFO* new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      char *key = info->info[i].key;
      ELEMENT *f = (ELEMENT *) info->info[i].value;
      ELEMENT *new_extra_contents;
      KEY_PAIR *k_copy = 0;
      int j;

      if (info->info[i].type == extra_deleted)
        continue;

      switch (info->info[i].type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp(key, "_copy"))
            break;
          k_copy = lookup_extra_by_index (f, "_copy", -1);
          if (k_copy)
            add_associated_info_key (new_info, key, (intptr_t)k_copy->value,
                                     info->info[i].type);
          else
            {
              increase_ref_counter (f);
            }
          copy_tree_internal (f, 0);
          break;
        case extra_contents:
          new_extra_contents = new_element (ET_NONE);
          add_associated_info_key (new_info, key, (intptr_t)new_extra_contents,
                                   info->info[i].type);
          for (j = 0; j < f->contents.number; j++)
            {
              ELEMENT *e = f->contents.list[j];
              k_copy = lookup_extra_by_index (e, "_copy", -1);
              if (k_copy)
                add_to_contents_as_array (new_extra_contents,
                                          (ELEMENT *)k_copy->value);
              else
               {
                 increase_ref_counter (e);
                 add_to_contents_as_array (new_extra_contents, 0);
               }
               copy_tree_internal (e, 0);
            }
        default:
          break;
        }
    }
}

ELEMENT *
copy_tree_internal (ELEMENT* current, ELEMENT *parent)
{
  KEY_PAIR *k_copy = 0;
  ELEMENT *new;
  int i;

  k_copy = lookup_extra_by_index (current, "_copy", -1);
  if (k_copy)
    {
      new = (ELEMENT *)k_copy->value;
      if (parent && !new->parent)
        new->parent = parent;
      return new;
    }

  new = new_element(ET_NONE);
  if (current->type)
    new->type = current->type;
  if (current->cmd)
    new->cmd = current->cmd;
  if (current->text.space > 0)
    text_append (&new->text, current->text.text);

  increase_ref_counter (new);
  add_extra_element (current, "_copy", new);

  for (i = 0; i < current->args.number; i++)
    add_to_element_args (new,
                copy_tree_internal(current->args.list[i], new));
  for (i = 0; i < current->contents.number; i++)
    add_to_element_contents (new,
                copy_tree_internal(current->contents.list[i], new));
  copy_associated_info (&current->info_info, &new->info_info);
  copy_associated_info (&current->extra_info, &new->extra_info);
  return new;
}

ELEMENT *
get_copy_ref (ELEMENT *element)
{
  KEY_PAIR *k_counter, *k_copy;
  intptr_t *counter_ptr;
  ELEMENT *result;

  k_copy = lookup_extra_by_index (element, "_copy", -1);
  result = (ELEMENT *)k_copy->value;

  k_counter = lookup_extra_by_index (element, "_counter", -2);
  counter_ptr = (intptr_t *) &k_counter->value;
  (*counter_ptr) --;

  if (*counter_ptr == 0)
    {
      element->extra_info.info_number -= 2;
    }

  return result;
}

void
copy_extra_info (ELEMENT *current, ELEMENT *new);

void
associate_info_references (ASSOCIATED_INFO *info, ASSOCIATED_INFO *new_info)
{
  int i;

  for (i = 0; i < info->info_number; i++)
    {
      char *key = info->info[i].key;
      ELEMENT *f = (ELEMENT *) info->info[i].value;
      ELEMENT *new_extra_contents;
      int j;

      if (info->info[i].type == extra_deleted)
        continue;

      switch (info->info[i].type)
        {
        case extra_element:
        case extra_element_oot:
          if (!strcmp(key, "_copy"))
            break;
          {
            KEY_PAIR *k;
            KEY_PAIR *k_copy;
            k = lookup_associated_info (new_info, key);
            if (!k)
              {
                ELEMENT *e = get_copy_ref (f);
                add_associated_info_key (new_info, key, (intptr_t)e,
                                         info->info[i].type);
              }
            k_copy = lookup_extra_by_index (f, "_copy", -1);
            if (k_copy)
              copy_extra_info (f, (ELEMENT *) k_copy->value);
            break;
          }
        case extra_contents:
          {
            KEY_PAIR *k = lookup_associated_info (new_info, key);
            new_extra_contents = (ELEMENT *)k->value;
            for (j = 0; j < f->contents.number; j++)
              {
                KEY_PAIR *k_copy;
                ELEMENT *e = f->contents.list[j];
                ELEMENT *new_e = new_extra_contents->contents.list[j];
                if (!new_e)
                  {
                    ELEMENT *new_ref = get_copy_ref (e);
                    new_extra_contents->contents.list[j] = new_ref;
                  }

                k_copy = lookup_extra_by_index (e, "_copy", -1);
                if (k_copy)
                  copy_extra_info (e, (ELEMENT *) k_copy->value);
              }
              break;
            }
        case extra_string:
          { /* A simple string. */
            char *value = (char *) f;
            add_associated_info_key (new_info, key, (intptr_t) strdup (value),
                                     info->info[i].type);
            break;
          }
        case extra_integer:
          if (!strcmp(key, "_counter"))
            break;
          { /* A simple integer. */
            add_associated_info_key (new_info, key, (intptr_t)f,
                                     info->info[i].type);
            break;
          }
        case extra_misc_args:
          {
          int j;
          new_extra_contents = new_element (ET_NONE);
          add_associated_info_key (new_info, key, (intptr_t)new_extra_contents,
                                   info->info[i].type);
          for (j = 0; j < f->contents.number; j++)
            {
              ELEMENT *e = new_element (ET_NONE);
              KEY_PAIR *k;
              k = lookup_extra (f->contents.list[j], "integer");
              if (k)
                {
                  add_extra_integer (e, "integer", (intptr_t) k->value);
                }
              else
                {
                  if (f->contents.list[j]->text.space > 0)
                    text_append (&e->text, f->contents.list[j]->text.text);
                }
              add_to_contents_as_array (new_extra_contents, e);
            }
          break;
          }
        default:
          fatal ("unknown extra type");
          break;
        }
    }
}



void
copy_extra_info (ELEMENT *current, ELEMENT *new)
{
  KEY_PAIR *k_copy = 0;
  int i;

  k_copy = lookup_extra_by_index (current, "_copy", -1);
  if (!k_copy)
    /* already done */
    return;
  get_copy_ref (current);

  for (i = 0; i < current->args.number; i++)
    copy_extra_info (current->args.list[i], new->args.list[i]);
  for (i = 0; i < current->contents.number; i++)
    copy_extra_info (current->contents.list[i], new->contents.list[i]);

  associate_info_references (&current->info_info, &new->info_info);
  associate_info_references (&current->extra_info, &new->extra_info);
}

ELEMENT *
copy_tree (ELEMENT *current, ELEMENT *parent)
{
  ELEMENT *copy = copy_tree_internal (current, parent);
  copy_extra_info (current, copy);
  return copy;
}
