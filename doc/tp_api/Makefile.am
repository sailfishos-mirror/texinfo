# Makefile.am for texinfo/doc/tp_api.
#
# Copyright 2012-2019 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# Without INFO_SPECIAL_CHARS_QUOTE, the info file is not useful because of all
# the :: and , in the node names.  The Info readers are not already ready for
# INFO_SPECIAL_CHARS_QUOTE, therefore it is not really usefull to install the
# info file in the default case.  nodist_ is not ok to achieve that, as the
# other Texinfo related build targets are also removed with that prefix.
AM_MAKEINFOFLAGS = -c INFO_SPECIAL_CHARS_QUOTE=1 -c INFO_SPECIAL_CHARS_WARNING=0

# no-installinfo requires foreign
AUTOMAKE_OPTIONS = no-installinfo foreign

# Use the programs built in our distribution, taking account of possible
# cross-compiling.
MAKEINFO = $(PERL) -I $(top_srcdir)/tp/ $(top_srcdir)/tp/texi2any.pl

# the pod files are formatted like man pages.  If HTML is split at node
# or section, this results in some very short sections at the beginning
# of each module, so split at chapters.
AM_MAKEINFOHTMLFLAGS = --split=chapter

# since the tp_api 'manual' is referred to extensively in the
# customization_api, we setup the build targets.
info_TEXINFOS = tp_api.texi

TEXINFO_TEX = ../texinfo.tex

# dependencies are in api_includes/ directory but we do not want to list
# them explicitely
tp_api_TEXINFOS = tp_api_indices.texi
#dist_tp_api_TEXINFOS = 
EXTRA_DIST = api_includes

if BUILD_PERL_API_TEXI

BUILT_SOURCES = tp_api.texi

# all the modules with some interesting public interfaces.
# The order matters for the result.
tp_api_dependencies = \
  $(top_srcdir)/tp/Texinfo/Common.pm \
  $(top_srcdir)/tp/Texinfo/ParserNonXS.pm \
  $(top_srcdir)/tp/Texinfo/Structuring.pm \
  $(top_srcdir)/tp/Texinfo/Report.pm \
  $(top_srcdir)/tp/Texinfo/Translations.pm \
  $(top_srcdir)/tp/Texinfo/Transformations.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Texinfo.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Utils.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Unicode.pm \
  $(top_srcdir)/tp/Texinfo/Convert/NodeNameNormalization.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Text.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Converter.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Info.pm \
  $(top_srcdir)/tp/Texinfo/Convert/DocBook.pm \
  $(top_srcdir)/tp/Texinfo/Convert/TexinfoXML.pm \
  $(top_srcdir)/tp/Texinfo/Convert/Plaintext.pm \
  $(top_srcdir)/tp/Texinfo/Convert/HTML.pm

tp_api.texi: $(tp_api_dependencies) tp_api_indices.texi
	$(PERL) -I $(top_srcdir)/Pod-Simple-Texinfo/lib/ -I $(top_srcdir)/tp/ -I $(top_srcdir)/tp/maintain/lib/Text-Unidecode/lib/ -I $(top_srcdir)/tp/maintain/lib/libintl-perl/lib/ -I $(top_srcdir)/tp/maintain/lib/Unicode-EastAsianWidth/lib/ $(top_srcdir)/Pod-Simple-Texinfo/pod2texi.pl --base-level=section --setfilename tp_api.info --top 'Texinfo modules documentation' --subdir=api_includes $(tp_api_dependencies) | sed -e 's/^@bye/@__bye/' | sed -e '/^@__bye/r $(srcdir)/tp_api_indices.texi' | sed -e 's/^@__bye//' > $@

endif
