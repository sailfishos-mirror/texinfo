#! /bin/sh

# tests the code in pod2texi.pl _parsed_manual_tree with gaps in sectioning
# and manual name prepended.
# From the Pod-Simple-Texinfo, run
#  ./manual_tests/manual_sectioning_gap_test.sh

./pod2texi.pl --base-level=2 manual_tests/sectioning_gap.pod | diff -u manual_tests/reference_sectioning_gap.texi -
diff -u manual_tests/reference_Th1.texi Th1.texi
rm -f Th1.texi

./pod2texi.pl --base-level=section --subdir=manual_tests/includes manual_tests/Module1.pod manual_tests/Module2.pod | diff -u manual_tests/reference_modules_main.texi -
diff -u -r manual_tests/reference_includes manual_tests/includes
rm -rf manual_tests/includes

