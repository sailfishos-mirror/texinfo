# foo.info is not a Texinfo file, but an Info file, to test mistaking
# the input file, both for the file name and content.
EXTRA_DIST = \
 defxcond.texi documentlanguage.texi \
 inc_file.texi \
 indices_in_begin_tables_lists.texi \
 index_entries_relate_to_item.texi \
 japanese_long_name.texi \
 lightweight_markups.texi \
 no_content.texi no_detailmenu_lang_at_begin_end.texi \
 simplest.texi split_nocopying.texi \
 foo.info \
 file.css list-of-tests  res_parser

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser raw_out_parser diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
