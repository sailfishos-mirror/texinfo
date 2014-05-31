/* nodemenu.c -- produce a menu of all visited nodes.
   $Id$

   Copyright 1993, 1997, 1998, 2002, 2003, 2004, 2007, 2008, 2011,
   2013, 2014 Free Software Foundation, Inc.

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

   Originally written by Brian Fox. */

#include "info.h"
#include "variables.h"

/* Warning!  Any change to the order of the commands defined with
   DECLARE_INFO_COMMAND in this file results in an incompatible .info
   format, and key bindings will be incorrectly assigned until infokey
   is rerun. */

static NODE *get_visited_nodes (void);

/* Return a line describing the format of a node information line. */
static const char *
nodemenu_format_info (void)
{
  return _("\n* Menu:\n\n\
  (File)Node                        Lines   Size   Containing File\n\
  ----------                        -----   ----   ---------------");
}

/* Produce a formatted line of information about NODE.  Here is what we want
   the output listing to look like:

* Menu:
  (File)Node                        Lines   Size   Containing File
  ----------                        -----   ----   ---------------
* (emacs)Buffers::                  48      2230   /usr/gnu/info/emacs/emacs-1
* (autoconf)Writing configure.in::  123     58789  /usr/gnu/info/autoconf/autoconf-1
* (dir)Top::                        40      589    /usr/gnu/info/dir
*/
static char *
format_node_info (NODE *node)
{
  register int i, len;
  char *parent, *containing_file;
  static char *line_buffer = NULL;

  if (!line_buffer)
    line_buffer = xmalloc (1000);

  if (node->parent)
    {
      parent = filename_non_directory (node->parent);
      if (!parent)
        parent = node->parent;
    }
  else
    parent = NULL;

  containing_file = node->filename;

  if (!parent && !*containing_file)
    sprintf (line_buffer, "* %s::", node->nodename);
  else
    {
      char *file = NULL;

      if (parent)
        file = parent;
      else
        file = filename_non_directory (containing_file);

      if (!file)
        file = containing_file;

      if (!*file)
        file = "dir";

      sprintf (line_buffer, "* (%s)%s::", file, node->nodename);
    }

  len = pad_to (36, line_buffer);

  {
    int lines = 1;

    for (i = 0; i < node->nodelen; i++)
      if (node->contents[i] == '\n')
        lines++;

    sprintf (line_buffer + len, "%d", lines);
  }

  len = pad_to (44, line_buffer);
  sprintf (line_buffer + len, "%ld", node->nodelen);

  if (node->filename && *(node->filename))
    {
      len = pad_to (51, line_buffer);
      strcpy (line_buffer + len, node->filename);
    }

  return xstrdup (line_buffer);
}

/* Little string comparison routine for qsort (). */
static int
compare_strings (const void *entry1, const void *entry2)
{
  char **e1 = (char **) entry1;
  char **e2 = (char **) entry2;

  return mbscasecmp (*e1, *e2);
}

/* The name of the nodemenu node. */
static char *nodemenu_nodename = "*Node Menu*";

/* Produce an informative listing of all the visited nodes, and return it
   in a newly allocated node. */
static NODE *
get_visited_nodes (void)
{
  register int i;
  WINDOW *info_win;
  NODE *node;
  char **lines = NULL;
  size_t lines_index = 0, lines_slots = 0;
  struct text_buffer message;

  for (info_win = windows; info_win; info_win = info_win->next)
    {
      for (i = 0; i < info_win->nodes_index; i++)
        {
          NODE *history_node = info_win->nodes[i];

          /* We skip mentioning "*Node Menu*" nodes. */
          if (internal_info_node_p (history_node) &&
              (strcmp (node->nodename, nodemenu_nodename) == 0))
            continue;

          if (history_node)
            {
              char *line;

              line = format_node_info (history_node);
              add_pointer_to_array (line, lines_index, lines, lines_slots, 20);
            }
        }
    }

  /* Sort the array of information lines, if there are any. */
  if (lines)
    {
      register int j, newlen;
      char **temp;

      qsort (lines, lines_index, sizeof (char *), compare_strings);

      /* Delete duplicates. */
      for (i = 0, newlen = 1; i < lines_index - 1; i++)
        {
	  /* Use FILENAME_CMP here, since the most important piece
	     of info in each line is the file name of the node.  */
          if (FILENAME_CMP (lines[i], lines[i + 1]) == 0)
            {
              free (lines[i]);
              lines[i] = NULL;
            }
          else
            newlen++;
        }

      /* We have free ()'d and marked all of the duplicate slots.
         Copy the live slots rather than pruning the dead slots. */
      temp = xmalloc ((1 + newlen) * sizeof (char *));
      for (i = 0, j = 0; i < lines_index; i++)
        if (lines[i])
          temp[j++] = lines[i];

      temp[j] = NULL;
      free (lines);
      lines = temp;
      lines_index = newlen;
    }

  text_buffer_init (&message);

  text_buffer_printf (&message, "\n");
  text_buffer_printf (&message,
    "%s", replace_in_documentation
     (_("Here is the menu of nodes you have recently visited.\n\
Select one from this menu, or use `\\[history-node]' in another window.\n"), 0));

  text_buffer_printf (&message, "%s\n", nodemenu_format_info ());

  for (i = 0; (lines != NULL) && (i < lines_index); i++)
    {
      text_buffer_printf (&message, "%s\n", lines[i]);
      free (lines[i]);
    }

  if (lines)
    free (lines);

  node = text_buffer_to_node (&message);
  add_gcable_pointer (node->contents);

  scan_node_contents (0, &node);

  return node;
}

DECLARE_INFO_COMMAND (list_visited_nodes,
   _("Make a window containing a menu of all of the currently visited nodes"))
{
  WINDOW *new;
  NODE *node;

  set_remembered_pagetop_and_point (window);

  /* If a window is visible and showing the buffer list already, re-use it. */
  for (new = windows; new; new = new->next)
    {
      node = new->node;

      if (internal_info_node_p (node) &&
          (strcmp (node->nodename, nodemenu_nodename) == 0))
        break;
    }

  /* If we couldn't find an existing window, try to use the next window
     in the chain. */
  if (!new)
    {
      if (window->next)
        new = window->next;
      /* If there is more than one window, wrap around. */
      else if (window != windows)
        new = windows;
    }

  /* If we still don't have a window, make a new one to contain the list. */
  if (!new)
    {
      WINDOW *old_active;

      old_active = active_window;
      active_window = window;
      new = window_make_window (NULL);
      active_window = old_active;
    }

  /* If we couldn't make a new window, use this one. */
  if (!new)
    new = window;

  /* Lines do not wrap in this window. */
  new->flags |= W_NoWrap;
  node = get_visited_nodes ();
  name_internal_node (node, nodemenu_nodename);

#if 0
  /* Even if this is an internal node, we don't want the window
     system to treat it specially.  So we turn off the internalness
     of it here. */
  /* Why?  We depend on internal_info_node_p returning true, so we must
     not remove the flag.  Otherwise, the *Node Menu* nodes themselves
     appear in the node menu.  --Andreas Schwab
     <schwab@issan.informatik.uni-dortmund.de>.  */
  node->flags &= ~N_IsInternal;
#endif

  /* If this window is already showing a node menu, reuse the existing node
     slot. */
  {
    int remember_me = 1;

#if defined (NOTDEF)
    if (internal_info_node_p (new->node) &&
        (strcmp (new->node->nodename, nodemenu_nodename) == 0))
      remember_me = 0;
#endif /* NOTDEF */

    window_set_node_of_window (new, node);

    if (remember_me)
      remember_window_and_node (new);
  }

  active_window = new;
}

DECLARE_INFO_COMMAND (select_visited_node,
      _("Select a node which has been previously visited in a visible window"))
{
  char *line;
  NODE *node;

  node = get_visited_nodes ();

  line = info_read_completing_in_echo_area (window,
        _("Select visited node: "), node->references);

  window = active_window;

  if (!line)
    /* User aborts, just quit. */
    info_abort_key (window, 0, 0);
  else if (*line)
    {
      REFERENCE *entry;

      /* Find the selected label in the references. */
      entry = info_get_menu_entry_by_label (node, line, 0);

      if (!entry)
        /* This shouldn't happen, because LINE was in the completion list
           built from the list of references. */
        info_error (_("The reference disappeared! (%s)."), line);
      else
        info_select_reference (window, entry);
    }

  free (line);
  free (node);

  if (!info_error_was_printed)
    window_clear_echo_area ();
}
