AUTOMAKE_OPTIONS=foreign
ACLOCAL_AMFLAGS = -I gnulib/m4
SUBDIRS = gnulib/lib .

LDADD = gnulib/lib/libgnu.a

LDADD += \
  $(HARD_LOCALE_LIB) $(LIBPTHREAD) $(LIBTHREAD) \
  $(LIBC32CONV) $(LIBICONV) $(LIBUNISTRING) $(MBRTOWC_LIB) \
  $(PTHREAD_ONCE_LIB) $(SETLOCALE_NULL_LIB)

AM_CPPFLAGS = -I gnulib/lib

bin_PROGRAMS = gen-collation-table
gen_collation_table_SOURCES = gen-collation-table.c

collation-table.c: gen-collation-table allkeys.txt
	./gen-collation-table ./allkeys.txt collation-table.c

bin_PROGRAMS += allkeys_query utf8_to_sort_key collation_test

allkeys_query_SOURCES = allkeys_query.c collation_data_loader.c \
  collation_data_loader.h

utf8_to_sort_key_SOURCES = utf8_to_sort_key.c collation_data_loader.c collation_key.c \
  collation_data_loader.h collation_key.h allkeys_bin.h

collation_test_SOURCES = collation_test.c \
                         collation_data_loader.c collation_data_loader.h \
                         collation_key.c collation_key.h allkeys_bin.h


TESTS=t/collation-test-non-ignorable.sh




test: gen-collation-table allkeys_query utf8_to_sort_key
	@echo "=== Testing single codepoint lookup ==="
	./allkeys_query lookup 0041
	@echo ""
	@echo "=== Testing sequence lookup ==="
	./allkeys_query lookup 006C 00B7
	@echo "=== Testing sort key creation ==="
	@echo "--- ASCII ---"
	./utf8_to_sort_key hello
	@echo "--- Accented Latin ---"
	./utf8_to_sort_key é
	@echo "--- Canonically decomposable ---"
	./utf8_to_sort_key Å
	@echo "--- Variable Weights ---"
	./utf8_to_sort_key "a b-c"
	@echo "--- High secondary weight ---"
	./utf8_to_sort_key x⃑
	@echo "--- Sequence (Catalan) ---"
	./utf8_to_sort_key L·
	@echo "--- Modern Standard Chinese ---"
	./utf8_to_sort_key 世
	@echo "--- Japanese ---"
	./utf8_to_sort_key ハワイの歴史
	@echo "--- Tangut ---"
	./utf8_to_sort_key 𘊐𗉘𘈞𘉞

