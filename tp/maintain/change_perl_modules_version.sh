#! /bin/sh

if test z"$1" = "z" ; then
  echo "usage: $0 auto"
  exit 1
fi

VERS=$1
if test z"$VERS" = "zauto" ; then 
  VERS=`grep '^AC_INIT' ../configure.ac | sed -e 's/^[^0-9]*//' -e 's/].*//'`
  echo vers is $VERS
  if test z"$VERS" = "z" ; then
    echo "cannot proceed"
    exit 1
  fi
fi
 

find Texinfo/ -name '*.pm' -o -name '*.pm.in' | xargs \
  perl -pi -e 's/\$VERSION = '"'([0-9.]+[^']*)'"'/\$VERSION = '"'$VERS'"'/'
