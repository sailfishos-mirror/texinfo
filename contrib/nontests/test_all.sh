#! /bin/sh
# Copyright 2024 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License,
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# runs all the *.test tests in the directory

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
  # if the result is 0, expr exits with a non 0 status, hence the || true
  status=`expr $status + $error` || true
done

exit $status
