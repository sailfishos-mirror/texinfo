EXTRA_DIST = \
 index_special_region_no_insertcopying.texi \
 index_special_region.texi index_special_region_no_region.texi \
 index_one_node.texi index_no_node_no_top.texi \
 indices_in_begin_tables_lists.texi \
 index_entries_relate_to_item.texi \
 list-of-tests res_parser res_parser_info

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser out_parser_info raw_out_parser raw_out_parser_info diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser $(distdir)/res_parser_info -name .git`
