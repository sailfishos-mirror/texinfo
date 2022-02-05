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

# Use the programs built in our distribution, taking account of possible
# cross-compiling.
MAKEINFO = $(PERL) -I $(top_srcdir)/tp/ $(top_srcdir)/tp/texi2any.pl

# the pod files are formatted like man pages.  If split at node
# or section, this results in some very short sections at the beginning
# of each module, so split at chapters.
MAKEINFOHTML = $(MAKEINFO) --html --split=chapter

#info_TEXINFOS = tp_api.texi
if BUILD_PERL_API_TEXI

dist_info_TEXINFOS = tp_api.texi
# in 2022 an info_TEXINFOS variable is not allowed in a conditional
#info_TEXINFOS = tp_api.texi

# dependencies are in api_includes/ directory but we do not want to list
# them explicitely
#tp_api_TEXINFOS = 
#dist_tp_api_TEXINFOS = 

BUILT_SOURCES = tp_api.texi

#DISTCLEANFILES = tp_api.info

# FIXME add?
tp_api_dependencies = \
  $(top_srcdir)/tp/Texinfo/Common.pm \
  $(top_srcdir)/tp/Texinfo/Encoding.pm \
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

tp_api.texi: $(tp_api_dependencies)
	$(PERL) -I $(top_srcdir)/Pod-Simple-Texinfo/lib/ -I $(top_srcdir)/tp/ -I $(top_srcdir)/tp/maintain/lib/Text-Unidecode/lib/ -I $(top_srcdir)/tp/maintain/lib/libintl-perl/lib/ -I $(top_srcdir)/tp/maintain/lib/Unicode-EastAsianWidth/lib/ $(top_srcdir)/Pod-Simple-Texinfo/pod2texi.pl --base-level=section --top 'Texinfo modules documentation' --subdir=api_includes -o $@ $(tp_api_dependencies)

EXTRA_DIST = api_includes tp_api.texi

endif
