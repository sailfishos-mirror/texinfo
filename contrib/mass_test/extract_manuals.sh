#! /bin/sh
# Copy and extract Texinfo manuals
#
# Copyright 2024-2026 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set -e

rm -rf normalized
mkdir -p normalized

# disambiguate manuals
for dir in download/www.gnu.org/software/plotutils/manual/*/; do
  dir_name=`basename $dir`
  mkdir -p normalized/plotutils_${dir_name}
  for file in download/www.gnu.org/software/plotutils/manual/$dir_name/*.texi.tar.gz ; do
    cp -p $file normalized/plotutils_${dir_name}/
  done
done

mkdir -p manuals

extract_manual() {
  manual=$1
  mdir=$2
  bfile=`basename $manual .texi.tar.gz`
  mdir_bfile="$mdir/$bfile"
  echo "$mdir_bfile"
  rm -rf manuals/$mdir_bfile
  mkdir -p manuals/$mdir_bfile
  cp -p $manual manuals/$mdir/$bfile/
  (
    cd manuals/$mdir/$bfile/
    tar xzf ${bfile}.texi.tar.gz
    rm -f ${bfile}.texi.tar.gz
  )
}

for manual in download/www.gnu.org/software/*/manual/*.texi.tar.gz download/www.gnu.org/software/*/manual/*/*.texi.tar.gz ; do
  mdir=`echo $manual | sed 's;download/www.gnu.org/software/\([^/]\+\)/.*;\1;'`
  extract_manual $manual $mdir
done

mv manuals/rottlog//rottlog/tmp/rottlog-*/doc/*.texi manuals/rottlog//rottlog
rm -rf manuals/rottlog//rottlog/tmp/

rm -rf manuals/plotutils
# all the manuals are in each of the texinfo sub-manuals
rm -rf manuals/texinfo/info-stnd manuals/texinfo/texi2any_*
# already in auctex
rm -rf manuals/auctex/preview-latex

for manual in download/www.gnu.org/software/emacs/manual/texi/*.texi.tar.gz download/www.gnu.org/software/guile-gnome/docs/*/*.texi.tar.gz ; do
  mdir=`echo $manual | sed 's;download/www.gnu.org/software/\([^/]\+\)/.*;\1;'`
  extract_manual $manual $mdir
  bfile=`basename $manual .texi.tar.gz`
  mv manuals/$mdir/$bfile/*-*/* manuals/$mdir/$bfile/
  rmdir manuals/$mdir/$bfile/*-*/
done

for manual in download/www.gnu.org/prep/*/*.texi.tar.gz ; do
  mdir=`echo $manual | sed 's;download/www.gnu.org/prep/\([^/]\+\)/.*;\1;'`
  extract_manual $manual $mdir
done

for dir in normalized/*/; do
  dir_name=`basename $dir`
  for manual in $dir/*.texi.tar.gz ; do
    extract_manual $manual $dir_name
  done
done

rm -rf tmp manuals/gcc
mkdir tmp
(
cd tmp
tar xzf ../download/gcc.gnu.org/onlinedocs/gcc-*/docs-sources.tar.gz
# special case
mv gcc/gcc/jit/docs/_build/texinfo/libgccjit.texi gcc/gcc/jit/
find gcc -name *.texi | while read manual ; do
  dirname=`dirname $manual`
  bfile=`basename $dirname`
  echo "gcc/$bfile $manual"
  mkdir -p ../manuals/gcc/$bfile/
  cp -p $manual ../manuals/gcc/$bfile/
done
)
rm -rf tmp

mkdir -p manuals/glibc/libc/
echo glibc/libc
cp -p download/sourceware.org/glibc/manual/latest/texi/libc-texi.tar.gz manuals/glibc/libc/
(
  cd manuals/glibc/libc/
  tar xzf *-texi.tar.gz
  rm -f *-texi.tar.gz
)

mkdir -p manuals/mailutils/mailutils
echo mailutils/mailutils
cp -p download/mailutils.org/manual/mailutils.texi.tar.gz manuals/mailutils/mailutils/
(
  cd manuals/mailutils/mailutils/
  tar xzf *.texi.tar.gz
  rm -f *.texi.tar.gz
)

rm -rf manuals/groff/groff
mkdir -p manuals/groff/groff
echo groff/groff
cp -p download/www.gnu.org/software/groff/manual/groff.texi.gz manuals/groff/groff/
(
  cd manuals/groff/groff
  gunzip groff.texi.gz
)

rm -rf manuals/gnubg/gnubg
mkdir -p manuals/gnubg/gnubg
echo gnubg/gnubg
cp -p download/www.gnu.org/software/gnubg/manual/gnubg.texi.gz manuals/gnubg/gnubg
(
  cd manuals/gnubg/gnubg
  gunzip gnubg.texi.gz
)

for texi_file_project in c-graph epsilon ; do
  rm -rf manuals/${texi_file_project}/${texi_file_project}
  mkdir -p manuals/${texi_file_project}/${texi_file_project}
  echo "${texi_file_project}/${texi_file_project}"
  cp -p download/www.gnu.org/software/${texi_file_project}/manual/${texi_file_project}.texi manuals/${texi_file_project}/${texi_file_project}/
done

rm -rf manuals/bc/bc
mkdir -p manuals/bc/bc
echo bc/bc
cp -p download/www.gnu.org/software/bc/manual/texi/bc.texi manuals/bc/bc/

for dir in download/www.gnu.org/software/*/manual/ ; do
  one_manual_found=no
  for file in $dir/*.texi.tar.gz; do
    if test -e "$file" ; then
      one_manual_found=yes
      break
    fi
  done
  if test $one_manual_found = 'no' ; then
    for file in $dir/*/*.texi.tar.gz; do
      if test -e "$file" ; then
        one_manual_found=yes
        break
      fi
    done
    if test $one_manual_found = 'no' ; then
      for file in $dir/*.texi $dir/*/*.texi $dir/*.texi.gz ; do
        if test -e "$file" ; then
          one_manual_found=yes
          echo "$dir: special manual" 1>&2
          break
        fi
      done
      if test $one_manual_found = 'no' ; then
        echo "REMARK: $dir: no manual" 1>&2
      fi
    fi
  fi
done

# A fix for a manual to avoid errors. It was not generalized as many
# manuals have errors. Instead texi2any is called such as to continue
# even if there are errors.
echo '@macro FIXME {arg}
\\arg\\
@end macro
' > manuals/anubis/anubis/rendition.texi

# files with CRLF EOL found with
# file manuals/*/*/*.texi* | grep CRLF

# remove CR in end of lines.
for file in manuals/orgadoc/*/*.texi manuals/remotecontrol/*/version.texi manuals/jtw/jtw/abc.texinfo; do
  sed 's/\r$//' $file > $file.$$
  rm -f $file
  mv $file.$$ $file
done

# add documentencoding when needed
for file in manuals/parted/parted/parted-pt_BR.texi manuals/epsilon/epsilon/epsilon.texi ; do
  sed '/^@setfilename/a @documentencoding ISO-8859-1' $file > $file.$$
  rm -f $file
  mv $file.$$ $file
done

