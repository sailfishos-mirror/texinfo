# Makefile.am for XS modules
#
# Copyright 2015-2026 Free Software Foundation, Inc.
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

xsdir = $(converterlibdir)/XS_extension

.xs.c:
	$(XSUBPP) $(XSUBPPARGS) $< > $*.xsc && mv $*.xsc $*.c

# -------------------------------------------------------

# XS_VERSION is used in version check in the bootstrap function created
# by xsubpp in C code generated from .xs, and called in XSLoader.pm
XSLIBS_CPPFLAGS = -DVERSION=\"$(VERSION)\" -DXS_VERSION=\"$(XS_VERSION)\"
XSLIBS_CPPFLAGS += $(perl_conf_CPPFLAGS)

AM_CFLAGS = $(perl_conf_LIB_CFLAGS)

# Flags specially recognized by libtool.  For dlopened modules, here XS.
XSLIBS_LDFLAGS = -avoid-version -module

XSLIBS_LDFLAGS += $(perl_conf_LIB_LDFLAGS)

AM_LDFLAGS = $(XSLIBS_LDFLAGS)

noinst_LTLIBRARIES =

xs_LTLIBRARIES =

########################## Specific XS used in targeted override

if BUILD_C_CODE
xs_LTLIBRARIES += MiscXS.la
endif
nodist_MiscXS_la_SOURCES = MiscXS.c
CLEANFILES += MiscXS.c
MiscXS_la_SOURCES = xsmisc.c xsmisc.h ../../C/main/base_utils.c \
                    ../../C/main/base_utils.h
# Include Perl headers, do not include Gnulib/configure generated config.h
MiscXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(srcdir) $(XSLIBS_CPPFLAGS) -UHAVE_CONFIG_H
MiscXS_la_LIBADD = $(platform_PERL_LIBADD)


# C only convenience library internal for ParagraphXS solely used to set
# different values than code including Perl headers to include
# configure/Gnulib headers but no Perl header.
noinst_LTLIBRARIES += libparagraph.la
libparagraph_la_SOURCES = xspara.c xspara.h \
                 ../../C/main/base_utils.c ../../C/main/base_utils.h \
                 ../../C/main/text.c ../../C/main/text.h
libparagraph_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(srcdir) $(GNULIB_CPPFLAGS)
libparagraph_la_LIBADD = $(top_builddir)/gnulib/lib/libgnu.la
libparagraph_la_LDFLAGS = $(perl_conf_LIB_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING) $(LTLIBC32CONV)

if BUILD_C_CODE
xs_LTLIBRARIES += ParagraphXS.la
endif
nodist_ParagraphXS_la_SOURCES = ParagraphXS.c
CLEANFILES += ParagraphXS.c
ParagraphXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(srcdir) $(XSLIBS_CPPFLAGS)
ParagraphXS_la_LIBADD = libparagraph.la $(platform_PERL_LIBADD)

EXTRA_DIST += ParagraphXS.xs MiscXS.xs

########################## Parser XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ParserXS.la
endif

nodist_ParserXS_la_SOURCES = parser_document/ParserXS.c
CLEANFILES += parser_document/ParserXS.c

EXTRA_DIST += parser_document/ParserXS.xs

# To locate include files under out-of-source builds.
ParserXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/parsetexi $(XSLIBS_CPPFLAGS)
ParserXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
# the Gnulib link flags are needed at least on Solaris.  They only need to
# be present for one dlopened object, once loaded in Perl, it can be used
# by other modules.
ParserXS_la_LDFLAGS = $(XSLIBS_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)

########################## Document XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += DocumentXS.la
endif

nodist_DocumentXS_la_SOURCES = parser_document/DocumentXS.c
CLEANFILES += parser_document/DocumentXS.c

EXTRA_DIST += parser_document/DocumentXS.xs

# locate include files under out-of-source builds.
DocumentXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main $(XSLIBS_CPPFLAGS)
DocumentXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## Structuring XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += StructuringXS.la
endif

nodist_StructuringXS_la_SOURCES = parser_document/StructuringXS.c
CLEANFILES += parser_document/StructuringXS.c

EXTRA_DIST += parser_document/StructuringXS.xs

# locate include files under out-of-source builds.
StructuringXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/structuring_transfo $(XSLIBS_CPPFLAGS)
StructuringXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## Transformations XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += TransformationsXS.la
endif

nodist_TransformationsXS_la_SOURCES = parser_document/TransformationsXS.c
CLEANFILES += parser_document/TransformationsXS.c

EXTRA_DIST += parser_document/TransformationsXS.xs

# locate include files under out-of-source builds.
TransformationsXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/structuring_transfo $(XSLIBS_CPPFLAGS)
TransformationsXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## OutputUnits XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += OutputUnitsXS.la
endif

nodist_OutputUnitsXS_la_SOURCES = parser_document/OutputUnitsXS.c
CLEANFILES += parser_document/OutputUnitsXS.c

EXTRA_DIST += parser_document/OutputUnitsXS.xs

# locate include files under out-of-source builds.
OutputUnitsXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main $(XSLIBS_CPPFLAGS)
OutputUnitsXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## ManipulateTree XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ManipulateTreeXS.la
endif

nodist_ManipulateTreeXS_la_SOURCES = parser_document/ManipulateTreeXS.c
CLEANFILES += parser_document/ManipulateTreeXS.c

EXTRA_DIST += parser_document/ManipulateTreeXS.xs

# locate include files under out-of-source builds.
ManipulateTreeXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/structuring_transfo $(XSLIBS_CPPFLAGS)
ManipulateTreeXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## TreeElement XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += TreeElementXS.la
endif

nodist_TreeElementXS_la_SOURCES = reader_element/TreeElementXS.c
CLEANFILES += reader_element/TreeElementXS.c

EXTRA_DIST += reader_element/TreeElementXS.xs

# locate include files under out-of-source builds.
TreeElementXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/tree_elements $(XSLIBS_CPPFLAGS)
TreeElementXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## TreeElementConverter XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += TreeElementConverterXS.la
endif

nodist_TreeElementConverterXS_la_SOURCES = reader_element/TreeElementConverterXS.c
CLEANFILES += reader_element/TreeElementConverterXS.c

EXTRA_DIST += reader_element/TreeElementConverterXS.xs

# locate include files under out-of-source builds.
TreeElementConverterXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/tree_elements -I$(txi_libs_srcdir)/convert $(XSLIBS_CPPFLAGS)
TreeElementConverterXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## Reader XS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ReaderXS.la
endif

nodist_ReaderXS_la_SOURCES = reader_element/ReaderXS.c
CLEANFILES += reader_element/ReaderXS.c

EXTRA_DIST += reader_element/ReaderXS.xs

# locate include files under out-of-source builds.
ReaderXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/tree_elements $(XSLIBS_CPPFLAGS)
ReaderXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

########################## IndicesXS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += IndicesXS.la
endif

nodist_IndicesXS_la_SOURCES = \
                    parser_document/IndicesXS.c

CLEANFILES += \
                    parser_document/IndicesXS.c

EXTRA_DIST += parser_document/IndicesXS.xs

# locate include files under out-of-source builds.
IndicesXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/convert $(XSLIBS_CPPFLAGS)
IndicesXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
#IndicesXS_la_LDFLAGS = -Wl,--no-undefined $(XSLIBS_LDFLAGS) $(perl_conf_LIBS)

########################## ConvertTexinfoXS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ConvertTexinfoXS.la
endif

nodist_ConvertTexinfoXS_la_SOURCES = convert/ConvertTexinfoXS.c
CLEANFILES += convert/ConvertTexinfoXS.c

EXTRA_DIST += convert/ConvertTexinfoXS.xs

# To locate include files under out-of-source builds.
ConvertTexinfoXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main $(XSLIBS_CPPFLAGS)
ConvertTexinfoXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
ConvertTexinfoXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

########################## ConvertConverterXS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ConvertConverterXS.la
endif

nodist_ConvertConverterXS_la_SOURCES = convert/ConvertConverterXS.c
CLEANFILES += convert/ConvertConverterXS.c

EXTRA_DIST += convert/ConvertConverterXS.xs

# To locate include files under out-of-source builds.
ConvertConverterXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/convert $(XSLIBS_CPPFLAGS)
ConvertConverterXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
ConvertConverterXS_la_LDFLAGS = $(XSLIBS_LDFLAGS) $(EUIDACCESS_LIBGEN)

########################## ConvertTextXS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ConvertTextXS.la
endif

nodist_ConvertTextXS_la_SOURCES = convert/ConvertTextXS.c
CLEANFILES += convert/ConvertTextXS.c

EXTRA_DIST += convert/ConvertTextXS.xs

# To locate include files under out-of-source builds.
ConvertTextXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/convert $(XSLIBS_CPPFLAGS)
ConvertTextXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
ConvertTextXS_la_LDFLAGS = $(XSLIBS_LDFLAGS) $(EUIDACCESS_LIBGEN)

########################## ConvertHTMLXS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ConvertHTMLXS.la
endif

nodist_ConvertHTMLXS_la_SOURCES = convert/ConvertHTMLXS.c
CLEANFILES += convert/ConvertHTMLXS.c

ConvertHTMLXS_la_SOURCES = \
                       convert/get_html_perl_info.c \
                       convert/get_html_perl_info.h

EXTRA_DIST += convert/ConvertHTMLXS.xs

# To locate include files under out-of-source builds.
ConvertHTMLXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main -I$(txi_libs_srcdir)/structuring_transfo -I$(txi_libs_srcdir)/convert -I$(srcdir)/convert $(XSLIBS_CPPFLAGS)
ConvertHTMLXS_la_LIBADD = $(top_builddir)/C/libtexinfo-convertxs.la $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo-convert.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)
ConvertHTMLXS_la_LDFLAGS = $(XSLIBS_LDFLAGS) $(EUIDACCESS_LIBGEN)

########################## ConfigXS

if USE_SHARED_TXI_LIBRARIES
xs_LTLIBRARIES += ConfigXS.la
endif

nodist_ConfigXS_la_SOURCES = parser_document/ConfigXS.c
CLEANFILES += parser_document/ConfigXS.c

EXTRA_DIST += parser_document/ConfigXS.xs

# To locate include files under out-of-source builds.
ConfigXS_la_CPPFLAGS = -I$(txi_libs_srcdir)/main $(XSLIBS_CPPFLAGS)
ConfigXS_la_LIBADD = $(top_builddir)/C/libtexinfoxs.la $(top_builddir)/C/libtexinfo.la $(platform_PERL_LIBADD)

