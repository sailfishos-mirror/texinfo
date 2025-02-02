# Makefile.am for XS modules
#
# Copyright 2015-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

AUTOMAKE_OPTIONS = subdir-objects

EXTRA_DIST =

CLEANFILES =

######################## Texinfo libraries dependencies #######

txi_libs_srcdir = $(srcdir)/../../C

$(top_builddir)/C/libtexinfo-convertxs.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo-convertxs.la

$(top_builddir)/C/libtexinfoxs.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfoxs.la

$(top_builddir)/C/libtexinfo-convert.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo-convert.la

$(top_builddir)/C/libtexinfo.la:
	cd $(top_builddir)/C/ && $(MAKE) $(AM_MAKEFLAGS) libtexinfo.la

######################## Gnulib ################################

# first include is for config.h
GNULIB_CPPFLAGS = -I$(txi_libs_srcdir) -I$(top_srcdir)/gnulib/lib \
  -I$(top_builddir)/gnulib/lib

######################## Perl ################################

converterlibdir = $(libdir)/$(CONVERTER)

xsdir = $(converterlibdir)

.xs.c:
	$(XSUBPP) $(XSUBPPARGS) $< > $*.xsc && mv $*.xsc $*.c

# -------------------------------------------------------

# XSLIBS_CPPFLAGS and XSLIBS_CFLAGS should be used for XS
# modules compilation.

# XS_VERSION is used in version check in the bootstrap function created
# by xsubpp in C code generated from .xs, and called in XSLoader.pm
XSLIBS_CPPFLAGS = -DVERSION=\"$(VERSION)\" -DXS_VERSION=\"$(XS_VERSION)\"
XSLIBS_CPPFLAGS += $(perl_conf_CPPFLAGS)

XSLIBS_CFLAGS = $(perl_conf_CFLAGS)

# Flags specially recognized by libtool.  For dlopened modules, here XS.
XSLIBS_LDFLAGS = -avoid-version -module

XSLIBS_LDFLAGS += $(perl_conf_LDFLAGS)

noinst_LTLIBRARIES =

xs_LTLIBRARIES =

########################## Specific XS used in targeted override

xs_LTLIBRARIES += MiscXS.la
nodist_MiscXS_la_SOURCES = MiscXS.c
CLEANFILES += MiscXS.c
MiscXS_la_SOURCES = xsmisc.c xsmisc.h ../../C/main/base_utils.c \
                    ../../C/main/base_utils.h
# Include Perl headers, do not include Gnulib/configure generated config.h
MiscXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(srcdir) $(XSLIBS_CPPFLAGS) -UHAVE_CONFIG_H
MiscXS_la_CFLAGS = $(XSLIBS_CFLAGS)
MiscXS_la_LIBADD = $(platform_PERL_LIBADD)
MiscXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)


# C only convenience library internal for XSParagraph solely used to set
# different values than code including Perl headers to include
# configure/Gnulib headers but no Perl header.
noinst_LTLIBRARIES += libparagraph.la
libparagraph_la_SOURCES = xspara.c xspara.h \
                 ../../C/main/base_utils.c ../../C/main/base_utils.h \
                 ../../C/main/text.c ../../C/main/text.h
libparagraph_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(srcdir) $(GNULIB_CPPFLAGS)
libparagraph_la_LIBADD = $(top_builddir)/gnulib/lib/libgnu.la
libparagraph_la_LDFLAGS = $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING) $(LTLIBC32CONV)

xs_LTLIBRARIES += XSParagraph.la
nodist_XSParagraph_la_SOURCES = XSParagraph.c
CLEANFILES += XSParagraph.c
XSParagraph_la_CFLAGS = $(XSLIBS_CFLAGS)
XSParagraph_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(srcdir) $(XSLIBS_CPPFLAGS)
XSParagraph_la_LIBADD = libparagraph.la $(platform_PERL_LIBADD)
XSParagraph_la_LDFLAGS = $(XSLIBS_LDFLAGS)

EXTRA_DIST += XSParagraph.xs MiscXS.xs

########################## Parsetexi XS parser

converterdatadir = $(datadir)/$(CONVERTER)
modulesdir = $(converterdatadir)/Texinfo/XS/parser_document
dist_modules_DATA = parser_document/Parsetexi.pm

if HAVE_ICONV
xs_LTLIBRARIES += Parsetexi.la
endif

nodist_Parsetexi_la_SOURCES = parser_document/Parsetexi.c
CLEANFILES += parser_document/Parsetexi.c

EXTRA_DIST += parser_document/Parsetexi.xs

# To locate include files under out-of-source builds.
Parsetexi_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/parsetexi $(XSLIBS_CPPFLAGS)
Parsetexi_la_CFLAGS = $(XSLIBS_CFLAGS)
Parsetexi_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
Parsetexi_la_LDFLAGS = $(XSLIBS_LDFLAGS)

########################## Document XS

if HAVE_ICONV
xs_LTLIBRARIES += DocumentXS.la
endif

nodist_DocumentXS_la_SOURCES = parser_document/DocumentXS.c
CLEANFILES += parser_document/DocumentXS.c

EXTRA_DIST += parser_document/DocumentXS.xs

# locate include files under out-of-source builds.
DocumentXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main $(XSLIBS_CPPFLAGS)
DocumentXS_la_CFLAGS = $(XSLIBS_CFLAGS)
DocumentXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
DocumentXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

########################## StructuringTransfo XS

if HAVE_ICONV
xs_LTLIBRARIES += StructuringTransfoXS.la
endif

nodist_StructuringTransfoXS_la_SOURCES = \
                    parser_document/StructuringTransfoXS.c
CLEANFILES += \
                    parser_document/StructuringTransfoXS.c

EXTRA_DIST += parser_document/StructuringTransfoXS.xs

# locate include files under out-of-source builds.
StructuringTransfoXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/structuring_transfo $(XSLIBS_CPPFLAGS)
StructuringTransfoXS_la_CFLAGS = $(XSLIBS_CFLAGS)
StructuringTransfoXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
StructuringTransfoXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

########################## IndicesXS

if HAVE_ICONV
xs_LTLIBRARIES += IndicesXS.la
endif

nodist_IndicesXS_la_SOURCES = \
                    parser_document/IndicesXS.c

CLEANFILES += \
                    parser_document/IndicesXS.c

EXTRA_DIST += parser_document/IndicesXS.xs

# locate include files under out-of-source builds.
IndicesXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/convert $(XSLIBS_CPPFLAGS)
IndicesXS_la_CFLAGS = $(XSLIBS_CFLAGS)
IndicesXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
IndicesXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)
#IndicesXS_la_LDFLAGS = -Wl,--no-undefined $(XSLIBS_LDFLAGS) $(perl_conf_LIBS)

########################## ConvertXS

if HAVE_ICONV
xs_LTLIBRARIES += ConvertXS.la
endif

nodist_ConvertXS_la_SOURCES = convert/ConvertXS.c
CLEANFILES += convert/ConvertXS.c

ConvertXS_la_SOURCES = \
                       convert/get_html_perl_info.c \
                       convert/get_html_perl_info.h

EXTRA_DIST += convert/ConvertXS.xs

# To locate include files under out-of-source builds.
ConvertXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/structuring_transfo -I$(txi_libs_srcdir)/convert -I$(srcdir)/convert $(XSLIBS_CPPFLAGS)
ConvertXS_la_CFLAGS = $(XSLIBS_CFLAGS)
ConvertXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
ConvertXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

########################## ConfigXS

if HAVE_ICONV
xs_LTLIBRARIES += ConfigXS.la
endif

nodist_ConfigXS_la_SOURCES = parser_document/ConfigXS.c
CLEANFILES += parser_document/ConfigXS.c

ConfigXS_la_SOURCES =

EXTRA_DIST += parser_document/ConfigXS.xs

# To locate include files under out-of-source builds.
ConfigXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main $(XSLIBS_CPPFLAGS)
ConfigXS_la_CFLAGS = $(XSLIBS_CFLAGS)
ConfigXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
ConfigXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

