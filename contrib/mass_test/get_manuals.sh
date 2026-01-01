#! /bin/sh
# Copyright 2024-2026 Free Software Foundation.
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.

mkdir -p download

(
cd download

# -l 3 is needed for manuals with indirections, plotutils or texinfo for
# example
wget -v -N -r -l 3 --accept-regex='www.gnu.org/software/[^/]+/manual/(([^/]+/)?(.+.texi.tar.gz)?|([^/.]+)|([^/.]+/[^/.]+))$' https://www.gnu.org/manual/manual.html

# 4 indirections from the main gnu page, select an intermediate url
wget -v -N -r -l 3 --accept-regex='www.gnu.org/software/[^/]+/manual/(([^/]+/)?(.+.texi.tar.gz)?|([^/.]+)|([^/.]+/[^/.]+))$' https://www.gnu.org/software/smalltalk/manual/

# no direct link to the page from the main gnu page
wget -v -N -r -l 3 --accept-regex='www.gnu.org/software/[^/]+/manual/(([^/]+/)?(.+.texi.tar.gz)?|([^/.]+)|([^/.]+/[^/.]+))$' https://www.gnu.org/software/artanis/manual/
wget -v -N -r -l 3 --accept-regex='www.gnu.org/software/[^/]+/manual/(([^/]+/)?(.+.texi.tar.gz)?|([^/.]+)|([^/.]+/[^/.]+))$' https://www.gnu.org/software/libextractor/manual/

# looks superficially the same but actually different, be it only
# because the .texi is gzipped, but not in an archive
wget -v -N -r -l 3 --accept-regex='www.gnu.org/software/groff/manual/(([^/]+/)?(.+.texi.(tar.)?gz)?|([^/.]+)|([^/.]+/[^/.]+))$' https://www.gnu.org/software/groff/manual/

# we do not want to get all manuals in html to get the main grub manuals
# url, so we do a separate call to wget
wget -v -N -r -l 3 --accept-regex='www.gnu.org/software/grub/manual/[^/]+/(.+.texi.tar.gz)?$' https://www.gnu.org/software/grub/grub-documentation.html

#https://www.gnu.org/software/emacs/manual/index.html
#https://www.gnu.org/software/emacs/manual/texi/eintr.texi.tar.gz
wget -v -N -r --accept-regex='www.gnu.org/software/emacs/manual/texi/(.+.texi.tar.gz)?$' https://www.gnu.org/software/emacs/manual/texi/

wget -v -N -r -l 3 --accept-regex='https://www.gnu.org/software/guile-gnome/docs/(([^/]+/)?(.+.texi.tar.gz)?|([^/.]+))$' https://www.gnu.org/software/guile-gnome/docs/

wget -v -N -r --accept-regex='www.gnu.org/prep/[^/]+/(.+.texi.tar.gz)?$' https://www.gnu.org/prep/

wget -v -N -r https://gcc.gnu.org/onlinedocs/gcc-13.2.0/docs-sources.tar.gz

wget -v -N -r -l 3 --accept-regex='sourceware.org/glibc/manual/latest/texi/(.+.texi.tar.gz)?$' https://sourceware.org/glibc/manual/

wget -v -N -r -l 3 --accept-regex='mailutils.org/manual/(([^/]+/)?(.+.texi.tar.gz)?|([^/.]+)|([^/.]+/[^/.]+))$' https://mailutils.org/manual/

wget -v -N -r https://www.gnu.org/software/c-graph/manual/c-graph.texi

wget -v -N -r https://www.gnu.org/software/bc/manual/texi/bc.texi

wget -v -N -r https://www.gnu.org/software/epsilon/manual/epsilon.texi

# not an archive, a gzipped manual
wget -v -N -r https://www.gnu.org/software/gnubg/manual/gnubg.texi.gz
)

# no downloadable Texinfo manual:
# 3dldf
# archimedes
# binutils
# cppi
# cssc (HTML only)
# dejagnu (HTML only)
# emms (HTML only)
# gmediaserver (HTML only)
# gmp (HTML only)
# gnu-crypto (HTML only)
# gnuae
# gnuprologjava (HTML only)
# gnushogi (HTML only)
# gnutls no Texinfo source archive
# gnutrition (HTML only)
# goptical
# guix no Texinfo source archive
# indent no Texinfo source archive
# jwhois link to version control
# motti (HTML only)

# May be relevant to ask projects for *.texi*
# gnupg, lilypond, maxima, octave
