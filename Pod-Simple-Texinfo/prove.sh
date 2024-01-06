#! /bin/sh -x
# Copyright 2010-2023 Free Software Foundation, Inc.
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.

#set -x

if test z"$srcdir" = 'z'; then
  srcdir='.'
fi

prove      "$srcdir"/t/*.t
