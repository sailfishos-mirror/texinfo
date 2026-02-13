AUTOMAKE_OPTIONS=foreign
ACLOCAL_AMFLAGS = -I gnulib/m4
SUBDIRS = gnulib/lib

LDADD = gnulib/lib/libgnu.a

AM_CPPFLAGS = -I gnulib/lib

bin_PROGRAMS = allkeys_to_binary allkeys_query utf8_to_sort_key collation_builder

collation_builder_SOURCES = collation_builder.c

# old - to be removed
allkeys_to_binary_SOURCES = allkeys_to_binary.c

allkeys_query_SOURCES = allkeys_query.c allkeys_bin_loader2.c
utf8_to_sort_key_SOURCES = utf8_to_sort_key.c allkeys_bin_loader.c collation_key.c

test: allkeys_to_binary allkeys_query
	@echo "=== Testing binary conversion ==="
	./allkeys_to_binary ./allkeys.txt allkeys.bin
	@echo ""
	@echo "=== Testing database info ==="
	./allkeys_query info allkeys.bin
	@echo ""
	@echo "=== Testing dump (first 5 entries) ==="
	./allkeys_query dump allkeys.bin 5
	@echo ""
	@echo "=== Testing single codepoint lookup ==="
	./allkeys_query lookup allkeys.bin 0041
	@echo ""
	@echo "=== Testing sequence lookup ==="
	./allkeys_query lookup allkeys.bin 006C 00B7
