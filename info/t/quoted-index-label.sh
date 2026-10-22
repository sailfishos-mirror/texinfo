#!/bin/sh
# Copyright (C) 2014-2026 Free Software Foundation, Inc.
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
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

srcdir=${srcdir:-.}
. $srcdir/t/Init-test.inc

# Perform an index search where the text of the index entry is given as
# a quoted label in the index entry menu (although texi2any 7.3 does not
# produce such index menus).
run_ginfo --file quoted-index-label.info

printf 'iquoted : label\r' >&7 &
printf Dq >&7 &
timeout_test

# Check that we went to the right node.
cat $ginfo_output | grep 'Node: Target'

retval=$?

cleanup

