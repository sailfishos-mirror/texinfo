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

CLEANFILES =

######################## Gnulib ################################

AM_CPPFLAGS = -I$(srcdir)

GNULIB_CPPFLAGS = -I$(srcdir)/gnulib/lib \
  -I$(builddir)/gnulib/lib

ACLOCAL_AMFLAGS = -I gnulib/m4

SUBDIRS=gnulib/lib

EXTRA_DIST+=gnulib/m4/gnulib-cache.m4

################### End Gnulib section #########################

AM_CPPFLAGS += -DDATADIR=\"$(datadir)\"

######################## Perl ################################

xsdir = $(pkglibdir)

PERL_INC = $(PERL_CONF_archlibexp)/CORE

XSUBPPARGS = -typemap $(PERL_CONF_privlibexp)/ExtUtils/typemap

.xs.c:
	$(XSUBPP) $(XSUBPPARGS) $< > $*.xsc && mv $*.xsc $(srcdir)/$*.c

# -------------------------------------------------------

XSLIBS_CPPFLAGS = -DVERSION=\"$(VERSION)\" -DXS_VERSION=\"$(VERSION)\"
XSLIBS_CPPFLAGS += -I$(PERL_INC)

XSLIBS_CFLAGS = $(PERL_CONF_ccflags) $(PERL_CONF_optimize) $(PERL_CONF_cccdlflags)

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


########################## Test XS used in top source dir configure.ac

xs_LTLIBRARIES = TestXS.la
TestXS_la_SOURCES = TestXS.c ppport.h
TestXS_la_CPPFLAGS = $(AM_CPPFLAGS) $(XSLIBS_CPPFLAGS)
TestXS_la_CFLAGS = $(XSLIBS_CFLAGS)
TestXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

EXTRA_DIST += TestXS.pm TestXS.xs

# TestXS.la has to be included in xs_LIBRARIES, and not noinst_LIBRARIES,
# otherwise dynamic libraries aren't built (a libtool bug).  Work around
# this by deleting it after it's installed.
install-data-hook:
	rm -f $(DESTDIR)$(xsdir)/TestXS*


########################## Specific XS used in targeted override

xs_LTLIBRARIES += MiscXS.la
MiscXS_la_SOURCES = MiscXS.c misc.c miscxs.h ppport.h
MiscXS_la_CPPFLAGS = $(AM_CPPFLAGS) $(GNULIB_CPPFLAGS) $(XSLIBS_CPPFLAGS)
MiscXS_la_CFLAGS = $(XSLIBS_CFLAGS)
MiscXS_la_LIBADD = $(builddir)/gnulib/lib/libgnu.la
MiscXS_la_LDFLAGS = $(XSLIBS_LDFLAGS)

xs_LTLIBRARIES += XSParagraph.la
# FIXME use main/text.*?
XSParagraph_la_SOURCES = XSParagraph.c xspara.c xspara.h \
                          xspara_text.c xspara_text.h ppport.h
XSParagraph_la_CFLAGS = $(XSLIBS_CFLAGS)
XSParagraph_la_CPPFLAGS = $(AM_CPPFLAGS) $(GNULIB_CPPFLAGS) $(XSLIBS_CPPFLAGS)
XSParagraph_la_LIBADD = $(builddir)/gnulib/lib/libgnu.la
XSParagraph_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING) $(LTLIBC32CONV)

EXTRA_DIST += XSParagraph.xs MiscXS.xs


########################## shared common library and parser library

if HAVE_ICONV
xs_LTLIBRARIES += libtexinfo.la
endif

# The files in the main directory correspond to code used both
# by the parser and by converters.  The files in the parsetexi
# directory correspond to the parser code.  They depend on the files
# in main but not the other way around.
libtexinfo_la_SOURCES= \
		      main/tree_types.h \
		      main/document_types.h \
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
		      main/convert_to_text.c \
		      main/convert_to_text.h \
		      main/convert_utils.c \
		      main/convert_utils.h \
		      main/floats.c \
		      main/floats.h \
		      main/manipulate_tree.c \
		      main/manipulate_tree.h \
		      main/node_name_normalization.c \
		      main/node_name_normalization.h \
		      main/command_stack.c \
		      main/command_stack.h \
		      main/targets.c \
		      main/targets.h \
		      main/utils.c \
		      main/utils.h \
		      main/converter_types.h \
		      main/unicode.c \
		      main/unicode.h \
		      main/translations.c \
		      main/translations.h \
		      main/document.c \
		      main/document.h \
		      main/output_unit.c \
		      main/output_unit.h \
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
		      parsetexi/debug_parser.c \
		      parsetexi/debug_parser.h \
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
EXTRA_DIST += main/accent_tables_8bit_codepoints.c
EXTRA_DIST += main/command_data.c
EXTRA_DIST += main/cmd_normalization.c
EXTRA_DIST += main/cmd_unicode.c
EXTRA_DIST += main/cmd_structuring.c
EXTRA_DIST += main/cmd_symbol.c
EXTRA_DIST += main/cmd_text.c
EXTRA_DIST += main/global_commands_types.h
EXTRA_DIST += main/global_multi_commands_case.c
EXTRA_DIST += main/global_unique_commands_case.c
EXTRA_DIST += main/options_init_free.c
EXTRA_DIST += main/options_get_perl.c
EXTRA_DIST += main/options_types.h

# locate include files under out-of-source builds.
libtexinfo_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/parsetexi $(AM_CPPFLAGS) $(GNULIB_CPPFLAGS)
libtexinfo_la_LIBADD = $(top_builddir)/gnulib/lib/libgnu.la
libtexinfo_la_LDFLAGS = -version-info 0:0:0 $(AM_LDFLAGS) $(LTLIBINTL) $(LTLIBICONV) $(LTLIBUNISTRING)

BUILT_SOURCES=main/accent_tables_8bit_codepoints.c \
              main/cmd_normalization.c \
              main/cmd_unicode.c \
              main/cmd_structuring.c \
              main/cmd_symbol.c \
              main/cmd_text.c \
              main/command_data.c \
              main/command_ids.h \
              main/element_types.c \
              main/element_types.h \
              main/global_commands_types.h \
              main/global_multi_commands_case.c \
              main/global_unique_commands_case.c \
              main/options_init_free.c \
              main/options_get_perl.c \
              main/options_types.h

# Need to be distributed
EXTRA_DIST+=main/element_types.txt main/element_types.awk \
	   main/command_data.awk

$(srcdir)/main/element_types.c $(srcdir)/main/element_types.h: main/element_types.txt main/element_types.awk
	$(GAWK) -v srcdir=$(srcdir)/main -f $(srcdir)/main/element_types.awk \
	     $(srcdir)/main/element_types.txt

TXI_MODULES_ENV = srcdir="$(srcdir)"; export srcdir;

$(srcdir)/main/command_data.c $(srcdir)/main/command_ids.h $(srcdir)/main/global_multi_commands_case.c $(srcdir)/main/global_unique_commands_case.c $(srcdir)/main/global_commands_types.h: ../command_data.txt main/command_data.awk
	$(GAWK) -v srcdir=$(srcdir)/main -f $(srcdir)/main/command_data.awk \
	     $(srcdir)/../command_data.txt

# NOTE duplicate of a rule in ../../Makefile.am
$(srcdir)/../Commands.pm: ../command_data.txt
	$(PERL) $(srcdir)/../../maintain/regenerate_commands_perl_info.pl $(srcdir)/../Commands.pm < $(srcdir)/../command_data.txt

# NOTE duplicate of a rule in ../../Makefile.am
$(srcdir)/../Options.pm: $(srcdir)/../options_data.txt
	$(PERL) $(srcdir)/../../maintain/regenerate_perl_options_info.pl $(srcdir)/../Options.pm < $(srcdir)/../options_data.txt

$(srcdir)/main/cmd_normalization.c $(srcdir)/main/cmd_unicode.c $(srcdir)/main/cmd_structuring.c $(srcdir)/main/cmd_symbol.c $(srcdir)/main/cmd_text.c: main/command_data.c ../Commands.pm ../Options.pm
	$(TXI_MODULES_ENV) $(PERL) $(srcdir)/../../maintain/setup_converters_code_tables.pl \
	    < $(srcdir)/main/command_data.c \
	      $(srcdir)/main/cmd_normalization.c \
	      $(srcdir)/main/cmd_unicode.c \
	      $(srcdir)/main/cmd_structuring.c \
	      $(srcdir)/main/cmd_symbol.c \
	      $(srcdir)/main/cmd_text.c

$(srcdir)/main/accent_tables_8bit_codepoints.c:
	$(TXI_MODULES_ENV) $(PERL) $(srcdir)/../../maintain/setup_accent_tables.pl \
	              $(srcdir)/main/accent_tables_8bit_codepoints.c

$(srcdir)/main/options_init_free.c $(srcdir)/main/options_types.h $(srcdir)/main/options_get_perl.c: ../options_data.txt main/command_data.c $(srcdir)/../../maintain/regenerate_C_options_info.pl
	$(PERL) $(srcdir)/../../maintain/regenerate_C_options_info.pl \
	        < $(srcdir)/../options_data.txt \
	              $(srcdir)/main/command_data.c \
	              $(srcdir)/main/options_init_free.c \
	              $(srcdir)/main/options_types.h \
	              $(srcdir)/main/options_get_perl.c


########################## shared perl XS library for texinfo XS codes
# it is separate from libtexinfo because of different dependencies
# and flags; it depends on perl and not on gnulib.  Both libraries
# are used by following XS.

if HAVE_ICONV
xs_LTLIBRARIES += libtexinfoxs.la
endif

libtexinfoxs_la_SOURCES= \
		      main/api_to_perl.c \
		      main/api_to_perl.h \
		      main/build_perl_info.c \
		      main/build_perl_info.h \
		      main/get_perl_info.c \
		      main/get_perl_info.h \
		      main/call_perl_function.c \
		      main/call_perl_function.h

# locate include files under out-of-source builds.
libtexinfoxs_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/convert $(AM_CPPFLAGS) $(XSLIBS_CPPFLAGS)
libtexinfoxs_la_CFLAGS = $(XSLIBS_CFLAGS)
libtexinfoxs_la_LIBADD = libtexinfo.la
libtexinfoxs_la_LDFLAGS = -version-info 0:0:0 $(AM_LDFLAGS) $(PERL_CONF_ccdlflags) $(PLATFORM_LDFLAGS) $(LTLIBINTL)

# FIXME libtexinfo.so.* and libtexinfoxs.so.* are sought in system
# directories first (${libdir}) before the correct installed location, so
# there is potential for the wrong library file to be dynamically loaded.


########################## Parsetexi XS parser

modulesdir = $(pkgdatadir)/Texinfo/XS/parsetexi
dist_modules_DATA = parsetexi/Parsetexi.pm

if HAVE_ICONV
xs_LTLIBRARIES += Parsetexi.la
endif

Parsetexi_la_SOURCES= parsetexi/Parsetexi.c

EXTRA_DIST += parsetexi/Parsetexi.xs

# To locate include files under out-of-source builds.
Parsetexi_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/parsetexi $(AM_CPPFLAGS) $(XSLIBS_CPPFLAGS)
Parsetexi_la_CFLAGS = $(XSLIBS_CFLAGS)
Parsetexi_la_LIBADD = libtexinfoxs.la libtexinfo.la
Parsetexi_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS)

########################## Document XS

if HAVE_ICONV
xs_LTLIBRARIES += DocumentXS.la
endif

DocumentXS_la_SOURCES = \
                       main/DocumentXS.c

EXTRA_DIST += main/DocumentXS.xs

# locate include files under out-of-source builds.
DocumentXS_la_CPPFLAGS = -I$(srcdir)/main $(AM_CPPFLAGS) $(XSLIBS_CPPFLAGS)
DocumentXS_la_CFLAGS = $(XSLIBS_CFLAGS)
DocumentXS_la_LIBADD = libtexinfoxs.la libtexinfo.la
DocumentXS_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS)

########################## Translations XS

# Not used for now as replaced_substrings
# perl element tree cannot be retrieved in C stored documents.

#if HAVE_ICONV
#xs_LTLIBRARIES += TranslationsXS.la
#endif
#
#TranslationsXS_la_SOURCES = \
#                       main/TranslationsXS.c
#
#EXTRA_DIST += main/TranslationsXS.xs
#
## locate include files under out-of-source builds.
#TranslationsXS_la_CPPFLAGS = -I$(srcdir)/main $(AM_CPPFLAGS) $(XSLIBS_CPPFLAGS)
#TranslationsXS_la_CFLAGS = $(XSLIBS_CFLAGS)
#TranslationsXS_la_LIBADD = libtexinfoxs.la libtexinfo.la
#TranslationsXS_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS)

########################## StructuringTransfo XS

if HAVE_ICONV
xs_LTLIBRARIES += StructuringTransfo.la
endif

StructuringTransfo_la_SOURCES = \
                    structuring_transfo/StructuringTransfo.c \
                    structuring_transfo/structuring.c \
                    structuring_transfo/structuring.h \
                    structuring_transfo/transformations.c \
                    structuring_transfo/transformations.h

EXTRA_DIST += structuring_transfo/StructuringTransfo.xs

# locate include files under out-of-source builds.
StructuringTransfo_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/structuring_transfo $(AM_CPPFLAGS) $(GNULIB_CPPFLAGS) $(XSLIBS_CPPFLAGS)
StructuringTransfo_la_CFLAGS = $(XSLIBS_CFLAGS)
StructuringTransfo_la_LIBADD = libtexinfoxs.la libtexinfo.la $(top_builddir)/gnulib/lib/libgnu.la
StructuringTransfo_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS) $(LTLIBICONV) $(LTLIBUNISTRING)

########################## ConvertXS

if HAVE_ICONV
xs_LTLIBRARIES += ConvertXS.la
endif

ConvertXS_la_SOURCES = \
                       convert/ConvertXS.c \
                       convert/build_html_perl_state.h \
                       convert/build_html_perl_state.c \
                       convert/call_html_perl_function.h \
                       convert/call_html_perl_function.c \
                       convert/get_html_perl_info.c \
                       convert/get_html_perl_info.h \
                       convert/convert_plain_texinfo.h \
                       convert/convert_plain_texinfo.c \
                       convert/convert_text.h \
                       convert/convert_text.c \
                       convert/converter.h \
                       convert/converter.c \
                       convert/convert_html.h \
                       convert/convert_html.c \
                       convert/indices_in_conversion.h \
                       convert/indices_in_conversion.c

EXTRA_DIST += convert/ConvertXS.xs

# To locate include files under out-of-source builds.
ConvertXS_la_CPPFLAGS = -I$(srcdir)/main -I$(srcdir)/convert $(AM_CPPFLAGS) $(GNULIB_CPPFLAGS) $(XSLIBS_CPPFLAGS)
ConvertXS_la_CFLAGS = $(XSLIBS_CFLAGS)
ConvertXS_la_LIBADD = libtexinfoxs.la libtexinfo.la
ConvertXS_la_LDFLAGS = $(AM_LDFLAGS) $(XSLIBS_LDFLAGS) $(LTLIBICONV) $(LTLIBUNISTRING)


