#! /bin/sh

# if set -e is used, diff call should be protected
#set -e

dir=compare_C_HTML
mkdir -p $dir

rm -rf result_check_perlVSC
mkdir result_check_perlVSC

TEXINFO_XS_CONVERT=1
export TEXINFO_XS_CONVERT

#set -x

for manual_dir in manuals/*/ ; do
  manual_name=`basename $manual_dir`
  one_manual_found=no
  for file in $manual_dir/*.texi* ; do
    if grep -q -s '^ *@node \+[tT][Oo][Pp] *\(,.*\)\?$' $file; then
      one_manual_found=yes
      echo "doing $file"
      bfile_ext=`basename $file`
      bfile=`echo $bfile_ext | sed 's/\.texi.*$//'`
      rm -rf $dir/$bfile/
      mkdir $dir/$bfile/
      err_file=$dir/$bfile/${bfile}-html_nodes.err
      ../../tp/texi2any.pl --force --error-limit=10000 -c TEST=1 --html -o $dir/$bfile/html_nodes/ $file 2>$err_file
      if test -s $err_file ; then :
      else rm -f $err_file
      fi
      
      diff_file=result_check_perlVSC/${manual_name}-${bfile}.diff
      diff -u -r perl_HTML_refs/$bfile/ $dir/$bfile/ > $diff_file
      if test -s $diff_file ; then
        :
      else
        rm -f $diff_file
      fi
    fi
  done
  if test $one_manual_found = 'no' ; then
    echo "WARNING: $manual_dir: no manual" 1>&2
  fi
done
