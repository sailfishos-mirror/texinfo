EXTRA_DIST = \
	     simplest.texi list-of-tests res_parser \
 f--ile.e--xt  f--ile.jpg  f--ile.png  f--ile.txt


DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_perl raw_out_perl out_native raw_out_native \
             diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
