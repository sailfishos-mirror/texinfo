CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2

.PHONY: all clean test

all: allkeys_to_binary allkeys_query utf8_to_sort_key

allkeys_to_binary: allkeys_to_binary.c
	$(CC) $(CFLAGS) -o allkeys_to_binary allkeys_to_binary.c

allkeys_query: allkeys_query.c allkeys_bin_loader.c allkeys_bin_loader.h
	$(CC) $(CFLAGS) -o allkeys_query allkeys_query.c allkeys_bin_loader.c

utf8_to_sort_key: utf8_to_sort_key.c allkeys_bin_loader.c allkeys_bin_loader.h
	$(CC) $(CFLAGS) -o utf8_to_sort_key utf8_to_sort_key.c allkeys_bin_loader.c

clean:
	rm -f allkeys_to_binary allkeys_query allkeys.bin utf8_to_codepoints

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
