# Process this file with autoconf to produce a configure script.
#
# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

AC_INIT([texinfo-swig], [7.2dev], [bug-texinfo@gnu.org])

dnl Must come before AM_INIT_AUTOMAKE.
AC_CONFIG_AUX_DIR([build-aux])

AC_CONFIG_MACRO_DIRS([build-aux/m4 ../../tta/m4])

# foreign could be removed someday
AM_INIT_AUTOMAKE([foreign])

AC_CONFIG_HEADERS([config.h])

CONVERTER=texi2any
AC_SUBST([CONVERTER])

# Output with the _CONFIG suffix as the original is a type name
AC_DEFINE_UNQUOTED([CONVERTER_CONFIG], ["$CONVERTER"],
                   [configure CONVERTER value])

# Find python executable
AM_PATH_PYTHON

# Get CPPFLAGS, etc., for Python module compilation
# http://www.gnu.org/software/autoconf-archive/ax_python_devel.html
AX_PYTHON_DEVEL

# Find swig executable
# http://www.gnu.org/software/autoconf-archive/ax_pkg_swig.html
AX_PKG_SWIG([], [], [ AC_MSG_ERROR([SWIG is required to build.]) ])

# Get SWIGFLAGS, CPPFLAGS, etc., for Python generation by swig
# http://www.gnu.org/software/autoconf-archive/ax_swig_python.html
AX_SWIG_PYTHON

# Use libtool to link libraries and modules
LT_INIT

# We'll be compiling C files
AC_PROG_CC

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([python/Makefile])

AC_OUTPUT
