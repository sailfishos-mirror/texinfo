#! /bin/sh
#
# Copyright 2012, 2013 Free Software Foundation, Inc.
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
LANGUAGE=en; export LANGUAGE

if test "z$TEX_HTML_TESTS" != z'yes'; then
  echo "Skipping HTML TeX tests that are not easily reproducible ($0)"
  exit 77
fi

basename=tex_l2h_output_dir_non_ascii
diffs_dir=diffs
raw_output_dir=raw_out
logfile=$basename.log
stdout_file=stdout_$basename.out

[ "z$srcdir" = 'z' ] && srcdir=.

. ../../defs || exit 1

if which latex2html > /dev/null 2>&1; then
  :
else
  exit 77
fi

[ -d $diffs_dir ] || mkdir $diffs_dir
staging_dir=$diffs_dir/staging
[ -d $staging_dir ] || mkdir $staging_dir
[ -d $raw_output_dir ] || mkdir $raw_output_dir

echo "$basename" > $logfile

tmp_dir=`mktemp -d l2h_t2h_XXXXXXXX`
if test z"$tmp_dir" = 'z' ; then
  echo "$0: mktemp failed" 1>&2
  exit 1
fi

[ -d $basename ] && rm -rf $basename
raw_outdir=$raw_output_dir/$basename
[ -d $raw_outdir ] && rm -rf $raw_outdir
mkdir $basename
: > $basename/$stdout_file

# note that it is important to have -c 'COMMAND_LINE_ENCODING UTF-8' before --out
# such that --out is correctly decoded
echo "$PERL -I $srcdir/../.. -I $srcdir/../../maintain/lib/Unicode-EastAsianWidth/lib/ -I $srcdir/../../maintain/lib/libintl-perl/lib -I $srcdir/../../maintain/lib/Text-Unidecode/lib/ -w $srcdir/../../texi2any.pl --set-customization-variable 'TEXI2HTML 1' --set-customization-variable 'TEST 1' --set-customization-variable L2H_TMP=$tmp_dir --conf-dir $srcdir/../../init --set-customization-variable 'HTML_MATH l2h' --set-customization-variable L2H_FILE=$srcdir/../../t/init/l2h.init  --set-customization-variable 'L2H_CLEAN=0' --iftex -c 'COMMAND_LINE_ENCODING UTF-8' --out $basename/encodé/ $srcdir/../tex_html/tex_encodé_utf8.texi $srcdir/../tex_html/tex_complex.texi -c OUTPUT_FILE_NAME_ENCODING=UTF-8 --force >> $basename/$stdout_file 2>$basename/${basename}.2" >> $logfile
$PERL -I $srcdir/../.. -I $srcdir/../../maintain/lib/Unicode-EastAsianWidth/lib/ -I $srcdir/../../maintain/lib/libintl-perl/lib -I $srcdir/../../maintain/lib/Text-Unidecode/lib/ -w $srcdir/../../texi2any.pl --set-customization-variable 'TEXI2HTML 1' --set-customization-variable 'TEST 1' --set-customization-variable L2H_TMP=$tmp_dir --conf-dir $srcdir/../../init --set-customization-variable 'HTML_MATH l2h' --set-customization-variable L2H_FILE=$srcdir/../../t/init/l2h.init  --set-customization-variable 'L2H_CLEAN=0' --iftex -c 'COMMAND_LINE_ENCODING UTF-8' --out $basename/encodé/ $srcdir/../tex_html/tex_encodé_utf8.texi $srcdir/../tex_html/tex_complex.texi -c OUTPUT_FILE_NAME_ENCODING=UTF-8 --force >> $basename/$stdout_file 2>$basename/${basename}.2

return_code=0
ret=$?
if [ $ret != 0 ]; then
  echo "F: $basename/$basename.2"
  return_code=1
else
  outdir=$basename
  cp -pr "$outdir" "$raw_output_dir"
  destination_outdir="$outdir/encodé/"
  destination_raw_outdir="$raw_outdir/encodé/"
  rm -f $destination_outdir/*_l2h_images.log $destination_outdir/*.aux $destination_outdir/*_l2h.css \
        $destination_outdir/*_l2h_images.out $destination_outdir/*_l2h_images.pl $destination_outdir/*_l2h_images.pdf \
        $destination_outdir/*.png $destination_outdir/*.svg $outdir/$stdout_file
  sed -e 's/^texexpand.*/texexpand /' \
      -e '/is no longer supported at.*line/d' "$raw_outdir/$basename.2" > "$outdir/$basename.2"

  for file in "$destination_raw_outdir/"*.html "$destination_raw_outdir/"*-l2h_cache.pm; do
    filename=`basename "$file"`
    sed -e 's/WIDTH="\([0-9]*\)\([0-9]\)"/WIDTH="100"/' \
        -e 's/CONTENT="LaTeX2HTML.*/CONTENT="LaTeX2HTML">/' \
        -e 's/with LaTeX2HTML.*/with LaTeX2HTML/' \
        -e 's/^# LaTeX2HTML.*/# LaTeX2HTML/' \
         "$file" > "$destination_outdir/$filename"
  done
  for file in "$destination_raw_outdir/"*_l2h_labels.pl; do
    filename=`basename "$file"`
    sed -e 's/^# LaTeX2HTML.*/# LaTeX2HTML/' "$file" > "$destination_outdir/$filename"
  done

  dir=$basename
  if [ -d "$srcdir/${dir}_res" ]; then
    rm -rf $staging_dir/${dir}_res
    cp -pr "$srcdir/${dir}_res" $staging_dir
    chmod -R u+w "$staging_dir/${dir}_res"
    diff $DIFF_U_OPTION -r "$staging_dir/${dir}_res" "$outdir" 2>>$logfile > "$diffs_dir/$dir.diff"
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
