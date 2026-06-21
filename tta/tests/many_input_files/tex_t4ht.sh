#! /bin/sh

LC_ALL=C; export LC_ALL

if test "z$TEX_HTML_TESTS" != z'yes'; then
  echo "Skipping HTML TeX tests that are not easily reproducible"
  exit 77
fi

basename=tex_t4ht
diffs_dir=diffs
logfile=$basename.log
stdout_file=stdout_$basename.out
default_command='perl/texi2any.pl'
tested_command=$default_command
prepended_command=
test_level=1

if [ z"$1" = 'z-native' ]; then
  tested_command='C/ctexi2any'
  shift
fi

[ "z$srcdir" = 'z' ] && srcdir=.

. ../../defs || exit 1

if which httexi > /dev/null 2>&1; then
  :
else
  exit 77
fi

if test z"$TESTS_MAIN_COMMAND" != z ; then
  tested_command=$TESTS_MAIN_COMMAND
fi

language_type=unknown
if test $tested_command = 'perl/texi2any.pl' ; then
  prepended_command="$prepended_command $PERL -w"
  language_type='perl'
elif test $tested_command = 'C/ctexi2any' ; then
  language_type='native'
fi

dir_suffix=$language_type

if test z"$DEFAULT_TEST_LEVEL" = z1 -o z"$DEFAULT_TEST_LEVEL" = z2 ; then
  test_level=$DEFAULT_TEST_LEVEL
fi

outdir=${basename}_${dir_suffix}
raw_out_dir=raw_out_${dir_suffix}

command_run=
for command_location_dir in "$srcdir/../../" ../../ ; do
  if test -f "${command_location_dir}${tested_command}" ; then
    command_run="${command_location_dir}${tested_command}"
    break
  fi
done

if test -z "$command_run"; then
  echo "$0: Command $tested_command not found" >&2
  exit 1
fi

[ -d $diffs_dir ] || mkdir $diffs_dir
staging_dir=$diffs_dir/staging
[ -d $staging_dir ] || mkdir $staging_dir
[ -d $raw_out_dir ] || mkdir $raw_out_dir

echo "$basename" > $logfile

[ -d $outdir ] && rm -rf $outdir
raw_outdir=$raw_out_dir/${basename}_${dir_suffix}
[ -d $raw_outdir ] && rm -rf $raw_outdir
mkdir $outdir
: > $outdir/$stdout_file

cmd="$prepended_command $command_run --set-customization-variable 'TEXI2HTML 1' --set-customization-variable TEST=$test_level --conf-dir $srcdir/../../perl/ext --init-file tex4ht.pm --iftex --out $outdir/ $srcdir/../tex_html/tex_complex.texi $srcdir/../tex_html/tex.texi --force >> $outdir/$stdout_file 2>$outdir/${basename}.2"
echo "$cmd" >> $logfile
eval $cmd

return_code=0
ret=$?
if [ $ret != 0 ]; then
  echo "F: $outdir/$basename.2"
  return_code=1
else
  cp -pr $outdir $raw_out_dir
  rm -f $outdir/*_tex4ht_*.log \
      $outdir/*_tex4ht_*.idv $outdir/*_tex4ht_*.dvi \
      $outdir/*_tex4ht_tex.html $outdir/*.png $outdir/$stdout_file
  # no non-ASCII output file names
  #find $outdir | $PERL $srcdir/../escape_file_names.pl

  dir=${basename}
  if [ -d $srcdir/${dir}_res ]; then
    rm -rf $staging_dir/${dir}_res
    cp -pr "$srcdir/${dir}_res" $staging_dir
    chmod -R u+w "$staging_dir/${dir}_res"
    diff $DIFF_OPTIONS -r "$staging_dir/${dir}_res" "${outdir}" 2>>$logfile > "$diffs_dir/$dir.diff"
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

exit $return_code
