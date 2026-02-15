AUTOMAKE_OPTIONS=foreign
ACLOCAL_AMFLAGS = -I gnulib/m4
SUBDIRS = gnulib/lib .

LDADD = gnulib/lib/libgnu.a

LDADD += \
  $(HARD_LOCALE_LIB) $(LIBPTHREAD) $(LIBTHREAD) \
  $(LIBC32CONV) $(LIBICONV) $(LIBUNISTRING) $(MBRTOWC_LIB) \
  $(PTHREAD_ONCE_LIB) $(SETLOCALE_NULL_LIB)

AM_CPPFLAGS = -I gnulib/lib

bin_PROGRAMS = allkeys_to_binary allkeys_query utf8_to_sort_key

allkeys_to_binary_SOURCES = allkeys_to_binary.c

allkeys_query_SOURCES = allkeys_query.c allkeys_bin_loader.c
utf8_to_sort_key_SOURCES = utf8_to_sort_key.c allkeys_bin_loader.c collation_key.c

allkeys.bin: allkeys_to_binary allkeys.txt
	./allkeys_to_binary ./allkeys.txt allkeys.bin

BUILT_SOURCES = allkeys_bin.c

allkeys_bin.c: allkeys_to_binary allkeys.txt
	./allkeys_to_binary ./allkeys.txt allkeys.bin allkeys_bin.c

test: allkeys_to_binary allkeys_query allkeys.bin utf8_to_sort_key
	@echo "=== Testing single codepoint lookup ==="
	./allkeys_query lookup allkeys.bin 0041
	@echo ""
	@echo "=== Testing sequence lookup ==="
	./allkeys_query lookup allkeys.bin 006C 00B7
	@echo "=== Testing sort key creation ==="
	@echo "+ASCII"
	./utf8_to_sort_key hello
	@echo "+Accented Latin"
	./utf8_to_sort_key é
	@echo "+Canonically decomposable"
	./utf8_to_sort_key Å
	@echo "+High secondary weight"
	./utf8_to_sort_key x⃑
	@echo "+Sequence (Catalan)"
	./utf8_to_sort_key L·
	@echo "+Modern Standard Chinese"
	./utf8_to_sort_key 世
	@echo "+Japanese"
	./utf8_to_sort_key ハワイの歴史
	@echo "+Tangut"
	./utf8_to_sort_key 𘊐𗉘𘈞𘉞

