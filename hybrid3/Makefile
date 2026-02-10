CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O2 -g

.PHONY: all clean test

all: collation_loader

collation_loader: collation_loader.c collation_hybrid.c
	$(CC) $(CFLAGS) -o collation_loader collation_loader.c

test-full: collation_loader
	@echo "=== Loading full allkeys.txt database ==="
	./collation_loader /mnt/user-data/uploads/allkeys.txt

clean:
	rm -f collation_loader collation_demo
