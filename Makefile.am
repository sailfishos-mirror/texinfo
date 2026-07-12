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

bin_PROGRAMS += collation_test

collation_test_SOURCES = collation_test.c \
                         collation_data_lookup.c collation_data_lookup.h \
                         collation_key.c collation_key.h \
                         uN_make_key_streaming.inc


TESTS=t/collation-test-non-ignorable.sh \
      t/collation-test-shifted.sh
