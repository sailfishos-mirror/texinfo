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
	cd $(top_builddir)/../../tta/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo.la

$(top_builddir)/../tta/C/libtexinfo-main.la:
	cd $(top_builddir)/../../tta/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo-main.la

# Ask autotools to install the generated Python file
python_PYTHON = Texinfo.py
# This is the Python module
pyexec_LTLIBRARIES = _Texinfo.la
_Texinfo_la_SOURCES = python_texinfo_wrap.c

_Texinfo_la_LDFLAGS = -module ${PYTHON_LDFLAGS}
_Texinfo_la_LIBADD = $(top_builddir)/../../tta/C/libtexinfo.la $(top_builddir)/../../tta/C/libtexinfo-main.la $(platform_PERL_LIBADD)
_Texinfo_la_CPPFLAGS = $(AM_CPPFLAGS) -I.. -I$(srcdir)/../../../tta/C/main -I$(srcdir)/../../../tta/C/parsetexi -I$(srcdir)/../../../tta/C/convert ${PYTHON_CPPFLAGS}

clean-local:
	rm -rf __pycache__

EXTRA_DIST = test_Texinfo.py
