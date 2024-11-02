#! /bin/sh

set -e
#set -x

if test "z$srcdir" = z ; then
  srcdir=.
fi

mkdir -p logs

status=0
for test_file in $srcdir/*.test; do
  bfile=`echo "$test_file" | sed -e 's,.*[\\/],,;s/\.test$//'`
  if $test_file > logs/${bfile}.log 2>&1 ; then
    error=0
  else
    error=1
  fi
  echo "$bfile: $error"
  # if the result is 0, expr exists with a non 0 status, hence the || true
  status=`expr $status + $error` || true
done

exit $status
