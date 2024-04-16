#! /bin/sh

# From the Pod-Simple-Texinfo, run
#  ./manual_tests/test_ref_to_unknown.sh

# The manual processed in the test has a reference that is not resolved.
# There is an error generated when parsing the manual to fix and add
# menus, which is, normally, not visible.
./pod2texi.pl manual_tests/ref_to_unknown.pod | diff -u manual_tests/reference_ref_to_unknown.texi -
