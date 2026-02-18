# update-version.sh - version number updating
# invoke as update-version.sh $top_srcdir

dir=$1

if test z"$dir" = z ; then
  echo "need argument"
  exit 1
fi

if ! test -d "$dir" ; then
  echo "no dir $dir"
  exit 1
fi
cd $dir

# extract version number from configure.ac
#
version=$(grep '^AC_INIT' configure.ac | sed -e 's/^[^0-9]*//' -e 's/].*//')
echo vers is $version
if test z"$version" = "z" ; then
  echo "cannot proceed"
  exit 1
fi

set -x

perl -wpli -e 's/^(AC_INIT\(\[GNU Texinfo\]).*$/$1, ['$version']\)/' tta/configure.ac
perl -wpli -e 's/^(AC_INIT\(\[GNU Texinfo\]).*$/$1, ['$version']\)/' tta/perl/CheckXS/configure.ac

perl -wpli -e 's/\(GNU Texinfo .*$/(GNU Texinfo '$version')/' util/texi2dvi
perl -wpli -e 's/\(GNU Texinfo .*$/(GNU Texinfo '$version')/' util/texi2pdf
perl -wpli -e \
  's/(Texinfo documentation viewer )[0-9a-z.]*(,)/${1}'$version'${2}/' \
  js/info.js
perl -wpli -e \
  's/(\\versionTexinfo\{).*$/${1}'$version'}/' \
  doc/refcard/txirefcard.tex

(cd tta && ./maintain/change_perl_modules_version.sh auto)

(cd texindex ; rm texindex.awk ; make)

# XS modules version in binaries is out of date and not updated automatically
make -C tta/perl/XSTexinfo clean



