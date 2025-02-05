#! /bin/sh
# Regenerate tta/tests/input/non_ascii.tar
#
# Copyright 2024-2025 Free Software Foundation, Inc.
#

#set -x

tests_input=$1

if test z"$tests_input" = z"" ; then
    echo "$0: Bad args" 1>&2
    exit 1
fi

cd $tests_input

input=non_ascii
if test -d $input ; then true ; else
    echo "$0: Input directory $input not found in $tests_input" 1>&2
    exit 1
fi

# if tar do not handle long options, it can output error messages on
# stderr.  Redirect to /dev/null to avoid an error message that looks
# like an error happened even though it is not the case.
if tar --version 2>/dev/null | grep "GNU tar" >/dev/null \
   && tar --usage | grep [-]-sort >/dev/null
then
  # Used with GNU tar to try to get a reproducible file.
  # See https://reproducible-builds.org/docs/archives/.
  TAR_BUNDLE_DATE=2024-11-18T00:00
  TAR_BUNDLE_FLAGS="--sort=name --mtime=$TAR_BUNDLE_DATE --owner=0 --group=0 --numeric-owner --format=ustar"
else
  TAR_BUNDLE_FLAGS=
fi

#set -x

tar cf non_ascii.tar $input $TAR_BUNDLE_FLAGS

