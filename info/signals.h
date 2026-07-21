/* signals.h -- header to include system dependent signal definitions.

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

#ifndef INFO_SIGNALS_H
#define INFO_SIGNALS_H

#include <sys/types.h>
#include <signal.h>

void maybe_update_after_signal (void);

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

#endif /* not INFO_SIGNALS_H */
