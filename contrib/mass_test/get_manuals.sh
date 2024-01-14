#! /bin/sh

wget -v -N -r --accept-regex='www.gnu.org/software/[^/]+/manual/(.+.texi.tar.gz)?$' https://www.gnu.org/manual/manual.html

