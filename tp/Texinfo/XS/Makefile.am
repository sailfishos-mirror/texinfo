# Makefile.am for XS modules
#
# Copyright 2015-2023 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
AUTOMAKE_OPTIONS=foreign subdir-objects

EXTRA_DIST=

######################## Gnulib ################################

AM_CPPFLAGS =                \
  -I$(srcdir)                \
  -I$(srcdir)/gnulib/lib     \
  -I$(builddir)/gnulib/lib

ACLOCAL_AMFLAGS = -I gnulib/m4

SUBDIRS=gnulib/lib

EXTRA_DIST+=gnulib/m4/gnulib-cache.m4

################### End Gnulib section #########################

AM_CPPFLAGS += -DDATADIR=\"$(datadir)\"

xsdir = $(pkglibdir)

PERL_INC = $(PERL_CONF_archlibexp)/CORE

XSUBPPARGS = -typemap $(PERL_CONF_privlibexp)/ExtUtils/typemap

.xs.c:
	$(XSUBPP) $(XSUBPPARGS) $< > $*.xsc && mv $*.xsc $(srcdir)/$*.c

EXTRA_DIST += TestXS.pm

# -------------------------------------------------------

CLEANFILES =

XSLIBS_CFLAGS = $(PERL_CONF_ccflags) $(PERL_CONF_optimize)
XSLIBS_CFLAGS += -DVERSION=\"$(VERSION)\" -DXS_VERSION=\"$(VERSION)\"
XSLIBS_CFLAGS += -I$(PERL_INC)

if HOST_NEEDS_NO_UNDEFINED
  PLATFORM_LDFLAGS = -no-undefined -L$(PERL_INC) $(PERL_CONF_libperl)
  # The -no-undefined flag is for MS-Windows.  See info node
  # `(gnulib)Libtool and Windows'.  The -L and -l options after it show
  # where to find the undefined symbols.
else
  PLATFORM_LDFLAGS =
endif

XSLIBS_LDFLAGS = -avoid-version -module $(PERL_CONF_ccdlflags)
XSLIBS_LDFLAGS += $(PLATFORM_LDFLAGS)

xs_LTLIBRARIES = XSParagraph.la TestXS.la
# FIXME use main/text.*?
XSParagraph_la_SOURCES = XSParagraph.c xspara.c xspara.h \
			 xspara_text.c xspara_text.h ppport.h
TestXS_la_SOURCES = TestXS.c ppport.h
TestXS_la_CPPFLAGS = $(AM_CPPFLAGS) $(XSLIBS_CFLAGS)
TestXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

xs_LTLIBRARIES += MiscXS.la
MiscXS_la_SOURCES = MiscXS.c misc.c miscxs.h ppport.h
MiscXS_la_LIBADD = $(builddir)/gnulib/lib/libgnu.la
MiscXS_la_CPPFLAGS = $(AM_CPPFLAGS) $(XSLIBS_CFLAGS)
MiscXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

# TestXS.la has to be included in xs_LIBRARIES, and not noinst_LIBRARIES, 
# otherwise dynamic libraries aren't built (a libtool bug).  Work around 
# this by deleting it after it's installed.
install-data-hook:
	rm -f $(DESTDIR)$(xsdir)/TestXS*

EXTRA_DIST += TestXS.xs XSParagraph.xs MiscXS.xs


XSParagraph_la_CPPFLAGS = $(AM_CPPFLAGS) $(XSLIBS_CFLAGS)
XSParagraph_la_LIBADD = $(builddir)/gnulib/lib/libgnu.la
XSParagraph_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)


########################## shared common library and parser library

# FIXME this is an internal library.  Do not put it in lib?
# it still needs to be found by the linker.
if HAVE_ICONV
lib_LTLIBRARIES = libtexinfo.la
endif

# The files in the main directory correspond to code used both
# by the parser and by converters.  The files in the parsetexi
# directory correspond to the parser code.  They depend on the files
# in main but not the other way around.
libtexinfo_la_SOURCES= \
		      main/tree_types.h \
		      main/tree.c \
		      main/tree.h \
		      main/text.c \
		      main/text.h \
		      main/element_types.c \
		      main/element_types.h \
		      main/command_ids.h \
		      main/builtin_commands.c \
		      main/builtin_commands.h \
		      main/debug.c \
		      main/debug.h \
		      main/errors.c \
		      main/errors.h \
		      main/extra.c \
		      main/extra.h \
		      main/convert_to_texinfo.c \
		      main/convert_to_texinfo.h \
		      main/node_name_normalization.c \
		      main/node_name_normalization.h \
		      main/unicode.c \
		      main/unicode.h \
		      main/utils.c \
		      main/utils.h \
		      main/document.c \
		      main/document.h \
		      parsetexi/api.c \
		      parsetexi/api.h \
		      parsetexi/parser.c \
		      parsetexi/parser.h \
		      parsetexi/input.c \
		      parsetexi/input.h \
		      parsetexi/close.c \
		      parsetexi/conf.c \
		      parsetexi/conf.h \
		      parsetexi/context_stack.c \
		      parsetexi/context_stack.h \
		      parsetexi/end_line.c \
		      parsetexi/separator.c \
		      parsetexi/multitable.c \
		      parsetexi/indices.c \
		      parsetexi/indices.h \
		      parsetexi/commands.c \
		      parsetexi/commands.h \
		      parsetexi/macro.c \
		      parsetexi/macro.h \
		      parsetexi/handle_commands.c \
		      parsetexi/handle_commands.h \
		      parsetexi/def.c \
		      parsetexi/def.h \
		      parsetexi/menus.c \
		      parsetexi/labels.c \
		      parsetexi/labels.h \
		      parsetexi/counter.c \
		      parsetexi/counter.h \
		      parsetexi/source_marks.c \
		      parsetexi/source_marks.h
EXTRA_DIST += main/command_data.c
EXTRA_DIST += main/command_tables.c
EXTRA_DIST += main/unicode_tables.c

libtexinfo_la_LIBADD = $(top_builddir)/gnulib/lib/libgnu.la
libtexinfo_la_LDFLAGS = -version-info 0:0:0 $(AM_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)

# To locate include files under out-of-source builds.
libtexinfo_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/parsetexi $(AM_CPPFLAGS)

BUILT_SOURCES=main/element_types.c \
              main/element_types.h \
              main/command_data.c \
              main/command_tables.c \
              main/unicode_tables.c \
              main/command_ids.h

# Need to be distributed
EXTRA_DIST+=main/element_types.txt main/element_types.awk \
	   main/command_data.awk

$(srcdir)/main/element_types.c $(srcdir)/main/element_types.h: main/element_types.txt main/element_types.awk
	$(GAWK) -v srcdir=$(srcdir)/main -f $(srcdir)/main/element_types.awk \
	     $(srcdir)/main/element_types.txt

$(srcdir)/main/command_data.c $(srcdir)/main/command_ids.h: ../command_data.txt main/command_data.awk
	$(GAWK) -v srcdir=$(srcdir)/main -f $(srcdir)/main/command_data.awk \
	     $(srcdir)/../command_data.txt

$(srcdir)/main/command_tables.c: $(srcdir)/main/command_data.c
	$(PERL) $(srcdir)/../../maintain/setup_converters_code_tables.pl \
           < $(srcdir)/main/command_data.c \
              $(srcdir)/main/command_tables.c $(srcdir)/main/unicode_tables.c


########################## Parsetexi XS

p=parsetexi

modulesdir = $(pkgdatadir)/Texinfo/XS/parsetexi
dist_modules_DATA = $(p)/Parsetexi.pm

if HAVE_ICONV
xs_LTLIBRARIES += Parsetexi.la
endif

Parsetexi_la_SOURCES= parsetexi/Parsetexi.c \
		      parsetexi/build_perl_info.c \
		      parsetexi/build_perl_info.h

EXTRA_DIST += $(p)/Parsetexi.xs

Parsetexi_la_LIBADD = $(top_builddir)/gnulib/lib/libgnu.la libtexinfo.la
Parsetexi_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)

# To locate include files under out-of-source builds.
Parsetexi_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/parsetexi $(AM_CPPFLAGS) $(XSLIBS_CFLAGS)

########################## ConvertXS

if HAVE_ICONV
xs_LTLIBRARIES += ConvertXS.la
endif

ConvertXS_la_SOURCES = \
                       convert/ConvertXS.c \
                       convert/plain_texinfo.h \
                       convert/plain_texinfo.c

EXTRA_DIST += convert/ConvertXS.xs

ConvertXS_la_LIBADD = $(top_builddir)/gnulib/lib/libgnu.la libtexinfo.la
ConvertXS_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS) $(LTLIBINTL)

# To locate include files under out-of-source builds.
ConvertXS_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/convert $(AM_CPPFLAGS) $(XSLIBS_CFLAGS)

