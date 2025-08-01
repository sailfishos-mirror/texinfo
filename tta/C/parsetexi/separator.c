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

#include <config.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "element_types.h"
#include "command_ids.h"
#include "tree_types.h"
#include "text.h"
#include "types_data.h"
/* for bug */
#include "base_utils.h"
#include "tree.h"
#include "extra.h"
#include "builtin_commands.h"
#include "command_stack.h"
/* for parse_node_manual */
#include "manipulate_tree.h"
#include "convert_to_texinfo.h"
#include "counter.h"
/* for close_preformatted_command command_name ... */
#include "commands.h"
#include "debug_parser.h"
#include "errors_parser.h"
#include "context_stack.h"
#include "input.h"
/* check_register_target_element_label */
#include "labels.h"
/* for fetch_value */
#include "macro.h"
/* for parser_format_expanded_p */
#include "handle_commands.h"
#include "parser.h"

ELEMENT *
handle_open_brace (ELEMENT *current, const char **line_inout)
{
  const char *line = *line_inout;

  if (command_flags(current) & CF_brace)
    {
      enum command_id cmd = current->e.c->cmd;
      ELEMENT *arg;

      if (command_data(cmd).flags & CF_contain_basic_inline)
        push_command (&nesting_context.basic_inline_stack, cmd);

      counter_push (&count_remaining_args, current,
                    command_data(cmd).args_number);
      counter_dec (&count_remaining_args);

      if (cmd == CM_verb)
        {
          arg = new_element (ET_brace_container);
          add_to_element_contents (current, arg);
          current = arg;

          /* the delimiter may be in macro expansion */
          while (!*line)
            {
              line = next_text (current);
              /* not sure that it may happen, but handle the case if it does */
              if (!line)
                line = "";
            }
          /* Save the deliminating character in 'delimiter'. */
          if (!*line || *line == '\n')
            {
              line_error ("@verb without associated character");
              current->e.c->parent->e.c->string_info[sit_delimiter]
                = strdup ("");
            }
          else
            {
              /* Count any UTF-8 continuation bytes. */
              int char_len = 1;
              while ((line[char_len] & 0xC0) == 0x80)
                char_len++;
              current->e.c->parent->e.c->string_info[sit_delimiter]
                = strndup (line, char_len);
              line += char_len;
            }
        }
      else if (command_data(cmd).data == BRACE_context)
        {
          ELEMENT *space_e;
          int n;

          arg = new_element (ET_brace_command_context);
          add_to_element_contents (current, arg);
          current = arg;
          if (cmd == CM_caption || cmd == CM_shortcaption)
            {
              const char *caption_cmdname = command_name(cmd);
              nesting_context.caption++;
              if (!current->e.c->parent->e.c->parent
                  || current->e.c->parent->e.c->parent->e.c->cmd != CM_float)
                {
                  const ELEMENT *float_e = current->e.c->parent;
                  while (float_e->e.c->parent && float_e->e.c->cmd != CM_float)
                    float_e = float_e->e.c->parent;
                  if (float_e->e.c->cmd != CM_float)
                    {
                      line_error ("@%s is not meaningful outside "
                                  "`@float' environment",
                                  caption_cmdname);
                    }
                  else
                    line_warn ("@%s should be right below `@float'",
                               caption_cmdname);
                }
            }
          else if (cmd == CM_footnote)
            {
              nesting_context.footnote++;
            }

          if (cmd == CM_math)
            {
              push_context (ct_math, cmd);
              space_e = new_text_element (ET_internal_spaces_before_argument);
            }
          else
            {
              push_context (ct_base, cmd);
              space_e
                = new_text_element (ET_internal_spaces_before_context_argument);
            }

          add_to_contents_as_array (current, space_e);
          internal_space_holder = current->e.c->parent;

          n = strspn (line, whitespace_chars_except_newline);
          if (n > 0)
            {
              text_append_n (space_e->e.text, line, n);
              line += n;
            }
        }
      else /* not context brace */
        {
          /* Commands that disregard leading whitespace. */
          if (command_data(cmd).data == BRACE_arguments
              || command_data(cmd).data == BRACE_inline)
            {
              ELEMENT *e;
              arg = new_element (ET_brace_arg);
              e = new_text_element (ET_internal_spaces_before_argument);
              add_to_contents_as_array (arg, e);
              internal_space_holder = arg;

              if (cmd == CM_inlineraw)
                push_context (ct_inlineraw, cmd);
            }
          else
            {
              arg = new_element (ET_brace_container);
            }
          add_to_element_contents (current, arg);
          current = arg;
        }
      debug_nonl ("OPENED @%s, remaining: %d ",
                  command_name (current->e.c->parent->e.c->cmd),
                  counter_value (&count_remaining_args,
                                 current->e.c->parent) > 0 ?
                   counter_value (&count_remaining_args,
                                  current->e.c->parent) : 0);
      debug_parser_print_element (current, 0); debug ("");
    }
  else if (current->e.c->parent
           && ((current->e.c->parent->e.c->parent
                && current->e.c->parent->e.c->parent->e.c->cmd == CM_multitable)
               || current->e.c->parent->flags & EF_def_line))
    {
      ELEMENT *b, *e;
      abort_empty_line (current);
      b = new_element (ET_bracketed_arg);
      add_to_element_contents (current, b);
      current = b;

      /* We need the line number here in case @ protects the
         end of the line and also for misplaced { errors.  */
      current->e.c->source_info = current_source_info;

      e = new_text_element (ET_internal_spaces_before_argument);
      add_to_contents_as_array (current, e);
      debug ("BRACKETED in def/multitable");
      internal_space_holder = current;
    }
  else if (current->type == ET_rawpreformatted)
    {
      debug ("LONE OPEN BRACE in rawpreformatted");
      current = merge_text (current, "{", 1, 0);
    }
  /* matching braces accepted in a rawpreformatted, inline raw or
     math.  Note that for rawpreformatted, it can only happen
     within an @-command as { is simply added as seen just above.
   */
  else if (current_context () == ct_math
           || current_context () == ct_rawpreformatted
           || current_context () == ct_inlineraw)
    {
      ELEMENT *b = new_element (ET_balanced_braces);
      ELEMENT *open_brace = new_text_element (ET_normal_text);
      abort_empty_line (current);
      b->e.c->source_info = current_source_info;
      add_to_element_contents (current, b);
      current = b;
      text_append (open_brace->e.text, "{");
      add_to_contents_as_array (current, open_brace);
      debug ("BALANCED BRACES in math/rawpreformatted/inlineraw");
    }
  else
    {
      line_error ("misplaced {");
    }

  *line_inout = line;
  return current;
}

/* Return 1 if an element is all whitespace.
   Note that this function isn't completely reliable because it
   doesn't look deep into the element tree.
 */
int
check_empty_expansion (ELEMENT *e)
{
  size_t i;
  for (i = 0; i < e->e.c->contents.number; i++)
    {
      ELEMENT *f = e->e.c->contents.list[i];
      if (!check_space_element (f))
        {
          return 0;
        }
    }
  return 1;
}

ELEMENT *
handle_close_brace (ELEMENT *current, const char **line_inout)
{
  const char *line = *line_inout;

  debug ("CLOSE BRACE");

  /* For footnote and caption closing, when there is a paragraph inside.
     This makes the brace command the parent element. */
  if (current->e.c->parent
      && current->e.c->parent->type == ET_brace_command_context
      && current->type == ET_paragraph)
    {
      abort_empty_line (current);
      debug ("IN BRACE_COMMAND_CONTEXT end paragraph");
      current = close_container (current);
    }

  if (current->type == ET_balanced_braces)
    {/* balanced_braces happens in non paragraph context only, so merge_text
        should not change current */
      current = merge_text (current, "}", 1, 0);
      current = current->e.c->parent;
    }
  else if (current->type == ET_bracketed_arg)
    {
      abort_empty_line (current);
      current = current->e.c->parent;
    }
  else if (command_flags(current->e.c->parent) & CF_brace)
    {
      ELEMENT *brace_command = current->e.c->parent;
      enum command_id closed_cmd = brace_command->e.c->cmd;

      abort_empty_line (current);

      if (command_data(closed_cmd).data == BRACE_arguments)
        isolate_last_space (current);

      debug ("CLOSING(brace) @%s", command_data(closed_cmd).cmdname);


      if (closed_cmd == CM_anchor || closed_cmd == CM_namedanchor)
        {
          ELEMENT *anchor_id_element = brace_command->e.c->contents.list[0];
          brace_command->e.c->source_info = current_source_info;
          if (anchor_id_element->e.c->contents.number == 0)
            line_error ("empty argument in @%s",
                        command_name(closed_cmd));
          else
            {
              check_register_target_element_label (
                                        anchor_id_element, brace_command);
              if (nesting_context.regions_stack.top > 0)
                {
                  add_extra_string_dup (anchor_id_element,
                                        AI_key_element_region,
                   command_name(top_command (&nesting_context.regions_stack)));
                }
            }
        }
      else if (command_data(closed_cmd).flags & CF_ref)
        {
          ELEMENT *ref = brace_command;
          int link_or_inforef = (closed_cmd == CM_link
                                 || closed_cmd == CM_inforef);
          if ((link_or_inforef
               && (ref->e.c->contents.list[0]->e.c->contents.number == 0)
               && (ref->e.c->contents.number <= 2
                   || ref->e.c->contents.list[2]->e.c->contents.number == 0))
              || (!link_or_inforef
                   && (ref->e.c->contents.list[0]->e.c->contents.number == 0)
                   && (ref->e.c->contents.number <= 3
                       || ref->e.c->contents.list[3]->e.c->contents.number == 0)
                   && (ref->e.c->contents.number <= 4
                || ref->e.c->contents.list[4]->e.c->contents.number == 0)))
            {
              line_warn ("command @%s missing a node or external manual "
                         "argument", command_name(closed_cmd));
            }
          else
            {
              ELEMENT *arg_label = contents_child_by_index (ref, 0);
              NODE_SPEC_EXTRA *ref_label_info = parse_node_manual (arg_label, 1);

              if (ref_label_info && (ref_label_info->manual_content
                                     || ref_label_info->node_content))
                {
                  if (ref_label_info->node_content)
                    add_extra_container (arg_label, AI_key_node_content,
                                        ref_label_info->node_content);
                  if (ref_label_info->manual_content)
                    add_extra_container (arg_label, AI_key_manual_content,
                                        ref_label_info->manual_content);
                }
              else
                {
                  if (ref_label_info->manual_content)
                    destroy_element (ref_label_info->manual_content);
                  if (ref_label_info->node_content)
                    destroy_element (ref_label_info->node_content);
                }
              if ((!link_or_inforef
                   && (ref->e.c->contents.number <= 3
                       || (ref->e.c->contents.number <= 4
                           && ref->e.c->contents.list[3]
                                            ->e.c->contents.number == 0)
                       || (ref->e.c->contents.list[3]->e.c->contents.number == 0
                           && ref->e.c->contents.list[4]
                                           ->e.c->contents.number == 0))
                   && !ref_label_info->manual_content)
                  || (link_or_inforef
                      && (ref->e.c->contents.number <= 2
                   || ref->e.c->contents.list[2]->e.c->contents.number == 0)))
                {
                  /* we use the @*ref command here and not the label
                     command to have more information for messages */
                  add_to_element_list (
                          &parsed_document->internal_references, ref);
                }
              free (ref_label_info);
            }

          if (ref->e.c->contents.number > 1
              && ref->e.c->contents.list[1]->e.c->contents.number > 0)
            {
              if (check_empty_expansion (ref->e.c->contents.list[1]))
                {
                  char *texi = 0;
                  if (ref->e.c->contents.list[1])
                    texi
                     = convert_contents_to_texinfo (ref->e.c->contents.list[1]);

                  line_warn ("in @%s empty cross reference name "
                             "after expansion `%s'",
                             command_name(closed_cmd),
                             ref->e.c->contents.list[1] ? texi : "");
                  free (texi);
                }
            }

          if (!link_or_inforef
              && ref->e.c->contents.number > 2
              && ref->e.c->contents.list[2]->e.c->contents.number > 0)
            {
              if (check_empty_expansion (ref->e.c->contents.list[2]))
                {
                  char *texi = 0;
                  if (ref->e.c->contents.list[2])
                    texi
                    = convert_contents_to_texinfo (ref->e.c->contents.list[2]);

                  line_warn ("in @%s empty cross reference title "
                             "after expansion `%s'",
                             command_name(closed_cmd),
                             ref->e.c->contents.list[2] ? texi : "");
                  free (texi);
                }
            }
        }
      else if (closed_cmd == CM_image)
        {
          GLOBAL_INFO *global_info = &parsed_document->global_info;
          ELEMENT *image = brace_command;
          if (image->e.c->contents.list[0]->e.c->contents.number == 0)
            {
              line_error ("@image missing filename argument");
            }
          if (global_info->input_encoding_name)
            add_extra_string_dup (image, AI_key_input_encoding_name,
                                  global_info->input_encoding_name);
        }
      else if (closed_cmd == CM_dotless)
        {
          if (current->e.c->contents.number > 0)
            {
              const char *text = 0;
              if (type_data[current->e.c->contents.list[0]->type].flags
                   == TF_text)
                text = current->e.c->contents.list[0]->e.text->text;
              if (!text || (strcmp (text, "i") && strcmp (text, "j")))
                {
                  char *texi_arg = convert_to_texinfo (current);
                  line_error ("@dotless expects `i' or `j' as argument, "
                              "not `%s'", texi_arg);
                  free (texi_arg);
                }
            }
        }
      else if ((command_data(closed_cmd).data == BRACE_inline)
               || closed_cmd == CM_abbr
               || closed_cmd == CM_acronym)
        {
          if (brace_command->e.c->contents.list[0]->e.c->contents.number == 0)
            {
              line_warn ("@%s missing first argument",
                         command_name(closed_cmd));
            }
        }
      else if (closed_cmd == CM_errormsg)
        {
          const char *arg_text = "";
          if (current->e.c->contents.list[0]->type == ET_normal_text
              && current->e.c->contents.list[0]->e.text->end > 0)
            arg_text = current->e.c->contents.list[0]->e.text->text;
          line_error (arg_text);
        }
      else if (closed_cmd == CM_U)
        {
          const char *arg_text = 0;
          if (current->e.c->contents.number > 0
              && type_data[current->e.c->contents.list[0]->type].flags
                   == TF_text)
            arg_text = current->e.c->contents.list[0]->e.text->text;

          if (!arg_text || !*arg_text)
            {
              line_warn ("no argument specified for @U");
            }
          else
            {
              int n = strspn (arg_text, "0123456789ABCDEFabcdef");
              if (arg_text[n])
                {
                  line_error
                     ("non-hex digits in argument for @U: %s", arg_text);
                }
              else if (n < 4)
                {
                  line_warn
                    ("fewer than four hex digits in argument for @U: %s",
                     arg_text);
                }
              else
                {
                  unsigned long int val;
                  int ret = sscanf (arg_text, "%lx", &val);
                  if (ret != 1)
                    {
                      debug ("hex sscanf failed %s", arg_text);
                      /* unknown error.  possibly argument is too large
                         for an int. */
                    }
                  if (ret != 1 || val > 0x10FFFF)
                    {
                      line_error
                       ("argument for @U exceeds Unicode maximum 0x10FFFF: %s",
                        arg_text);
                    }
                }
            }
        }
      else if (parent_of_command_as_argument (brace_command->e.c->parent)
               && current->e.c->contents.number == 0)
        {
          register_command_as_argument (brace_command);
        }
      else if (command_data(closed_cmd).data == BRACE_noarg)
        {
          if (current->e.c->contents.number > 0
              && command_data(closed_cmd).data == BRACE_noarg)
            line_warn ("command @%s does not accept arguments",
                       command_name(closed_cmd));
        }
      else if (closed_cmd == CM_sortas)
        {
          ELEMENT *subindex_elt;
          if (current->e.c->parent->e.c->parent
              && current->e.c->parent->e.c->parent->e.c->parent
              && ((command_flags(current->e.c->parent->e.c->parent->e.c->parent)
                    & CF_index_entry_command)
                  || current->e.c->parent->e.c->parent->e.c->parent->e.c->cmd
                                          == CM_subentry))
            {
              int superfluous_arg;
              char *arg = text_contents_to_plain_text (current,
                                                       &superfluous_arg);
              subindex_elt = current->e.c->parent->e.c->parent->e.c->parent;
              if (arg && *arg)
                {
                  add_extra_string (subindex_elt, AI_key_sortas, arg);
                }
            }
        }
      register_global_command (brace_command, 0);

      /* this should set current to brace_command->e.c->parent */
      current = close_brace_command (brace_command, 0, 0, 0);

      if (closed_cmd == CM_anchor
          || closed_cmd == CM_namedanchor
          || closed_cmd == CM_hyphenation
          || closed_cmd == CM_caption
          || closed_cmd == CM_shortcaption
          || closed_cmd == CM_sortas
          || closed_cmd == CM_seeentry
          || closed_cmd == CM_seealso)
        {
          ELEMENT *e;
          e = new_text_element (ET_spaces_after_close_brace);
          add_to_contents_as_array (current, e);
        }

      if (close_preformatted_command (closed_cmd))
        current = begin_preformatted (current);
    } /* CF_brace */
  else if (current->type == ET_rawpreformatted)
    {
      /* lone right braces are accepted in a rawpreformatted */
      current = merge_text (current, "}", 1, 0);
    }
  else
    {
      line_error ("misplaced }");
    }

  *line_inout = line;
  return current;
}


/* Handle a comma separating arguments to a Texinfo command. */
ELEMENT *
handle_comma (ELEMENT *current, const char **line_inout)
{
  const char *line = *line_inout;
  enum element_type type;
  ELEMENT *command_element, *argument;
  ELEMENT *new_arg, *spaces_before_e;
  ELEMENT *new_current;

  abort_empty_line (current);
  isolate_last_space (current);

  type = current->type;
  command_element = current->e.c->parent;
  argument = current->e.c->parent;
  if (argument->type == ET_arguments_line)
    command_element = argument->e.c->parent;
  else
    command_element = argument;

  if (counter_value (&count_remaining_args, command_element) != COUNTER_VARIADIC)
    counter_dec (&count_remaining_args);

  if (command_data(command_element->e.c->cmd).data == BRACE_inline)
    {
      int expandp = 0;
      const char *format = lookup_extra_string (command_element, AI_key_format);
      if (!format)
        {/* get the first argument, which is also current that was before the comma
            and put it in extra format */
          char *inline_type = 0;
          if (current->e.c->contents.number > 0)
            {
              ELEMENT *type_arg = current->e.c->contents.list[0];
              if (type_arg->type == ET_normal_text && type_arg->e.text->end > 0)
                inline_type = type_arg->e.text->text;
            }

          if (!inline_type)
            {
              /* Condition is missing */
              debug ("INLINE COND MISSING");
              /* add_extra_string (command_element, AI_key_format, 0); */
            }
          else
            {
              debug ("INLINE: %s", inline_type);
              if (command_element->e.c->cmd == CM_inlineraw
                  || command_element->e.c->cmd == CM_inlinefmt
                  || command_element->e.c->cmd == CM_inlinefmtifelse)
                {
                  if (parser_format_expanded_p (inline_type))
                    {
                      expandp = 1;
                      add_extra_integer (command_element,
                                         AI_key_expand_index, 1);
                    }
                  else
                    expandp = 0;
                }
              else if (command_element->e.c->cmd == CM_inlineifset
                       || command_element->e.c->cmd == CM_inlineifclear)
                {
                  expandp = 0;
                  if (fetch_value (inline_type))
                    expandp = 1;
                  if (command_element->e.c->cmd == CM_inlineifclear)
                    expandp = !expandp;
                  if (expandp)
                    add_extra_integer (command_element, AI_key_expand_index, 1);
                }
              else
                expandp = 0;

              add_extra_string_dup (command_element, AI_key_format, inline_type);
            }

          /* Skip first argument for a false @inlinefmtifelse */
          if (!expandp && command_element->e.c->cmd == CM_inlinefmtifelse)
            {
              ELEMENT *elided_arg_elt;
              ELEMENT *arg_text_e;
              int brace_count = 1;

              add_extra_integer (command_element, AI_key_expand_index, 2);

              elided_arg_elt = new_element (ET_elided_brace_command_arg);
              add_to_element_contents (command_element, elided_arg_elt);
              arg_text_e = new_text_element (ET_raw);
              add_to_contents_as_array (elided_arg_elt, arg_text_e);

              new_current = elided_arg_elt;

              /* Scan forward to get the next argument. */
              while (brace_count > 0)
                {
                  static char *alloc_line;
                  size_t non_separator_len = strcspn (line, "{},");
                  if (non_separator_len > 0)
                    text_append_n (arg_text_e->e.text, line, non_separator_len);
                  line += non_separator_len;
                  switch (*line)
                    {
                    case ',':
                      if (brace_count == 1)
                        {
                          line++;
                          /* we start the third argument here */
                          counter_dec (&count_remaining_args);
                          goto inlinefmtifelse_done;
                        }
                      text_append_n (arg_text_e->e.text, line, 1);
                      break;
                    case '{':
                      brace_count++;
                      text_append_n (arg_text_e->e.text, line, 1);
                      break;
                    case '}':
                      brace_count--;
                      if (brace_count > 0)
                        text_append_n (arg_text_e->e.text, line, 1);
                      break;
                    default:
                      /* at the end of line */
                      free (alloc_line);
                      line = alloc_line = next_text (elided_arg_elt);
                      if (!line)
                        {
                          goto funexit;
                        }
                      continue;
                    }
                  line++;
                }
            inlinefmtifelse_done:
              /* Second part (not counting the format) is missing. */
              if (brace_count == 0)
                {
                  line--; /* on '}' */
                  goto funexit;
                }
              /* Second part (not counting the format) of @inlinefmtifelse
                 when condition is false, right after the comma delimitating the
                 elided first part.  Keep the second part */
              expandp = 1;
            }
        }
      else
        { /* format is set, so this is the second comma */
          /* Second part (not counting the format) of @inlinefmtifelse when
             condition is true.  Discard second part. */
          if (command_element->e.c->cmd == CM_inlinefmtifelse)
            expandp = 0;
          else
        /* the functions is called only for an @-command with 3 arguments for
           a second comma, so it can only be inlinefmtifelse */
            bug ("impossible @inline* with three arguments and not inlinefmtifelse");
        }

      /* If this command is not being expanded, add an elided argument, and
         scan forward to the closing brace. */
      if (!expandp)
        {
          static char *alloc_line;
          ELEMENT *elided_arg_elt;
          ELEMENT *arg_text_e;
          int brace_count = 1;

          elided_arg_elt = new_element (ET_elided_brace_command_arg);
          add_to_element_contents (command_element, elided_arg_elt);
          arg_text_e = new_text_element (ET_raw);
          add_to_contents_as_array (elided_arg_elt, arg_text_e);

          new_current = elided_arg_elt;

          while (brace_count > 0)
            {
              size_t non_separator_len = strcspn (line, "{}");
              if (non_separator_len > 0)
                text_append_n (arg_text_e->e.text, line, non_separator_len);
              line += non_separator_len;
              switch (*line)
                {
                case '{':
                  brace_count++;
                  text_append_n (arg_text_e->e.text, line, 1);
                  break;
                case '}':
                  brace_count--;
                  if (brace_count > 0)
                    text_append_n (arg_text_e->e.text, line, 1);
                  break;
                default:
                  /* at the end of line */
                  free (alloc_line);
                  line = alloc_line = next_text (elided_arg_elt);
                  if (!alloc_line)
                    {
                      goto funexit;
                    }
                  continue;
                }
              line++;
            }
          line--;  /* on '}' */
          goto funexit;
        }
    }

  new_arg = new_element (type);
  add_to_element_contents (argument, new_arg);

  spaces_before_e = new_text_element (ET_internal_spaces_before_argument);
  add_to_contents_as_array (new_arg, spaces_before_e);
  internal_space_holder = new_arg;
  new_current = new_arg;

funexit:
  *line_inout = line;
  return new_current;
}

