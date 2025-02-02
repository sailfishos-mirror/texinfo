EXTRA_DIST = \
 indices_in_begin_tables_lists.texi \
 index_entries_relate_to_item.texi \
 list-of-tests res_parser

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser raw_out_parser diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
