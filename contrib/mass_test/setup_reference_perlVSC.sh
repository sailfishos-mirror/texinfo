#! /bin/sh

set -e

dir=perl_HTML_refs
mkdir -p $dir

TEXINFO_XS_CONVERT=0
export TEXINFO_XS_CONVERT

#set -x

for manual_dir in manuals/*/ ; do
  one_manual_found=no
  for file in $manual_dir/*.texi* ; do
    if grep -q -s '^ *@node \+[tT][Oo][Pp] *\(,.*\)\?$' $file; then
      one_manual_found=yes
      echo "doing $file"
      bfile_ext=`basename $file`
      bfile=`echo $bfile_ext | sed 's/\.texi.*$//'`
      rm -rf $dir/$bfile/
      mkdir $dir/$bfile/
      err_file=$dir/$bfile/${bfile}-html_nodes.err
      ../../tp/texi2any.pl --force --error-limit=10000 -c TEST=1 --html -o $dir/$bfile/html_nodes/ $file 2>$err_file
      if test -s $err_file ; then :
      else rm -f $err_file
      fi
    fi
  done
  if test $one_manual_found = 'no' ; then
    echo "WARNING: $manual_dir: no manual" 1>&2
  fi
done
