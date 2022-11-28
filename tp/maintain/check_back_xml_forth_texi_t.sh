#! /bin/sh
#
# check_back_xml_forth_texi_t.sh: convert all the Texinfo code contained in
# the tp/t/*.t tests to Texinfo XML and convert back the XML to Texinfo using
# util/txixml2texi.  Compare with the Texinfo code generated with expansion
# of macros and @value.  The objective here is not to test the conversion to XML,
# which is better tested directly in the tp/t/*.t tests, but to check that
# the resulting XML can be parsed and contain the same information as in the
# corresponding Texinfo code.
#
# Copyright 2022 Free Software Foundation, Inc.
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

mdir=check_back_xml_forth_texi
mkdir -p $mdir

echo "generate t directory Texinfo files"
./maintain/all_tests.sh texis > $mdir/all_tests_texis.log
export XML_CATALOG_FILES=./maintain/catalog.xml
rm -rf $mdir/backforth_xmltexi $mdir/backforth_checktexi $mdir/backforth_plaintexi $mdir/backforth_logs
mkdir -p $mdir/backforth_logs
for dir in `find t_texis/ -type d` ; do
  bdir=`echo $dir | sed 's;t_texis/;;'`
  if test z"$bdir" = 'z' ; then
    # for the t_texis/ directory
    continue
  fi
  echo "doing $bdir"
  mkdir -p $mdir/backforth_plaintexi/$bdir $mdir/backforth_xmltexi/$bdir $mdir/backforth_checktexi/$bdir
  (
  for file in $dir/*.texi; do
    echo "    -> $file: plaintexinfo"
    bfile=`basename $file .texi`
    # Either the output file or the output directory can be specified.
    # The conversion to Texinfo XML below uses the directory.
    # Specifying the file allows, as a side effect, to check the consistency
    # of test name and output file name.
    # Even with specifying the directory in both cases, the file names may
    # not be exactly the same when there are specific values for @setfilename.
    # This concerns a few files only, and the files concered are more or less
    # the same when the file or the directory is specified.
    #./texi2any.pl -c TEXINFO_OUTPUT_FORMAT=plaintexinfo --ifxml --no-ifinfo --force --error=100000 -o $mdir/backforth_plaintexi/$bdir/$bfile.texi $file
    ./texi2any.pl -c TEXINFO_OUTPUT_FORMAT=plaintexinfo --ifxml --no-ifinfo --force --error=100000 -o $mdir/backforth_plaintexi/$bdir/ $file
    echo "              Texinfo XML"
    ./texi2any.pl --xml --force --error=100000 -o $mdir/backforth_xmltexi/$bdir/ $file
    echo "              Back"
    ../util/txixml2texi.pl $mdir/backforth_xmltexi/$bdir/$bfile.xml > $mdir/backforth_checktexi/$bdir/$bfile.texi
  done
  ) > $mdir/backforth_logs/$bdir.log 2>&1 
done

diff -u -r t_texis/ $mdir/backforth_checktexi/ > $mdir/orig_texi.diff
diff -u -r $mdir/backforth_plaintexi/ $mdir/backforth_checktexi/ > $mdir/plain_texi.diff

# To find XML parsing errors
# grep --color 'parser error' check_back_xml_forth_texi/backforth_logs/*

