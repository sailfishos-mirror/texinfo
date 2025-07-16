# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# NOTE a disadvantage of passing defines through flags and not through a file
# is that a change in value does not trigger remaking the output file.
AM_CPPFLAGS = -DDATADIR=\"$(datadir)\" -DCONVERTER_CONFIG=\"$(CONVERTER)\" \
       -DPACKAGE_VERSION_CONFIG=\"$(PACKAGE_VERSION)\"

# Never embed a perl interpreter as there is already one running (tested to
# mess up the Perl stack).  According to perlembed documentation, it could be
# possible to have two perl interpreters running, but the example only shows
# interpreters that the C code embedding Perl has control over.
# TODO it would be nice to still find a way to have correctly sorted indices,
# maybe by adding some pure Perl code using the SWIG interface.

#if PERL_EMBEDDED
#AM_CPPFLAGS += -DEMBED_PERL
#endif

txi_libs_srcdir = $(srcdir)/../../C

$(top_builddir)/../tta/C/libtexinfo.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo.la

$(top_builddir)/../tta/C/libtexinfo-main.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo-main.la


# as explained on the Dynaloader documentation (but it is hard to
# find more general information on the expected directories layout), the
# .so should be installed in
# installsitearch or installvendorarch/auto/$module
# The .pm that load the XS modules seem to be in
# installsitearch or installvendorarch/
dist_perllib_DATA = Texinfo.pm

module = Texinfo
archlibdir = $(perlarchdir)/auto/$(module)
archlib_LTLIBRARIES = Texinfo.la

Texinfo_la_SOURCES = perl_texinfo_wrap.c

# XS_VERSION is used in version check in the bootstrap function created
# by xsubpp in C code generated from .xs, and called in XSLoader.pm
Texinfo_la_CPPFLAGS = $(AM_CPPFLAGS) -DVERSION=\"$(VERSION)\" -DXS_VERSION=\"$(XS_VERSION)\" -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/parsetexi -I$(txi_libs_srcdir)/convert $(perl_conf_CPPFLAGS)
Texinfo_la_CFLAGS = $(perl_conf_CFLAGS)
# Flags specially recognized by libtool.  For dlopened modules, here XS.
Texinfo_la_LDFLAGS = -avoid-version -module $(perl_conf_LDFLAGS)
Texinfo_la_LIBADD = $(top_builddir)/C/libtexinfo.la $(top_builddir)/C/libtexinfo-main.la $(platform_PERL_LIBADD)
# TODO same as ctexi2any, not sure whether it is needed or not
Texinfo_la_LIBADD += $(EUIDACCESS_LIBGEN) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)

TEST_EXTENSIONS = .t
T_LOG_DRIVER = env AM_TAP_AWK='$(AWK)' $(SHELL) \
                       $(top_srcdir)/build-aux/tap-driver.sh
T_LOG_COMPILER = $(PERL)
AM_T_LOG_FLAGS = -w

AM_TESTS_ENVIRONMENT = srcdir="$(srcdir)"; export srcdir; t2a_srcdir="$(top_srcdir)"; export t2a_srcdir; t2a_builddir="$(top_builddir)"; export t2a_builddir;

test_files = t/30source_marks.t

if SWIG_PERL_TESTS
TESTS = $(test_files)
endif

EXTRA_DIST = $(test_files)

MAINTAINERCLEANFILES = Texinfo.pm

# remove leftovers of Perl MakeMaker based build system
clean-local:
	rm -rf blib
