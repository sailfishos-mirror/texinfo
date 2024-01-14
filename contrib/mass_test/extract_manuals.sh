#! /bin/sh

set -e

mkdir -p manuals

for manual in www.gnu.org/software/*/manual/*.texi.tar.gz; do
  bfile=`basename $manual .texi.tar.gz`
  echo "$bfile"
  rm -rf manuals/$bfile
  mkdir manuals/$bfile
  cp -p $manual manuals/$bfile/
  (
    cd manuals/$bfile/
    tar xzf ${bfile}.texi.tar.gz
    rm -f ${bfile}.texi.tar.gz
  )
done

for dir in www.gnu.org/software/*/manual/ ; do
  one_manual_found=no
  for file in $dir/*.texi.tar.gz; do
    if test -e "$file" ; then
      one_manual_found=yes
      break
    fi
  done
  if test $one_manual_found = 'no' ; then
    echo "REMARK: $dir: no manual" 1>&2
  fi
done

# there culd be many other fix of manuals, but it is of doubtful
# use and too time consuming to set up, instead it is better to
# call texi2any with force.
echo '@macro FIXME {arg}
\\arg\\
@end macro
' > manuals/anubis/rendition.texi

# files with does EOL found with
# file manuals/*/*.texi | grep CRLF

# remove dos end of lines.  Note that -i is not standard options of sed
for file in manuals/orgadoc/*.texi manuals/remotecontrol/version.texi; do
  sed -i -e 's/\r$//' $file
done
