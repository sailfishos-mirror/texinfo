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
$ginfo --file quoting --index-search "Colon::in, name" --all >$ginfo_output

# Test that the found index entry has the correct node name. An index entry
# split in the wrong place should not match this RE, rather be shaped something
# like "* Colon::in, name: ^?Colon::      in.     (line 0)"
grep '\* Colon::in, name:[[:blank:]]\{1,\}Colon::in, name' $ginfo_output

retval=$?

cleanup

