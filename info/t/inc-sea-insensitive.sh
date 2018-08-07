#!/bin/sh
# Copyright (C) 2014, 2015, 2016, 2017, 2018 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

srcdir=${srcdir:-.}
. $srcdir/t/Init-test.inc
. $t/Init-inter.inc

run_ginfo -f intera -n 'Incremental search case-insensitive'

# Search for "match" with incremental search, adding an upper-case character
# to make the search case-sensitive.  Delete it and check the search goes back
# to being case insensitive by checking that a "Match" is included.
printf '\023matchX\010' >$PTY_TYPE
printf '\023\023\r\rDq' >$PTY_TYPE

timeout_test

# Return non-zero (test failure) if files differ
diff $GINFO_OUTPUT $t/node-target
RETVAL=$?

cleanup

