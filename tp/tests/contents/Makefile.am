EXTRA_DIST = \
 no_content.texi \
 res_parser list-of-tests

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser raw_out_parser diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
