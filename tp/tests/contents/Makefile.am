EXTRA_DIST = \
 contents_in_middle_section.texi \
 double_contents.texi no_content.texi \
 contents_and_parts.texi \
 res_parser list-of-tests

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser raw_out_parser diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
