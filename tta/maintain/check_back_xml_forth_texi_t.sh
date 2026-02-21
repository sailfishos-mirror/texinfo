#! /bin/sh
#
# check_back_xml_forth_texi_t.sh: convert all the Texinfo code contained in
# the tta/perl/t/*.t tests to Texinfo XML and convert back the XML to
# Texinfo using util/txixml2texi.  Compare with the Texinfo code generated
# with expansion of macros and @value.  The objective here is not to test
# the conversion to XML, which is better tested directly in the tta/perl/t/*.t
# tests, but to check that the resulting XML can be parsed and contain the
# same information as in the corresponding Texinfo code.
#
# Copyright 2022-2026 Free Software Foundation, Inc.
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

mdir=check_back_xml_forth_texi
mkdir -p $mdir

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
    rm -rf $mdir/backforth_xmltexi/$the_directory $mdir/backforth_checktexi/$the_directory $mdir/backforth_plaintexi/$the_directory $mdir/backforth_logs/$the_directory.log
    if test -f ${srcdir}/t/$the_directory.t ; then
      perl -w ${srcdir}/t/$the_directory.t -c
    elif test -f ${srcdir}/t/??$the_directory.t ; then
      perl -w ${srcdir}/t/??$the_directory.t -c
    else
      perl -w ${srcdir}/t/???$the_directory.t -c
    fi
  fi
else
  rm -rf $mdir/backforth_xmltexi $mdir/backforth_checktexi $mdir/backforth_plaintexi $mdir/backforth_logs
  ${srcdir}/../maintain/all_tests.sh texis > $mdir/all_tests_texis.log
fi

export XML_CATALOG_FILES=../maintain/catalog.xml
mkdir -p $mdir/backforth_logs
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
  mkdir -p $mdir/backforth_plaintexi/$bdir $mdir/backforth_xmltexi/$bdir $mdir/backforth_checktexi/$bdir $mdir/xmllint/$bdir
  if test $one_test = 'yes' ; then
    mkdir -p $mdir/onetest_logs
    logfile=$mdir/onetest_logs/$the_test.log
  else
    logfile=$mdir/backforth_logs/$bdir.log
  fi
  (
  for file in $dir/*.texi; do
    bfile=`basename $file .texi`
    if test $one_test = 'yes' -a z"$the_test" != z"$bfile" ; then
      continue
    fi
    echo "    -> $file: plaintexinfo"
    # Either the output file or the output directory can be specified.
    # The conversion to Texinfo XML below uses the directory.
    # Note that if the file name obtained with plaintexinfo does not match
    # with test name, there will be a file name mismatch for the diff in
    # plain_texi.diff.
    # Even with specifying the directory in both cases, the file names may
    # not be exactly the same when there are specific values for @setfilename.
    # This concerns a few files only, and those files are more or less
    # the same whether the file or the directory is specified.
    #./texi2any.pl -c TEXINFO_OUTPUT_FORMAT=plaintexinfo --ifxml --no-ifinfo --force --error=100000 -o $mdir/backforth_plaintexi/$bdir/$bfile.texi $file
    ${srcdir}/texi2any.pl -c TEXINFO_OUTPUT_FORMAT=plaintexinfo --ifxml --no-ifinfo --force --error=100000 -o $mdir/backforth_plaintexi/$bdir/ $file
    echo "              Texinfo XML"
    ${srcdir}/texi2any.pl --xml --force --error=100000 -o $mdir/backforth_xmltexi/$bdir/ $file
    echo "              xmllint"
    xmllint --nonet --noout --valid $mdir/backforth_xmltexi/$bdir/$bfile.xml > $mdir/xmllint/$bdir/${bfile}_lint.1 2>$mdir/xmllint/$bdir/${bfile}_lint.2
    echo "              Back"
    ${srcdir}/../../util/txixml2texi.pl $mdir/backforth_xmltexi/$bdir/$bfile.xml > $mdir/backforth_checktexi/$bdir/$bfile.texi
  done
  ) > $logfile 2>&1
done

head -1000 check_back_xml_forth_texi/xmllint/*/*.2 > $mdir/xmllint_all.log

diff -u -r t_texis/ $mdir/backforth_checktexi/ > $mdir/orig_texi.diff
diff -u -r $mdir/backforth_plaintexi/ $mdir/backforth_checktexi/ > $mdir/plain_texi.diff

# To find XML parsing errors
# grep --color 'parser error' check_back_xml_forth_texi/backforth_logs/*
# To find encoding errors
# grep --color 'Invalid bytes in character encoding' check_back_xml_forth_texi/backforth_logs/*
#
# If document encoding is US-ASCII, it is interpreted in Texinfo as being
# possibly ISO-8859-1 for backward compatibility as it was the default
# encoding for Texinfo in the past.  The XML parser, however does not accept
# ISO-8859-1 characters if the XML encoding is US-ASCII, therefore there are
# parsing errors if there are ISO-8859-1 characters in US-ASCII generated XML.

# Some differences may appear because the generated Texinfo files have a Top
# node added when there is none.  However, if there is a value or macro that
# is expanded on the Top node, the Top node will not be detected and a
# second one will be added leading to doubly defined node error.
