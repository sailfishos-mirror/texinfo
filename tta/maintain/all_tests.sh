#! /bin/sh
# Helper script for tests.
#
# Copyright 2011-2025 Free Software Foundation, Inc.
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

if [ z"$srcdir" = 'z' ]; then
  srcdir='.'
fi

command=$1
if [ $# -gt 0 ]; then 
 shift
 test_name=$1
fi

# for PERL and DIFF_OPTIONS
. ../defs || exit 1

cmds_list="clean|generate|output|diff|texis"

if [ z"$command" = 'z' ]; then
  echo "$0: need an arg, one of: $cmds_list" >&2
  exit 1
fi

if [ "$command" = 'clean' ]; then
  rm -f t/results/*/*.pl.new
  rm -rf t/results/*/*/out_*/
elif [ "$command" = 'diff' ]; then
  if [ z"$test_name" = 'z' ]; then
    for result in `cd $srcdir && echo t/results/*/*.pl`; do
      diff $DIFF_OPTIONS -U 3 ${srcdir}/$result $result.new
    done
    for result in `cd $srcdir && echo t/results/*/*/res*/`; do
      out=`echo $result | sed 's;res\([^/]*/\)$;out\1;'`
      diff $DIFF_OPTIONS -r ${srcdir}/$result $out
    done
  else
    for result in `cd $srcdir && echo t/results/$test_name/*.pl`; do
      diff $DIFF_OPTIONS ${srcdir}/$result $result.new
    done
    for result in `cd $srcdir && echo t/results/$test_name/*/res*/`; do
      out=`echo $result | sed 's;res\([^/]*/\)$;out\1;'`
      diff $DIFF_OPTIONS -r ${srcdir}/$result $out
    done
  fi 
else
  # commands that require PERL

  if [ "$command" = 'generate' ]; then
    for file in ${srcdir}/t/*.t; do
      set -e
      echo "$file" >&2
      $PERL -w $file -g
    done
    for fname in no_structure_test same_parser_multiple_files; do
      file=${srcdir}/t/z_misc/${fname}.t
      echo "$file" >&2
      $PERL -w $file -g
    done
  elif [ "$command" = 'output' ]; then
    for file in ${srcdir}/t/*.t; do
      $PERL -w $file -o
    done
  elif [ "$command" = 'texis' ]; then
    for file in ${srcdir}/t/*.t; do
      echo "$file"
      $PERL -w $file -c
    done
  else
    echo "$0: Unknown command ($cmds_list)" >&2
    exit 1
  fi
fi
