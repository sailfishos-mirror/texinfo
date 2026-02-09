# Unicode Collation Algorithm (UCA) Binary Database Tools

This package provides tools to convert the Unicode `allkeys.txt` file into an efficient binary format and query it.

## Overview

The Unicode Collation Algorithm (UCA) defines how to compare and sort Unicode strings. The `allkeys.txt` file from Unicode.org contains the Default Unicode Collation Element Table (DUCET), which maps Unicode codepoints and sequences to collation weights.

These tools:
1. **allkeys_to_binary** - Parses `allkeys.txt` and creates a binary database
2. **allkeys_query** - Queries the binary database

## Files

- `allkeys_to_binary.c` - Parser and binary converter
- `allkeys_query.c` - Query tool for the binary database
- `Makefile_allkeys` - Build script

## Building

```bash
make -f Makefile_allkeys
```

Or compile manually:
```bash
gcc -Wall -Wextra -std=c99 -O2 -o allkeys_to_binary allkeys_to_binary.c
gcc -Wall -Wextra -std=c99 -O2 -o allkeys_query allkeys_query.c
```

## Usage

### 1. Converting allkeys.txt to Binary

```bash
./allkeys_to_binary <allkeys.txt> [output.bin]
```

**Example:**
```bash
./allkeys_to_binary allkeys.txt allkeys.bin
```

**Output:**
```
Parsing allkeys.txt...
UCA Version: 17.0.0
  Processed 35000 lines...

Parsing complete!

Statistics:
  Total lines:          39782
  Comment lines:        26
  Directive lines:      7
  Data lines:           31179
  Single codepoints:    30215
  Multi-codepoint seq:  964
  Parse errors:         8570
  Max sequence length:  3 codepoints
  Max collation elems:  8 elements

Writing binary file: allkeys.bin
Binary file size: 7108836 bytes (6.78 MB)

Success! Binary database created.
```

### 2. Querying the Binary Database

#### Show Database Information
```bash
./allkeys_query info allkeys.bin
```

**Output:**
```
Binary Database Information
===========================
Magic:           UCABIN01
UCA Version:     17.0.0
Total entries:   31179
Single entries:  30215
Sequences:       964
File size:       7108836 bytes (6.78 MB)
```

#### Dump Entries
```bash
./allkeys_query dump allkeys.bin <count>
```

**Example:**
```bash
./allkeys_query dump allkeys.bin 5
```

**Output:**
```
First 5 entries:
=================

[0] Codepoints: 0000
Collation:  [.0000.0000.0000]

[1] Codepoints: 0001
Collation:  [.0000.0000.0000]

[2] Codepoints: 0002
Collation:  [.0000.0000.0000]
...
```

#### Lookup Single Codepoint
```bash
./allkeys_query lookup allkeys.bin <hex_codepoint>
```

**Example:**
```bash
./allkeys_query lookup allkeys.bin 0041
```

**Output:**
```
Looking up: U+0041 

Found:
Codepoints: 0041
Collation:  [.23EC.0020.0008]
```

#### Lookup Multi-Codepoint Sequence
```bash
./allkeys_query lookup allkeys.bin <hex1> <hex2> ...
```

**Example:**
```bash
./allkeys_query lookup allkeys.bin 006C 00B7
```

**Output:**
```
Looking up: U+006C U+00B7 

Found:
Codepoints: 006C 00B7
Collation:  [.2528.0020.0002][.0000.011F.0002]
```

#### List All Multi-Codepoint Sequences
```bash
./allkeys_query sequences allkeys.bin
```

This will display all 964 multi-codepoint sequences in the database.

## Binary Format Specification

### File Structure

```
+------------------+
| Header (28 bytes)|
+------------------+
| Entry 1          |
| Entry 2          |
| ...              |
| Entry N          |
+------------------+
```

### Header Structure (28 bytes)

```c
typedef struct {
    char magic[8];        // "UCABIN01" (8 bytes)
    uint32_t version;     // UCA version (4 bytes)
                          // Format: MMMMNNPP (e.g., 170000 = 17.0.0)
    uint32_t num_entries; // Total entries (4 bytes)
    uint32_t num_singles; // Single codepoint entries (4 bytes)
    uint32_t num_sequences; // Multi-codepoint sequences (4 bytes)
} BinaryHeader;
```

### Entry Structure (228 bytes each)

```c
typedef struct {
    uint16_t primary;     // Primary weight
    uint16_t secondary;   // Secondary weight
    uint16_t tertiary;    // Tertiary weight
} CollationElement;      // 6 bytes

typedef struct {
    uint8_t num_codepoints;  // Number of codepoints (1 byte)
    uint8_t num_elements;    // Number of collation elements (1 byte)
    uint32_t codepoints[32]; // Codepoint sequence (128 bytes)
    CollationElement elements[16]; // Collation elements (96 bytes)
} CollationEntry;        // 228 bytes total
```

## Understanding Collation Weights

Each codepoint or sequence maps to one or more collation elements. Each element has three weights:

1. **Primary weight** - Distinguishes base characters (e.g., 'a' vs 'b')
2. **Secondary weight** - Distinguishes accents (e.g., 'a' vs 'á')
3. **Tertiary weight** - Distinguishes case (e.g., 'a' vs 'A')

### Example:

- `U+0041` (LATIN CAPITAL LETTER A): `[.23EC.0020.0008]`
  - Primary: 0x23EC (base character 'A')
  - Secondary: 0x0020 (no accent)
  - Tertiary: 0x0008 (uppercase)

- `U+0061` (LATIN SMALL LETTER a): `[.23EC.0020.0002]`
  - Primary: 0x23EC (same as 'A')
  - Secondary: 0x0020 (no accent)
  - Tertiary: 0x0002 (lowercase)

## Multi-Codepoint Sequences

Some Unicode sequences have special collation behavior. For example:

- `U+006C U+00B7` (LATIN SMALL LETTER L WITH MIDDLE DOT)
  - Used in Catalan
  - Maps to: `[.2528.0020.0002][.0000.011F.0002]`

The binary database contains 964 such sequences.

## Performance

- **Original file**: allkeys.txt (~2.2 MB text)
- **Binary file**: allkeys.bin (~6.8 MB binary)
- **Lookup time**: O(n) linear search (no indexing in this version)
- **Memory**: Loads entire database into memory (~7 MB)

## Limitations

1. **Linear search**: No indexing structure, so lookups scan all entries
2. **Fixed array sizes**: 
   - Max 32 codepoints per sequence (observed max: 3)
   - Max 16 collation elements per entry (observed max: 8)
3. **Memory intensive**: Entire database loaded into memory
4. **Parse errors**: ~8,570 lines not parsed (mostly directives and special formats)

## Future Improvements

Potential enhancements:

1. **Hash table index** for O(1) single codepoint lookups
2. **Trie structure** for efficient sequence matching
3. **Memory-mapped files** to avoid loading entire database
4. **Compressed storage** using variable-length encoding
5. **Better error handling** for unsupported allkeys.txt formats

## Example Integration

```c
#include "allkeys_query.c"  // Or link against compiled object

int main() {
    BinaryHeader header;
    CollationEntry *db = load_database("allkeys.bin", &header);
    
    if (!db) {
        fprintf(stderr, "Failed to load database\n");
        return 1;
    }
    
    // Lookup letter 'A' (U+0041)
    CollationEntry *entry = lookup_codepoint(db, header.num_entries, 0x0041);
    
    if (entry) {
        printf("Primary weight: %04X\n", entry->elements[0].primary);
    }
    
    free(db);
    return 0;
}
```

## References

- [Unicode Collation Algorithm (UTS #10)](https://www.unicode.org/reports/tr10/)
- [allkeys.txt download](https://www.unicode.org/Public/UCA/latest/allkeys.txt)
- [Unicode Copyright and Terms of Use](https://www.unicode.org/copyright.html)

## License

The code is released into the public domain. The Unicode data is subject to Unicode, Inc.'s copyright and terms of use.

## Getting allkeys.txt

Download from: https://www.unicode.org/Public/UCA/latest/allkeys.txt

Or for a specific version:
https://www.unicode.org/Public/UCA/17.0.0/allkeys.txt
