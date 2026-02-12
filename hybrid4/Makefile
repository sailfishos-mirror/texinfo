CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -O0 -g

.PHONY: all clean test

# Default target: build everything
all: collation_builder

# Build the builder program
collation_builder: collation_builder.c
	$(CC) $(CFLAGS) -o collation_builder collation_builder.c

# Generate collation_data.bin from allkeys.txt
collation_data.bin: collation_builder
	./collation_builder ./allkeys.txt collation_data.bin

# Build the lookup program (requires collation_data.bin)
collation_lookup: collation_lookup.c
	$(CC) $(CFLAGS) -o collation_lookup collation_lookup.c

# Full build: builder -> data -> lookup
full: collation_builder collation_data.bin collation_lookup

# Test the lookup program
test: collation_lookup
	./collation_lookup

# Interactive test
interactive: collation_lookup
	./collation_lookup -i

clean:
	rm -f collation_builder collation_lookup collation_data.bin
