# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

ACLOCAL_AMFLAGS = -I build-aux/m4 -I ../../tta/m4

SUBDIRS = . python

BUILT_SOURCES = python/python_texinfo_wrap.c \
                perl/perl_texinfo_wrap.c

SWIG_include_directories = -I$(srcdir)/../../tta/C/convert
SWIG_header_dependencies = $(srcdir)/../../tta/C/convert/swig_command_data.h

# tell Make how to create the generated SWIG files
$(srcdir)/python/python_texinfo_wrap.c: $(srcdir)/texinfo.i $(SWIG_header_dependencies)
	$(SWIG) $(AX_SWIG_PYTHON_OPT) $(SWIG_include_directories) -outdir $(srcdir)/python -o $@ $<

$(srcdir)/perl/perl_texinfo_wrap.c: $(srcdir)/texinfo.i $(SWIG_header_dependencies)
	$(SWIG) $(SWIG_include_directories) -perl -outdir $(srcdir)/perl -o $@ $<

EXTRA_DIST = README texinfo.i
