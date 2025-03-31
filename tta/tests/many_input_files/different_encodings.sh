#! /bin/sh
#
# Copyright 2022-2025 Free Software Foundation, Inc.
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

LC_ALL=C; export LC_ALL

basename=different_encodings
diffs_dir=diffs
raw_output_dir=raw_out
logfile=$basename.log
stdout_file=stdout_$basename.out
main_command='perl/texi2any.pl'
prepended_command=

[ "z$srcdir" = 'z' ] && srcdir=.

. ../../defs || exit 1

if test z"$TESTS_MAIN_COMMAND" = z ; then
  TESTS_MAIN_COMMAND=$main_command
fi

if test $TESTS_MAIN_COMMAND = 'perl/texi2any.pl' ; then
  prepended_command="$prepended_command $PERL -w"
fi

command_run=
for command_location_dir in "$srcdir/../../" ../../ ; do
  if test -f "${command_location_dir}${TESTS_MAIN_COMMAND}" ; then
    command_run="${command_location_dir}${TESTS_MAIN_COMMAND}"
    break
  fi
done

if test -z "$command_run"; then
  echo "$0: Command $TESTS_MAIN_COMMAND not found" >&2
  exit 1
fi

if test "z$PERL_UNICODE_COLLATE_OK" = 'zno' ; then
  echo "Skipping tests that require compatible unicode collation"
  exit 77
fi

[ -d $diffs_dir ] || mkdir $diffs_dir
staging_dir=$diffs_dir/staging
[ -d $staging_dir ] || mkdir $staging_dir
[ -d $raw_output_dir ] || mkdir $raw_output_dir

echo "$basename" > $logfile

[ -d $basename ] && rm -rf $basename
raw_outdir=$raw_output_dir/$basename
[ -d $raw_outdir ] && rm -rf $raw_outdir
mkdir $basename
: > $basename/$stdout_file

cmd="$prepended_command $command_run --html --no-split --set-customization-variable 'TEST 1' --enable-encoding -c OUTPUT_CHARACTERS=1 --out $basename/ $srcdir/../../perl/t/input_files/char_latin1_latin1_in_refs.texi $srcdir/../../perl/t/input_files/char_utf8_latin1_in_refs.texi --force >> $basename/$stdout_file 2>$basename/${basename}.2"
echo "$cmd" >> $logfile
eval $cmd

return_code=0
ret=$?
if [ $ret != 0 ]; then
  echo "F: $basename/$basename.2"
  return_code=1
else
  outdir=$basename
  cp -pr $outdir $raw_output_dir
  # no non-ASCII output file names
  #find $outdir | $PERL $srcdir/../escape_file_names.pl
    
  dir=$basename
  if [ -d "$srcdir/${dir}_res" ]; then
    rm -rf $staging_dir/${dir}_res
    cp -pr "$srcdir/${dir}_res" $staging_dir
    chmod -R u+w "$staging_dir/${dir}_res"
    diff $DIFF_OPTIONS -r "$staging_dir/${dir}_res" "$outdir" 2>>$logfile > "$diffs_dir/$dir.diff"
    dif_ret=$?
    if [ $dif_ret != 0 ]; then
      echo "D: $diffs_dir/$dir.diff"
      return_code=1
    else
      rm "$diffs_dir/$dir.diff"
    fi
  else
    echo "no res: ${dir}_res"
  fi
fi

rm -rf $tmp_dir

exit $return_code
