/* signals.c -- install and maintain signal handlers.

   Copyright 1993-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.

   Originally written by Brian Fox. */

#include "info.h"
#include "display.h"
#include "footnotes.h"
#include "window.h"
#include "signals.h"

#include <sys/types.h>
#include <signal.h>

/* For sysV68 --phdm@info.ucl.ac.be.  */
#if !defined (SIGCHLD) && defined (SIGCLD)
#define SIGCHLD SIGCLD
#endif

#if defined (HAVE_SIGPROCMASK)

#define BLOCK_SIGNAL(sig) \
  do { \
    sigset_t nvar, ovar; \
    sigemptyset (&nvar); \
    sigemptyset (&ovar); \
    sigaddset (&nvar, sig); \
    sigprocmask (SIG_BLOCK, &nvar, &ovar); \
  } while (0)

#define UNBLOCK_SIGNAL(sig) \
  do { \
    sigset_t nvar, ovar; \
    sigemptyset (&ovar); \
    sigemptyset (&nvar); \
    sigaddset (&nvar, sig); \
    sigprocmask (SIG_UNBLOCK, &nvar, &ovar); \
  } while (0)

#else /* !HAVE_SIGPROCMASK */
#  define BLOCK_SIGNAL(sig)
#  define UNBLOCK_SIGNAL(sig)
#endif /* !HAVE_SIGPROCMASK */


/* **************************************************************** */
/*                                                                  */
/*                  Signal Handling for Info                        */
/*                                                                  */
/* **************************************************************** */

#if defined (HAVE_SIGACTION) || defined (HAVE_SIGPROCMASK)
static void
mask_termsig (sigset_t *set)
{
# if defined (SIGTSTP)
  sigaddset (set, SIGTSTP);
  sigaddset (set, SIGTTOU);
  sigaddset (set, SIGTTIN);
# endif
# if defined (SIGWINCH)
  sigaddset (set, SIGWINCH);
# endif
#if defined (SIGQUIT)
  sigaddset (set, SIGQUIT);
#endif
#if defined (SIGINT)
  sigaddset (set, SIGINT);
#endif
#if defined (SIGTERM)
  sigaddset (set, SIGTERM);
#endif
# if defined (SIGUSR1)
  sigaddset (set, SIGUSR1);
# endif
}
#endif /* HAVE_SIGACTION || HAVE_SIGPROCMASK */

static void info_signal_proc (int sig);
#if defined (HAVE_SIGACTION)
typedef struct sigaction signal_info;
signal_info info_signal_handler;

static void
set_termsig (int sig, signal_info *old)
{
  sigaction (sig, &info_signal_handler, old);
}

static void
restore_termsig (int sig, const signal_info *saved)
{
  sigaction (sig, saved, NULL);
}
#else /* !HAVE_SIGACTION */
typedef void (*signal_info) ();
#define set_termsig(sig, old) (void)(*(old) = signal (sig, info_signal_proc))
#define restore_termsig(sig, saved) (void)signal (sig, *(saved))
#endif /* !HAVE_SIGACTION */

static signal_info old_TSTP, old_TTOU, old_TTIN;
static signal_info old_WINCH, old_INT, old_TERM, old_USR1;
static signal_info old_QUIT;

void
initialize_info_signal_handler (void)
{
#ifdef HAVE_SIGACTION
  info_signal_handler.sa_handler = info_signal_proc;
  info_signal_handler.sa_flags = 0;
  mask_termsig (&info_signal_handler.sa_mask);
#endif /* HAVE_SIGACTION */

#if defined (SIGTSTP)
  set_termsig (SIGTSTP, &old_TSTP);
  set_termsig (SIGTTOU, &old_TTOU);
  set_termsig (SIGTTIN, &old_TTIN);
#endif /* SIGTSTP */

#if defined (SIGWINCH)
  set_termsig (SIGWINCH, &old_WINCH);
#endif

#if defined (SIGQUIT)
  set_termsig (SIGQUIT, &old_QUIT);
#endif

#if defined (SIGINT)
  set_termsig (SIGINT, &old_INT);
#endif

#if defined (SIGTERM)
  set_termsig (SIGTERM, &old_TERM);
#endif

#if defined (SIGUSR1)
  /* Used by DJGPP to simulate SIGTSTP on Ctrl-Z.  */
  set_termsig (SIGUSR1, &old_USR1);
#endif
}

void
redisplay_after_signal (void)
{
  terminal_clear_screen ();
  display_clear_display (the_display);
  if (auto_footnotes_p)
    info_get_or_remove_footnotes (active_window);
  window_mark_chain (windows, W_UpdateWindow);
  display_update_display ();
  display_cursor_at_point (active_window);
  fflush (stdout);
}

volatile sig_atomic_t reset_info_window_sizes_required = 0;

void
reset_info_window_sizes (void)
{
  terminal_get_screen_size ();
  display_initialize_display (screenwidth, screenheight);
  window_new_screen_size (screenwidth, screenheight);
  redisplay_after_signal ();
}

void
maybe_update_after_signal (void)
{
  if (reset_info_window_sizes_required)
    {
      /* prevent infinite recursion */
      static volatile sig_atomic_t in_function = 0;
      if (in_function)
        return;
      in_function = 1;

      reset_info_window_sizes ();
      in_function = 0;
      reset_info_window_sizes_required = 0;
    }
}

static void
info_signal_proc (int sig)
{
  signal_info *old_signal_handler = NULL;

  switch (sig)
    {
#if defined (SIGTSTP)
    case SIGTSTP:
    case SIGTTOU:
    case SIGTTIN:
#endif
#if defined (SIGQUIT)
    case SIGQUIT:
#endif
#if defined (SIGINT)
    case SIGINT:
#endif
#if defined (SIGTERM)
    case SIGTERM:
#endif
      {
#if defined (SIGTSTP)
        if (sig == SIGTSTP)
          old_signal_handler = &old_TSTP;
        if (sig == SIGTTOU)
          old_signal_handler = &old_TTOU;
        if (sig == SIGTTIN)
          old_signal_handler = &old_TTIN;
#endif /* SIGTSTP */
#if defined (SIGQUIT)
        if (sig == SIGQUIT)
          old_signal_handler = &old_QUIT;
#endif /* SIGQUIT */
#if defined (SIGINT)
        if (sig == SIGINT)
          old_signal_handler = &old_INT;
#endif /* SIGINT */
#if defined (SIGTERM)
        if (sig == SIGTERM)
          old_signal_handler = &old_TERM;
#endif /* SIGTERM */

        /* For stop signals, restore the terminal IO, leave the cursor
           at the bottom of the window, and stop us. */
        terminal_goto_xy (0, screenheight - 1);
        terminal_clear_to_eol ();
        fflush (stdout);
        terminal_unprep_terminal ();
        restore_termsig (sig, old_signal_handler);
        UNBLOCK_SIGNAL (sig);
        kill (getpid (), sig);

        /* The program is returning now.  Restore our signal handler,
           turn on terminal handling, redraw the screen, and place the
           cursor where it belongs. */
        terminal_prep_terminal ();
        set_termsig (sig, old_signal_handler);
        /* window size might be changed while sleeping */
        reset_info_window_sizes_required = 1;
      }
      break;

#if defined (SIGWINCH) || defined (SIGUSR1)
#ifdef SIGWINCH
    case SIGWINCH:
#endif
#ifdef SIGUSR1
    case SIGUSR1:
#endif
       reset_info_window_sizes_required = 1;
       UNBLOCK_SIGNAL (sig);
       break;
#endif /* SIGWINCH || SIGUSR1 */
    }
}
