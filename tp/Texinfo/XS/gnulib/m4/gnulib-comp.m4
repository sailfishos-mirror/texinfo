# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2024 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <https://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  # Code from module absolute-header:
  # Code from module alignasof:
  # Code from module alignof:
  # Code from module alloca-opt:
  # Code from module assert-h:
  # Code from module attribute:
  # Code from module c-ctype:
  # Code from module c-strcase:
  # Code from module c-strcaseeq:
  # Code from module c99:
  # Code from module errno:
  # Code from module exitfail:
  # Code from module extensions:
  # This is actually already done in the pre-early phase.
  # AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  # Code from module extensions-aix:
  AC_REQUIRE([gl_USE_AIX_EXTENSIONS])
  # Code from module extern-inline:
  # Code from module float:
  # Code from module free-posix:
  # Code from module gen-header:
  # Code from module getdelim:
  # Code from module getline:
  # Code from module gettext-h:
  # Code from module gperf:
  # Code from module havelib:
  # Code from module iconv:
  # Code from module iconv-h:
  # Code from module iconv_open:
  # Code from module idx:
  # Code from module include_next:
  # Code from module inline:
  # Code from module inttypes-incomplete:
  # Code from module libunistring:
  # Code from module limits-h:
  # Code from module localcharset:
  # Code from module malloca:
  # Code from module mbszero:
  # Code from module memchr:
  # Code from module multiarch:
  # Code from module obstack:
  # Code from module rawmemchr:
  # Code from module size_max:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module ssize_t:
  # Code from module std-gnu11:
  # Code from module stdbool:
  # Code from module stdckdint:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdio:
  gl_STDIO_H_EARLY
  # Code from module stdlib:
  # Code from module strchrnul:
  # Code from module streq:
  # Code from module striconveh:
  # Code from module striconveha:
  # Code from module string:
  # Code from module strndup:
  # Code from module strnlen:
  # Code from module sys_types:
  AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])
  # Code from module uniconv/base:
  # Code from module uniconv/u8-conv-from-enc:
  # Code from module uniconv/u8-strconv-from-enc:
  # Code from module unistd:
  # Code from module unistr/base:
  # Code from module unistr/u8-check:
  # Code from module unistr/u8-mblen:
  # Code from module unistr/u8-mbsnlen:
  # Code from module unistr/u8-mbtouc:
  # Code from module unistr/u8-mbtouc-unsafe:
  # Code from module unistr/u8-mbtoucr:
  # Code from module unistr/u8-prev:
  # Code from module unistr/u8-strlen:
  # Code from module unistr/u8-uctomb:
  # Code from module unitypes:
  # Code from module uniwidth/base:
  # Code from module uniwidth/width:
  # Code from module vararrays:
  # Code from module vasnprintf:
  # Code from module vasprintf:
  # Code from module wchar:
  # Code from module wctype-h:
  # Code from module wcwidth:
  # Code from module xalloc-oversized:
  # Code from module xsize:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  gl_m4_base='gnulib/m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  m4_pushdef([GL_MACRO_PREFIX], [gl])
  m4_pushdef([GL_MODULE_INDICATOR_PREFIX], [GL])
  gl_COMMON
  gl_source_base='gnulib/lib'
  gl_source_base_prefix=
  gl_ALIGNASOF
  gl_FUNC_ALLOCA
  gl_CONDITIONAL_HEADER([alloca.h])
  AC_PROG_MKDIR_P
  gl_ASSERT_H
  gl_CONDITIONAL_HEADER([assert.h])
  AC_PROG_MKDIR_P
  gl_HEADER_ERRNO_H
  gl_CONDITIONAL_HEADER([errno.h])
  AC_PROG_MKDIR_P
  AC_REQUIRE([gl_EXTERN_INLINE])
  gl_FLOAT_H
  gl_CONDITIONAL_HEADER([float.h])
  AC_PROG_MKDIR_P
  gl_CONDITIONAL([GL_COND_OBJ_FLOAT],
                 [test $REPLACE_FLOAT_LDBL = 1 || test $REPLACE_FLOAT_SNAN = 1])
  gl_CONDITIONAL([GL_COND_OBJ_ITOLD], [test $REPLACE_ITOLD = 1])
  dnl Prerequisites of lib/float.c.
  AC_REQUIRE([gl_BIGENDIAN])
  gl_FUNC_FREE
  gl_CONDITIONAL([GL_COND_OBJ_FREE], [test $REPLACE_FREE = 1])
  AM_COND_IF([GL_COND_OBJ_FREE], [
    gl_PREREQ_FREE
  ])
  gl_STDLIB_MODULE_INDICATOR([free-posix])
  gl_FUNC_GETDELIM
  gl_CONDITIONAL([GL_COND_OBJ_GETDELIM],
                 [test $HAVE_GETDELIM = 0 || test $REPLACE_GETDELIM = 1])
  AM_COND_IF([GL_COND_OBJ_GETDELIM], [
    gl_PREREQ_GETDELIM
  ])
  gl_STDIO_MODULE_INDICATOR([getdelim])
  gl_FUNC_GETLINE
  gl_CONDITIONAL([GL_COND_OBJ_GETLINE], [test $REPLACE_GETLINE = 1])
  AM_COND_IF([GL_COND_OBJ_GETLINE], [
    gl_PREREQ_GETLINE
  ])
  gl_STDIO_MODULE_INDICATOR([getline])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  AC_DEFUN([gl_HAVE_MODULE_HAVELIB])
  AM_ICONV
  m4_ifdef([gl_ICONV_MODULE_INDICATOR],
    [gl_ICONV_MODULE_INDICATOR([iconv])])
  gl_ICONV_H
  gl_ICONV_H_REQUIRE_DEFAULTS
  gl_CONDITIONAL_HEADER([iconv.h])
  AC_PROG_MKDIR_P
  gl_FUNC_ICONV_OPEN
  dnl Because of gl_REPLACE_ICONV_H:
  gl_CONDITIONAL_HEADER([iconv.h])
  gl_CONDITIONAL([GL_COND_OBJ_ICONV_OPEN], [test $REPLACE_ICONV_OPEN = 1])
  gl_CONDITIONAL([GL_COND_OBJ_ICONV], [test $REPLACE_ICONV = 1])
  gl_INLINE
  gl_INTTYPES_INCOMPLETE
  gl_INTTYPES_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_LIBUNISTRING
  gl_LIMITS_H
  gl_CONDITIONAL_HEADER([limits.h])
  AC_PROG_MKDIR_P
  gl_LOCALCHARSET
  dnl For backward compatibility. Some packages still use this.
  LOCALCHARSET_TESTS_ENVIRONMENT=
  AC_SUBST([LOCALCHARSET_TESTS_ENVIRONMENT])
  gl_MALLOCA
  AC_REQUIRE([AC_TYPE_MBSTATE_T])
  gl_MBSTATE_T_BROKEN
  gl_MUSL_LIBC
  gl_WCHAR_MODULE_INDICATOR([mbszero])
  gl_FUNC_MEMCHR
  gl_CONDITIONAL([GL_COND_OBJ_MEMCHR], [test $REPLACE_MEMCHR = 1])
  AM_COND_IF([GL_COND_OBJ_MEMCHR], [
    gl_PREREQ_MEMCHR
  ])
  gl_STRING_MODULE_INDICATOR([memchr])
  gl_MULTIARCH
  gl_FUNC_OBSTACK
  gl_CONDITIONAL_HEADER([obstack.h])
  gl_CONDITIONAL([GL_COND_OBJ_OBSTACK],
                 [test $HAVE_OBSTACK = 0 || test $REPLACE_OBSTACK = 1])
  AC_PROG_MKDIR_P
  gl_FUNC_RAWMEMCHR
  gl_CONDITIONAL([GL_COND_OBJ_RAWMEMCHR], [test $HAVE_RAWMEMCHR = 0])
  AM_COND_IF([GL_COND_OBJ_RAWMEMCHR], [
    gl_PREREQ_RAWMEMCHR
  ])
  gl_STRING_MODULE_INDICATOR([rawmemchr])
  gl_SIZE_MAX
  gt_TYPE_SSIZE_T
  gl_C_BOOL
  AC_CHECK_HEADERS_ONCE([stdckdint.h])
  if test $ac_cv_header_stdckdint_h = yes; then
    GL_GENERATE_STDCKDINT_H=false
  else
    GL_GENERATE_STDCKDINT_H=true
  fi
  gl_CONDITIONAL_HEADER([stdckdint.h])
  AC_PROG_MKDIR_P
  gl_STDDEF_H
  gl_STDDEF_H_REQUIRE_DEFAULTS
  gl_CONDITIONAL_HEADER([stddef.h])
  AC_PROG_MKDIR_P
  gl_STDINT_H
  gl_CONDITIONAL_HEADER([stdint.h])
  dnl Because of gl_REPLACE_LIMITS_H:
  gl_CONDITIONAL_HEADER([limits.h])
  AC_PROG_MKDIR_P
  gl_STDIO_H
  gl_STDIO_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_CONDITIONAL([GL_COND_OBJ_STDIO_READ], [test $REPLACE_STDIO_READ_FUNCS = 1])
  gl_CONDITIONAL([GL_COND_OBJ_STDIO_WRITE], [test $REPLACE_STDIO_WRITE_FUNCS = 1])
  dnl No need to create extra modules for these functions. Everyone who uses
  dnl <stdio.h> likely needs them.
  gl_STDIO_MODULE_INDICATOR([fscanf])
  gl_MODULE_INDICATOR([fscanf])
  gl_STDIO_MODULE_INDICATOR([scanf])
  gl_MODULE_INDICATOR([scanf])
  gl_STDIO_MODULE_INDICATOR([fgetc])
  gl_STDIO_MODULE_INDICATOR([getc])
  gl_STDIO_MODULE_INDICATOR([getchar])
  gl_STDIO_MODULE_INDICATOR([fgets])
  gl_STDIO_MODULE_INDICATOR([fread])
  dnl No need to create extra modules for these functions. Everyone who uses
  dnl <stdio.h> likely needs them.
  gl_STDIO_MODULE_INDICATOR([fprintf])
  gl_STDIO_MODULE_INDICATOR([printf])
  gl_STDIO_MODULE_INDICATOR([vfprintf])
  gl_STDIO_MODULE_INDICATOR([vprintf])
  gl_STDIO_MODULE_INDICATOR([fputc])
  gl_STDIO_MODULE_INDICATOR([putc])
  gl_STDIO_MODULE_INDICATOR([putchar])
  gl_STDIO_MODULE_INDICATOR([fputs])
  gl_STDIO_MODULE_INDICATOR([puts])
  gl_STDIO_MODULE_INDICATOR([fwrite])
  gl_STDLIB_H
  gl_STDLIB_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_STRCHRNUL
  gl_CONDITIONAL([GL_COND_OBJ_STRCHRNUL],
                 [test $HAVE_STRCHRNUL = 0 || test $REPLACE_STRCHRNUL = 1])
  AM_COND_IF([GL_COND_OBJ_STRCHRNUL], [
    gl_PREREQ_STRCHRNUL
  ])
  gl_STRING_MODULE_INDICATOR([strchrnul])
  if test $gl_cond_libtool = false; then
    gl_ltlibdeps="$gl_ltlibdeps $LTLIBICONV"
    gl_libdeps="$gl_libdeps $LIBICONV"
  fi
  gl_STRING_H
  gl_STRING_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_STRNDUP
  gl_CONDITIONAL([GL_COND_OBJ_STRNDUP],
                 [test $HAVE_STRNDUP = 0 || test $REPLACE_STRNDUP = 1])
  gl_STRING_MODULE_INDICATOR([strndup])
  gl_FUNC_STRNLEN
  gl_CONDITIONAL([GL_COND_OBJ_STRNLEN],
                 [test $HAVE_DECL_STRNLEN = 0 || test $REPLACE_STRNLEN = 1])
  AM_COND_IF([GL_COND_OBJ_STRNLEN], [
    gl_PREREQ_STRNLEN
  ])
  gl_STRING_MODULE_INDICATOR([strnlen])
  gl_SYS_TYPES_H
  gl_SYS_TYPES_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_LIBUNISTRING_LIBHEADER([0.9.11], [uniconv.h])
  AC_PROG_MKDIR_P
  gl_LIBUNISTRING_MODULE([0.9], [uniconv/u8-conv-from-enc])
  gl_LIBUNISTRING_MODULE([0.9], [uniconv/u8-strconv-from-enc])
  gl_UNISTD_H
  gl_UNISTD_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_LIBUNISTRING_LIBHEADER([1.2], [unistr.h])
  AC_PROG_MKDIR_P
  gl_LIBUNISTRING_MODULE([0.9], [unistr/u8-check])
  gl_LIBUNISTRING_MODULE([0.9], [unistr/u8-mblen])
  gl_LIBUNISTRING_MODULE([1.2], [unistr/u8-mbsnlen])
  gl_MODULE_INDICATOR([unistr/u8-mbtouc])
  gl_LIBUNISTRING_MODULE([1.2], [unistr/u8-mbtouc])
  gl_MODULE_INDICATOR([unistr/u8-mbtouc-unsafe])
  gl_LIBUNISTRING_MODULE([0.9.4], [unistr/u8-mbtouc-unsafe])
  gl_MODULE_INDICATOR([unistr/u8-mbtoucr])
  gl_LIBUNISTRING_MODULE([0.9], [unistr/u8-mbtoucr])
  gl_LIBUNISTRING_MODULE([0.9], [unistr/u8-prev])
  gl_LIBUNISTRING_MODULE([0.9], [unistr/u8-strlen])
  gl_MODULE_INDICATOR([unistr/u8-uctomb])
  gl_LIBUNISTRING_MODULE([0.9], [unistr/u8-uctomb])
  gl_LIBUNISTRING_LIBHEADER([0.9.11], [unitypes.h])
  AC_PROG_MKDIR_P
  AH_VERBATIM([unitypes_restrict], [
  /* This definition is a duplicate of the one in unitypes.h.
     It is here so that we can cope with an older version of unitypes.h
     that does not contain this definition and that is pre-installed among
     the public header files.  */
  # if defined __restrict \
       || 2 < __GNUC__ + (95 <= __GNUC_MINOR__) \
       || __clang_major__ >= 3
  #  define _UC_RESTRICT __restrict
  # elif 199901L <= __STDC_VERSION__ || defined restrict
  #  define _UC_RESTRICT restrict
  # else
  #  define _UC_RESTRICT
  # endif
  ])
  gl_LIBUNISTRING_LIBHEADER([0.9.11], [uniwidth.h])
  AC_PROG_MKDIR_P
  gl_LIBUNISTRING_MODULE([1.2], [uniwidth/width])
  AC_C_VARARRAYS
  AC_REQUIRE([AC_C_RESTRICT])
  gl_FUNC_VASNPRINTF
  gl_FUNC_VASPRINTF
  gl_STDIO_MODULE_INDICATOR([vasprintf])
  m4_ifdef([AM_XGETTEXT_OPTION],
    [AM_][XGETTEXT_OPTION([--flag=asprintf:2:c-format])
     AM_][XGETTEXT_OPTION([--flag=vasprintf:2:c-format])])
  gl_WCHAR_H
  gl_WCHAR_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_WCTYPE_H
  gl_WCTYPE_H_REQUIRE_DEFAULTS
  AC_PROG_MKDIR_P
  gl_FUNC_WCWIDTH
  gl_CONDITIONAL([GL_COND_OBJ_WCWIDTH],
                 [test $HAVE_WCWIDTH = 0 || test $REPLACE_WCWIDTH = 1])
  AM_COND_IF([GL_COND_OBJ_WCWIDTH], [
    gl_PREREQ_WCWIDTH
  ])
  gl_WCHAR_MODULE_INDICATOR([wcwidth])
  gl_XSIZE
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_MODULE_INDICATOR_PREFIX])
  m4_popdef([GL_MACRO_PREFIX])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    gl_libobjdeps=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
changequote(,)dnl
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      sed_dirname1='s,//*,/,g'
      sed_dirname2='s,\(.\)/$,\1,'
      sed_dirname3='s,^[^/]*$,.,'
      sed_dirname4='s,\(.\)/[^/]*$,\1,'
      sed_basename1='s,.*/,,'
changequote([, ])dnl
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
        i_dir=`echo "$i" | sed -e "$sed_dirname1" -e "$sed_dirname2" -e "$sed_dirname3" -e "$sed_dirname4"`
        i_base=`echo "$i" | sed -e "$sed_basename1"`
        gl_libobjdeps="$gl_libobjdeps $i_dir/\$(DEPDIR)/$i_base.Plo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
    AC_SUBST([gl_LIBOBJDEPS], [$gl_libobjdeps])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  m4_pushdef([GL_MACRO_PREFIX], [gltests])
  m4_pushdef([GL_MODULE_INDICATOR_PREFIX], [GL])
  gl_COMMON
  gl_source_base='tests'
  gl_source_base_prefix=
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([GL_MODULE_INDICATOR_PREFIX])
  m4_popdef([GL_MACRO_PREFIX])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    gltests_libobjdeps=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
changequote(,)dnl
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      sed_dirname1='s,//*,/,g'
      sed_dirname2='s,\(.\)/$,\1,'
      sed_dirname3='s,^[^/]*$,.,'
      sed_dirname4='s,\(.\)/[^/]*$,\1,'
      sed_basename1='s,.*/,,'
changequote([, ])dnl
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
        i_dir=`echo "$i" | sed -e "$sed_dirname1" -e "$sed_dirname2" -e "$sed_dirname3" -e "$sed_dirname4"`
        i_base=`echo "$i" | sed -e "$sed_basename1"`
        gltests_libobjdeps="$gltests_libobjdeps $i_dir/\$(DEPDIR)/$i_base.Plo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
    AC_SUBST([gltests_LIBOBJDEPS], [$gltests_libobjdeps])
  ])
  AC_REQUIRE([gl_CC_GNULIB_WARNINGS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [gnulib/lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/config.rpath
  lib/_Noreturn.h
  lib/alignof.h
  lib/alloca.in.h
  lib/arg-nonnull.h
  lib/asnprintf.c
  lib/asprintf.c
  lib/assert.in.h
  lib/attribute.h
  lib/c++defs.h
  lib/c-ctype.c
  lib/c-ctype.h
  lib/c-strcase.h
  lib/c-strcasecmp.c
  lib/c-strcaseeq.h
  lib/c-strncasecmp.c
  lib/errno.in.h
  lib/exitfail.c
  lib/exitfail.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/free.c
  lib/getdelim.c
  lib/getline.c
  lib/gettext.h
  lib/iconv.c
  lib/iconv.in.h
  lib/iconv_close.c
  lib/iconv_open-aix.gperf
  lib/iconv_open-hpux.gperf
  lib/iconv_open-irix.gperf
  lib/iconv_open-osf.gperf
  lib/iconv_open-solaris.gperf
  lib/iconv_open-zos.gperf
  lib/iconv_open.c
  lib/iconveh.h
  lib/idx.h
  lib/intprops-internal.h
  lib/inttypes.in.h
  lib/itold.c
  lib/libunistring.valgrind
  lib/limits.in.h
  lib/localcharset.c
  lib/localcharset.h
  lib/malloca.c
  lib/malloca.h
  lib/mbszero.c
  lib/memchr.c
  lib/memchr.valgrind
  lib/obstack.c
  lib/obstack.in.h
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/rawmemchr.c
  lib/rawmemchr.valgrind
  lib/size_max.h
  lib/stdckdint.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio-read.c
  lib/stdio-write.c
  lib/stdio.in.h
  lib/stdlib.in.h
  lib/strchrnul.c
  lib/strchrnul.valgrind
  lib/streq.h
  lib/striconveh.c
  lib/striconveh.h
  lib/striconveha.c
  lib/striconveha.h
  lib/string.in.h
  lib/strndup.c
  lib/strnlen.c
  lib/sys_types.in.h
  lib/uniconv.in.h
  lib/uniconv/u-strconv-from-enc.h
  lib/uniconv/u8-conv-from-enc.c
  lib/uniconv/u8-strconv-from-enc.c
  lib/unictype/bitmap.h
  lib/unistd.c
  lib/unistd.in.h
  lib/unistr.in.h
  lib/unistr/u8-check.c
  lib/unistr/u8-mblen.c
  lib/unistr/u8-mbsnlen.c
  lib/unistr/u8-mbtouc-aux.c
  lib/unistr/u8-mbtouc-unsafe-aux.c
  lib/unistr/u8-mbtouc-unsafe.c
  lib/unistr/u8-mbtouc.c
  lib/unistr/u8-mbtoucr.c
  lib/unistr/u8-prev.c
  lib/unistr/u8-strlen.c
  lib/unistr/u8-uctomb-aux.c
  lib/unistr/u8-uctomb.c
  lib/unitypes.in.h
  lib/uniwidth.in.h
  lib/uniwidth/cjk.h
  lib/uniwidth/width.c
  lib/uniwidth/width0.h
  lib/uniwidth/width2.h
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/vasprintf.c
  lib/verify.h
  lib/warn-on-use.h
  lib/wchar.in.h
  lib/wctype-h.c
  lib/wctype.in.h
  lib/wcwidth.c
  lib/xalloc-oversized.h
  lib/xsize.c
  lib/xsize.h
  m4/00gnulib.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/assert_h.m4
  m4/c-bool.m4
  m4/codeset.m4
  m4/eealloc.m4
  m4/errno_h.m4
  m4/exponentd.m4
  m4/extensions-aix.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/float_h.m4
  m4/free.m4
  m4/getdelim.m4
  m4/getline.m4
  m4/gnulib-common.m4
  m4/host-cpu-c-abi.m4
  m4/iconv.m4
  m4/iconv_h.m4
  m4/iconv_open.m4
  m4/include_next.m4
  m4/inline.m4
  m4/intmax_t.m4
  m4/inttypes.m4
  m4/inttypes_h.m4
  m4/lib-ld.m4
  m4/lib-link.m4
  m4/lib-prefix.m4
  m4/libunistring-base.m4
  m4/libunistring.m4
  m4/limits-h.m4
  m4/localcharset.m4
  m4/locale-fr.m4
  m4/locale-ja.m4
  m4/locale-zh.m4
  m4/malloca.m4
  m4/math_h.m4
  m4/mbrtowc.m4
  m4/mbstate_t.m4
  m4/memchr.m4
  m4/mmap-anon.m4
  m4/multiarch.m4
  m4/musl.m4
  m4/obstack.m4
  m4/off64_t.m4
  m4/off_t.m4
  m4/pid_t.m4
  m4/printf.m4
  m4/rawmemchr.m4
  m4/size_max.m4
  m4/ssize_t.m4
  m4/std-gnu11.m4
  m4/stdalign.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/stdlib_h.m4
  m4/strchrnul.m4
  m4/string_h.m4
  m4/strndup.m4
  m4/strnlen.m4
  m4/sys_types_h.m4
  m4/unistd_h.m4
  m4/vararrays.m4
  m4/vasnprintf.m4
  m4/vasprintf.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wctype_h.m4
  m4/wcwidth.m4
  m4/wint_t.m4
  m4/xsize.m4
  m4/zzgnulib.m4
])
