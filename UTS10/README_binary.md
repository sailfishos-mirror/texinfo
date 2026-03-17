## Binary Format Specification

### Header

uint32_t page_table_offset Offset to page table
uint32_t trie_offset Offset to sequence trie

### Page Table (NUM_PAGES * 4 bytes = 17,408 bytes)
Array of 4,352 uint32_t offsets, one per page:
- Each page covers 256 codepoints (U+XX00 to U+XXFF)
- Offset of 0 means page not allocated
- Non-zero offset points to page data

### Page Data (variable size)
For each allocated page, one of two possibilities.

Either:

uint8_t count        Number of entries in this page
                     (0-254)
For each entry (6 bytes each):
  uint8_t index      Index within page (0-255)
  uint8_t num_elements   Number of collation elements (1-16)
  uint32_t data_offset Offset to collation data

Or:

uint8_t count        (255 - means 256)
For each of 256 entries (5 bytes each):
  uint8_t num_elements   Number of collation elements (1-16)
  uint32_t data_offset Offset to collation data


Entries are sorted by index for binary search.

### Collation Data (variable size)
```
For each element (4 bytes):
  uint16_t primary
  uint8_t secondary
  uint8_t tertiary
```

### Sequence Trie (variable size)
Recursive trie structure for multi-codepoint sequences:
```
uint32_t codepoint     Codepoint at this node
uint32_t data_offset   Offset to collation data (0 if intermediate)
uint16_t num_children  Number of child nodes
For each child:
  uint32_t child_offset Offset to child node
```

## Performance

**Builder:**
- Parse time: 0.21 seconds
- Output size: 587,112 bytes (0.56 MB)
- Compression: 10× smaller than original allkeys.txt (6.1 MB)

**Lookup:**
- Single codepoint: O(log 256) ≈ 8 comparisons via binary search
- Sequence: O(k) where k = sequence length via trie traversal
- Memory: 0.56 MB (just the data file)
- No parsing overhead - direct binary access

## Data Layout Example

For Unicode range U+0000 to U+00FF (page 0):
```
Page Table[0] → Page Data @ offset 4444
  Page Data:
    count: 179  (179 codepoints in this range have collation data)
    entries[0]:  index=0x00, data_offset=5555
    entries[1]:  index=0x01, data_offset=5562
    ...
    entries[178]: index=0xFF, data_offset=6789
```

For codepoint U+0041 ('A'):
```
1. page_num = 0x0041 >> 8 = 0
2. page_index = 0x0041 & 0xFF = 0x41 (65)
3. Read Page Table[0] → page_data_offset = 4444
4. Read page count at offset 4444 → 179 entries
5. Binary search for index 65 in entries
6. Found at entries[33]: data_offset = 5900
7. Read collation data at offset 5900:
   num_elements = 1
   primary = 0x23EC
   secondary = 0x0020
   tertiary = 0x0008
   variable = 0
```
