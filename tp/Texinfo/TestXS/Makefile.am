# Makefile.am for TestXS
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
#
AUTOMAKE_OPTIONS = foreign

ACLOCAL_AMFLAGS = -I build-aux/m4 -I ../XS/m4

EXTRA_DIST =

CLEANFILES =

xsdir = $(libdir)/$(CONVERTER)

.xs.c:
	$(XSUBPP) $(XSUBPPARGS) $< > $*.xsc && mv $*.xsc $*.c

xs_LTLIBRARIES = TestXS.la
nodist_TestXS_la_SOURCES = TestXS.c
CLEANFILES += TestXS.c
TestXS_la_CPPFLAGS = -DXS_VERSION=\"$(XS_VERSION)\" $(perl_conf_CPPFLAGS)
TestXS_la_CFLAGS = $(perl_conf_CFLAGS)
TestXS_la_LIBADD = $(platform_PERL_LIBADD)
TestXS_la_LDFLAGS = -avoid-version -module $(perl_conf_LDFLAGS)
EXTRA_DIST += TestXS.pm TestXS.xs

# TestXS.la has to be included in xs_LIBRARIES, and not noinst_LIBRARIES,
# otherwise dynamic libraries aren't built (a libtool bug).  Work around
# this by deleting it after it's installed.
install-data-hook:
	rm -f $(DESTDIR)$(xsdir)/TestXS*


