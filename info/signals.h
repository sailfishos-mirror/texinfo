/* signals.h -- header to include system dependent signal definitions.

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

#ifndef INFO_SIGNALS_H
#define INFO_SIGNALS_H

#include <sys/types.h>
#include <signal.h>

void signal_block_winch (void);
void signal_unblock_winch (void);

/* For sysV68 --phdm@info.ucl.ac.be.  */
#if !defined (SIGCHLD) && defined (SIGCLD)
#define SIGCHLD SIGCLD
#endif

#if !defined (HAVE_SIGPROCMASK) && !defined (sigmask)
#  define sigmask(x) (1 << ((x)-1))
#endif /* !HAVE_SIGPROCMASK && !sigmask */

/* Without SA_NOCLDSTOP, sigset_t might end up being undefined even
   though we have sigprocmask, on older systems, according to Nelson
   Beebe.  The test is from coreutils/sort.c, via Paul Eggert.  */
#if !defined (HAVE_SIGPROCMASK) || !defined (SA_NOCLDSTOP)
#  if !defined (SIG_BLOCK)
#    define SIG_UNBLOCK 1
#    define SIG_BLOCK   2
#    define SIG_SETMASK 3
#  endif /* SIG_BLOCK */

/* Type of a signal set. */
#  define sigset_t int

/* Make SET have no signals in it. */
#  define sigemptyset(set) (*(set) = (sigset_t)0x0)

/* Make SET have the full range of signal specifications possible. */
#  define sigfillset(set) (*(set) = (sigset_t)0xffffffffff)

/* Add SIG to the contents of SET. */
#  define sigaddset(set, sig) *(set) |= sigmask (sig)

/* Delete SIG from the contents of SET. */
#  define sigdelset(set, sig) *(set) &= ~(sigmask (sig))

/* Tell if SET contains SIG. */
#  define sigismember(set, sig) (*(set) & (sigmask (sig)))

/* Suspend the process until the reception of one of the signals
   not present in SET. */
#  define sigsuspend(set) sigpause (*(set))
#endif /* !HAVE_SIGPROCMASK */

#if defined (HAVE_SIGPROCMASK) || defined (HAVE_SIGSETMASK)
/* These definitions are used both in POSIX and non-POSIX implementations. */

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

#else /* !HAVE_SIGPROCMASK && !HAVE_SIGSETMASK */
#  define BLOCK_SIGNAL(sig)
#  define UNBLOCK_SIGNAL(sig)
#endif /* !HAVE_SIGPROCMASK && !HAVE_SIGSETMASK */

#endif /* not INFO_SIGNALS_H */
