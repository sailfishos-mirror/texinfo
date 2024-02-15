#! /bin/sh
# Compare output obtained using XS converter and output obtained with
# the Perl converter.
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

dir=result_check_perlVSC

one_test=no
if test -n "$1"; then
  one_test=yes
  the_test=$1
fi

if test $one_test != 'yes' ; then
  rm -rf result_check_perlVSC
fi

mkdir -p result_check_perlVSC

#set -x

for manual_proj_dir in manuals/*/ ; do
  proj_dir=`basename $manual_proj_dir`
  for manual_dir in $manual_proj_dir/*/ ; do
    manual_name=`basename $manual_dir`
    one_manual_found=no
    for file in $manual_dir/*.texi* ; do
      if grep -q -s '^ *@node \+[tT][Oo][Pp] *\(,.*\)\?$' $file; then
        one_manual_found=yes
        bfile_ext=`basename $file`
        bfile=`echo $bfile_ext | sed 's/\.texi.*$//'`

        if test $one_test = 'yes' && test "z$bfile" != "z$the_test" ; then
          continue
        fi

        diff_file=result_check_perlVSC/${proj_dir}-${manual_name}-${bfile}.diff
        diff -u -r perl_HTML_refs/$proj_dir/$bfile/ compare_C_HTML/$proj_dir/$bfile/ > $diff_file
        #echo "diffing ${proj_dir}-${manual_name}-${bfile}" 1>&2
        if test -s $diff_file ; then :
        else rm -f $diff_file
        fi
      fi
    done
    if test $one_manual_found = 'no' ; then
      echo "WARNING: $manual_dir: no manual" 1>&2
    fi
  done
done
