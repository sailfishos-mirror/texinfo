EXTRA_DIST = \
 block_EOL.texi tex_accents.texi \
 tex_complex.texi \
 tex_in_copying.texi \
 math_not_closed.texi       tex_not_closed.texi \
 tex.texi tex_gdef.texi tex_eqalign.texi \
 tex_encode_latin1.texi \
 list-of-tests res_parser

DISTCLEANFILES = tests.log tests.out

distclean-local:
	rm -rf out_parser raw_out_parser diffs test_log

dist-hook:
	rm -rf `find $(distdir)/res_parser -name .git`
