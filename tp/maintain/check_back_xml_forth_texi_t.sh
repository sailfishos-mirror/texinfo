#! /bin/sh

#set -e

mdir=check_back_xml_forth_texi

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
    ./texi2any.pl -c TEXINFO_OUTPUT_FORMAT=plaintexinfo --ifxml --no-ifinfo --force --error=100000 -o $mdir/backforth_plaintexi/$bdir/$bfile.texi $file
    echo "              Texinfo XML"
    ./texi2any.pl --xml --force --error=100000 -o $mdir/backforth_xmltexi/$bdir/ $file
    echo "              Back"
    ../util/txixml2texi.pl $mdir/backforth_xmltexi/$bdir/$bfile.xml > $mdir/backforth_checktexi/$bdir/$bfile.texi
  done
  ) > $mdir/backforth_logs/$bdir.log 2>&1 
done

diff -u -r t_texis/ $mdir/backforth_checktexi/ > $mdir/orig_texi.diff
diff -u -r $mdir/backforth_plaintexi/ $mdir/backforth_checktexi/ > $mdir/plain_texi.diff

# grep --color 'parser error' check_back_xml_forth_texi/backforth_logs/*

