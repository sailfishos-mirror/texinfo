#! /bin/sh
# Copyright 2024 Free Software Foundation.
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

wget -v -N -r -l 3 --accept-regex='sourceware.org/glibc/manual/texi/(.+.texi.tar.gz)?$' https://sourceware.org/glibc/manual/

)

# May be relevant to ask projects for *.texi*
# gnupg, lilypond, octave
