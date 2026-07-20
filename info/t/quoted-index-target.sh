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

# Perform an index search for a quoted target
run_ginfo --file quoting --index-search "Colon::in, name"

printf Dq >&7 &
timeout_test

# Check that we went to the right node.
cat $ginfo_output | tr -d '\177' | grep 'Node: Colon::in, name'

retval=$?

cleanup

