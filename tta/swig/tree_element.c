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

/* abstractions useful to setup interfaces.  Functions directly useful
   should not be in this file, but in tree.c or utils.c */

#include <config.h>

#include <stddef.h>
#include <stdlib.h>

#include "types_data.h"
#include "tree_types.h"
#include "document_types.h"
#include "tree.h"
#include "extra.h"
/* get_cmd_global_uniq_command lookup_index_entry */
#include "utils.h"
#include "builtin_commands.h"
#include "tree_element.h"

const char *
element_type (ELEMENT *element)
{
  if (element->type)
    {
      if (type_data[element->type].flags & TF_text)
        {
          if (element->type != ET_normal_text)
            return type_data[element->type].name;
        }
      else if (!(type_data[element->type].flags & TF_c_only))
        return type_data[element->type].name;
    }
  return "";
}

const char *
element_text (ELEMENT *element)
{
  if (type_data[element->type].flags & TF_text)
    return element->e.text->text;

  return 0;
}

const char *
element_cmdname (ELEMENT *element)
{
  if (!(type_data[element->type].flags & TF_text)
      && element->e.c->cmd)
    return element_command_name (element);

  return 0;
}

int
element_children_number (ELEMENT *element)
{
  if (type_data[element->type].flags & TF_text)
    return 0;

  return element->e.c->contents.number;
}

ELEMENT *
element_list_element_by_index (ELEMENT_LIST *element_list, int index)
{
  if (!element_list || element_list->number == 0)
    return 0;

  if (index < 0)
    index = (int) element_list->number  - index;
 
  if (index < 0 || (size_t) index >= element_list->number)
    return 0;

  return element_list->list[index];
}

int
element_list_number (ELEMENT_LIST *element_list)
{
  return element_list->number;
}

char *
string_list_string_by_index (STRING_LIST *string_list, int index)
{
  if (!string_list || string_list->number == 0)
    return 0;
 
  if (index < 0)
    index = (int) string_list->number  - index;
 
  if (index < 0 || (size_t) index >= string_list->number)
    return 0;
 
  return string_list->list[index];
}

int
string_list_number (STRING_LIST *string_list)
{
  return string_list->number;
}

ELEMENT *
element_get_child (ELEMENT *element, int index)
{
  if (type_data[element->type].flags & TF_text)
    return 0;

  return element_list_element_by_index (&element->e.c->contents, index);
}

ELEMENT *
element_parent (ELEMENT *element)
{
  return element->parent;
}

SOURCE_INFO *
element_source_info (ELEMENT *element)
{
  if (type_data[element->type].flags & TF_text)
    return 0;

  return &element->e.c->source_info;
}

int
element_attribute_integer (const ELEMENT *element, const char *attribute,
                           int *ret)
{
  enum ai_key_name key = find_associated_info_key (attribute);
 
  if (key)
    {
      enum extra_type k_type = associated_info_table[key].type;
 
      switch (k_type)
        {
        case extra_integer:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            {
              *ret = 0;
              return k->k.integer;
            }
          break;
          }
        case extra_flag:
          {
          if (element->flags & associated_info_table[key].data)
            {
              *ret = 0;
              return 1;
            }
          break;
          }
        default:
          break;
        }
    }
  *ret = -1;
  return 0;        
}

const char *
element_attribute_string (const ELEMENT *element, const char *attribute)
{
  enum ai_key_name key = find_associated_info_key (attribute);
 
  if (key)
    {
      enum extra_type k_type = associated_info_table[key].type;
 
      switch (k_type)
        {
      case extra_string:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return k->k.string;
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
                return element->e.c->string_info[idx];
              break;
            case AI_key_arg_line:
              if (element->type == ET_lineraw_command
                  && element->e.c->string_info[idx])
                return element->e.c->string_info[idx];
              break;
            case AI_key_delimiter:
              if (element->e.c->cmd == CM_verb
                  && element->e.c->string_info[idx])
                return element->e.c->string_info[idx];
              break;
            case AI_key_alias_of:
              if ((element->e.c->cmd
                   || type_data[element->type].flags & TF_macro_call)
                  && element->e.c->string_info[idx])
                return element->e.c->string_info[idx];
              break;
            default:
              break;
            }
          break;
          }
        default:
          break;
        }
    }
 
  return 0;
}

ELEMENT *
element_attribute_element (const ELEMENT *element, const char *attribute)
{
  enum ai_key_name key = find_associated_info_key (attribute);
 
  if (key)
    {
      enum extra_type k_type = associated_info_table[key].type;
 
      switch (k_type)
        {
        case extra_element_oot:
        case extra_container:
          {
          const KEY_PAIR *k = lookup_extra (element, key);
          if (k)
            return k->k.element;
          break;
          }
        case extra_element_info:
          {
          int idx = associated_info_table[key].data;
          if (idx < type_data[element->type].elt_info_number
              && element->elt_info[idx])
            { 
              ELEMENT *info_element = element->elt_info[idx];
              return info_element;
            }
          break;
          }
        default:
          break;
        }
    }
 
  return 0;
}


INDEX_ENTRY *
element_index_entry (DOCUMENT *document, ELEMENT *element)
{
  const INDEX_ENTRY_LOCATION *index_entry_info
           = lookup_extra_index_entry (element,
                                       AI_key_index_entry);
  
  if (index_entry_info)
    {
      INDEX_ENTRY *result = 0;
      INDEX_ENTRY_AND_INDEX *idx_info
          = lookup_index_entry (index_entry_info,
                                &document->indices_info);
      if (idx_info->index_entry)
        result = idx_info->index_entry;

      free (idx_info);

      return result;
    }
  return 0;
}

INDEX *
index_entry_index_info (DOCUMENT *document, INDEX_ENTRY *index_entry)
{
  const char *entry_index_name = index_entry->index_name;
  return  indices_info_index_by_name (&document->indices_info,
                                      entry_index_name);
}

const STRING_LIST *
element_misc_args (ELEMENT *element)
{
  return lookup_extra_misc_args (element, AI_key_misc_args);
}

ELEMENT *
document_global_unique_command (DOCUMENT *document, const char *cmdname)
{
  ELEMENT *element = 0;
  enum command_id cmd = lookup_builtin_command (cmdname);
  if (cmd)
    {
      element = (ELEMENT *)get_cmd_global_uniq_command (
                              &document->global_commands, cmd);
    }

  return element;
}

const ELEMENT_LIST *
document_global_command_list (DOCUMENT *document, const char *cmdname)
{
  enum command_id cmd = lookup_builtin_command (cmdname);

  if (document && cmd)
    {
      const ELEMENT_LIST *command_list
        = get_cmd_global_multi_command (&document->global_commands, cmd);
      if (command_list && command_list->number)
        {
          return command_list;
        }
    }
  return 0;
}
