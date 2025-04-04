# strdup.m4
# serial 16

dnl Copyright (C) 2002-2024 Free Software Foundation, Inc.

dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl This file is offered as-is, without any warranty.

AC_DEFUN([gl_FUNC_STRDUP],
[
  AC_REQUIRE([gl_STRING_H_DEFAULTS])
  AC_CHECK_DECLS_ONCE([strdup])
  if test $ac_cv_have_decl_strdup = no; then
    HAVE_DECL_STRDUP=0
  fi
])

AC_DEFUN([gl_FUNC_STRDUP_POSIX],
[
  AC_REQUIRE([gl_STRING_H_DEFAULTS])
  AC_REQUIRE([gl_CHECK_MALLOC_POSIX])
  case "$gl_cv_func_malloc_posix" in
    *yes) ;;
    *)    REPLACE_STRDUP=1 ;;
  esac
  AC_CHECK_DECLS_ONCE([strdup])
  if test $ac_cv_have_decl_strdup = no; then
    HAVE_DECL_STRDUP=0
  fi
])

# Prerequisites of lib/strdup.c.
AC_DEFUN([gl_PREREQ_STRDUP], [:])
