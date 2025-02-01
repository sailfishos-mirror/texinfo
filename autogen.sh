#!/bin/sh
# Created 2003-08-29, Karl Berry.  Public domain.

if test "x$1" = x-n; then
  chicken=true
  echo "Ok, playing chicken; not actually running any commands."
else
  chicken=
fi

echo "Preparing Texinfo development infrastructure:"

# Generates tp/Makefile.tres (included by tp/Makefile.am).
cmd="./tp/maintain/regenerate_file_lists.pl"
echo "  $cmd"
$chicken eval $cmd || exit 1

# Generates tp/Makefile.docstr (included by tp/Makefile.am).
cmd="(cd tp && ./maintain/regenerate_docstr.sh Makefile.docstr)"
echo "  $cmd"
$chicken eval $cmd || exit 1

# Generates tp/tests/Makefile.onetst (included by tp/tests/Makefile.am).
cmd="(cd tp/tests && ../maintain/regenerate_cmd_tests.sh Makefile.onetst . -base 'formatting encoded nested_formats customization coverage layout' -tex_html 'tex_html' -other 'other info_tex')"
echo "  $cmd"
$chicken eval $cmd || exit 1

# Same rule in tp/tests/Makefile.am
cmd="tp/maintain/regenerate_non_ascii_tar_file.sh tp/tests/input"
echo "  $cmd"
$chicken eval $cmd || exit 1

# missing texi2any_internals.texi stops automake.  Set up a fake
# texi2any_internals.texi with a file timestamp set in the past,
# if texi2any_internals.texi is not present
if test '!' -s doc/tp_api/texi2any_internals.texi ; then
  cmd="echo '@setfilename texi2any_internals.info' > doc/tp_api/texi2any_internals.texi; touch -t 200001010000 doc/tp_api/texi2any_internals.texi"
  echo "  $cmd"
  $chicken eval $cmd || exit 1
fi

cmd="AUTOPOINT=true autoreconf --verbose --install --no-recursive"
echo "  $cmd"
$chicken eval $cmd || exit 1

: ${LIBTOOLIZE=libtoolize}
cmd="(cd tp/Texinfo/TestXS && ${LIBTOOLIZE} \
 && autoreconf --verbose --install)"
echo "  $cmd"
$chicken eval $cmd || exit 1

cmd="(cd tp && ${LIBTOOLIZE} \
 && AUTOPOINT=true autoreconf --verbose --install)"
echo "  $cmd"
$chicken eval $cmd || exit 1
# We set AUTOPOINT=true to avoid rewriting files with older versions.

echo
echo "Now run configure with your desired options, for instance:"
echo "  ./configure CFLAGS='-g'"
