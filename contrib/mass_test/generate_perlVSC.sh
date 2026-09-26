#! /bin/sh
# Output with texi2any.pl
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

format=$1

test -z $format && exit 1

shift

input_dir=$1

test -z $input_dir && exit 1

dir=${input_dir}_${format}

shift

one_test=no
if test -n "$1"; then
  if test "z$1" != zno ; then
    one_test=yes
    the_test=$1
  fi
  shift
fi

mkdir -p $dir

#set -x

# prepended to path to go back from the directory where the command tested is
# called to the directory the current script is called from.
to_current=../../../../

format_output_option=
if test $format = html ; then
  format_output_option='-o.'
fi

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

        echo "doing ${format} $file"
        mkdir -p $dir/$proj_dir

        out_dir=$dir/$proj_dir/$bfile
        rm -rf $out_dir
        mkdir $out_dir
        mkdir $out_dir/${format}_nodes/
        err_file_name=${bfile}-${format}_nodes.err
        err_file=${out_dir}/${err_file_name}
        file_output_option=
        if test $format = plaintext ; then
          file_output_option="-o ${bfile}.txt"
        fi
        # the -I directory is for gcc, could add more
        cmd="(cd ${out_dir}/${format}_nodes/ && ${to_current}../../tta/perl/texi2any.pl -I ${to_current}manuals/$proj_dir/include/ --force --error-limit=10000 -c TEST=1 --${format} ${format_output_option} ${file_output_option} ${to_current}$file 2>../$err_file_name)"
        if test $one_test = 'yes' ; then
          echo "$cmd"
        fi
        eval $cmd
        #../../tta/perl/texi2any.pl -I manuals/$proj_dir/include/ --force --error-limit=10000 -c TEST=1 --${format} -o ${out_dir}/${format}_nodes/ $file 2>$err_file
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
