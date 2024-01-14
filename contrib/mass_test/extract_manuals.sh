#! /bin/sh
# Copy and extract Texinfo manuals
#
# Copyright 2024 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the

set -e

mkdir -p manuals

for manual in www.gnu.org/software/*/manual/*.texi.tar.gz; do
  bfile=`basename $manual .texi.tar.gz`
  echo "$bfile"
  rm -rf manuals/$bfile
  mkdir manuals/$bfile
  cp -p $manual manuals/$bfile/
  (
    cd manuals/$bfile/
    tar xzf ${bfile}.texi.tar.gz
    rm -f ${bfile}.texi.tar.gz
  )
done

for dir in www.gnu.org/software/*/manual/ ; do
  one_manual_found=no
  for file in $dir/*.texi.tar.gz; do
    if test -e "$file" ; then
      one_manual_found=yes
      break
    fi
  done
  if test $one_manual_found = 'no' ; then
    echo "REMARK: $dir: no manual" 1>&2
  fi
done

# A fix for a manual to avoid errors. It was not generalized as too many
# manuals have errors. Instead texi2any is called such as to continue
# even if there are errors.
echo '@macro FIXME {arg}
\\arg\\
@end macro
' > manuals/anubis/rendition.texi

# files with CRLF EOL found with
# file manuals/*/*.texi | grep CRLF

# remove CR in end of lines.
for file in manuals/orgadoc/*.texi manuals/remotecontrol/version.texi; do
  sed 's/\r$//' $file > $file.$$
  rm -f $file
  mv $file.$$ $file
done
