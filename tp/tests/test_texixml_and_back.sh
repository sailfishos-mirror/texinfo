#! /bin/sh
# Check macro expansion.  Verify that conversion to Texinfo XML and
# back to Texinfo gives the same output
# 
# Copyright 2010-2019 Free Software Foundation, Inc.
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.


LC_ALL=C; export LC_ALL

prepended_command=
#prepended_command=time

clean=no
copy=no
#mydir=

while [ z"$1" = 'z-clean' -o z"$1" = 'z-copy' ]; do
  if [ z"$1" = 'z-clean' ]; then
    clean=yes
    shift
  fi

  if [ z"$1" = 'z-copy' ]; then
    copy=yes
    shift
  fi
done


if [ "z$testdir" = 'z' ]; then
  testdir=.
fi

if [ "z$srcdir" = 'z' ]; then
  srcdir=.
fi

. $testdir/../../defs || exit 1

current=test_texixml_and_back
test_name=$current

one_test_logs_dir=$testdir/test_log

  test -d $one_test_logs_dir || mkdir $one_test_logs_dir
  logfile=$one_test_logs_dir/$test_name.log

res_dir=res_parser
out_dir=out_parser

outdir="$testdir/${out_dir}/"
results_dir="$srcdir/$testdir/${res_dir}"

    dir=$current

  resdir=$srcdir/$testdir/${res_dir}/
  test -d "$resdir" || mkdir "$resdir"
  echo "made result dir: $resdir" >>$logfile

if [ "z$clean" = 'zyes' -o "z$copy" = 'zyes' ]; then
    if [ "z$clean" = 'zyes' ]; then
        [ -d "${outdir}$dir" ] && rm -rf "${outdir}$dir"
    else
        if [ -d "${outdir}$dir" ]; then
          mkdir -p "${resdir}$dir/"
          rm -rf "${resdir}$dir/"*
          cp -r "${outdir}$dir/"* "${resdir}$dir/"
        else
          echo "$0: No dir ${outdir}$dir" >&2
          exit 1
        fi
   fi
   exit 0
fi

# from run_parser_all.sh
main_command='texi2any.pl'
command=$main_command
    for command_location_dir in "$srcdir/../" "$srcdir/../../" $testdir/../../; do
      if [ -f "$command_location_dir/$command" ]; then
        command_run="$command_location_dir/$command"
        break
      fi
    done

    test -d "${outdir}$dir" && rm -rf "${outdir}$dir"
    mkdir "${outdir}$dir"


