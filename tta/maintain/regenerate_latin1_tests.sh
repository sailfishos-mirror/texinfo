#! /bin/sh

# This script should be run when t/input_files/char_utf8_latin1_in_refs.texi
# is modified

iconv -f utf8 -t latin1 < t/input_files/char_utf8_latin1_in_refs.texi > t/input_files/char_latin1_latin1_in_refs.texi
sed -e 's/@documentencoding utf-8/@documentencoding ISO-8859-1/' t/input_files/char_latin1_latin1_in_refs.texi > t/input_files/char_latin1_latin1_in_refs.texi.$$.tmp
mv t/input_files/char_latin1_latin1_in_refs.texi.$$.tmp t/input_files/char_latin1_latin1_in_refs.texi

sed -e 's/@documentencoding ISO-8859-1/@documentencoding US-ASCII/' t/input_files/char_latin1_latin1_in_refs.texi > t/input_files/char_us_ascii_latin1_in_refs.texi
