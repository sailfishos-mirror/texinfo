#! /bin/sh
# Output Texinfo with macros and other constructs refolded
#
# Copyright 2024-2025 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


set -e

dir=refold_checks
results_dir=$dir/texinfo/
logs_dir=$dir/logs/

mkdir -p $results_dir $logs_dir

#set -x

for manual_proj_dir in manuals/*/ ; do
  proj_dir=`basename $manual_proj_dir`

  err_dir=$logs_dir/$proj_dir
  rm -rf $err_dir
  mkdir -p $err_dir
  for manual_dir in $manual_proj_dir/*/ ; do
    one_manual_found=no
    manual_dir_name=`basename $manual_dir`
    out_dir=$results_dir/$proj_dir/$manual_dir_name/
    rm -rf $out_dir
    mkdir -p $out_dir

    for file in $manual_dir/*.texi* ; do
      if grep -q -s '^ *@node \+[tT][Oo][Pp] *\(,.*\)\?$' $file; then
        one_manual_found=yes
        bfile_ext=`basename $file`
        bfile=`echo $bfile_ext | sed 's/\.texi.*$//'`

        echo "doing $file"

        err_file=${err_dir}/${bfile}.err
        ../../tta/swig/perl/parse_refold.pl $file > $out_dir/$bfile_ext 2>$err_file
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

diff -u -r manuals $results_dir > $dir/orig_refold.diff
