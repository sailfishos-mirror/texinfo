#! /bin/sh
# Copyright 2024 Free Software Foundation.
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.


wget -v -N -r --accept-regex='www.gnu.org/software/[^/]+/manual/(.+.texi.tar.gz)?$' https://www.gnu.org/manual/manual.html

