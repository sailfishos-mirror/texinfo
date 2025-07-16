# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

AM_CPPFLAGS = -DDATADIR=\"$(datadir)\" -DCONVERTER_CONFIG=\"$(CONVERTER)\" \
       -DPACKAGE_VERSION_CONFIG=\"$(PACKAGE_VERSION)\"

if PERL_EMBEDDED
AM_CPPFLAGS += -DEMBED_PERL
endif

txi_libs_srcdir = $(srcdir)/../../C

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
_Texinfo_la_LIBADD = $(top_builddir)/C/libtexinfo.la $(top_builddir)/C/libtexinfo-main.la
if PERL_EMBEDDED
_Texinfo_la_LIBADD += $(PERL_EXTUTILS_EMBED_ldopts)
else
# in contrast with XS extensions, here we need an explicit link against
# libperl as there is no Perl process involved.  This is needed for linking,
# even though no C Perl code is used at all in that case.
# Note that this case is unlikely, as in general, if liberl is present,
# PERL_EMBEDDED is set.
if ! DISABLE_XS
_Texinfo_la_LIBADD += $(perl_conf_LIBS)
endif
endif
# TODO same as ctexi2any, not sure whether it is needed or not
_Texinfo_la_LIBADD += $(EUIDACCESS_LIBGEN) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)
_Texinfo_la_CPPFLAGS = $(AM_CPPFLAGS) -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/parsetexi -I$(txi_libs_srcdir)/convert ${PYTHON_CPPFLAGS}

clean-local:
	rm -rf __pycache__

EXTRA_DIST = test_Texinfo.py

MAINTAINERCLEANFILES = Texinfo.py
