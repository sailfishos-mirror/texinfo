# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# We pass through flags as the config.h file should not be mixed with
# Perl headers.
# NOTE a disadvantage of passing defines through flags and not through a file
# is that a change in value does not trigger remaking the output file.
AM_CPPFLAGS = -DDATADIR=\"$(datadir)\" -DLIBDIR=\"$(libdir)\" \
       -DCONVERTER_CONFIG=\"$(CONVERTER)\" \
       -DPACKAGE_VERSION_CONFIG=\"$(PACKAGE_VERSION)\"

# Never embed a perl interpreter as there is already one running (tested to
# mess up the Perl stack).  According to perlembed documentation, it could be
# possible to have two perl interpreters running, but the example only shows
# interpreters that the C code embedding Perl has control over.
#
# Instead, use the existing Perl interpreter.

AM_CPPFLAGS += -DUSE_PERL_INTERPRETER

txi_libs_srcdir = $(srcdir)/../../C

if SWIG_INTERFACES

BUILT_SOURCES = perl_texinfo_wrap.c Texinfo.pm

$(top_builddir)/../tta/C/libtexinfo.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo.la

$(top_builddir)/../tta/C/libtexinfo-main.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo-main.la

SWIG_include_directories = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/convert
SWIG_header_dependencies = \
                 $(txi_libs_srcdir)/main/use_interpreter_types.h \
                 $(txi_libs_srcdir)/main/source_mark_types.h \
                 $(txi_libs_srcdir)/convert/swig_element_data.h \
                 $(txi_libs_srcdir)/convert/swig_text_options.h \
                 $(txi_libs_srcdir)/convert/swig_error_messages_types.h

perl_texinfo_wrap.c Texinfo.pm: $(srcdir)/../texinfo.i $(SWIG_header_dependencies)
	$(SWIG) $(SWIG_include_directories) -perl -o perl_texinfo_wrap.c $<

endif

# as explained on the Dynaloader documentation (but it is hard to
# find more general information on the expected directories layout), the
# .so should be installed in
# installsitearch or installvendorarch/auto/$module
# The .pm that load the XS modules seem to be in
# installsitearch or installvendorarch/
nodist_perllib_DATA = Texinfo.pm

module = Texinfo
archlibdir = $(perlarchdir)/auto/$(module)
archlib_LTLIBRARIES = Texinfo.la

nodist_Texinfo_la_SOURCES = perl_texinfo_wrap.c

# XS_VERSION is used in version check in the bootstrap function created
# by xsubpp in C code generated from .xs, and called in XSLoader.pm
Texinfo_la_CPPFLAGS = $(AM_CPPFLAGS) -DVERSION=\"$(VERSION)\" -DXS_VERSION=\"$(XS_VERSION)\" -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/parsetexi -I$(txi_libs_srcdir)/convert $(perl_conf_CPPFLAGS)
Texinfo_la_CFLAGS = $(perl_conf_CFLAGS)
# Flags specially recognized by libtool.  For dlopened modules, here XS.
Texinfo_la_LDFLAGS = -avoid-version -module $(perl_conf_LDFLAGS)
Texinfo_la_LIBADD = $(top_builddir)/C/libtexinfo.la $(top_builddir)/C/libtexinfo-main.la $(platform_PERL_LIBADD)
# Same as ctexi2any, not sure whether it is needed or not
Texinfo_la_LIBADD += $(EUIDACCESS_LIBGEN) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)

TEST_EXTENSIONS = .t
T_LOG_DRIVER = env AM_TAP_AWK='$(AWK)' $(SHELL) \
                       $(top_srcdir)/build-aux/tap-driver.sh
T_LOG_COMPILER = $(PERL)
AM_T_LOG_FLAGS = -w

AM_TESTS_ENVIRONMENT = srcdir="$(srcdir)"; export srcdir; t2a_srcdir="$(top_srcdir)"; export t2a_srcdir; t2a_builddir="$(top_builddir)"; export t2a_builddir;

t_test_files = \
   t/20index_sort.t \
   t/30source_marks.t \
   t/40convert_to_text.t

scripts_test_files = \
 test_scripts/test_macro_expand.sh \
 test_scripts/test_non_ascii_in_macro.sh \
 test_scripts/test_includes.sh \
 test_scripts/test_texinfo_manual.sh

TESTS = $(scripts_test_files)

if SWIG_PERL_TESTS
TESTS += $(t_test_files)
endif

EXTRA_DIST = \
 _Texinfo_Tests.pm \
 $(t_test_files) $(scripts_test_files) \
 test_refold.sh \
 parse_refold.pl \
 tests/test_macro_expand/test_macro_expand.texi \
 tests/test_non_ascii_in_macro/test_non_ascii_in_macro.texi \
 tests/test_includes/test_includes.texi \
 tests/test_includes/i1.texi \
 tests/test_includes/i2.texi \
 tests/test_includes/i3.texi

CLEANFILES = Texinfo.pm perl_texinfo_wrap.c

# remove leftovers of Perl MakeMaker based build system
clean-local:
	rm -rf blib
