# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

AM_CPPFLAGS = -DDATADIR=\"$(datadir)\"

$(top_builddir)/../tta/C/libtexinfo.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo.la

$(top_builddir)/../tta/C/libtexinfo-main.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo-main.la

# Ask autotools to install the generated Python file
python_PYTHON = Texinfo.py
# This is the Python module
pyexec_LTLIBRARIES = _Texinfo.la
_Texinfo_la_SOURCES = python_texinfo_wrap.c

_Texinfo_la_LDFLAGS = -module ${PYTHON_LDFLAGS}
# in contrast with XS extensions, here we need an explicit link against
# libperl as there is no Perl process involved.
if ! DISABLE_XS
_Texinfo_la_LIBADD = $(top_builddir)/C/libtexinfo.la $(top_builddir)/C/libtexinfo-main.la $(perl_conf_LIBS)
else
_Texinfo_la_LIBADD = $(top_builddir)/C/libtexinfo.la $(top_builddir)/C/libtexinfo-main.la
endif
_Texinfo_la_CPPFLAGS = $(AM_CPPFLAGS) -I.. -I$(srcdir)/../../C/main -I$(srcdir)/../../C/parsetexi -I$(srcdir)/../../C/convert ${PYTHON_CPPFLAGS}

clean-local:
	rm -rf __pycache__

EXTRA_DIST = test_Texinfo.py

MAINTAINERCLEANFILES = Texinfo.py
