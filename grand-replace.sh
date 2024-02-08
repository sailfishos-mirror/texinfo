# grand-replace.sh - copyright years updating script
# invoke as grand-replace.sh $dir or grand-replace.sh --list $dir

list=false
case $1 in --list)
    list=true
    shift;;
esac

dir=$1
test -d "$dir" || exit 1
cd $dir

current_year=`date "+%Y"`
prune_dirs="./tp/maintain/lib|./tp/tests/test_scripts|./gnulib|./tp/Texinfo/XS/gnulib|./js/node_modules|./contrib|./tp/t/include"

prune="-regex ($prune_dirs) -prune"

# Don't touch this file itself
not="-not -name grand-replace.sh"

extensions='c|h|sh|pm|pl|texi|xs'
named_files='configure.ac|Makefile.am|README|README-hacking|TODO'

ext_pattern=".*\.($extensions)"
named_pattern=".*\/($named_files)"

if $list ; then
    find . -regextype posix-egrep $prune -o $not -type f \
      \( -regex "$ext_pattern" -o -regex "$named_pattern" \) \
      -print
else
    find . -regextype posix-egrep $prune -o $not -type f \
      \( -regex "$ext_pattern" -o -regex "$named_pattern" \) \
      -execdir perl -wpli -e \
        's/-20\d\d Free/-'$current_year' Free/;
         s/(Copyright 20\d\d) Free/$1-'$current_year' Free/;' \
      '{}' ';'
fi

