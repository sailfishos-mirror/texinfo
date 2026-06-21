# Makefile.am for texinfo/tta/tests/many_input_files
# Copyright 2012-2026 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

test_scripts = first_file_not_found.sh tex_l2h.sh tex_t4ht.sh \
  different_encodings.sh different_languages_gen_master_menu.sh \
  for_nbspaces_different_encodings.sh \
  input_dir_non_ascii.sh output_dir_non_ascii.sh \
  output_dir_file_non_ascii.sh tex_t4ht_output_dir_non_ascii.sh \
  tex_l2h_output_dir_non_ascii.sh

native_test_scripts = first_file_not_found_native.sh tex_l2h_native.sh tex_t4ht_native.sh \
  different_encodings_native.sh different_languages_gen_master_menu_native.sh \
  for_nbspaces_different_encodings_native.sh \
  input_dir_non_ascii_native.sh output_dir_non_ascii_native.sh \
  output_dir_file_non_ascii_native.sh tex_t4ht_output_dir_non_ascii_native.sh \
  tex_l2h_output_dir_non_ascii_native.sh

TESTS = $(test_scripts)
if USE_SHARED_TXI_LIBRARIES
if PERL_EMBEDDED
TESTS += $(native_test_scripts)
endif
endif

EXTRA_DIST = $(test_scripts) $(native_test_scripts) \
  first_file_not_found_res tex_l2h_res tex_t4ht_res \
  different_encodings_res different_languages_gen_master_menu_res \
  input_dir_non_ascii_res output_dir_non_ascii_res \
  output_dir_file_non_ascii_res tex_t4ht_output_dir_non_ascii_res \
  tex_l2h_output_dir_non_ascii_res \
  input_files/no_master_menu_fr.texi \
  input_files/no_master_menu_no_documentlanguage.texi \
  input_files/simple_including_file.texi

# regenerate native_test_scripts scripts.
# not automatic, should be called manually when a new test script is
# added
native_test_scripts_target:
	$(srcdir)/../../maintain/generate_many_input_files_native_tests.sh $(test_scripts)

AM_TESTS_ENVIRONMENT = srcdir="$(srcdir)"; export srcdir; t2a_srcdir="$(top_srcdir)"; export t2a_srcdir; t2a_builddir="$(top_builddir)"; export t2a_builddir;

tex_html_dirs = tex_l2h tex_t4ht tex_t4ht_output_dir_non_ascii \
  tex_l2h_output_dir_non_ascii

tests_dirs = different_encodings different_languages_gen_master_menu \
  first_file_not_found for_nbspaces_different_encodings \
  input_dir_non_ascii output_dir_non_ascii output_dir_file_non_ascii

tex-html-checks: all
	$(MAKE) $(AM_MAKEFLAGS) check TEX_HTML_TESTS=yes

copy-tex-html:
	for dir in $(tex_html_dirs); do \
		if [ -d "$${dir}_perl" ]; then \
			if [ -d "${srcdir}/$${dir}_res" ]; then \
				rm -f "${srcdir}/$${dir}_res/"*.* ;\
			else \
				mkdir "${srcdir}/$${dir}_res/" ; \
			fi ;\
			cp -p "$${dir}_perl/"*.* "${srcdir}/$${dir}_res/"; \
			rm -f "${srcdir}/$${dir}_res/"*.png "${srcdir}/$${dir}_res/"*_l2h.css; \
		else \
			echo "No dir $${dir}_perl/"; \
		fi; \
	done
	cp -fpR tex_t4ht_output_dir_non_ascii_perl/encod%c3%a9/ "${srcdir}/tex_t4ht_output_dir_non_ascii_res/"
	cp -fpR tex_l2h_output_dir_non_ascii_perl/encod%c3%a9/ "${srcdir}/tex_l2h_output_dir_non_ascii_res/"

copy-tests:
	for dir in $(tests_dirs); do \
		if [ -d "$${dir}_perl" ]; then \
			if [ -d "${srcdir}/$${dir}_res" ]; then \
				rm -f "${srcdir}/$${dir}_res/"*.* ;\
			else \
				mkdir "${srcdir}/$${dir}_res/" ; \
			fi ;\
			cp -p "$${dir}_perl/"*.* "${srcdir}/$${dir}_res/"; \
		else \
			echo "No dir $${dir}_perl/"; \
		fi; \
	done
	cp -fpR output_dir_non_ascii_perl/encod%c3%a9/ "${srcdir}/output_dir_non_ascii_res/"
	cp -fpR output_dir_file_non_ascii_perl/encod%c3%a9/ "${srcdir}/output_dir_file_non_ascii_res/"

DISTCLEANFILES = *.log

distclean-local:
	rm -rf diffs raw_out_perl raw_out_native test_log
	for dir in $(tex_html_dirs) $(tests_dirs) ; do rm -rf "$${dir}_perl" "$${dir}_native" ; done

dist-hook:
	for dir in $(tex_html_dirs) $(tests_dirs); do \
		rm -rf `find "$(distdir)/$${dir}_res" -name .git` ;\
	done
