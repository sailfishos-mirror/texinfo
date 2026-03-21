## Binary Format Specification

data structure in allkeys_bin.c

### Page Table
- Each page covers 256 codepoints (U+XX00 to U+XXFF)
- Offset of -1 means page not allocated
- Offset points to page data

### Sequence Trie (variable size)
Recursive trie structure for multi-codepoint sequences:

uint32_t codepoint     Codepoint at this node
uint32_t data_index    Index of collation data in array (0 if intermediate)
uint8_t num_elements   Number of collation elements
uint16_t num_children  Number of child nodes
For each child:
  uint32_t child_offset Offset to child node

