EXTRA_DIST = nested_formats.texi \
 list-of-tests res_parser

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser raw_out_parser out_native raw_out_native \
           diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser $(distdir)/res_parser_html -name .git`
