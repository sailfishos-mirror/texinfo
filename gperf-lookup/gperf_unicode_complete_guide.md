# Using gperf for Unicode: Null Byte Handling

## Summary

gperf generates perfect hash functions for O(1) lookups with zero collisions. The key challenge for Unicode is handling U+0000 (null byte) in binary keys.

## The Null Byte Problem

Unicode codepoint U+0000 encoded as 4-byte key: `\x00\x00\x00\x00`

Standard C string functions fail:
- `strlen()` returns 0
- `strcmp()` stops at first null

## Solution (Used by libunistring)

### Always pass explicit length:

```c
const struct data *
lookup_internal(const char *key, size_t len);  // gperf-generated

const struct data *
lookup_codepoint(uint32_t cp) {
    unsigned char key[4] = {
        (cp >> 24) & 0xFF,
        (cp >> 16) & 0xFF,
        (cp >> 8) & 0xFF,
        cp & 0xFF
    };
    return lookup_internal((const char *)key, 4);  // Explicit length!
}
```

### Why it works:

gperf uses `memcmp()` internally, which handles null bytes correctly.

## Example gperf Input

See the generated files for complete examples.

