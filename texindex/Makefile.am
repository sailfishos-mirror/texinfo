# Makefile.am for texinfo/texindex.
# Run automake in .. to produce Makefile.in from this.
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

# basic plan: what users invoke will be texindex, a shell script wrapper
# created from texindex.in by configure, which calls texindex.awk to do
# the real work.

bin_SCRIPTS = texindex

# since it's generated, have to clean it explicitly.
CLEANFILES = texindex

# and mention the original sources explicitly.
EXTRA_DIST = texindex.in

# let's install the awk script in $(sharedir)/texinfo.
dist_pkgdata_SCRIPTS = texindex.awk

# configure-time variables we use in texindex.in or
# (FIXME) texindex.awk.
# Unlike regular Automake, we have to allow for @@VERSION@@,
# which jrweave generates in the code segment.
do_subst = sed -e 's,[@]pkgdatadir[@],$(pkgdatadir),g' \
               -e 's,[@]TI_AWK[@],$(TI_AWK),g' \
               -e 's,[@]PACKAGE[@],$(PACKAGE),g' \
               -e 's,[@][@]*VERSION[@][@]*,$(VERSION),g'

# build the texindex shell wrapper from texindex.in, following automake.
texindex: texindex.in Makefile
	$(do_subst) <$(srcdir)/texindex.in >texindex
	chmod +x texindex

TESTS = \
        tests/ti-helpversion.sh
EXTRA_DIST += $(TESTS)

# Remains of the literate source file for texindex
EXTRA_DIST += ti.texi dek_idx.png
