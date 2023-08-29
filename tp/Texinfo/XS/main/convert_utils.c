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

/* corresponding to Texinfo::Convert::Utils */

#include <config.h>

#include <stdlib.h>

#include "tree_types.h"
#include "command_ids.h"
#include "element_types.h"
#include "builtin_commands.h"
#include "tree.h"
#include "extra.h"
#include "convert_utils.h"

ACCENTS_STACK *
find_innermost_accent_contents (ELEMENT *element)
{
  ELEMENT *current = element;
  ELEMENT *argument = 0;
  ACCENTS_STACK *accent_stack = malloc (sizeof (ACCENTS_STACK));

  accent_stack->stack = new_element (ET_NONE);
  accent_stack->argument = 0;

  while (1)
    {
      ELEMENT *arg;
      int i;

      /* the following can happen if called with a bad tree */
      if (!current->cmd || !(builtin_command_flags(current) & CF_accent))
        return accent_stack;
      add_to_contents_as_array (accent_stack->stack, current);
      /* A bogus accent, that may happen */
      if (current->args.number <= 0)
        return accent_stack;
      arg = current->args.list[0];
      if (arg->contents.number <= 0)
        return accent_stack;
      for (i = 0; i < arg->contents.number; i++)
        {
          ELEMENT *content = arg->contents.list[i];
          if (!(content->cmd && (content->cmd == CM_c
                                 || content->cmd == CM_comment)))
            {
              if (content->cmd
                  && builtin_command_flags(content) & CF_accent)
                {
                  current = content;
                  if (argument)
                    {
                      destroy_element (argument);
                      argument = 0;
                    }
                  break;
                }
              else
                {
                  if (!argument)
                    argument = new_element (ET_NONE);
                  add_to_contents_as_array (argument, content);
                }
            }
        }
      if (argument)
        break;
    }
  if (argument)
    accent_stack->argument = argument;
  return accent_stack;
}

void
destroy_accent_stack (ACCENTS_STACK *accent_stack)
{
  destroy_element (accent_stack->stack);
  if (accent_stack->argument)
    destroy_element (accent_stack->argument);
  free (accent_stack);
}

/* optional $self argument in perl */
/* caller should free return */
char *
add_heading_number (ELEMENT *current, char *text, int numbered)
{
  TEXT result;
  char *number = 0;
  if (numbered != 0)
    number = lookup_extra_string (current, "section_number");

  /* TODO need $self argument for translation
  if ($self) {
    if (defined($number)) {
      if ($current->{'cmdname'} eq 'appendix'
          and $current->{'extra'}->{'section_level'} == 1) {
        $result = $self->gdt_string('Appendix {number} {section_title}',
                   {'number' => $number, 'section_title' => $text});
      } else {
        $result = $self->gdt_string('{number} {section_title}',
                   {'number' => $number, 'section_title' => $text});
      }
    } else {
      $result = $text;
    }
  } else {
*/

  {
    text_init (&result);
    if (current->cmd == CM_appendix)
      {
        int status;
        int section_level = lookup_extra_integer (current, "section_level",
                                                  &status);
        if (section_level == 1)
          text_append (&result, "Appendix ");
      }
    if (number)
      {
        text_append (&result, number);
        text_append (&result, " ");
      }
    text_append (&result, text);
   }
  return result.text;
}

