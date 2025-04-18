# argz.m4
# serial 15
dnl Copyright (C) 2004-2024 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl This file is offered as-is, without any warranty.

# Portability macros for glibc argz.                    -*- Autoconf -*-

# Written by Gary V. Vaughan <gary@gnu.org>

AC_DEFUN([gl_FUNC_ARGZ],
[gl_PREREQ_ARGZ

AC_REQUIRE([AC_C_RESTRICT])
AC_REQUIRE([AC_CANONICAL_HOST]) dnl for cross-compiles

AC_CHECK_HEADERS([argz.h], [], [], [AC_INCLUDES_DEFAULT])

AC_CHECK_TYPES([error_t],
  [],
  [AC_DEFINE([error_t], [int],
   [Define to a type to use for 'error_t' if it is not otherwise available.])
   AC_DEFINE([__error_t_defined], [1], [Define so that glibc/gnulib argp.h
    does not typedef error_t.])],
  [#if defined(HAVE_ARGZ_H)
#  include <argz.h>
#endif])

GL_GENERATE_ARGZ_H=false
AC_CHECK_FUNC([argz_replace], [], [GL_GENERATE_ARGZ_H=true])

dnl if have system argz functions, allow forced use of
dnl libltdl-supplied implementation (and default to do so
dnl on "known bad" systems). Could use a runtime check, but
dnl (a) detecting malloc issues is notoriously unreliable
dnl (b) only known system that declares argz functions,
dnl     provides them, yet they are broken, is cygwin
dnl     releases prior to 5-May-2007 (1.5.24 and earlier)
dnl So, it's more straightforward simply to special case
dnl this for known bad systems.
AS_IF([! $GL_GENERATE_ARGZ_H],
    [AC_CACHE_CHECK(
        [if argz actually works],
        [lt_cv_sys_argz_works],
        [[case $host_os in #(
         *cygwin*)
           lt_cv_sys_argz_works=no
           if test "$cross_compiling" != no; then
             lt_cv_sys_argz_works="$gl_cross_guess_normal"
           else
             lt_sed_extract_leading_digits='s/^\([0-9\.]*\).*/\1/'
             saved_IFS=$IFS
             IFS=-.
             set x `uname -r | sed -e "$lt_sed_extract_leading_digits"`
             IFS=$saved_IFS
             lt_os_major=${2-0}
             lt_os_minor=${3-0}
             lt_os_micro=${4-0}
             if test "$lt_os_major" -gt 1 \
                || { test "$lt_os_major" -eq 1 \
                  && { test "$lt_os_minor" -gt 5 \
                    || { test "$lt_os_minor" -eq 5 \
                      && test "$lt_os_micro" -gt 24; }; }; }; then
               lt_cv_sys_argz_works=yes
             fi
           fi
           ;; #(
         *) lt_cv_sys_argz_works=yes ;;
         esac]])
     AS_IF([test "$lt_cv_sys_argz_works" = yes],
        [AC_DEFINE([HAVE_WORKING_ARGZ], [1],
                   [This value is set to 1 to indicate that the system argz facility works])],
        [GL_GENERATE_ARGZ_H=true])])
])

# Prerequisites of lib/argz.c.
AC_DEFUN([gl_PREREQ_ARGZ], [:])
