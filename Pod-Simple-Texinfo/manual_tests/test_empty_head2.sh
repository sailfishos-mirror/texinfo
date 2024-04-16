#! /bin/sh

# From the Pod-Simple-Texinfo, run
#  ./manual_tests/test_empty_head2.sh

# The manual processed in the test has an empty head.
# There are errors generated when parsing the manual to fix and add
# menus, which can be seen with --debug=2.
./pod2texi.pl manual_tests/empty_head2.pod | diff -u manual_tests/reference_test_empty_head2.texi -
