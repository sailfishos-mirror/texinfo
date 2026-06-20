EXTRA_DIST = \
 accented_lang_index_collation.texi \
 highlight_example.texi \
 index_collation_script_test.texi \
 index_collation_test.texi \
 list-of-tests res_parser

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_perl raw_out_perl out_native raw_out_native \
                diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
