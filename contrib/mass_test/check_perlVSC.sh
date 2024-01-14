#! /bin/sh
# Setup HTML output using XS converter and compare with output
# obtained with the Perl converter.
#
# Copyright 2024 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


# if set -e is used, diff call should be protected
#set -e

dir=compare_C_HTML
mkdir -p $dir

one_test=no
if test -n "$1"; then
  one_test=yes
  the_test=$1
else
  rm -rf result_check_perlVSC
fi

mkdir -p result_check_perlVSC

TEXINFO_XS_CONVERT=1
export TEXINFO_XS_CONVERT

#set -x

for manual_dir in manuals/*/ ; do
  manual_name=`basename $manual_dir`
  one_manual_found=no
  for file in $manual_dir/*.texi* ; do
    if grep -q -s '^ *@node \+[tT][Oo][Pp] *\(,.*\)\?$' $file; then
      one_manual_found=yes
      bfile_ext=`basename $file`
      bfile=`echo $bfile_ext | sed 's/\.texi.*$//'`
      # if we're only doing one test, skip it unless this is the one.
      if test $one_test = 'yes' && test "z$bfile" != "z$the_test" ; then
        continue
      fi

      echo "doing $file"
      rm -rf $dir/$bfile/
      mkdir $dir/$bfile/
      err_file=$dir/$bfile/${bfile}-html_nodes.err
      ../../tp/texi2any.pl --force --error-limit=10000 -c TEST=1 --html -o $dir/$bfile/html_nodes/ $file 2>$err_file
      if test -s $err_file ; then :
      else rm -f $err_file
      fi
      
      diff_file=result_check_perlVSC/${manual_name}-${bfile}.diff
      diff -u -r perl_HTML_refs/$bfile/ $dir/$bfile/ > $diff_file
      if test -s $diff_file ; then :
      else rm -f $diff_file
      fi
    fi
  done
  if test $one_manual_found = 'no' ; then
    echo "WARNING: $manual_dir: no manual" 1>&2
  fi
done
