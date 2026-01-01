# grand-replace.sh - copyright years updating script
# invoke as grand-replace.sh $dir or grand-replace.sh --list $dir or
# grand-replace.sh --missed $dir

# list files that have possibly been missed by this script
find_missed () {
  YY=`date +%y`
  find . \
    -name autom4te.cache -prune -o \
    -name .git -prune -o \
    -wholename ./tta/maintain/lib -prune -o \
    -name test -prune -o \
    -name "test-infodir" -prune -o \
    -name "gnulib" -prune -o \
    -name "po" -prune -o \
    -name "po_document" -prune -o \
    -name "build-aux" -prune -o \
    -name "contrib" -prune -o \
    -wholename "./js/node_modules" -prune -o \
    -wholename "./tta/perl/t/results" -prune -o \
    -wholename "./tta/tests/*/{res,out}_*" -prune -o \
    -type f \
    \( -name '*' \) \
    -not -name 'Makefile.in' \
    -not -name Makefile \
    -not -name "*.m4" \
    -not -name "*.sh.log" \
    -not -name "libtool" \
    -not -name configure \
    -not -name "config.*" \
    -not -name "*.info" \
    -not -name "*.info-?" \
    -not -wholename "./doc/txi-??.tex" \
    -not -wholename "./doc/texinfo-ja.tex" \
    -not -wholename "./doc/texinfo-zh.tex" \
    -not -wholename "./doc/short-sample-*.texi" \
    -not -wholename "./doc/refcard/txirefcard.tex" \
    -not -wholename "./doc/texi2oldapi.texi" \
    -not -wholename "./texindex/ti.texi" \
    -not -name "ChangeLog.*" \
    -not -name "COPYING" \
    -not -name "fdl.texi" \
    -not -wholename "./tta/perl/texi2any" \
    -not -wholename "./util/htmlxref.d/Texinfo_GNU.cnf" \
    -not -wholename "./util/htmlxref.d/Texinfo_nonGNU.cnf" \
    -not -wholename "./Pod-Simple-Texinfo/pod2texi" \
    -not -wholename "./install-info/tests/defs" \
    -not -wholename "./INSTALL.generic" \
    -not -name "*~" \
    -exec perl -wnl -e '/20\d\d Free/
                        && !/20'$YY' Free/
                        && print "$ARGV:$_"' '{}' \;
}

change_files () {
  if $list ; then
      find $find_dir -regextype posix-egrep $prune -o $not -type f \
        \( -regex "$ext_pattern" -o -regex "$named_pattern" \) \
        -print
  else
      find $find_dir -regextype posix-egrep $prune -o $not -type f \
        \( -regex "$ext_pattern" -o -regex "$named_pattern" \) \
        -execdir perl -wpli -e \
          's/-20\d\d Free/-'$current_year' Free/;
           s/(Copyright 20\d\d) Free/$1-'$current_year' Free/;' \
        '{}' ';'
  fi
}

list=false
missed=false
case $1 in --list)
    list=true
    shift;;
    --missed)
    missed=true
    shift;;
esac

dir=$1
if ! test -d "$dir" ; then
  echo "no argument" >&2
  exit 1
fi

cd $dir

if $missed ; then find_missed ; exit 0 ; fi

current_year=`date "+%Y"`
prune_dirs="./tta/maintain/lib|./tta/tests/test_scripts|./gnulib|./tta/gnulib|./js/node_modules|./contrib|./tta/t/include"

prune="-regex ($prune_dirs) -prune"

# Don't touch this file itself
not="-not -name grand-replace.sh"

find_dir=.
extensions='c|h|sh|pm|pl|texi|xs'
named_files='configure.ac|Makefile.am|README|README-hacking|TODO'

ext_pattern=".*\.($extensions)"
named_pattern=".*\/($named_files)"

change_files

find_dir=.
ext_pattern=""
named_pattern='./NEWS|./INSTALL|./AUTHORS|./js/info.js|./pre-inst-env'

change_files

find_dir=contrib/nontests
prune_dirs=""
ext_pattern=".*\.(sh|test)"
named_files='README|txitextest'
named_pattern=".*\/($named_files)"

change_files

find_dir=contrib/mass_test
prune_dirs=""
ext_pattern=".*\.(sh)"

change_files

find_dir=util
ext_pattern=""
named_pattern=".*"
# update these manually for now
not='-not -name htmlxref.cnf -not -name texi2dvi -not -name texi2pdf'

change_files

find_dir=tta/perl/Texinfo
extensions='txt|awk'
ext_pattern=".*\.($extensions)"
named_files=""
named_pattern=".*\/($named_files)"

change_files

find_dir=man
extensions='1|5|h2m'
named_files=''

ext_pattern=".*\.($extensions)"
named_pattern=".*\/($named_files)"

change_files

exit 0

