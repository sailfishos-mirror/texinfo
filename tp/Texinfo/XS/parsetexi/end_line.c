/* end_line.c -- what to do at the end of a whole line of input */
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
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "parser.h"
#include "debug.h"
#include "text.h"
#include "input.h"
#include "convert.h"
#include "labels.h"
#include "indices.h"
#include "source_marks.h"
#include "handle_commands.h"

static int
is_decimal_number (char *string)
{
  char *p = string;
  char *first_digits = 0;
  char *second_digits = 0;
  
  if (string[0] == '\0')
    return 0;

  if (strchr (digit_chars, *p))
    p = first_digits = string + strspn (string, digit_chars);

  if (*p == '.')
    {
      p++;
      if (strchr (digit_chars, *p))
        p = second_digits = p + strspn (p, digit_chars);
    }

  if (*p /* Bytes remaining at end of argument. */
      || (!first_digits && !second_digits)) /* Need digits either 
                                               before or after the 
                                               decimal point. */
    {
      return 0;
    }

  return 1;
}

static int
is_whole_number (char *string)
{
  if (string[strspn (string, digit_chars)] == '\0')
    return 1;
  return 0;
}

/* Return end of argument before comment and whitespace. */
char *
skip_to_comment (char *q, int *has_comment)
{
  char *q1;

  while (1)
    {
      q1 = strstr (q, "@c");
      if (!q1)
        {
          q = q + strlen (q);
          break;
        }

      /* q is advanced to after @c/@comment, whether there is indeed
         a comment or not.  In case there is no @c/@comment, this allows
         to advance on the line and loop to search again for @c/@comment */
      q = read_comment (q1, has_comment);
      if (*has_comment)
        {
          /* replace q at the start of the comment */
          q = q1;
          break;
        }
    }

  /* q is now either at the end of the string, or at the start of a comment.
     Find the start of any trailing whitespace. */
  while (strchr (whitespace_chars, q[-1]))
    q--;

  return q;
}

/* Return end of argument before comment and whitespace if the
   line is followed either by whitespaces or a comment. */
char *
skip_to_comment_if_comment_or_spaces (char *after_argument,
                                 int *has_comment)
{
  char *r = skip_to_comment (after_argument, has_comment);

  if (!strchr (whitespace_chars, *after_argument)
      && *after_argument != '@')
    return 0;

  if (*after_argument == '@')
    {
      /* Check for a comment, e.g. "@set flag@c comment" */
      if (after_argument != r)
        return 0;
    }
  return r;
}

/* Process argument to special line command. */
ELEMENT *
parse_special_misc_command (char *line, enum command_id cmd, int *has_comment)
{
#define ADD_ARG(string, len) do { \
  ELEMENT *E = new_element (ET_NONE); \
  text_append_n (&E->text, string, len); \
  add_to_element_contents (args, E); \
} while (0)

  ELEMENT *args = new_element (ET_NONE);
  char *p = 0, *q = 0, *r = 0;
  char *value = 0, *remaining = 0;;

  switch (cmd)
    {
    case CM_set:
      {
      p = line;
      p += strspn (p, whitespace_chars);
      if (!*p)
        goto set_no_name;
      if (!isalnum (*p) && *p != '-' && *p != '_')
        goto set_invalid;
      q = strpbrk (p,
                   " \t\f\r\n"       /* whitespace */
                   "{\\}~^+\"<>|@"); /* other bytes that aren't allowed */
      if (q)
        {
        /* see also read_flag_name function in end_line.c */
          r = skip_to_comment_if_comment_or_spaces (q, has_comment);
          if (!r)
            goto set_invalid;
        }
      else /* very specific case of end of text fragment after name
              without anything following the name, in particular
              without new line */
        q = p + strlen(p);

      ADD_ARG(p, q - p); /* name */

      p = q + strspn (q, whitespace_chars);
      /* Actually, whitespace characters except form feed. */

      if (r >= p)
        ADD_ARG(p, r - p); /* value */
      else
        ADD_ARG("", 0);

      store_value (args->contents.list[0]->text.text,
                   args->contents.list[1]->text.text);

      break;
    set_no_name:
      line_error ("@set requires a name");
      break;
    set_invalid:
      line_error ("bad name for @set");
      break;
      }
    case CM_clear:
      {
      char *flag = 0;
      p = line;
      p += strspn (p, whitespace_chars);
      if (!*p)
        goto clear_no_name;
      q = p;
      flag = read_flag_name (&q);
      if (!flag)
        goto clear_invalid;
      r = skip_to_comment_if_comment_or_spaces (q, has_comment);
      if (!r || r != q)
        goto clear_invalid; /* Trailing argument. */

      ADD_ARG (p, q - p);
      clear_value (flag);
      free (flag);
      
      break;
    clear_no_name:
      line_error ("@clear requires a name");
      break;
    clear_invalid:
      free (flag);
      line_error ("bad name for @clear");
      break;
      }
    case CM_unmacro:
      p = line;
      p += strspn (p, whitespace_chars);
      if (!*p)
        goto unmacro_noname;
      q = p;
      value = read_command_name (&q);
      if (!value)
        goto unmacro_badname;
      r = skip_to_comment_if_comment_or_spaces (q, has_comment);
      if (!r || r != q)
        goto clear_invalid; /* Trailing argument. */
      delete_macro (value);
      ADD_ARG(value, q - p);
      debug ("UNMACRO %s", value);
      free (value);
      break;
    unmacro_noname:
      line_error ("@unmacro requires a name");
      break;
    unmacro_badname:
      line_error ("bad name for @unmacro");
      break;
    case CM_clickstyle:
      p = line;
      p += strspn (p, whitespace_chars);
      if (*p++ != '@')
        goto clickstyle_invalid;
      q = p;
      value = read_command_name (&q);
      if (!value)
        goto clickstyle_invalid;
      ADD_ARG (p - 1, q - p + 1);
      free (global_clickstyle); global_clickstyle = value;
      /* if strlen is not used to guard against checking after the end of q,
         for some reason, valgrind does not find that the *(q+1) could be
         unallocated */
      if (strlen (q) >= 2 && !memcmp (q, "{}", 2))
        q += 2;
      r = skip_to_comment_if_comment_or_spaces (q, has_comment);
      if (!r || r != q)
        {
          q += strspn (q, whitespace_chars);
          line_warn ("remaining argument on @%s line: %s",
                     command_name(cmd), q);
        }
      break;
    clickstyle_invalid:
      line_error ("@clickstyle should only accept an @-command as argument, "
                   "not `%s'", line);
      free (value);
      break;
    default:
      fatal ("unknown special line command");
    }

  return args;
#undef ADD_ARG
}

/* Parse the arguments to a line command.  Return an element whose contents
   is an array of the arguments.  For some commands, there is further 
   processing of the arguments (for example, for an @alias, remember the
   alias.) */
ELEMENT *
parse_line_command_args (ELEMENT *line_command)
{
#define ADD_ARG(string) do { \
    ELEMENT *E = new_element (ET_NONE); \
    text_append (&E->text, string); \
    add_to_element_contents (line_args, E); \
} while (0)

  ELEMENT *arg = line_command->args.list[0];
  ELEMENT *line_args;
  enum command_id cmd;
  char *line;

  cmd = line_command->cmd;
  if (arg->contents.number == 0)
   {
     command_error (line_command, "@%s missing argument", command_name(cmd));
     add_extra_integer (line_command, "missing_argument", 1);
     return 0;
   }

  if (arg->contents.number > 1 || arg->contents.list[0]->text.end == 0)
    {
      line_error ("superfluous argument to @%s", command_name (cmd));
    }
  if (arg->contents.list[0]->text.end == 0)
    return 0;

  line_args = new_element (ET_NONE);
  line = arg->contents.list[0]->text.text;

  switch (cmd)
    {
    case CM_alias:
      {
        /* @alias NEW = EXISTING */
        char *new = 0, *existing = 0;
        enum command_id new_cmd, existing_cmd;

        new = read_command_name (&line);
        if (!new)
          goto alias_invalid;

        line += strspn (line, whitespace_chars);
        if (*line != '=')
          goto alias_invalid;
        line++;
        line += strspn (line, whitespace_chars);

        if (!isalnum (*line))
          goto alias_invalid;
        existing = read_command_name (&line);
        if (!existing)
          goto alias_invalid;

        if (*line)
          goto alias_invalid; /* Trailing argument. */

        ADD_ARG(new);
        ADD_ARG(existing);

        existing_cmd = lookup_command (existing);
        if (!existing_cmd)
          break; /* TODO: Error message */
        else
          {
            if (command_data(existing_cmd).flags & CF_block)
              line_warn ("environment command %s as argument to @alias",
                         command_name(existing_cmd));
          }

        /* Remember the alias. */
        new_cmd = add_texinfo_command (new);
        new_cmd &= ~USER_COMMAND_BIT;
        user_defined_command_data[new_cmd].flags |= CF_ALIAS;

        user_defined_command_data[new_cmd].data = existing_cmd;
        user_defined_command_data[new_cmd].args_number
                  = command_data(existing_cmd).args_number;
        /* Note the data field is an int, existing_cmd is
           enum command_id, so would have problems if enum command_id
           were wider than an int. */

        free (new); free (existing);

        break;
      alias_invalid:
        line_error ("bad argument to @alias");
        free (new); free (existing);
        break;
      }
    case CM_definfoenclose:
      {
        /* @definfoenclose phoo,//,\\ */
        char *new_command = 0, *start = 0, *end = 0;
        enum command_id new_cmd;
        int len;

        new_command = read_command_name (&line);
        if (!new_command)
          goto definfoenclose_invalid;

        line += strspn (line, whitespace_chars);
        if (*line != ',')
          goto definfoenclose_invalid;
        line++;
        line += strspn (line, whitespace_chars);

        /* TODO: Can we have spaces in the delimiters? */
        len = strcspn (line, ",");
        start = strndup (line, len);
        line += len;

        if (!*line)
          goto definfoenclose_invalid; /* Not enough args. */
        line++; /* Past ','. */
        line += strspn (line, whitespace_chars);
        len = strcspn (line, ",");
        end = strndup (line, len);

        if (*line == ',')
          goto definfoenclose_invalid; /* Too many args. */

        /* Remember it. */
        new_cmd = add_texinfo_command (new_command);
        add_infoenclose (new_cmd, start, end);
        new_cmd &= ~USER_COMMAND_BIT;

        user_defined_command_data[new_cmd].flags
          |= (CF_INFOENCLOSE | CF_brace);
        user_defined_command_data[new_cmd].data = BRACE_style_other;
        user_defined_command_data[new_cmd].args_number = 1;

        ADD_ARG(new_command); free (new_command);
        ADD_ARG(start); free (start);
        ADD_ARG(end); free (end);

        break;
      definfoenclose_invalid:
        line_error ("bad argument to @definfoenclose");
        free (new_command); free (start); free (end);
        break;
      }
    case CM_columnfractions:
      {
        /*  @multitable @columnfractions .33 .33 .33 */
        ELEMENT *new;
        char *p, *q;

        if (!*line)
          {
            line_error ("empty @columnfractions");
            break;
          }
        p = line;
        while (1)
          {
            char *arg;

            p += strspn (p, whitespace_chars);
            if (!*p)
              break;
            q = strpbrk (p, whitespace_chars);
            if (!q)
              q = p + strlen (p);
            
            arg = strndup (p, q - p);

            /* Check argument is valid. */
            if (!is_decimal_number (arg))
              {
                line_error ("column fraction not a number: %s", arg);
              }
            else
              {
                new = new_element (ET_NONE);
                text_append_n (&new->text, p, q - p);
                add_to_element_contents (line_args, new);
              }
            free (arg);
            p = q;
          }
        break;
      }
    case CM_sp:
      {
        /* Argument is at least one digit. */
        if (strchr (digit_chars, *line)
            && !*(line + 1 + strspn (line + 1, digit_chars)))
          {
            ADD_ARG(line);
          }
        else
          line_error ("@sp arg must be numeric, not `%s'", line);
        break;
      }
    case CM_defindex:
    case CM_defcodeindex:
      {
        char *name = 0;
        char *p = line;

        name = read_command_name (&p);
        if (*p)
          goto defindex_invalid; /* Trailing characters. */

        /* Disallow index names NAME where it is likely that for
           a source file BASE.texi, there will be other files called
           BASE.NAME in the same directory.  This is to prevent such
           files being overwritten by the files read by texindex. */
        {
          static char *forbidden_index_names[] = {
            "cp", "fn", "ky", "pg", "tp", "vr",
            "cps", "fns", "kys", "pgs", "tps", "vrs",
            "info", "ps", "pdf", "htm", "html",
            "log", "aux", "dvi", "texi", "txi",
            "texinfo", "tex", "bib", 0
          };
          char **ptr;
          for (ptr = forbidden_index_names; *ptr; ptr++)
            if (!strcmp (name, *ptr))
              goto defindex_reserved;

          if (index_by_name (name))
            { free (name); break; }
        }

        add_index (name, cmd == CM_defcodeindex ? 1 : 0);
        ADD_ARG(name);

        break;
      defindex_invalid:
        line_error ("bad argument to @%s: %s",
                     command_name(cmd), line);
        free (name);
        break;
      defindex_reserved:
        line_error ("reserved index name %s", name);
        free (name);
        break;
      }
    case CM_synindex:
    case CM_syncodeindex:
      {
        /* synindex FROM TO */
        char *from = 0, *to = 0;
        INDEX *from_index, *to_index;
        char *p = line;

        if (!isalnum (*p))
          goto synindex_invalid;
        from = read_command_name (&p);
        if (!from)
          goto synindex_invalid;

        p += strspn (p, whitespace_chars);

        if (!isalnum (*p))
          goto synindex_invalid;
        to = read_command_name (&p);
        if (!to)
          goto synindex_invalid;
        if (*p)
          goto synindex_invalid; /* More at end of line. */

        from_index = index_by_name (from);
        to_index = index_by_name (to);
        if (!from_index)
          line_error ("unknown source index in @%s: %s",
                      command_name(cmd), from);
        if (!to_index)
          line_error ("unknown destination index in @%s: %s",
                      command_name(cmd), to);

        if (from_index && to_index)
          {
            INDEX *current_to = to_index;
            /* Find ultimate index this merges to. */
            current_to = ultimate_index (current_to);

            if (current_to != from_index)
              {
                from_index->merged_in = current_to;
                from_index->in_code = (cmd == CM_syncodeindex);
                ADD_ARG(from);
                ADD_ARG(to);
                /* Note that 'current_to' may not end up as the index
                   'from_index' merges into if there are further @synindex 
                   commands. */
              }
            else
              line_warn ("@%s leads to a merging of %s in itself, ignoring",
                          command_name(cmd), from);
          }

        free (from);
        free (to);

        break;
      synindex_invalid:
        line_error ("bad argument to @%s: %s",
                     command_name(cmd), line);
        free (from); free (to);
        break;
      }
    case CM_printindex:
      {
        char *arg;
        char *p = line;
        arg = read_command_name (&p);
        if (!arg || *p)
          line_error ("bad argument to @printindex: %s", line);
        else
          {
            INDEX *idx = index_by_name (arg);
            if (!idx)
              line_error ("unknown index `%s' in @printindex", arg);
            else
              {
                if (idx->merged_in)
                  {
                    INDEX *i2;
                    for (i2 = idx; (i2->merged_in); i2 = i2->merged_in)
                      ;
                    line_warn
                      ("printing an index `%s' merged in another one, `%s'",
                       arg, i2->name);
                  }
                if (!current_node && !current_section
                      && nesting_context.regions_stack.top == 0)
                  {
                    line_warn ("printindex before document beginning: "
                                "@printindex %s", arg);
                  }
                ADD_ARG (arg);
              }
          }
        free (arg);
        break;
      }
    case CM_everyheadingmarks:
    case CM_everyfootingmarks:
    case CM_evenheadingmarks:
    case CM_oddheadingmarks:
    case CM_evenfootingmarks:
    case CM_oddfootingmarks:
      {
        if (!strcmp (line, "top") || !strcmp (line, "bottom"))
          {
            ADD_ARG (line);
          }
        else
          line_error ("@%s arg must be `top' or `bottom', not `%s'",
                       command_name(cmd), line);

        break;
      }
    case CM_fonttextsize:
      {
        if (!strcmp (line, "10") || !strcmp (line, "11"))
          {
            ADD_ARG (line);
          }
        else
          line_error ("Only @fonttextsize 10 or 11 is supported, not "
                       "`%s'", line);
        break;
      }
    case CM_footnotestyle:
      {
        if (!strcmp (line, "separate") || !strcmp (line, "end"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("@footnotestyle arg must be "
                       "`separate' or `end', not `%s'", line);
        break;
      }
    case CM_setchapternewpage:
      {
        if (!strcmp (line, "on") || !strcmp (line, "off")
            || !strcmp (line, "odd"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("@setchapternewpage arg must be "
                       "`on', `off' or `odd', not `%s'", line);
        break;
      }
    case CM_need:
      {
        /* valid: 2, 2., .2, 2.2 */

        if (is_decimal_number (line))
          ADD_ARG(line);
        else
          line_error ("bad argument to @need: %s", line);

        break;
      }
    case CM_paragraphindent:
      {
        if (!strcmp (line, "none") || !strcmp (line, "asis")
            || is_whole_number (line))
          ADD_ARG(line);
        else
          line_error ("@paragraphindent arg must be "
                       "numeric/`none'/`asis', not `%s'", line);
        break;
      }
    case CM_firstparagraphindent:
      {
        if (!strcmp (line, "none") || !strcmp (line, "insert"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("@firstparagraph arg must be "
                       "`none' or `insert', not `%s'", line);

        break;
      }
    case CM_exampleindent:
      {
        if (!strcmp (line, "asis") || is_whole_number (line))
          ADD_ARG(line);
        else
          line_error ("@exampleindent arg must be "
                       "numeric/`asis', not `%s'", line);
        break;
      }
    case CM_frenchspacing:
    case CM_xrefautomaticsectiontitle:
    case CM_codequoteundirected:
    case CM_codequotebacktick:
    case CM_deftypefnnewline:
    case CM_microtype:
      {
        if (!strcmp (line, "on") || !strcmp (line, "off"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("expected @%s on or off, not `%s'",
                      command_name(cmd), line);

        break;
      }
    case CM_kbdinputstyle:
      {
        if (!strcmp (line, "code"))
          global_kbdinputstyle = kbd_code;
        else if (!strcmp (line, "example"))
          global_kbdinputstyle = kbd_example;
        else if (!strcmp (line, "distinct"))
          global_kbdinputstyle = kbd_distinct;
        else goto kdbinputstyle_invalid;

        ADD_ARG(line);

        if (0)
          {
        kdbinputstyle_invalid:
          line_error ("@kbdinputstyle arg must be "
                       "`code'/`example'/`distinct', not `%s'", line);
          }
        break;
      }
    case CM_allowcodebreaks:
      {
        if (!strcmp (line, "true") || !strcmp (line, "false"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("@allowcodebreaks arg must be "
                       "`true' or `false', not `%s'", line);
        break;
      }
    case CM_urefbreakstyle:
      {
        if (!strcmp (line, "after") || !strcmp (line, "before")
            || !strcmp (line, "none"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("@urefbreakstyle arg must be "
                       "`after'/`before'/`none', not `%s'", line);
        break;
      }
    case CM_headings:
      {
        if (!strcmp (line, "off") || !strcmp (line, "on")
            || !strcmp (line, "single") || !strcmp (line, "double")
            || !strcmp (line, "singleafter") || !strcmp (line, "doubleafter"))
          {
            ADD_ARG(line);
          }
        else
          line_error ("bad argument to @headings: %s", line);
        break;
      }
    default:
      ;
    }
  if (line_args->contents.number == 0)
    {
      destroy_element (line_args);
      return 0;
    }
  else
    return line_args;

#undef ADD_ARG
}

void
check_register_target_element_label (ELEMENT *label_element,
                                     ELEMENT *target_element)
{
  if (label_element)
    {
      /* check that the label used as an anchor for link target has no
         external manual part */
      NODE_SPEC_EXTRA *label_info = parse_node_manual (label_element, 0);
      if (label_info && label_info->manual_content)
        {
          ELEMENT *label_element_contents = new_element (ET_NONE);
          /* copy contents only to avoid leading/trailing spaces */
          insert_slice_into_contents (label_element_contents, 0, label_element,
                                      0, label_element->contents.number);
          char *texi = convert_to_texinfo (label_element_contents);
          line_error ("syntax for an external node used for `%s'", texi);
          free (texi);
          destroy_element (label_element_contents);
        }
      destroy_node_spec (label_info);
    }
  register_label (target_element);
}

/* NODE->contents is the Texinfo for the specification of a node.  This
   function sets two fields on the returned object:

     manual_content - Texinfo tree for a manual name extracted from the
                      node specification.
     node_content - Texinfo tree for the node name on its own

   Objects returned from this function are used as an 'extra' key in
   the element for elements linking to nodes (such as @*ref,
   menu_entry_node or node direction arguments).  In that case
   modify_node is set to 1 and the node contents are modified in-place to
   hold the same elements as the returned objects.

   This function is also used for elements that are targets of links (@node and
   @anchor first argument, float second argument) mainly to check that
   the syntax for an external node is not used.  In that case modify_node
   is set to 0 and the node is not modified, and added elements are
   collected in a thirs field of the returned object,
     out_of_tree_elements - elements collected in manual_content or
                            node_content and not in the node
 */

NODE_SPEC_EXTRA *
parse_node_manual (ELEMENT *node, int modify_node)
{
  NODE_SPEC_EXTRA *result;
  ELEMENT *node_content = 0;
  int idx = 0; /* index into node->contents */

  result = malloc (sizeof (NODE_SPEC_EXTRA));
  result->manual_content = result->node_content = 0;
  /* if not modifying the tree, and there is a manual name, the elements
     added for the manual name and for the node content that are based
     on texts from tree elements are not anywhere in the tree.
     They are collected in result->out_of_tree_element to be freed later.
     These elements correspond to the text after the first manual name
     opening brace and text before and after the closing manual name brace */
  result->out_of_tree_elements = 0;

  /* If the content starts with a '(', try to get a manual name. */
  if (node->contents.number > 0 && node->contents.list[0]->text.end > 0
      && node->contents.list[0]->text.text[0] == '(')
    {
      ELEMENT *manual, *first;
      ELEMENT *new_first = 0;
      ELEMENT *opening_brace = 0;
      char *opening_bracket, *closing_bracket;

      /* Handle nested parentheses in the manual name, for whatever reason. */
      int bracket_count = 1; /* Number of ( seen minus number of ) seen. */

      manual = new_element (ET_NONE);

      /* If the first contents element is "(" followed by more text, split
         the leading "(" into its own element. */
      first = node->contents.list[0];
      if (first->text.end > 1)
        {
          if (modify_node)
            {
              opening_brace = new_element (0);
              text_append_n (&opening_brace->text, "(", 1);
            }
          new_first = new_element (0);
          text_append_n (&new_first->text, first->text.text +1, first->text.end -1);
        }
      else
        {
          /* first element is "(", keep it */
          idx++;
        }

      for (; idx < node->contents.number; idx++)
        {
          ELEMENT *e = node->contents.list[idx];
          char *p, *q;

          if (idx == 0)
            e = new_first;

          if (e->text.end == 0)
            {
              /* Put this element in the manual contents. */
              add_to_contents_as_array (manual, e);
              continue;
            }
          p = e->text.text;
          while (p < e->text.text + e->text.end
                 && bracket_count > 0)
            {
              opening_bracket = strchr (p, '(');
              closing_bracket = strchr (p, ')');
              if (!opening_bracket && !closing_bracket)
                {
                  break;
                }
              else if (opening_bracket && !closing_bracket)
                {
                  bracket_count++;
                  p = opening_bracket + 1;
                }
              else if (!opening_bracket && closing_bracket)
                {
                  bracket_count--;
                  p = closing_bracket + 1;
                }
              else if (opening_bracket < closing_bracket)
                {
                  bracket_count++;
                  p = opening_bracket + 1;
                }
              else if (opening_bracket > closing_bracket)
                {
                  bracket_count--;
                  p = closing_bracket + 1;
                }
            }

          if (bracket_count > 0)
            add_to_contents_as_array (manual, e);
          else /* end of filename component */
            {
              /* At this point, we are sure that there is a manual part,
                 so the pending removal/addition of elements at the beginning
                 of the manual can proceed (if modify_node). */
              /* Also, split the element in two, putting the part before the ")"
                 in the manual name, leaving the part afterwards for the
                 node name. */
              if (modify_node)
                {
                  if (opening_brace)
                    {
                      /* remove the original first element and prepend the
                         split "(" and text elements */
                      remove_from_contents (node, 0); /* remove first element */
                      destroy_element (first);
                      insert_into_contents (node, new_first, 0);
                      insert_into_contents (node, opening_brace, 0);
                      idx++;
                    }
                  remove_from_contents (node, idx); /* Remove current element e
                                                       with closing brace from the tree. */
                }
              else
                {
                  /* collect elements out of tree */
                  result->out_of_tree_elements = calloc (3, sizeof (ELEMENT *));
                  if (new_first)
                    result->out_of_tree_elements[0] = new_first;
                }
              p--; /* point at ) */
              if (p > e->text.text)
                {
                  /* text before ), part of the manual name */
                  ELEMENT *last_manual_element = new_element (ET_NONE);
                  text_append_n (&last_manual_element->text, e->text.text,
                                 p - e->text.text);
                  add_to_contents_as_array (manual, last_manual_element);
                  if (modify_node)
                    insert_into_contents (node, last_manual_element, idx++);
                  else
                    result->out_of_tree_elements[1] = last_manual_element;
                }

              if (modify_node)
                {
                  ELEMENT *closing_brace = new_element (0);
                  text_append_n (&closing_brace->text, ")", 1);
                  insert_into_contents (node, closing_brace, idx++);
                }

              /* Skip ')' and any following whitespace.
                 Note that we don't manage to skip any multibyte
                 UTF-8 space characters here. */
              p++;
              q = p + strspn (p, whitespace_chars);
              if (q > p && modify_node)
                {
                  ELEMENT *spaces_element = new_element (0);
                  text_append_n (&spaces_element->text, p, q - p);
                  insert_into_contents (node, spaces_element, idx++);
                }

              p = q;
              if (*p)
                {
                  /* text after ), part of the node name. */
                  ELEMENT *leading_node_content = new_element (ET_NONE);
                  text_append_n (&leading_node_content->text, p,
                                 e->text.text + e->text.end - p);
                  /* start node_content */
                  node_content = new_element (0);
                  add_to_contents_as_array (node_content, leading_node_content);
                  if (modify_node)
                    insert_into_contents (node, leading_node_content, idx);
                  else
                    result->out_of_tree_elements[2] = leading_node_content;
                  idx++;
                }
              if (modify_node)
                destroy_element (e);
              break;
            }
        } /* for */

      if (bracket_count == 0)
        result->manual_content = manual;
      else /* Unbalanced parentheses, consider that there is no manual
              afterall.  So far the node has not been modified, so the
              only thing that needs to be done is to remove the manual
              element and the elements allocated for the beginning of
              the manual, and start over */
        {
          destroy_element (manual);
          if (new_first)
            destroy_element (new_first);
          if (opening_brace)
            destroy_element (opening_brace);
          idx = 0; /* Back to the start, and consider the whole thing
                      as a node name. */
        }
    }

  /* If anything left, it is part of the node name. */
  if (idx < node->contents.number)
    {
      if (!node_content)
        node_content = new_element (0);
      insert_slice_into_contents (node_content, node_content->contents.number,
                                  node, idx, node->contents.number);
    }

  if (node_content)
    result->node_content = node_content;

  return result;
}

/* for now done in Texinfo::Convert::NodeNameNormalization, but could be
   good to do in Parser/XS */
/* Array of recorded @float's. */

FLOAT_RECORD *floats_list = 0;
size_t floats_number = 0;
size_t floats_space = 0;


char *
parse_float_type (ELEMENT *current)
{
  char *normalized;
  if (current->args.number > 0)
    {
      /* TODO convert_to_texinfo is incorrect here, conversion should follow
         code of Texinfo::Convert::NodeNameNormalization::convert_to_normalized */
      normalized = convert_to_texinfo (current->args.list[0]);
    }
  else
    normalized = strdup ("");
  add_extra_string (current, "float_type", normalized);
  return normalized;
}

/* Actions to be taken at the end of a line that started a block that
   has to be ended with "@end". */
ELEMENT *
end_line_starting_block (ELEMENT *current)
{
  KEY_PAIR *k;

  enum command_id command;

  if (current->parent->type == ET_def_line)
    command = current->parent->parent->cmd;
  else
    command = current->parent->cmd;

  if (command_data(command).flags & CF_contain_basic_inline)
      (void) pop_command (&nesting_context.basic_inline_stack_block);
  isolate_last_space (current);

  if (current->parent->type == ET_def_line)
    return end_line_def_line (current);

  if (pop_context () != ct_line)
    fatal ("line context expected");

  if (command == CM_multitable
      && (k = lookup_extra (current->parent, "columnfractions")))
    {
      ELEMENT *misc_cmd = k->value;
      KEY_PAIR *misc_args;

      if ((misc_args = lookup_extra (misc_cmd, "misc_args")))
        {
          add_extra_integer (current->parent, "max_columns",
                             misc_args->value->contents.number);
        }
      else
        {
          add_extra_integer (current->parent, "max_columns", 0);
          k->key = "";
          k->type = extra_deleted;
        }
    }
  else if (command == CM_multitable)
    {
      int i;
      ELEMENT *prototypes = new_element (ET_NONE);

      for (i = 0; i < current->contents.number; i++)
        {
          ELEMENT *e = contents_child_by_index(current, i);

          if (e->type == ET_bracketed)
            {
              /* Copy and change the type of the element. */

              ELEMENT *new;
              new = malloc (sizeof (ELEMENT));
              memcpy (new, e, sizeof (ELEMENT));
              new->type = ET_bracketed_multitable_prototype;
              new->parent = 0;
              /* TODO the extra_info/info_info information in e is not copied
                 over, at least leading/trailing spaces (something else?). */
              new->extra_info = new_associated_info();
              new->info_info = new_associated_info();
              add_to_contents_as_array (prototypes, new);
            }
          else if (e->text.end > 0)
            {
              /* Split the text up by whitespace. */
              char *p, *p2;
              p = e->text.text;
              while (1)
                {
                  ELEMENT *new;
                  p2 = p + strspn (p, whitespace_chars);
                  if (!*p2)
                    break;
                  p = p2 + strcspn (p2, whitespace_chars);
                  new = new_element (ET_row_prototype);
                  text_append_n (&new->text, p2, p - p2);
                  add_to_contents_as_array (prototypes, new);
                }
            }
          else
            {
              if (e->cmd != CM_c && e->cmd != CM_comment)
                {
                  char *texi;
                  texi = convert_to_texinfo (e);
                  command_warn (current,
                                "unexpected argument on @%s line: %s",
                                command_name(current->parent->cmd),
                                texi);
                  free (texi);
                }
            }
        }

      {
      int max_columns = prototypes->contents.number;
      add_extra_integer (current->parent, "max_columns", max_columns);
      if (max_columns == 0)
        command_warn (current->parent, "empty multitable");
      }
      add_extra_contents_oot (current->parent, "prototypes", prototypes);
      /* See code in destroy_element for how prototypes is deallocated. */
    }

  current = current->parent;
  if (counter_value (&count_remaining_args, current) != -1)
    counter_pop (&count_remaining_args);

  if (command == CM_float)
    {
      char *float_type = "";
      ELEMENT *float_label_element = 0;
      current->source_info = current_source_info;
      if (current->args.number >= 2)
        {
          float_label_element = args_child_by_index (current, 1);
        }
      check_register_target_element_label (float_label_element, current);
      /* for now done in Texinfo::Convert::NodeNameNormalization, but could be
         good to do in Parser/XS */
      /*
      float_type = parse_float_type (current);
      */
      /* add to global 'floats' array */
      /*
      if (floats_number == floats_space)
        {
          floats_list = realloc (floats_list,
                                 (floats_space += 5) * sizeof (FLOAT_RECORD));
        }
      floats_list[floats_number].type = float_type;
      floats_list[floats_number++].element = current;
      */
      if (current_section)
        add_extra_element (current, "float_section", current_section);
    }
  else if (command_data(command).flags & CF_blockitem)
    {
      if (command == CM_enumerate)
        {
          char *spec = "1";

          if (current->args.number > 0
              && current->args.list[0]->contents.number > 0)
            {
              ELEMENT *g;
              if (current->args.list[0]->contents.number > 1)
                command_error (current, "superfluous argument to @%s",
                               command_name(current->cmd));
              g = current->args.list[0]->contents.list[0];
              /* Check if @enumerate specification is either a single
                 letter or a string of digits. */
              if (g->text.end == 1
                    && isalpha ((unsigned char) g->text.text[0])
                  || (g->text.end > 0
                      && !*(g->text.text
                            + strspn (g->text.text, "0123456789"))))
                {
                  spec = g->text.text;
                }
              else
                command_error (current, "bad argument to @%s",
                               command_name(command));
            }
          add_extra_string_dup (current, "enumerate_specification", spec);
        }
      else if (item_line_command (command))
        {
          KEY_PAIR *k;
          k = lookup_extra (current, "command_as_argument");
          if (!k)
            {
              if (current->args.number > 0
                  && current->args.list[0]->contents.number > 0)
                {
                  ELEMENT tmp;
                  char *texi_arg;

                  /* expand the contents to avoid surrounding spaces */
                  memset (&tmp, 0, sizeof (ELEMENT));
                  tmp.contents = current->args.list[0]->contents;
                  texi_arg = convert_to_texinfo (&tmp);
                  command_error (current, "bad argument to @%s: %s",
                                 command_name(command), texi_arg);
                }
              else
                {
                  command_error (current, "missing @%s argument",
                                 command_name(command));
                }
            }
          else
            {
              ELEMENT *e = k->value;
              if (!(command_flags(e) & CF_brace)
                  || (command_data(e->cmd).data == BRACE_noarg))
                {
                  command_error (current,
                                 "command @%s not accepting argument in brace "
                                 "should not be on @%s line",
                                 command_name(e->cmd),
                                 command_name(command));
                  k->key = "";
                  k->type = extra_deleted;
                }
            }
        }

      /* check that command_as_argument of the @itemize is alone on the line,
         otherwise it is not a command_as_argument */
      else if (command == CM_itemize)
        {
          KEY_PAIR *k;
          k = lookup_extra (current, "command_as_argument");
          if (k)
            {
              int i;
              ELEMENT *e = args_child_by_index (current, 0);

              for (i = 0; i < e->contents.number; i++)
                {
                  if (contents_child_by_index (e, i) == k->value)
                    {
                      i++;
                      break;
                    }
                }
              for (; i < e->contents.number; i++)
                {
                  ELEMENT *f = contents_child_by_index (e, i);
                  if (f->cmd != CM_c
                      && f->cmd != CM_comment
                      && !(f->text.end > 0
                           && !*(f->text.text
                                 + strspn (f->text.text, whitespace_chars))))
                    {
                      k->value->type = ET_NONE;
                      k->key = "";
                      k->type = extra_deleted;
                      break;
                    }
                }
            }
        }

      /* Check if command_as_argument isn't an accent command */
      KEY_PAIR *k = lookup_extra (current, "command_as_argument");
      if (k && k->value)
        {
          enum command_id cmd = k->value->cmd;
          if (cmd && (command_data(cmd).flags & CF_accent))
            {
              command_warn (current, "accent command `@%s' "
                            "not allowed as @%s argument",
                            command_name(cmd),
                            command_name(command));
              k->key = "";
              k->value = 0;
              k->type = extra_deleted;
            }
        }
      /* if no command_as_argument given, default to @bullet for
         @itemize, and @asis for @table. */
      if (command == CM_itemize
          && (current->args.number == 0
              || current->args.list[0]->contents.number == 0))
        {
          ELEMENT *e;
          ELEMENT *block_line_arg;
          if (last_args_child(current)
              && last_args_child(current)->type == ET_block_line_arg)
            {
              block_line_arg = last_args_child(current);
            }
          else
            {
              block_line_arg = new_element (ET_block_line_arg);
              insert_into_args (current, block_line_arg, 0);
            }

          e = new_element (ET_command_as_argument_inserted);
          e->cmd = CM_bullet;
          insert_into_contents (block_line_arg, e, 0);
          add_extra_element (current, "command_as_argument", e);
        }
      else if (item_line_command (command)
          && !lookup_extra (current, "command_as_argument"))
        {
          ELEMENT *e;

          e = new_element (ET_command_as_argument_inserted);
          e->cmd = CM_asis;
          insert_into_args (current, e, 0);
          add_extra_element (current, "command_as_argument", e);
        }

      {
        ELEMENT *bi = new_element (ET_before_item);
        add_to_element_contents (current, bi);
        current = bi;
      }
    } /* CF_blockitem */
  else if (command_data (command).args_number == 0
           && (! (command_data (command).flags & CF_variadic))
           && current->args.number > 0
           && current->args.list[0]->contents.number > 0)
    {
      ELEMENT tmp;
      char *texi_arg;

      /* expand the contents to avoid surrounding spaces */
      memset (&tmp, 0, sizeof (ELEMENT));
      tmp.contents = current->args.list[0]->contents;
      texi_arg = convert_to_texinfo (&tmp);
      command_warn (current, "unexpected argument on @%s line: %s",
                     command_name(command), texi_arg);
    }

  if (command_data(command).data == BLOCK_conditional)
    {
      int iftrue = 0; /* Whether the conditional is true. */
      int bad_line = 1;
      if (command == CM_ifclear || command == CM_ifset
          || command == CM_ifcommanddefined
          || command == CM_ifcommandnotdefined)
        {
          if (current->args.number == 1
              && current->args.list[0]->contents.number == 1)
            {
              ELEMENT *arg_elt = current->args.list[0]->contents.list[0];
              if (arg_elt->text.end > 0)
                {
                  char *name = arg_elt->text.text;
                  char *p = name + strspn (name, whitespace_chars);
                  if (!*p)
                    {
                      line_error ("@%s requires a name", command_name(command));
                      bad_line = 0;
                    }
                  else
                    {
                      char *p = name;
                      char *flag = read_flag_name (&p);
                      if (flag && !*p)
                        {
                          bad_line = 0;
                          if (command == CM_ifclear || command == CM_ifset)
                            {
                              char *val = fetch_value (flag);
                              if (val)
                                iftrue = 1;
                              if (command == CM_ifclear)
                                iftrue = !iftrue;
                            }
                          else /* command == CM_ifcommanddefined
                                  || command == CM_ifcommandnotdefined */
                            {
                              enum command_id c = lookup_command (flag);
                              if (c)
                                iftrue = 1;
                              if (command == CM_ifcommandnotdefined)
                                iftrue = !iftrue;
                            }
                        }
                      free (flag);
                    }
                }
            }
          else
            {
              line_error ("@%s requires a name", command_name(command));
              bad_line = 0;
            }
          if (bad_line)
            line_error ("bad name for @%s", command_name(command));
        }
      else if (!memcmp (command_name(command), "if", 2)) /* e.g. @ifhtml */
        {
          int i; char *p;
          /* Handle @if* and @ifnot* */

          p = command_name(command) + 2; /* After "if". */
          if (!memcmp (p, "not", 3))
            p += 3; /* After "not". */
          for (i = 0; i < sizeof (expanded_formats)/sizeof (*expanded_formats);
               i++)
            {
              if (!strcmp (p, expanded_formats[i].format))
                {
                  iftrue = expanded_formats[i].expandedp;
                  break;
                }
            }
          if (!memcmp (command_name(command), "ifnot", 5))
            iftrue = !iftrue;
        }
      else
        bug_message ("unknown conditional command @%s", command_name(command));

      debug ("CONDITIONAL %s %d", command_name(command), iftrue);
      if (iftrue)
        {
          ELEMENT *e;
          SOURCE_MARK *source_mark;
          current = current->parent;
          e = pop_element_from_contents (current);
          e->parent = 0;
          source_mark = new_source_mark (SM_type_expanded_conditional_command);
          source_mark->status = SM_status_start;
          source_mark->element = e;
          push_conditional_stack (command, source_mark);
          register_source_mark (current, source_mark);
        }
    }

  if (command_data(command).data == BLOCK_menu)
    {
      /* Start reading a menu.  Processing will continue in
         handle_menu in menus.c. */

      ELEMENT *menu_comment = new_element (ET_menu_comment);
      add_to_element_contents (current, menu_comment);
      current = menu_comment;
      debug ("MENU_COMMENT OPEN");
    }
  if (command_data(command).data == BLOCK_format_raw
      && format_expanded_p (command_name(command)))
    {
      ELEMENT *rawpreformatted = new_element (ET_rawpreformatted);
      add_to_element_contents (current, rawpreformatted);
      current = rawpreformatted;
    }
  if (command_data(command).data != BLOCK_raw
      && command_data(command).data != BLOCK_conditional)
    current = begin_preformatted (current);

  return current;
}

/* Actions to be taken at the end of an argument to a line command
   not starting a block.  @end is processed in here. */
ELEMENT *
end_line_misc_line (ELEMENT *current)
{
  enum command_id cmd;
  int arg_type;
  ELEMENT *misc_cmd;
  char *end_command = 0;
  enum command_id end_id = CM_NONE;
  int included_file = 0;
  SOURCE_MARK *include_source_mark;

  cmd = current->parent->cmd;
  if (!cmd)
    fatal ("command name unknown for @end");

  if ((command_data(cmd).flags & CF_contain_basic_inline)
      || cmd == CM_item) /* CM_item_LINE on stack */
    (void) pop_command (&nesting_context.basic_inline_stack_on_line);
  isolate_last_space (current);

  if (current->parent->type == ET_def_line)
    return end_line_def_line (current);

  current = current->parent;
  misc_cmd = current;

  arg_type = command_data(cmd).data;
   
  debug ("MISC END %s", command_name(cmd));

  if (pop_context () != ct_line)
    fatal ("line context expected");

  if (arg_type == LINE_specific)
    {
      ELEMENT *args = parse_line_command_args (current);
      if (args)
        add_extra_misc_args (current, "misc_args", args);
    }
  else if (arg_type == LINE_text)
    {
      char *text = 0;
      int superfluous_arg = 0;

      if (current->args.number > 0)
        text = convert_to_text (current->args.list[0], &superfluous_arg);

      if (!text || !strcmp (text, ""))
        {
          if (!superfluous_arg)
            line_warn ("@%s missing argument", command_name(cmd));
          add_extra_integer (current, "missing_argument", 1);
          free (text);
        }
      else
        {
          add_extra_string (current, "text_arg", text);
          if (current->cmd == CM_end)
            {
              char *line = text;

              /* Set end_command - used below. */
              end_command = read_command_name (&line);
              if (end_command)
                {
                  /* Check if argument is a block Texinfo command. */
                  end_id = lookup_command (end_command);
                  if (end_id == 0 || !(command_data(end_id).flags & CF_block))
                    {
                      command_warn (current, "unknown @end %s", end_command);
                      free (end_command); end_command = 0;
                    }
                  else
                    {
                      debug ("END BLOCK @end %s", end_command);

                      /* If there is superfluous text after @end argument, set
                         superfluous_arg such that the error message triggered by an
                         unexpected @-command on the @end line is issued below.  Note
                         that superfluous_arg may also be true if it was set above. */
                      if (end_command
                          && line[strspn (line, whitespace_chars)] != '\0')
                          superfluous_arg = 1;
                    }
                }
              /* if superfluous_arg is set there is a similar and somewhat
                 better error message below */
              else if (!superfluous_arg)
                {
                  command_error (current, "bad argument to @end: %s", line);
                }
            }
          else if (superfluous_arg)
            {
              /* An error message is issued below. */
            }
          else if (current->cmd == CM_include)
            {
              int status;
              char *fullpath, *sys_filename;

              debug ("Include %s", text);

              sys_filename = encode_file_name (text);
              fullpath = locate_include_file (sys_filename);

              if (!fullpath)
                {
                  command_error (current,
                                 "@include: could not find %s", text);
                }
              else
                {
                  status = input_push_file (fullpath);
                  if (status)
                    {
                      char *decoded_file_path
                         = convert_to_utf8 (strdup(fullpath));
                      command_error (current,
                                     "@include: could not open %s: %s",
                                     decoded_file_path,
                                     strerror (status));
                      free (decoded_file_path);
                    }
                  else
                    {
                      included_file = 1;
                      include_source_mark = new_source_mark (SM_type_include);
                      include_source_mark->status = SM_status_start;
                      set_input_source_mark (include_source_mark);
                    }
                }
            }
          else if (current->cmd == CM_verbatiminclude)
            {
              if (global_info.input_perl_encoding)
                add_extra_string_dup (current, "input_perl_encoding",
                                      global_info.input_perl_encoding);
            }
          else if (current->cmd == CM_documentencoding)
            {
              int i; char *p, *text2;
              char *texinfo_encoding, *perl_encoding, *input_encoding;
              /* See tp/Texinfo/Encoding.pm (whole file) */

              /* Three concepts of encoding:
                 texinfo_encoding -- one of the encodings supported as an
                                     argument to @documentencoding, documented 
                                     in Texinfo manual
                 perl_encoding -- used for charset conversion within Perl
                 input_encoding -- for output within an HTML file */

              text2 = strdup (text);
              for (p = text2; *p; p++)
                *p = tolower (*p);

              /* Get texinfo_encoding from what was in the document */
              {
              static char *canonical_encodings[] = {
                "us-ascii", "utf-8", "iso-8859-1",
                "iso-8859-15","iso-8859-2","koi8-r", "koi8-u",
                0
              };

              texinfo_encoding = 0;
              for (i = 0; (canonical_encodings[i]); i++)
                {
                  if (!strcmp (text2, canonical_encodings[i]))
                    {
                      texinfo_encoding = canonical_encodings[i];
                      break;
                    }
                }
              if (!texinfo_encoding)
                {
                  command_warn (current, "encoding `%s' is not a "
                                "canonical texinfo encoding", text);
                }
              }

              /* Get perl_encoding. */
              perl_encoding = 0;
              if (texinfo_encoding)
                perl_encoding = texinfo_encoding;
              else
                {
                  int i;
                  static char *known_encodings[] = {
                      "shift_jis",
                      "latin1",
                      "latin-1",
                      "utf8",
                      0
                  };
                  for (i = 0; (known_encodings[i]); i++)
                    {
                      if (!strcmp (text2, known_encodings[i]))
                        {
                          perl_encoding = known_encodings[i];
                          break;
                        }
                    }
                }
              free (text2);

              if (perl_encoding)
                {
                  struct encoding_map {
                      char *from; char *to;
                  };
                  /* The map mimics Encode::find_encoding()->name() result.
                     Even when the alias is not good, such as 'utf-8-strict'
                     for 'utf-8', use the same mapping for consistency with the
                     perl Parser */
                  static struct encoding_map map[] = {
                      "utf-8", "utf-8-strict",
                      "us-ascii", "ascii",
                      "shift_jis", "shiftjis",
                      "latin1", "iso-8859-1",
                      "latin-1", "iso-8859-1"
                  };
                  for (i = 0; i < sizeof map / sizeof *map; i++)
                    {
                      if (!strcmp (perl_encoding, map[i].from))
                        {
                          perl_encoding = map[i].to;
                          break;
                        }
                    }
                  add_extra_string_dup (current, "input_perl_encoding",
                                        perl_encoding);
                  free (global_info.input_perl_encoding);
                  global_info.input_perl_encoding = strdup (perl_encoding);
                }
              else
                {
                  command_warn (current, "unrecognized encoding name `%s'",
                                text);
                  /* the Perl Parser calls Encode::find_encoding, so knows
                     about more encodings than what we know about here.
                     TODO: Check when perl_encoding could be defined when 
                     texinfo_encoding isn't.
                     Maybe we should check if an iconv conversion is possible
                     from this encoding to UTF-8. */

                }

              /* Set input_encoding from perl_encoding.  In the perl parser,
                 lc(Encode::find_encoding()->mime_name()) is used */
              input_encoding = 0;
              if (perl_encoding)
                {
                  struct encoding_map {
                      char *from; char *to;
                  };
                  static struct encoding_map map[] = {
                      "utf8",        "utf-8",
                      "utf-8-strict","utf-8",
                      "ascii",       "us-ascii",
                      "shiftjis",    "shift_jis",
                      "iso-8859-1",  "iso-8859-1",
                      "iso-8859-2",  "iso-8859-2",
                      "iso-8859-15", "iso-8859-15",
                      "koi8-r",      "koi8-r",
                      "koi8-u",      "koi8-u",
                  };
                  input_encoding = perl_encoding;
                  for (i = 0; i < sizeof map / sizeof *map; i++)
                    {
                      /* Elements in first column map to elements in
                         second column.  Elements in second column map
                         to themselves. */
                      if (!strcasecmp (input_encoding, map[i].from)
                          || !strcasecmp (input_encoding, map[i].to))
                        {
                          input_encoding = map[i].to;
                          break;
                        }
                    }
                }
              if (input_encoding)
                {
                  add_extra_string_dup (current, "input_encoding_name",
                                        input_encoding);

                  global_info.input_encoding_name = strdup (input_encoding);
                  set_input_encoding (input_encoding);
                }
            }
          else if (current->cmd == CM_documentlanguage)
            {
              char *p, *q;

              /* Texinfo::Common::warn_unknown_language checks with
                 tp/Texinfo/Documentlanguages.pm, which is an automatically
                 generated list of official IANA language codes.  For now,
                 just check if the language code looks right. */

              p = text;
              while (isalpha ((unsigned char) *p))
                p++;
              if (*p && *p != '_')
                {
                   /* non-alphabetic char in language code */
                  command_warn (current, "%s is not a valid language code",
                                text);
                }
              else
                {
                  if (p - text > 4)
                    {
                      /* looks too long */
                      char c = *p;
                      *p = 0;
                      command_warn (current, "%s is not a valid language code",
                                    text);
                      *p = c;
                    }
                  if (*p == '_')
                    {
                      q = p + 1;
                      p = q;
                      /* Language code should be of the form LL_CC,
                         language code followed by country code. */
                      while (isalpha ((unsigned char) *p))
                        p++;
                      if (*p || p - q > 4)
                        {
                          /* non-alphabetic char in country code or code
                             is too long. */
                          command_warn (current,
                                        "%s is not a valid region code", q);
                        }
                    }
                }
              set_documentlanguage (text);
            }
        }
      if (superfluous_arg)
        {
          char *texi_line, *p, *p1;
          p = convert_to_texinfo (args_child_by_index(current, 0));

          texi_line = p;
          while (isspace ((unsigned char) *texi_line))
            texi_line++;

          /* Trim leading and trailing whitespace. */
          p1 = strchr (texi_line, '\0');
          if (p1 > texi_line)
            {
              while (p1 > texi_line && isspace ((unsigned char) p1[-1]))
                p1--;
              *p1 = '\0';
            }
          command_error (current, "bad argument to @%s: %s", 
                         command_name(current->cmd), texi_line);
          free (p);
        }
    }
  else if (current->cmd == CM_node)
    {
      int i;
      NODE_SPEC_EXTRA *node_label_manual_info;

      for (i = 1; i < current->args.number && i < 4; i++)
        {
          ELEMENT * arg = current->args.list[i];
          NODE_SPEC_EXTRA *direction_label_info = parse_node_manual (arg, 1);
          if (direction_label_info->node_content)
            add_extra_contents (arg, "node_content",
                                direction_label_info->node_content);
          if (direction_label_info->manual_content)
            add_extra_contents (arg, "manual_content",
                                direction_label_info->manual_content);
          free (direction_label_info);
        }

      /* Now take care of the node itself */
      check_register_target_element_label (current->args.list[0], current);

      if (current_part
          && !lookup_extra (current_part, "part_associated_section"))
        {
         /* we only associate a part to the following node if the
            part is not already associate to a sectioning command,
            but the part can be associated to the sectioning command later
            if a sectioning command follows the node. */
          add_extra_element (current, "node_preceding_part", current_part);
          add_extra_element (current_part, "part_following_node",
                                 current);
        }
      current_node = current;
    }
  else if (current->cmd == CM_listoffloats)
    {
      /* for now done in Texinfo::Convert::NodeNameNormalization, but could be
         good to do in Parser/XS */
      /* parse_float_type (current); */
    }
  else
    {
      /* All the other "line" commands. Check they have an argument. Empty 
         @top is allowed. */
      if (current->args.list[0]->contents.number == 0
          && current->cmd != CM_top)
        {
          command_warn (current, "@%s missing argument", 
                        command_name(current->cmd));
          add_extra_integer (current, "missing_argument", 1);
        }
      else
        {
          if ((current->parent->cmd == CM_ftable
               || current->parent->cmd == CM_vtable)
              && (current->cmd == CM_item || current->cmd == CM_itemx))
            {
              enter_index_entry (current->parent->cmd,
                                 current);
            }
          else
            {
              // 3273 FIXME possibly check for @def... command
            }


          /* Index commands */
          if (command_flags(current) & CF_index_entry_command)
            {
              enter_index_entry (current->cmd, current);
              current->type = ET_index_entry_command;
            }
          /* if there is a brace command interrupting an index or subentry
             command, replace the internal internal_spaces_before_brace_in_index
             text type with its final type depending on whether there is
             text after the brace command. */
          if ((command_flags(current) & CF_index_entry_command
                || current->cmd == CM_subentry))
            {
              if (lookup_extra (current, "sortas")
                   || lookup_extra (current, "seealso")
                   || lookup_extra (current, "seeentry"))
                set_non_ignored_space_in_index_before_command(current->args.list[0]);
            }
        }
    }

  current = current->parent;
  if (end_command) /* Set above */
    {
      /* More processing of @end */
      ELEMENT *end_elt;

      debug ("END COMMAND %s", end_command);

      /* Reparent the "@end" element to be a child of the block element. */
      end_elt = pop_element_from_contents (current);

      /* If not a conditional */
      if (command_data(end_id).data != BLOCK_conditional
          /* ignored conditional */
          || current->cmd == end_id
          /* not a non-ignored conditional */
          || (conditional_number == 0
              || top_conditional_stack ()->command != end_id))
        {
          ELEMENT *closed_command;
          /* This closes tree elements (e.g. paragraphs) until we reach
             end_command.  It can print an error if another block command
             is found first. */
          current = close_commands (current, end_id, &closed_command, 0);
          if (!closed_command)
            destroy_element_and_children (end_elt);
          else
            {
              close_command_cleanup (closed_command);

              add_to_element_contents (closed_command, end_elt);

              if (command_data(closed_command->cmd).data == BLOCK_menu
                  && command_data(current_context_command()).data == BLOCK_menu)
                {
                  ELEMENT *e;
                  debug ("CLOSE menu but still in menu context");
                  e = new_element (ET_menu_comment);
                  add_to_element_contents (current, e);
                  current = e;
                }
            }
          if (close_preformatted_command (end_id))
            current = begin_preformatted (current);
        }
      else
        {
          /* If we are in a non-ignored conditional, there is not
             an element for the block in the tree; it is recorded
             in the conditional stack.  Pop it, such that
             the "@end" line does not appear in the final tree for a
             conditional block. */
          CONDITIONAL_STACK_ITEM *cond_info = pop_conditional_stack ();
          SOURCE_MARK *end_source_mark;
          SOURCE_MARK *cond_source_mark = cond_info->source_mark;
          end_source_mark = new_source_mark (cond_source_mark->type);
          end_source_mark->counter = cond_source_mark->counter;
          end_source_mark->status = SM_status_end;
          end_elt->parent = 0;
          end_source_mark->element = end_elt;
          register_source_mark (current, end_source_mark);
        }
    }
  else
    {
     /* If a file was included, remove the include command completely.
        Also ignore @setfilename in included file, as said in the manual. */
      if (included_file || (cmd == CM_setfilename && top_file_index () > 0))
        {
          SOURCE_MARK *source_mark;
          if (included_file)
            source_mark = include_source_mark;
          else
            source_mark = new_source_mark (SM_type_setfilename);

          /* this is in order to keep source marks that are within a
            removed element.  For the XS parser it is also easier to
            manage the source mark memory which can stay associated
            to the element. */
          source_mark->element = pop_element_from_contents (current);
          register_source_mark (current, source_mark);
        }
      if (close_preformatted_command (cmd))
        current = begin_preformatted (current);
    }

  if (cmd == CM_setfilename && (current_node || current_section))
    command_warn (misc_cmd, "@setfilename after the first element");
  else if (cmd == CM_columnfractions)
    {
      /* Check if in multitable. */
      if (!current->parent || current->parent->cmd != CM_multitable)
        {
          command_error (current,
            "@columnfractions only meaningful on a @multitable line");
        }
      else
        {
          add_extra_element (current->parent, "columnfractions", misc_cmd);
        }
    }
  else if (command_data(cmd).flags & CF_root)
    {
      current = last_contents_child (current);
      if (cmd == CM_node)
        counter_pop (&count_remaining_args);
      
      /* Set 'associated_section' extra key for a node. */
      if (cmd != CM_node && cmd != CM_part)
        {
          if (current_node)
            {
              if (!lookup_extra (current_node, "associated_section"))
                {
                  add_extra_element
                    (current_node, "associated_section", current);
                  add_extra_element
                    (current, "associated_node", current_node);
                }
            }

          if (current_part)
            {
              add_extra_element (current, "associated_part", current_part);
              add_extra_element (current_part, "part_associated_section",
                                 current);
              if (current->cmd == CM_top)
                {
                  line_error_ext (1, &current_part->source_info,
                         "@part should not be associated with @top");
                }
              current_part = 0;
            }

          current_section = current;
        }
      else if (cmd == CM_part)
        {
          current_part = current;
          if (current_node
              && !lookup_extra (current_node, "associated_section"))
            {
              line_warn ("@node precedes @part, but parts may not be "
                         "associated with nodes");
            }
        }
    }

  return current;
}

ELEMENT *
end_line_def_line (ELEMENT *current)
{
  enum command_id def_command;
  DEF_INFO *def_info = 0;
  static DEF_INFO zero_def_info; /* always stays zeroed */
  KEY_PAIR *k;

  if (pop_context () != ct_def)
    fatal ("def context expected");

  k = lookup_extra (current->parent, "def_command");
  def_command = lookup_command ((char *) k->value);

  def_info = parse_def (def_command, current);

  current = current->parent;

  /* Record the index entry if def_info is not empty. */
  if (!memcmp(def_info, &zero_def_info, sizeof (DEF_INFO)))
    {
      free (def_info);
      k = lookup_extra (current, "original_def_cmdname");
      command_warn (current, "missing category for @%s", (char *) k->value);
    }
  else
    {
      ELEMENT *index_entry = 0; /* Index entry text. */

      add_extra_def_info (current, "def_parsed_hash", def_info);

      if (def_info->name)
        {
          char *t;
          /* Set index_entry unless an empty ET_bracketed_def_content. */
          if (def_info->name->type == ET_bracketed_def_content
              && (def_info->name->contents.number == 0
                  || (def_info->name->contents.number == 1
                      && (t = def_info->name->contents.list[0]->text.text)
                      && t[strspn (t, whitespace_chars)] == '\0')))
            {
            }
          else
            index_entry = def_info->name;
        }

      if (index_entry)
        {

          if (def_info->class &&
              (def_command == CM_defop
                  || def_command == CM_deftypeop
                  || def_command == CM_defmethod
                  || def_command == CM_deftypemethod
                  || def_command == CM_defivar
                  || def_command == CM_deftypeivar
                  || def_command == CM_deftypecv))
            {
              /* def_index_element will be set in
                 Texinfo::Translations::complete_indices */
              if (global_documentlanguage)
                add_extra_string_dup (current, "documentlanguage",
                                      global_documentlanguage);
            }
          else
            {
              add_extra_element (current, "def_index_element",
                                 index_entry);
            }

          if (def_command != CM_defline)
            enter_index_entry (def_command, current);
        }
      else
        {
          k = lookup_extra (current, "original_def_cmdname");
          command_warn (current, "missing name for @%s", (char *) k->value);
        }
    }

  current = current->parent;
  current = begin_preformatted (current);

  return current;
}

/* Actions to be taken when a whole line of input has been processed */
ELEMENT *
end_line (ELEMENT *current)
{
  ELEMENT *current_old = current; /* Used at very end of function */

  /* If empty line, start a new paragraph. */
  if (last_contents_child (current)
      && last_contents_child (current)->type == ET_empty_line)
    {
      debug ("END EMPTY LINE");
      if (current->type == ET_paragraph)
        {
          ELEMENT *e;
          /* Remove empty_line element. */
          e = pop_element_from_contents (current);

          current = end_paragraph (current, 0, 0);

          /* Add empty_line to higher-level element. */
          add_to_element_contents (current, e);
        }
      else if (current->type == ET_preformatted
               && current->parent->type == ET_menu_entry_description)
        {
          /* happens for an empty line following a menu_description */
          ELEMENT *empty_line, *e;
          empty_line = pop_element_from_contents (current);
          if (current->contents.number == 0)
            {
              /* it should not be possible to have source marks associated
                 to that container */
              current = current->parent;
              destroy_element (pop_element_from_contents (current));
            }
          else
            current = current->parent;

          current = current->parent->parent;
          e = new_element (ET_menu_comment);
          add_to_element_contents (current, e);

          current = e;
          e = new_element (ET_preformatted);
          add_to_element_contents (current, e);

          current = e;
          e = new_element (ET_after_menu_description_line);
          text_append (&e->text, empty_line->text.text);
          transfer_source_marks (empty_line, e);
          destroy_element (empty_line);
          add_to_element_contents (current, e);

          debug ("MENU: END DESCRIPTION, OPEN COMMENT");
        }
      else if (in_paragraph_context (current_context ()))
        {
          current = end_paragraph (current, 0, 0);
        }
    }
  /* The end of the line of a menu. */
  else if (current->type == ET_menu_entry_name
           || current->type == ET_menu_entry_node)
    {
      ELEMENT *end_comment = 0;
      int empty_menu_entry_node = 0;

      if (current->type == ET_menu_entry_node)
        {
          ELEMENT *last = last_contents_child (current);

          if (current->contents.number > 0
              && (last->cmd == CM_c || last->cmd == CM_comment))
            {
              end_comment = pop_element_from_contents (current);
            }

          /* If contents empty or is all whitespace. */
          if (current->contents.number == 0
              || (current->contents.number == 1
                  && last->text.end > 0
                  && !last->text.text[strspn (last->text.text, 
                                              whitespace_chars)]))
            {
              empty_menu_entry_node = 1;
              if (end_comment)
                add_to_element_contents (current, end_comment);
            }
        }

      /* Abort the menu entry if there is no destination node given. */
      if (empty_menu_entry_node || current->type == ET_menu_entry_name)
        {
          ELEMENT *menu, *menu_entry, *description_or_menu_comment = 0;
          debug ("FINALLY NOT MENU ENTRY");
          menu = current->parent->parent;
          menu_entry = pop_element_from_contents (menu);
          if (menu->contents.number > 0
              && last_contents_child(menu)->type == ET_menu_entry)
            {
              ELEMENT *entry, *description = 0;
              int j;

              entry = last_contents_child(menu);
              for (j = entry->contents.number - 1; j >= 0; j--)
                {
                  ELEMENT *e = contents_child_by_index (entry, j);
                  if (e->type == ET_menu_entry_description)
                    {
                      description = e;
                      break;
                    }
                }
              if (description)
                description_or_menu_comment = description;
              else
                {
                  ELEMENT *e;
                  /* "Normally this cannot happen." */
                  bug ("no description in menu entry");
                  e = new_element (ET_menu_entry_description);
                  add_to_element_contents (entry, e);
                  description_or_menu_comment = e;
                }
            }
          else if (menu->contents.number > 0
                   && last_contents_child(menu)->type == ET_menu_comment)
            {
              description_or_menu_comment = last_contents_child(menu);
            }
          if (description_or_menu_comment)
            {
              current = description_or_menu_comment;
              if (current->contents.number > 0
                  && last_contents_child(current)->type == ET_preformatted)
                current = last_contents_child(current);
              else
                {
                  ELEMENT *e;
                  /* This should not happen */
                  bug ("description or menu comment not in preformatted");
                  e = new_element (ET_preformatted);
                  add_to_element_contents (current, e);
                  current = e;
                }
            }
          else
            {
              ELEMENT *e;
              e = new_element (ET_menu_comment);
              add_to_element_contents (menu, e);
              current = e;
              e = new_element (ET_preformatted);
              add_to_element_contents (current, e);
              current = e;
              debug ("THEN MENU_COMMENT OPEN");
            }
          {
          /* source marks tested in *macro.t macro_in_menu_comment_like_entry */
          int i, j;
          for (i = 0; i < menu_entry->contents.number; i++)
            {
              ELEMENT *arg = contents_child_by_index(menu_entry, i);
              if (arg->text.end > 0)
                current = merge_text (current, arg->text.text, arg);
              else
                {
                  ELEMENT *e;
                  for (j = 0; j < arg->contents.number; j++)
                    {
                      e = contents_child_by_index (arg, j);
                      if (e->text.end > 0)
                        {
                          current = merge_text (current, e->text.text, e);
                          destroy_element (e);
                        }
                      else
                        {
                          add_to_element_contents (current, e);
                        }
                    }
                }
              destroy_element (arg);
            }
          destroy_element (menu_entry);
          }
        }
      else
        {
          debug ("MENU ENTRY END LINE");
          current = current->parent;
          current = enter_menu_entry_node (current);
          if (end_comment)
            add_to_element_contents (current, end_comment);
        }
    }
  /* End of a line starting a block. */
  else if (current->type == ET_block_line_arg)
    {
      current = end_line_starting_block (current);
    }

  else if (current->type == ET_line_arg)
    {
      current = end_line_misc_line (current);
    }

  /* 'line' or 'def' at top of "context stack" - this happens when
     line commands are nested (always incorrectly?) */
  if (current_context () == ct_line || current_context () == ct_def)
    {
      debug_nonl ("Still opened line command %d:", current_context ());
      debug_print_element (current, 1); debug("");
      if (current_context () == ct_def)
        {
          while (current->parent
                 && current->parent->type != ET_def_line)
            {
              current = close_current (current, 0, 0);
            }
        }
      else
        {
          while (current->parent
                 && current->type != ET_line_arg
                 && current->type != ET_block_line_arg)
            {
              current = close_current (current, 0, 0);
            }
        }

      if (current == current_old)
        fatal ("infinite loop when closing commands");

      current = end_line (current);
    }
  return current;
}

