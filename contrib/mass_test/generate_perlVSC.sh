#! /bin/sh
# Output HTML with texi2any.pl
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

dir=$1

test -z $dir && exit 1

shift

one_test=no
if test -n "$1"; then
  one_test=yes
  the_test=$1
fi

mkdir -p $dir

#set -x

for manual_proj_dir in manuals/*/ ; do
  proj_dir=`basename $manual_proj_dir`
  test $one_test != 'yes' && rm -rf $dir/$proj_dir
  for manual_dir in $manual_proj_dir/*/ ; do
    one_manual_found=no
    for file in $manual_dir/*.texi* ; do
      if grep -q -s '^ *@node \+[tT][Oo][Pp] *\(,.*\)\?$' $file; then
        one_manual_found=yes
        bfile_ext=`basename $file`
        bfile=`echo $bfile_ext | sed 's/\.texi.*$//'`

        if test $one_test = 'yes' && test "z$bfile" != "z$the_test" ; then
          continue
        fi

        echo "doing $file"
        mkdir -p $dir/$proj_dir

        out_dir=$dir/$proj_dir/$bfile
        rm -rf $out_dir
        mkdir $out_dir
        err_file=${out_dir}/${bfile}-html_nodes.err
        # the -I directory is for gcc, could add more
        if test $one_test = 'yes' ; then
          echo "../../tta/perl/texi2any.pl -I manuals/$proj_dir/include/ --force --error-limit=10000 -c TEST=1 --html -o ${out_dir}/html_nodes/ $file"
        fi
        ../../tta/perl/texi2any.pl -I manuals/$proj_dir/include/ --force --error-limit=10000 -c TEST=1 --html -o ${out_dir}/html_nodes/ $file 2>$err_file
        if test -s $err_file ; then :
        else rm -f $err_file
        fi
      fi
    done
    if test $one_manual_found = 'no' ; then
      echo "WARNING: $manual_dir: no manual" 1>&2
    fi
  done
done
