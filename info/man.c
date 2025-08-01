/* man.c: How to read and format man files.

   Copyright 1995-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

   Originally written by Brian Fox Thu May  4 09:17:52 1995. */

#include "info.h"
#if defined (HAVE_SYS_WAIT_H)
#include <sys/wait.h>
#endif
#include <stdio.h>

#include "tilde.h"
#include "nodes.h"
#include "man.h"
#include "util.h"
#include "search.h"
#include "run-external.h"

#if !defined (_POSIX_VERSION)
#define pid_t int
#endif

#if STRIP_DOT_EXE
static char const * const exec_extensions[] = {
  ".exe", ".com", ".bat", ".btm", ".sh", ".ksh", ".pl", ".sed", "", NULL
};
#else
static char const * const exec_extensions[] = { "", NULL };
#endif

static REFERENCE **xrefs_of_manpage (NODE *node);
static char *get_manpage_contents (const char *pagename);
static char *find_man_formatter (void);

/* We store the contents of retrieved man pages in here. */
static NODE **manpage_nodes = 0;
size_t manpage_node_index = 0;
size_t manpage_node_slots = 0;

#if PIPE_USE_FORK && !defined(__sun)

/* Check if a man page exists.  Use "man -w" for this rather than getting
   the contents of the man page.  This is faster if we are running
   "info --where" and we don't need the contents. */
int
check_manpage_node (const char *pagename)
{
  pid_t child;
  int pid_status = 0;
  NODE *man_node;

  child = fork ();
  if (child == -1)
    return 0; /* couldn't fork */

  if (!child)
    {
      char *formatter;
      (void)! freopen (NULL_DEVICE, "w", stdout);
      (void)! freopen (NULL_DEVICE, "w", stderr);
      /* avoid "unused result" warning with ! operator */
      formatter = find_man_formatter();
      if (!formatter)
        exit (1);
      execl (formatter, formatter, "-w", pagename, (void *) 0);
      exit (2); /* exec failed */
    }
  else
    {
      wait (&pid_status);
    }

  if (pid_status != 2)
    return !pid_status;

  /* Possibly "man -w" wasn't recognized. */
  man_node = get_manpage_node (pagename);
  if (man_node)
    {
      free (man_node);
      return 1;
    }
  return 0;
}

#else /* !PIPE_USE_FORK || defined(__sun) */
/* We check __sun because 'man -w' has a different meaning on
   Solaris (update whatis database). */

int
check_manpage_node (const char *pagename)
{
  NODE *man_node = get_manpage_node (pagename);
  if (man_node)
    {
      free (man_node);
      return 1;
    }
  return 0;
}

#endif /* !PIPE_USE_FORK */

NODE *
get_manpage_node (const char *pagename)
{
  NODE *node = 0, **n, *node2 = 0;
  char *page;

  if (manpage_node_index > 0)
    for (n = manpage_nodes; (node = *n); n++)
      if (!strcmp (node->nodename, pagename))
        break;

  /* Node was not found, so we have to create it. */
  if (!node)
    {
      node = info_create_node ();
      node->fullpath = MANPAGE_FILE_BUFFER_NAME;
      node->nodename = xstrdup (pagename);
      node->flags |= N_IsManPage;

      /* Save this node. */
      add_pointer_to_array (node, manpage_node_index,
                            manpage_nodes,
                            manpage_node_slots, 100);
    }

  /* Node wasn't found, or its contents were freed since last time. */
  if (!node->contents)
    {
      size_t plen;

      page = get_manpage_contents (pagename);
      if (!page)
        return 0;
      plen = strlen (page);

      node->contents = page;
      node->nodelen = plen;

      node->body_start = 0;
      node->references = xrefs_of_manpage (node);
      node->up = "(dir)";
    }

  node2 = xmalloc (sizeof (NODE));
  *node2 = *node;
  return node2;
}

/* Scan the list of directories in PATH looking for FILENAME.  If we find
   one that is an executable file, return it as a new string.  Otherwise,
   return a NULL pointer. */
static char *
executable_file_in_path (char *filename, char *path)
{
  struct stat finfo;
  char *temp_dirname;
  int statable, dirname_index;

  dirname_index = 0;

  while ((temp_dirname = extract_colon_unit (path, &dirname_index)))
    {
      char *temp;
      char *temp_end;
      int i;

      /* Expand a leading tilde if one is present. */
      if (*temp_dirname == '~')
        {
          char *expanded_dirname;

          expanded_dirname = tilde_expand_word (temp_dirname);
          free (temp_dirname);
          temp_dirname = expanded_dirname;
        }

      temp = xmalloc (34 + strlen (temp_dirname) + strlen (filename));
      strcpy (temp, temp_dirname);
      if (!IS_SLASH (temp[(strlen (temp)) - 1]))
        strcat (temp, "/");
      strcat (temp, filename);
      temp_end = temp + strlen (temp);

      free (temp_dirname);

      /* Look for FILENAME, possibly with any of the extensions
         in EXEC_EXTENSIONS[].  */
      for (i = 0; exec_extensions[i]; i++)
        {
          if (exec_extensions[i][0])
            strcpy (temp_end, exec_extensions[i]);
          statable = (stat (temp, &finfo) == 0);

          /* If we have found a regular executable file, then use it. */
          if ((statable) && (S_ISREG (finfo.st_mode)) &&
              (access (temp, X_OK) == 0))
            return temp;
        }

      free (temp);
    }
  return NULL;
}

/* Return the full pathname of the system man page formatter. */
static char *
find_man_formatter (void)
{
  static char *man_formatter;
  char *man_command;

  if (man_formatter)
    return man_formatter;

  man_command = getenv ("INFO_MAN_COMMAND");
  man_formatter = man_command ? man_command
                    : executable_file_in_path ("man", getenv ("PATH"));

  return man_formatter;
}

static char *manpage_pagename = NULL;
static char *manpage_section  = NULL;

static void
get_page_and_section (const char *pagename)
{
  register int i;

  if (manpage_pagename)
    free (manpage_pagename);

  if (manpage_section)
    free (manpage_section);

  manpage_pagename = NULL;
  manpage_section  = NULL;

  for (i = 0; pagename[i] != '\0' && pagename[i] != '('; i++);

  manpage_pagename = xmalloc (1 + i);
  strncpy (manpage_pagename, pagename, i);
  manpage_pagename[i] = '\0';

  if (pagename[i] == '(')
    {
      int start;

      start = i + 1;

      for (i = start; pagename[i] != '\0' && pagename[i] != ')'; i++);

      manpage_section = xmalloc (1 + (i - start));
      strncpy (manpage_section, pagename + start, (i - start));
      manpage_section[i - start] = '\0';
    }
}

void
clean_manpage (char *manpage)
{
  mbi_iterator_t iter;
  size_t len = strlen (manpage);
  char *newpage = xmalloc (len + 1);
  char *np = newpage;
  int prev_len = 0;

  for (mbi_init (iter, manpage, len);
       mbi_avail (iter);
       mbi_advance (iter))
    {
      const char *cur_ptr = mbi_cur_ptr (iter);
      int cur_len = mb_len (mbi_cur (iter));

      if (cur_len == 1)
        {
          if (*cur_ptr == '\b' || *cur_ptr == '\f')
            {
              if (np >= newpage + prev_len)
                np -= prev_len;
            }
          else if (ansi_escape (iter, &cur_len))
            {
              memcpy (np, cur_ptr, cur_len);
              np += cur_len;
              ITER_SETBYTES (iter, cur_len);
            }
          else if (show_malformed_multibyte_p || mbi_cur (iter).wc_valid)
            *np++ = *cur_ptr;
        }
      else
        {
          memcpy (np, cur_ptr, cur_len);
          np += cur_len;
        }
      prev_len = cur_len;
    }
  *np = 0;

  strcpy (manpage, newpage);
  free (newpage);
}

static char *get_manpage_from_formatter (char *formatter_args[]);

static char *
get_manpage_contents (const char *pagename)
{
  static char *formatter_args[4] = { NULL };
  char *formatted_page;

  if (formatter_args[0] == NULL)
    formatter_args[0] = find_man_formatter ();

  if (formatter_args[0] == NULL)
    return NULL;

  get_page_and_section (pagename);

  if (manpage_section)
    formatter_args[1] = manpage_section;
  else
    formatter_args[1] = "-a";

  formatter_args[2] = manpage_pagename;
  formatter_args[3] = NULL;

  formatted_page = get_manpage_from_formatter (formatter_args);

  /* If there was a section and the page wasn't found, try again
     without the section (e.g. "man 3X curses" versus "man -a curses"). */
  if (!formatted_page && manpage_section)
    {
      formatter_args[1] = "-a";
      formatted_page = get_manpage_from_formatter (formatter_args);
    }

  return formatted_page;
}

static char *
get_manpage_from_formatter (char *formatter_args[])
{
  char *formatted_page = NULL;

  putenv ("MAN_KEEP_FORMATTING=1"); /* Get codes for bold etc. */
  putenv ("GROFF_SGR=1"); /* for Debian whose man outputs
                             'overstrike' sequences without this */

  int status = get_output_from_program (formatter_args[0], formatter_args,
                                        &formatted_page, 1);
  if (!formatted_page)
    return 0;

  /* We could check the exit status of "man -a" to see if it successfully
     output a man page  However:
      * It is possible for "man -a" to output a man page and still to exit with
        a non-zero status.  This was found to happen when duplicate man pages
        were found.
      * "man" was found to exit with a zero status on Solaris 10 even when
        it found nothing.
     Hence, treat it as a success if more than three lines were output.  (A
     small amount of output could be error messages that were sent to standard
     output.) */
  {
    int i;
    char *p;
    p = formatted_page;
    for (i = 0; i < 3; i++)
      {
        p = strchr (p, '\n');
        if (!p)
          {
            free (formatted_page);
            return NULL;
          }
        p++;
      }
  }

  /* If we have the page, then clean it up. */
  clean_manpage (formatted_page);

  return formatted_page;
}

static REFERENCE **
xrefs_of_manpage (NODE *node)
{
  SEARCH_BINDING s;

  REFERENCE **refs = NULL;
  size_t refs_index = 0;
  size_t refs_slots = 0;
  long position;

  /* Initialize reference list to have a single null entry. */
  refs = calloc(1, sizeof (REFERENCE *));
  refs_slots = 1;

  s.buffer = node->contents;
  s.start = 0;
  s.flags = 0;
  s.end = node->nodelen;

  /* Exclude first line, which often looks like:
 CAT(1)                           User Commands                          CAT(1)
  */
  s.start = strcspn (node->contents, "\n");

  /* Build a list of references.  A reference is alphabetic characters
     followed by non-whitespace text within parenthesis leading with a digit. */
  while (search_forward ("(", &s, &position) == search_success)
    {
      register int name, name_end;
      int section, section_end;

      name = position;
      if (name == 0)
        goto skip;
      else
        name--;

      /* Go to the start of a sequence of non-whitespace characters,
         checking the characters are those that should appear in a man
         page name. */
      for (; name > 0; name--)
        if (whitespace_or_newline (s.buffer[name])
            || (!isalnum ((unsigned char) s.buffer[name])
                && s.buffer[name] != '_'
                && s.buffer[name] != '.'
                && s.buffer[name] != '-'
                && s.buffer[name] != '\033'
                && s.buffer[name] != '['))
          break;

      /* Check if reached start of buffer. */
      if (name == 0)
        goto skip;

      /* Check for invalid sequence in name. */
      if (!whitespace_or_newline (s.buffer[name]))
        goto skip;

      name++;

      if (name == position)
        goto skip; /* Whitespace immediately before '('. */

      /* 'name' is now at the start of a sequence of non-whitespace
         characters.  If we are on an ECMA-48 SGR escape sequence, skip
         past it. */
      if (s.buffer[name] == '\033' && s.buffer[name + 1] == '[')
        {
          name += 2;
          name += strspn (s.buffer + name, "0123456789;");
          if (s.buffer[name] == 'm')
            name++;
          else
            goto skip;
        }

      /* Set name_end to the end of the name, but before any SGR sequence. */
      for (name_end = name; name_end < position; name_end++)
        if (!isalnum ((unsigned char) s.buffer[name_end])
            && s.buffer[name_end] != '_'
            && s.buffer[name_end] != '.'
            && s.buffer[name_end] != '-')
          break;

      section = position;
      section_end = 0;

      /* Look for one or two characters within the brackets, the
         first of which must be a non-zero digit and the second a letter. */
      if (!isdigit ((unsigned char) s.buffer[section + 1])
          || s.buffer[section + 1] == '0')
        ;
      else if (!s.buffer[section + 2])
        ; /* end of buffer */
      else if (s.buffer[section + 2] == ')')
        section_end = section + 3;
      else if (!isalpha((unsigned char) s.buffer[section + 2]))
        ;
      else if (s.buffer[section + 3] == ')')
        section_end = section + 4;

      if (section_end)
        {
          REFERENCE *entry;
          int len = name_end - name + section_end - section;

          entry = xmalloc (sizeof (REFERENCE));
          entry->label = xcalloc (1, 1 + len);
          strncpy (entry->label, s.buffer + name, name_end - name);
          strncpy (entry->label + strlen (entry->label),
                   s.buffer + section,
                   section_end - section);

          entry->filename = xstrdup (MANPAGE_FILE_BUFFER_NAME);
          entry->nodename = xstrdup (entry->label);
          entry->line_number = 0;
          entry->start = name;
          entry->end = section_end;
          entry->type = REFERENCE_XREF;

          add_pointer_to_array (entry, refs_index, refs, refs_slots, 10);
        }

 skip:
      s.start = position + 1;
    }

  return refs;
}
