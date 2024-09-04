#! /bin/sh
#
# check_epubcheck_texi_t.sh: check EPUB conformity of the tp/t/*.t tests.
#
# Copyright 2022-2024 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# Originally written by Patrice Dumas.


#set -e

if [ z"$srcdir" = 'z' ]; then
  srcdir='.'
fi

LC_ALL=C; export LC_ALL
LANGUAGE=en; export LANGUAGE

mdir=check_epubcheck
mkdir -p $mdir

#set -x

echo "generate t directory Texinfo files"
one_directory=no
one_test=no
if test -n "$1"; then
  one_directory=yes
  the_directory=$1
  if test -n "$2" ; then
    one_test=yes
    the_test=$2
    if test -f ${srcdir}/t/$the_directory.t ; then
      perl -w ${srcdir}/t/$the_directory.t -c $the_test
    elif test -f ${srcdir}/t/??$the_directory.t ; then
      perl -w ${srcdir}/t/??$the_directory.t -c $the_test
    else
      perl -w ${srcdir}/t/???$the_directory.t -c $the_test
    fi
  else
    rm -rf $mdir/epubcheck_EPUB/$the_directory $mdir/epubcheck_package/$the_directory $mdir/epubcheck_check/$the_directory $mdir/epubcheck_logs/$the_directory.log
    if test -f ${srcdir}/t/$the_directory.t ; then
      perl -w ${srcdir}/t/$the_directory.t -c
    elif test -f ${srcdir}/t/??$the_directory.t ; then
      perl -w ${srcdir}/t/??$the_directory.t -c
    else
      perl -w ${srcdir}/t/???$the_directory.t -c
    fi
  fi
else
  rm -rf $mdir/epubcheck_EPUB $mdir/epubcheck_package $mdir/epubcheck_check $mdir/epubcheck_logs
  ${srcdir}/maintain/all_tests.sh texis > $mdir/all_tests_texis.log
fi

mkdir -p $mdir/epubcheck_logs
for dir in `find t_texis/ -type d` ; do
  bdir=`echo $dir | sed 's;t_texis/;;'`
  if test z"$bdir" = 'z' ; then
    # for the t_texis/ directory
    continue
  fi
  if test $one_directory = 'yes' -a z"$the_directory" != z"$bdir" ; then
    continue
  fi
  echo "doing $bdir"
  mkdir -p $mdir/epubcheck_EPUB/$bdir $mdir/epubcheck_package/$bdir $mdir/epubcheck_check/$bdir
  if test $one_test = 'yes' ; then
    mkdir -p $mdir/onetest_logs
    logfile=$mdir/onetest_logs/$the_test.log
  else
    logfile=$mdir/epubcheck_logs/$bdir.log
  fi
  (
  for file in $dir/*.texi; do
    bfile=`basename $file .texi`
    if test $one_test = 'yes' -a z"$the_test" != z"$bfile" ; then
      continue
    fi
    echo "    -> $file: EPUB"
    ${srcdir}/texi2any.pl --epub --force --error=100000 -o $mdir/epubcheck_EPUB/$bdir/$bfile.epub -c SUBDIR=$mdir/epubcheck_package/$bdir/${bfile}_epub_package -c EPUB_STRICT=1 -c EPUB_KEEP_CONTAINER_FOLDER=1 $file
    echo "              epubcheck"
    epubcheck $mdir/epubcheck_EPUB/$bdir/$bfile.epub 2>$mdir/epubcheck_check/$bdir/$bfile.out
  done
  ) > $logfile 2>&1
done

head -1000 $mdir/epubcheck_check/*/*.out > $mdir/epubcheck_all.log
