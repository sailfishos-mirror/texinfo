/* echo-area.c -- how to read a line in the echo area.

   Copyright 1993-2025 Free Software Foundation, Inc.

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
#include "session.h"
#include "display.h"
#include "util.h"
#include "nodes.h"
#include "echo-area.h"

/* Non-zero means that C-g was used to quit reading input. */
int info_aborted_echo_area = 0;

/* Non-zero means that the echo area is being used to read input. */
int echo_area_is_active = 0;

/* The address of the last command executed in the echo area. */
static COMMAND_FUNCTION *ea_last_executed_command = NULL;

/* Non-zero means that the last command executed while reading input
   killed some text. */
int echo_area_last_command_was_kill = 0;

/* Variables which hold on to the current state of the input line. */
static char input_line[1 + EA_MAX_INPUT]; /* Contents of echo area, including 
                                             any prompt. */
static int input_line_point;     /* Offset into input_line of point */
static int input_line_beg;       /* End of prompt, and start of user input. */
static int input_line_end;       /* End of user input. */

static NODE input_line_node = {
  NULL, NULL, NULL, input_line, EA_MAX_INPUT, 0,
  N_IsInternal, 0, 0, 0, 0, 0, 0
};

static void echo_area_initialize_node (void);
static void push_echo_area (void), pop_echo_area (void);
static int echo_area_stack_contains_completions_p (void);

static void ea_kill_text (int from, int to);
static void ea_remove_text (int from, int to);

/* Non-zero means we force the user to complete. */
static int echo_area_must_complete_p = 0;
static int completions_window_p (WINDOW *window);

/* If non-null, this is a window which was specifically created to display
   possible completions output.  We remember it so we can delete it when
   appropriate. */
static WINDOW *echo_area_completions_window = NULL;

/* Variables which keep track of the window which was active prior to
   entering the echo area. */
static WINDOW *calling_window = NULL;
static NODE *calling_window_node = NULL;

/* Remember the node and pertinent variables of the calling window. */
static void
remember_calling_window (WINDOW *window)
{
  /* Only do this if the calling window is not the completions window, or,
     if it is the completions window and there is no other window. */
  if (!completions_window_p (window) ||
      ((window == windows) && !(window->next)))
    {
      calling_window = window;
      calling_window_node = window->node;
    }
}

/* Restore the caller's window so that it shows the node that it was showing
   on entry to info_read_xxx_echo_area (). */
static void
restore_calling_window (void)
{
  register WINDOW *win, *compwin = NULL;

  /* If the calling window is still visible, and it is the window that
     we used for completions output, then restore the calling window. */
  for (win = windows; win; win = win->next)
    {
      if (completions_window_p (win))
        compwin = win;

      if (win == calling_window && win == compwin)
        {
          forget_node (win);
          compwin = NULL;
          break;
        }
    }

  /* Delete the completions window if it is still present, it isn't the
     last window on the screen, and there aren't any prior echo area reads
     pending which created a completions window. */
  if (compwin)
    {
      if ((compwin != windows || windows->next)
          && !echo_area_stack_contains_completions_p ())
        {
          info_delete_window_internal (compwin);
        }
    }
}

/* Set up a new input line with PROMPT. */
static void
initialize_input_line (const char *prompt)
{
  strcpy (input_line, prompt);
  input_line_beg = input_line_end = input_line_point = strlen (prompt);
}

static char *
echo_area_after_read (void)
{
  char *return_value;

  if (info_aborted_echo_area)
    {
      info_aborted_echo_area = 0;
      return_value = NULL;
    }
  else
    {
      if (input_line_beg == input_line_end)
        return_value = xstrdup ("");
      else
        {
          int line_len = input_line_end - input_line_beg;
          return_value = xmalloc (1 + line_len);
          strncpy (return_value, &input_line[input_line_beg], line_len);
          return_value[line_len] = '\0';
        }
    }
  return return_value;
}

static void
read_and_dispatch_in_echo_area (void)
{
  while (1)
    {
      int count;
      COMMAND_FUNCTION *cmd;
      int lk = 0;

      lk = echo_area_last_command_was_kill;
      echo_area_prep_read ();

      if (!info_any_buffered_input_p ())
        display_update_display ();

      display_cursor_at_point (active_window);

      /* Do the selected command. */
      cmd = read_key_sequence (echo_area_keymap, 0, 0, 1, &count);
      if (cmd)
        {
          (*cmd) (the_echo_area, count);
          ea_last_executed_command = cmd;
        }
      else
        ea_last_executed_command = 0;

      /* Echo area commands that do killing increment the value of
         ECHO_AREA_LAST_COMMAND_WAS_KILL.  Thus, if there is no
         change in the value of this variable, the last command
         executed was not a kill command. */
      if (lk == echo_area_last_command_was_kill)
        echo_area_last_command_was_kill = 0;

      if (cmd == ea_newline || info_aborted_echo_area)
        {
          ea_last_executed_command = NULL;
          break;
        }
    }
}

/* Read a line of text in the echo area.  Return a malloc ()'ed string,
   or NULL if the user aborted out of this read.  PROMPT is the prompt
   to print before reading the line. */
char *
info_read_in_echo_area (const char *prompt)
{
  char *line;

  /* If the echo area is already active, remember the current state. */
  if (echo_area_is_active)
    push_echo_area ();

  /* Initialize our local variables. */
  initialize_input_line (prompt);

  /* Initialize the echo area for the first (but maybe not the last) time. */
  echo_area_initialize_node ();

  /* Save away the original node of this window, and the window itself,
     so echo area commands can temporarily use this window. */
  remember_calling_window (active_window);

  /* Let the rest of Info know that the echo area is active. */
  echo_area_is_active++;
  active_window = the_echo_area;

  /* Read characters in the echo area. */
  read_and_dispatch_in_echo_area ();

  window_clear_echo_area ();

  echo_area_is_active--;

  /* Restore the original active window and show point in it. */
  active_window = calling_window;
  restore_calling_window ();
  display_cursor_at_point (active_window);
  fflush (stdout);

  /* Get the value of the line. */
  line = echo_area_after_read ();

  /* If there is a previous loop waiting for us, restore it now. */
  if (echo_area_is_active)
    pop_echo_area ();

  /* Return the results to the caller. */
  return line;
}

/* (re) Initialize the echo area node. */
static void
echo_area_initialize_node (void)
{
  register int i;

  for (i = input_line_end; (unsigned int) i < sizeof (input_line); i++)
    input_line[i] = ' ';

  input_line[i - 1] = '\n';
  window_set_node_of_window (the_echo_area, &input_line_node);
  input_line[input_line_end] = '\n';
}

/* Prepare to read characters in the echo area.  This can initialize the
   echo area node, but its primary purpose is to side effect the input
   line buffer contents. */
void
echo_area_prep_read (void)
{
  if (the_echo_area->node != &input_line_node)
    echo_area_initialize_node ();

  the_echo_area->point = input_line_point;
  input_line[input_line_end] = '\n';

  /* Mark the line map as invalid.  This causes window_compute_line_map to
     recalculate it when it is called via display_cursor_at_point below.  
     Otherwise adding or removing multi-column characters (like tabs) lead 
     to incorrect cursor positioning. */
  the_echo_area->line_map.used = 0;

  display_update_one_window (the_echo_area);
  display_cursor_at_point (active_window);
}


/* **************************************************************** */
/*                                                                  */
/*                   Echo Area Movement Commands                    */
/*                                                                  */
/* **************************************************************** */

DECLARE_INFO_COMMAND (ea_forward, _("Move forward a character"))
{
  if (count < 0)
    ea_backward (window, -count);
  else
    {
      mbi_iterator_t iter;
      mbi_init (iter, input_line + input_line_point,
                input_line_end - input_line_point);
      while (mbi_avail (iter) && count--)
        {
          mbi_advance (iter);
          input_line_point = mbi_cur_ptr (iter) - input_line;
          if (input_line_point > input_line_end)
            input_line_point = input_line_end;
        }
    }
}

DECLARE_INFO_COMMAND (ea_backward, _("Move backward a character"))
{
  if (count < 0)
    ea_forward (window, -count);
  else
    {
      char *ptr = input_line + input_line_point;
      while (count--)
        {
          /* Go back one character.  Go back by bytes until we look at a valid
             multi-byte sequence. */
          ptr = input_line + input_line_point;
          while (ptr > input_line)
            {
              ptr--;
              if ((long) mbrlen (ptr,
                                 input_line + input_line_point - ptr, 0) > 0)
                break;
            }
          input_line_point = ptr - input_line;
          if (input_line_point < input_line_beg)
            input_line_point = input_line_beg;
        }
    }
}

DECLARE_INFO_COMMAND (ea_beg_of_line, _("Move to the start of this line"))
{
  input_line_point = input_line_beg;
}

DECLARE_INFO_COMMAND (ea_end_of_line, _("Move to the end of this line"))
{
  input_line_point = input_line_end;
}

#define alphabetic(c) (islower (c) || isupper (c) || isdigit (c))

/* Move forward a word in the input line. */
DECLARE_INFO_COMMAND (ea_forward_word, _("Move forward a word"))
{
  int c;

  if (count < 0)
    ea_backward_word (window, -count);
  else
    {
      while (count--)
        {
          if (input_line_point == input_line_end)
            return;

          /* If we are not in a word, move forward until we are in one.
             Then, move forward until we hit a non-alphabetic character. */
          c = input_line[input_line_point];

          if (!alphabetic (c))
            {
              while (++input_line_point < input_line_end)
                {
                  c = input_line[input_line_point];
                  if (alphabetic (c))
                    break;
                }
            }

          if (input_line_point == input_line_end)
            return;

          while (++input_line_point < input_line_end)
            {
              c = input_line[input_line_point];
              if (!alphabetic (c))
                break;
            }
        }
    }
}

DECLARE_INFO_COMMAND (ea_backward_word, _("Move backward a word"))
{
  int c;

  if (count < 0)
    ea_forward_word (window, -count);
  else
    {
      while (count--)
        {
          if (input_line_point == input_line_beg)
            return;

          /* Like ea_forward_word (), except that we look at the
             characters just before point. */

          c = input_line[input_line_point - 1];

          if (!alphabetic (c))
            {
              while ((--input_line_point) != input_line_beg)
                {
                  c = input_line[input_line_point - 1];
                  if (alphabetic (c))
                    break;
                }
            }

          while (input_line_point != input_line_beg)
            {
              c = input_line[input_line_point - 1];
              if (!alphabetic (c))
                break;
              else
                --input_line_point;
            }
        }
    }
}

DECLARE_INFO_COMMAND (ea_delete, _("Delete the character under the cursor"))
{
  if (count < 0)
    ea_rubout (window, -count);
  else
    {
      int orig_point;
      if (input_line_point == input_line_end)
        return;

      orig_point = input_line_point;
      ea_forward (window, count);
      if (ea_explicit_arg || count > 1)
        ea_kill_text (orig_point, input_line_point);
      else
        ea_remove_text (orig_point, input_line_point);
      input_line_point = orig_point;
    }
}

DECLARE_INFO_COMMAND (ea_rubout, _("Delete the character behind the cursor"))
{
  if (count < 0)
    ea_delete (window, -count);
  else
    {
      int start;

      if (input_line_point == input_line_beg)
        {
          /* Abort echo area read if backspace at start of area and user input 
             is empty. */
          if (input_line_beg == input_line_end)
            info_aborted_echo_area = 1;
          return;
        }

      start = input_line_point;
      ea_backward (window, count);

      if (ea_explicit_arg || count > 1)
        ea_kill_text (start, input_line_point);
      else
        ea_delete (window, count);
    }
}

DECLARE_INFO_COMMAND (ea_abort, _("Cancel or quit operation"))
{
  /* If any text, just discard it, and restore the calling window's node.
     If no text, quit. */
  if (input_line_end != input_line_beg)
    {
      terminal_ring_bell ();
      input_line_end = input_line_point = input_line_beg;
      if (calling_window->node != calling_window_node)
        restore_calling_window ();
    }
  else
    info_aborted_echo_area = 1;
}

DECLARE_INFO_COMMAND (ea_newline, _("Accept (or force completion of) this line"))
{
  /* Stub does nothing.  Simply here to see if it has been executed. */
}

DECLARE_INFO_COMMAND (ea_quoted_insert, _("Insert next character verbatim"))
{
  int character;

  character = get_another_input_key ();
  
  if (character >= 256 || character < 0)
    return;

  ea_insert (window, count, character);
}

void
ea_insert (WINDOW *window, int count, int key)
{
  register int i;

  if ((input_line_end + 1) == EA_MAX_INPUT)
    {
      terminal_ring_bell ();
      return;
    }

  for (i = input_line_end + 1; i != input_line_point; i--)
    input_line[i] = input_line[i - 1];

  input_line[input_line_point] = key;
  input_line_point++;
  input_line_end++;
  window_line_map_init (window);
}

DECLARE_INFO_COMMAND (ea_tab_insert, _("Insert a TAB character"))
{
  ea_insert (window, count, '\t');
}

/* Swap characters in INPUT_LINE.  The first starts at C1 and ends at C1E, the 
   second starts at C2 and ends at C2E, with C1 < C1E <= C2 < C2E. */
static void
ea_swap_chars (int c1, int c1e, int c2, int c2e)
{
  int len1, len2;
  char *tmp;

  len1 = c1e - c1;
  len2 = c2e - c2;

  if (len1 >= len2)
    {
      /* Save first character. */
      tmp = xmalloc (len1);
      memcpy (tmp, input_line + c1, len1);

      /* Move the second character to where the first was. */
      memcpy (input_line + c1, input_line + c2, len2);

      /* Shift the part in between the characters backwards. */
      memmove (input_line + c1 + len2, input_line + c1e, c2 - c1e);

      /* Restore the first character at the end. */
      memcpy (input_line + c2 - (len1 - len2), tmp, len1);
      free (tmp);
    }
  else /* len2 > len1 */
    {
      /* Save second character. */
      tmp = xmalloc (len2);
      memcpy (tmp, input_line + c2, len2);

      /* Move first character to end of second character. */
      memcpy (input_line + c2e - len1, input_line + c1, len1);

      /* Shift the part in between the characters forwards. */
      memmove (input_line + c1e + (len2 - len1), input_line + c1e, c2 - c1e);

      /* Place the second character at the beginning. */
      memcpy (input_line + c1, tmp, len2);
      free (tmp);
    }
}

/* Transpose the characters at point.  If point is at the end of the line,
   then transpose the characters before point. */
DECLARE_INFO_COMMAND (ea_transpose_chars, _("Transpose characters at point"))
{
  while (count)
    {
      if (input_line_point == input_line_end || count < 0)
        {
          /* Swap two characters before point. */
          int c1, c2, c2e;
          c2e = input_line_point;

          ea_backward (window, 1);
          c2 = input_line_point;

          ea_backward (window, 1);
          c1 = input_line_point;

          if (c1 != c2) /* There are two characters in this line. */
            ea_swap_chars (c1, c2, c2, c2e);

          if (count > 0)
            /* Restore point. */
            input_line_point = c2e;
          else
            input_line_point = c1 + c2e - c2;
        }
      else
        {
          int c1, c2, c2e;

          c2 = input_line_point;

          ea_forward (window, 1);
          c2e = input_line_point;
          if (c2e == c2)
            return; /* Shouldn't happen. */

          input_line_point = c2;
          ea_backward (window, 1);
          c1 = input_line_point;
          if (c1 == c2e)
            return; /* Can't go earlier in line. */

          ea_swap_chars (c1, c2, c2, c2e);

          /* Set point is after swapped pair. */
          input_line_point = c2e;
        }

      if (count < 0)
        count++;
      else
        count--;
    }
}

/* **************************************************************** */
/*                                                                  */
/*                   Echo Area Killing and Yanking                  */
/*                                                                  */
/* **************************************************************** */

static char **kill_ring = NULL;
static int kill_ring_index = 0; /* Number of kills appearing in KILL_RING. */
static int kill_ring_slots = 0; /* Number of slots allocated to KILL_RING. */
static int kill_ring_loc = 0;   /* Location of current yank pointer. */

/* The largest number of kills that we remember at one time. */
static int max_retained_kills = 15;

DECLARE_INFO_COMMAND (ea_yank, _("Yank back the contents of the last kill"))
{
  register int i;
  register char *text;

  if (!kill_ring_index)
    {
      inform_in_echo_area (_("Kill ring is empty"));
      return;
    }

  text = kill_ring[kill_ring_loc];

  for (i = 0; text[i]; i++)
    ea_insert (window, 1, text[i]);
}

/* If the last command was yank, or yank_pop, and the text just before
   point is identical to the current kill item, then delete that text
   from the line, rotate the index down, and yank back some other text. */
DECLARE_INFO_COMMAND (ea_yank_pop, _("Yank back a previous kill"))
{
  register int len;

  if (((ea_last_executed_command != ea_yank) &&
       (ea_last_executed_command != ea_yank_pop)) ||
      (kill_ring_index == 0))
    return;

  len = strlen (kill_ring[kill_ring_loc]);

  /* Delete the last yanked item from the line. */
  {
    register int i, counter;

    counter = input_line_end - input_line_point;
    
    for (i = input_line_point - len; counter; i++, counter--)
      input_line[i] = input_line[i + len];

    input_line_end -= len;
    input_line_point -= len;
  }

  /* Get a previous kill, and yank that. */
  kill_ring_loc--;
  if (kill_ring_loc < 0)
    kill_ring_loc = kill_ring_index - 1;

  ea_yank (window, count);
}

/* Delete the text from point to end of line. */
DECLARE_INFO_COMMAND (ea_kill_line, _("Kill to the end of the line"))
{
  if (count < 0)
    {
      ea_kill_text (input_line_point, input_line_beg);
      input_line_point = input_line_beg;
    }
  else
    ea_kill_text (input_line_point, input_line_end);
}

/* Delete the text from point to beg of line. */
DECLARE_INFO_COMMAND (ea_backward_kill_line,
                      _("Kill to the beginning of the line"))
{
  if (count < 0)
    ea_kill_text (input_line_point, input_line_end);
  else
    {
      ea_kill_text (input_line_point, input_line_beg);
      input_line_point = input_line_beg;
    }
}

/* Delete from point to the end of the current word. */
DECLARE_INFO_COMMAND (ea_kill_word, _("Kill the word following the cursor"))
{
  int orig_point = input_line_point;

  if (count < 0)
    ea_backward_kill_word (window, -count);
  else
    {
      ea_forward_word (window, count);

      if (input_line_point != orig_point)
        ea_kill_text (orig_point, input_line_point);

      input_line_point = orig_point;
    }
  window_line_map_init (window);
}

/* Delete from point to the start of the current word. */
DECLARE_INFO_COMMAND (ea_backward_kill_word,
                      _("Kill the word preceding the cursor"))
{
  int orig_point = input_line_point;

  if (count < 0)
    ea_kill_word (window, -count);
  else
    {
      ea_backward_word (window, count);

      if (input_line_point != orig_point)
        ea_kill_text (orig_point, input_line_point);
    }
  window_line_map_init (window);
}

/* Remove text from offsets FROM to TO.  Unlike 'ea_kill_text' nothing is
   saved in the kill ring. */
static void
ea_remove_text (int from, int to)
{
  int distance, i, counter;
  counter = input_line_end - to;
  distance = to - from;

  for (i = from; counter; i++, counter--)
    input_line[i] = input_line[i + distance];
  input_line_end -= distance;
}

/* The way to kill something.  This appends or prepends to the last
   kill, if the last command was a kill command.  If FROM is less
   than TO, then the killed text is appended to the most recent kill,
   otherwise it is prepended.  If the last command was not a kill command,
   then a new slot is made for this kill. */
static void
ea_kill_text (int from, int to)
{
  register int distance;
  int killing_backwards, slot;
  char *killed_text;

  killing_backwards = (from > to);

  /* If killing backwards, reverse the values of FROM and TO. */
  if (killing_backwards)
    {
      int temp = from;
      from = to;
      to = temp;
    }

  /* Remember the text that we are about to delete. */
  distance = to - from;
  killed_text = xmalloc (1 + distance);
  strncpy (killed_text, &input_line[from], distance);
  killed_text[distance] = '\0';

  /* Actually delete the text from the line. */
  ea_remove_text (from, to);

  /* If the last command was a kill, append or prepend the killed text to
     the last command's killed text. */
  if (echo_area_last_command_was_kill)
    {
      char *old, *new;

      slot = kill_ring_loc;
      old = kill_ring[slot];
      new = xmalloc (1 + strlen (old) + strlen (killed_text));

      if (killing_backwards)
        {
          /* Prepend TEXT to current kill. */
          strcpy (new, killed_text);
          strcat (new, old);
        }
      else
        {
          /* Append TEXT to current kill. */
          strcpy (new, old);
          strcat (new, killed_text);
        }

      free (old);
      free (killed_text);
      kill_ring[slot] = new;
    }
  else
    {
      /* Try to store the kill in a new slot, unless that would cause there
         to be too many remembered kills. */
      slot = kill_ring_index;

      if (slot == max_retained_kills)
        slot = 0;

      if (slot + 1 > kill_ring_slots)
        kill_ring = xrealloc (kill_ring,
			      (kill_ring_slots += max_retained_kills)
			      * sizeof (char *));

      if (slot != kill_ring_index)
        free (kill_ring[slot]);
      else
        kill_ring_index++;

      kill_ring[slot] = killed_text;

      kill_ring_loc = slot;
    }

  /* Notice that the last command was a kill. */
  echo_area_last_command_was_kill++;
}

/* **************************************************************** */
/*                                                                  */
/*                      Echo Area Completion                        */
/*                                                                  */
/* **************************************************************** */

/* Pointer to an array of REFERENCE to complete over. */
REFERENCE **echo_area_completion_items = NULL;

/* Sorted array of REFERENCE * which is the possible completions found in
   the variable echo_area_completion_items.  If there is only one element,
   it is the only possible completion. */
static REFERENCE **completions_found = NULL;
static long completions_found_index = 0;   /* Should not be negative */
static size_t completions_found_slots = 0;

/* The lowest common denominator found while completing. */
static REFERENCE *LCD_completion;

/* Function to choose which references to offer as completion options. */
static reference_bool_fn completion_exclude_func = 0;

/* Internal functions used by the user calls. */
static void build_completions (void);
static void completions_must_be_rebuilt (void);

/* Variable which holds the output of completions. */
static NODE *possible_completions_output_node = NULL;

static char *compwin_name = "*Completions*";

/* Return non-zero if WINDOW is a window used for completions output. */
static int
completions_window_p (WINDOW *window)
{
  int result = 0;

  if (internal_info_node_p (window->node) &&
      (strcmp (window->node->nodename, compwin_name) == 0))
    result = 1;

  return result;
}

/* Workhorse for completion readers.  If FORCE is non-zero, the user cannot
   exit unless the line read completes, or is empty.  Use EXCLUDE_FUNC to
   exclude items in COMPLETIONS. */
char *
info_read_completing_internal (const char *prompt, REFERENCE **completions,
                               int force, reference_bool_fn exclude_func)
{
  char *line;

  /* If the echo area is already active, remember the current state. */
  if (echo_area_is_active)
    push_echo_area ();

  echo_area_must_complete_p = force;

  /* Initialize our local variables. */
  initialize_input_line (prompt);
  
  /* Initialize the echo area for the first (but maybe not the last) time. */
  echo_area_initialize_node ();

  /* Save away the original node of this window, and the window itself,
     so echo area commands can temporarily use this window. */
  remember_calling_window (active_window);

  /* Save away the list of items to complete over. */
  echo_area_completion_items = completions;
  completions_must_be_rebuilt ();
  completion_exclude_func = exclude_func;

  active_window = the_echo_area;
  echo_area_is_active++;
  window_line_map_init (active_window);

  /* Read characters in the echo area. */
  while (1)
    {
      read_and_dispatch_in_echo_area ();

      line = echo_area_after_read ();

      /* Force the completion to take place if the user hasn't accepted
         a default or aborted, and if FORCE is active. */
      if (force && line && *line && completions)
        {
          long i;
	  
          build_completions ();

          /* If there is only one completion, then make the line be that
             completion. */
          if (completions_found_index == 1)
            {
              free (line);
              line = xstrdup (completions_found[0]->label);
              break;
            }

          /* If one of the completions matches exactly, then that is okay, so
             return the current line. */
          for (i = 0; i < completions_found_index; i++)
            if (mbscasecmp (completions_found[i]->label, line) == 0)
              {
                free (line);
                line = xstrdup (completions_found[i]->label);
                break;
              }

          /* If no match, go back and try again. */
          if (i == completions_found_index)
            {
              if (!completions_found_index)
                inform_in_echo_area (_("No completions"));
              else
                inform_in_echo_area (_("Not complete"));
              free (line);
              continue;
            }
        }
      break;
    }
  echo_area_is_active--;
  window_clear_echo_area ();

  /* Restore the original active window and show point in it. */
  active_window = calling_window;
  restore_calling_window ();
  display_cursor_at_point (active_window);
  fflush (stdout);

  echo_area_completion_items = NULL;
  completions_must_be_rebuilt ();

  /* If there is a previous loop waiting for us, restore it now. */
  if (echo_area_is_active)
    pop_echo_area ();

  return line;
}
  
/* Read a line in the echo area with completion over COMPLETIONS. */
char *
info_read_completing_in_echo_area (const char *prompt, REFERENCE **completions)
{
  return info_read_completing_internal (prompt, completions, 1, 0);
}

/* Read a line in the echo area allowing completion over COMPLETIONS, but
   not requiring it. */
char *
info_read_maybe_completing (const char *prompt, REFERENCE **completions)
{
  return info_read_completing_internal (prompt, completions, 0, 0);
}

/* Read a line in the echo area with completion over COMPLETIONS, using
   EXCLUDE to exclude items from the completion list. */
char *
info_read_completing_in_echo_area_with_exclusions (const char *prompt,
     REFERENCE **completions, reference_bool_fn exclude)
{
  return info_read_completing_internal (prompt, completions, 1, exclude);
}

DECLARE_INFO_COMMAND (ea_possible_completions, _("List possible completions"))
{
  build_completions ();

  if (!completions_found_index)
    {
      terminal_ring_bell ();
      inform_in_echo_area (_("No completions"));
    }
  else if (completions_found_index == 1)
    {
      inform_in_echo_area (_("Sole completion"));
    }
  else
    {
      long i, l;
      long limit, iterations, max_label = 0; /* Should not be negative */
      struct text_buffer message;

      text_buffer_init (&message);
      text_buffer_printf (&message, ngettext ("%d completion:\n",
					  "%d completions:\n",
					  completions_found_index),
				completions_found_index);

      /* Find the maximum length of a label. */
      for (i = 0; i < completions_found_index; i++)
        {
          long len = strlen (completions_found[i]->label);
          if (len > max_label)
            max_label = len;
        }

      max_label += 4;

      /* Find out how many columns we should print in. */
      limit = calling_window->width / max_label;
      if (limit != 1 && (limit * max_label == calling_window->width))
        limit--;

      /* Avoid a possible floating exception.  If max_label > width then
         the limit will be 0 and a divide-by-zero fault will result. */
      if (limit == 0)
        limit = 1;

      /* How many iterations of the printing loop? */
      iterations = (completions_found_index + (limit - 1)) / limit;

      /* Watch out for special case.  If the number of completions is less
         than LIMIT, then just do the inner printing loop. */
      if (completions_found_index < limit)
        iterations = 1;

      /* Print the sorted items, up-and-down alphabetically. */
      for (i = 0; i < iterations; i++)
        {
          register long j;

          for (j = 0, l = i; j < limit; j++)
            {
              if (l >= completions_found_index)
                break;
              else
                {
                  char *label;
                  long printed_length;
                  int k;

                  label = completions_found[l]->label;
                  printed_length = strlen (label);
                  text_buffer_printf (&message, "%s", label);

                  if (j + 1 < limit)
                    {
                      for (k = 0; k < max_label - printed_length; k++)
                        text_buffer_printf (&message, " ");
                    }
                }
              l += iterations;
            }
          text_buffer_printf (&message, "\n");
        }

      /* Make a new node to hold onto possible completions.  Don't destroy
         dangling pointers. */
      {
        NODE *temp;

        temp = text_buffer_to_node (&message);
        name_internal_node (temp, xstrdup (compwin_name));
        possible_completions_output_node = temp;
        possible_completions_output_node->flags |= N_WasRewritten;
      }

      /* Find a suitable window for displaying the completions output.
         First choice is an existing window showing completions output.
         If there is only one window, and it is large, make another
         (smaller) window, and use that one.  Otherwise, use the caller's
         window. */
      {
        WINDOW *compwin;

        compwin = get_internal_info_window (compwin_name);

        if (!compwin)
          {
            /* If we can split the window to display most of the completion
               items, then do so. */
            if (calling_window->height > (iterations * 2)
		&& calling_window->height / 2 >= WINDOW_MIN_SIZE)
              {
                remember_calling_window (calling_window);

                active_window = calling_window;
                compwin = window_make_window ();
                window_change_window_height
                  (compwin, -(compwin->height - (iterations + 2)));

                echo_area_completions_window = compwin;
                active_window = the_echo_area;
              }
            else
              compwin = calling_window;
          }

        /* Clear any completion nodes already showing from the window history.
           This could happen if the user presses TAB more than once. */
        while (compwin->node && (compwin->node->flags & N_IsInternal)
               && !strcmp (compwin->node->nodename, compwin_name))
          forget_node (compwin);

        info_set_node_of_window (compwin, possible_completions_output_node);

        display_update_display ();
      }
    }
}

DECLARE_INFO_COMMAND (ea_complete, _("Insert completion"))
{
  if (ea_last_executed_command == ea_complete)
    {
      ea_possible_completions (window, count);
      return;
    }

  input_line_point = input_line_end;
  build_completions ();

  if (!completions_found_index)
    terminal_ring_bell ();
  else if (LCD_completion->label[0] == '\0')
    ea_possible_completions (window, count);
  else
    {
      register int i;
      input_line_point = input_line_end = input_line_beg;
      for (i = 0; LCD_completion->label[i]; i++)
        ea_insert (window, 1, LCD_completion->label[i]);
    }
}

/* Utility REFERENCE used to store possible LCD. */
static REFERENCE LCD_reference = {
    NULL, NULL, NULL, 0, 0, 0, 0
};

static size_t remove_completion_duplicates (size_t completions_number);

/* Variables which remember the state of the most recent call
   to build_completions (). */
static char *last_completion_request = NULL;
static REFERENCE **last_completion_items = NULL;

/* How to tell the completion builder to reset internal state. */
static void
completions_must_be_rebuilt (void)
{
  free (last_completion_request);
  last_completion_request = NULL;
  last_completion_items = NULL;
}

/* Build a list of possible completions from echo_area_completion_items,
   and the contents of input_line. */
static void
build_completions (void)
{
  long i;
  int len;
  register REFERENCE *entry;
  char *request;
  int informed_of_lengthy_job = 0;
  size_t completion_index;

  /* If there are no items to complete over, exit immediately. */
  if (!echo_area_completion_items)
    {
      completions_found_index = 0;
      LCD_completion = NULL;
      return;
    }

  /* Check to see if this call to build completions is the same as the last
     call to build completions. */
  len = input_line_end - input_line_beg;
  request = xmalloc (1 + len);
  strncpy (request, &input_line[input_line_beg], len);
  request[len] = '\0';

  if (last_completion_request && last_completion_items &&
      last_completion_items == echo_area_completion_items &&
      (strcmp (last_completion_request, request) == 0))
    {
      free (request);
      return;
    }

  free (last_completion_request);
  last_completion_request = request;
  last_completion_items = echo_area_completion_items;

  /* reset */
  completions_found_index = 0;
  LCD_completion = NULL;

  /* Start at the beginning of the list. */
  completion_index = 0;

  for (i = 0; (entry = echo_area_completion_items[i]); i++)
    {
      /* Skip certain items (for example, we might only want
         a list of menu items). */
      if (completion_exclude_func && completion_exclude_func (entry))
        continue;

      if (mbsncasecmp (request, entry->label, len) == 0)
        add_pointer_to_array (entry, completion_index,
                              completions_found, completions_found_slots,
                              20);

      if (!informed_of_lengthy_job && completion_index > 100)
        {
          informed_of_lengthy_job = 1;
          window_message_in_echo_area (_("Building completions..."));
        }
    }

  if (!completion_index)
    return;

  /* Sort and prune duplicate entries from the completions array. */
  completion_index = remove_completion_duplicates (completion_index);

  /* from here, completions and completions_found_index should not be
     modified until a build_completions call.  Same for LCD_completion
     set when the function returns just below. */
  /* NOTE conversion from size_t to long here to be sure that comparisons with
     windows length fields are always safe. */
  completions_found_index = completion_index;

  /* If there is only one completion, just return that. */
  if (completions_found_index == 1)
    {
      LCD_completion = completions_found[0];
      return;
    }

  /* Find the least common denominator. */
  {
    long shortest = 100000;

    for (i = 1; i < completions_found_index; i++)
      {
        register int j;
        int c1, c2;

        for (j = 0;
             (c1 = tolower (completions_found[i - 1]->label[j]))
             && (c2 = tolower (completions_found[i]->label[j]));
             j++)
          if (c1 != c2)
            break;

        if (shortest > j)
          shortest = j;
      }

    free (LCD_reference.label);
    LCD_reference.label = xmalloc (1 + shortest);
    /* Since both the sorting done inside remove_completion_duplicates
       and all the comparisons above are case-insensitive, it's
       possible that the completion we are going to return is
       identical to what the user typed but for the letter-case.  This
       is confusing, since the user could type FOOBAR<TAB> and get her
       string change letter-case for no good reason.  So try to find a
       possible completion whose letter-case is identical, and if so,
       use that.  */
    if (completions_found_index > 1)
      {
	int req_len = strlen (request);

        for (i = 0; i < completions_found_index; i++)
          if (strncmp (request, completions_found[i]->label, req_len) == 0)
            break;
        /* If none of the candidates match exactly, use the first one.  */
        if (i >= completions_found_index)
          i = 0;
      }
    strncpy (LCD_reference.label, completions_found[i]->label, shortest);
    LCD_reference.label[shortest] = '\0';
    LCD_completion = &LCD_reference;
  }

  if (informed_of_lengthy_job)
    echo_area_initialize_node ();
}

/* Function called by qsort. */
static int
compare_references (const void *entry1, const void *entry2)
{
  REFERENCE **e1 = (REFERENCE **) entry1;
  REFERENCE **e2 = (REFERENCE **) entry2;

  return mbscasecmp ((*e1)->label, (*e2)->label);
}

/* Prune duplicate entries from COMPLETIONS_FOUND. */
static size_t
remove_completion_duplicates (size_t completions_number)
{
  size_t i, j;
  REFERENCE **temp;
  size_t newlen;

  if (!completions_number)
    return 0;

  /* Sort the items. */
  qsort (completions_found, completions_number, sizeof (REFERENCE *),
         compare_references);

  for (i = 0, newlen = 1; i < completions_number - 1; i++)
    {
      if (strcmp (completions_found[i]->label,
                  completions_found[i + 1]->label) == 0)
        completions_found[i] = NULL;
      else
        newlen++;
    }

  /* We have marked all the dead slots.  It is faster to copy the live slots
     twice than to prune the dead slots one by one. */
  temp = xmalloc ((1 + newlen) * sizeof (REFERENCE *));
  for (i = 0, j = 0; i < completions_number; i++)
    if (completions_found[i])
      temp[j++] = completions_found[i];

  for (i = 0; i < newlen; i++)
    completions_found[i] = temp[i];

  completions_found[i] = NULL;
  free (temp);
  return newlen;
}

/* Scroll the "other" window.  If there is a window showing completions, scroll
   that one, otherwise scroll the window which was active on entering the read
   function. */
DECLARE_INFO_COMMAND (ea_scroll_completions_window, _("Scroll the completions window"))
{
  WINDOW *compwin;

  compwin = get_internal_info_window (compwin_name);

  if (!compwin)
    compwin = calling_window;

  /* NB similar to session-cmd.c:info_scroll_forward, but takes no
     account of any "M-x info_scroll_forward_set_window" setting. */
  int lines;
  if (ea_explicit_arg)
    lines = count;
  else
    lines = (window->height - 2) * count;
  set_window_pagetop (compwin, compwin->pagetop + lines);
}

/* Function which gets called when an Info window is deleted while the
   echo area is active.  WINDOW is the window which has just been deleted. */
void
echo_area_inform_of_deleted_window (WINDOW *window)
{
  /* If this is the calling_window, forget what we remembered about it. */
  if (window == calling_window)
    {
      if (active_window != the_echo_area)
        remember_calling_window (active_window);
      else
        remember_calling_window (windows);
    }

  /* If this window was the echo_area_completions_window, then notice that
     the window has been deleted. */
  if (window == echo_area_completions_window)
    echo_area_completions_window = NULL;
}

/* **************************************************************** */
/*                                                                  */
/*                 Pushing and Popping the Echo Area                */
/*                                                                  */
/* **************************************************************** */

/* Push and Pop the echo area. */
typedef struct {
  char *line;
  REFERENCE **comp_items;
  int point, beg, end;
  int must_complete;
  NODE node;
  WINDOW *compwin;
} PUSHED_EA;

static PUSHED_EA **pushed_echo_areas = NULL;
static size_t pushed_echo_areas_index = 0;
static size_t pushed_echo_areas_slots = 0;

/* Pushing the echo_area has a side effect of zeroing the completion_items. */
static void
push_echo_area (void)
{
  PUSHED_EA *pushed;

  pushed = xmalloc (sizeof (PUSHED_EA));
  pushed->line = xstrdup (input_line);
  pushed->point = input_line_point;
  pushed->beg = input_line_beg;
  pushed->end = input_line_end;
  pushed->node = input_line_node;
  pushed->comp_items = echo_area_completion_items;
  pushed->must_complete = echo_area_must_complete_p;
  pushed->compwin = echo_area_completions_window;

  add_pointer_to_array (pushed, pushed_echo_areas_index, pushed_echo_areas,
                        pushed_echo_areas_slots, 4);

  echo_area_completion_items = NULL;
}

static void
pop_echo_area (void)
{
  PUSHED_EA *popped;

  popped = pushed_echo_areas[--pushed_echo_areas_index];

  strcpy (input_line, popped->line);
  free (popped->line);
  input_line_point = popped->point;
  input_line_beg = popped->beg;
  input_line_end = popped->end;
  input_line_node = popped->node;
  echo_area_completion_items = popped->comp_items;
  echo_area_must_complete_p = popped->must_complete;
  echo_area_completions_window = popped->compwin;
  completions_must_be_rebuilt ();

  /* If the completion window no longer exists, forget about it. */
  if (echo_area_completions_window)
    {
      register WINDOW *win;

      for (win = windows; win; win = win->next)
        if (echo_area_completions_window == win)
          break;

      /* If the window wasn't found, then it has already been deleted. */
      if (!win)
        echo_area_completions_window = NULL;
    }

  free (popped);
}

/* Returns non-zero if any of the prior stacked calls to read in the echo
   area produced a completions window. */
static int
echo_area_stack_contains_completions_p (void)
{
  size_t i;

  for (i = 0; i < pushed_echo_areas_index; i++)
    if (pushed_echo_areas[i]->compwin)
      return 1;

  return 0;
}

/* **************************************************************** */
/*                                                                  */
/*             Error Messages While Reading in Echo Area            */
/*                                                                  */
/* **************************************************************** */

/* Print MESSAGE right after the end of the current line, and wait
   for input or a couple of seconds, whichever comes first.  Then flush the
   informational message that was printed. */
void
inform_in_echo_area (const char *message)
{
  int i;
  char *text;
  int avail = EA_MAX_INPUT + 1 - input_line_end;

  text = xstrdup (message);
  for (i = 0; text[i] && text[i] != '\n' && i < avail; i++)
    ;
  text[i] = 0;

  echo_area_initialize_node ();
  sprintf (&input_line[input_line_end], "%s[%s]\n",
           echo_area_is_active ? " ": "", text);
  free (text);
  the_echo_area->point = input_line_point;
  display_update_one_window (the_echo_area);
  display_cursor_at_point (active_window);
  fflush (stdout);
  pause_or_input ();
  echo_area_initialize_node ();
}
