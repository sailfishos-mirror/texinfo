#!/bin/sh
# Copyright (C) 2014-2025 Free Software Foundation, Inc.
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

run_ginfo -v search-skip-screen=Off -f search

# Go back to previous match when search-skip-screen=On
printf 'smatch\r}{Dq' >&7

timeout_test

# Check we went back to the right node.
grep '^File: search\.info, Node: Top' $ginfo_output
retval=$?

cleanup

