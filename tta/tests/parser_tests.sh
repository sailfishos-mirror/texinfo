#! /bin/sh
# Run individual tests.
#
# Copyright 2010-2026 Free Software Foundation, Inc.
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.

if [ z"$srcdir" = 'z' ]; then
  srcdir=.
fi

command=run_parser_all.sh

arg=
while [ z"$1" = 'z-clean' -o z"$1" = 'z-copy' -o z"$1" = 'z-native' ]; do
  arg="$arg $1"
  shift
done

failed=0
while [ z"$1" != 'z' ]; do
  dir=$1
  shift
  [ -d "$dir" ] || mkdir $dir
  "$srcdir"/"$command" -dir $dir $arg
  result=$?
  if [ "z$result" = 'z0' ]; then
    result_text=ok
  else
    result_text=fail
  fi
  echo "$dir: $result_text"
  [ $result != 0 ] && failed=1
done

exit $failed
