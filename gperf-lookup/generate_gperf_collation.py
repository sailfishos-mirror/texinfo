#!/usr/bin/env python3
"""
Generate gperf input file from Unicode allkeys.txt

This demonstrates how to create perfect hash lookups for collation data.
Only handles single codepoints (not sequences) for simplicity.
"""

import sys
import re

def codepoint_to_key(cp):
    """Convert codepoint integer to escaped 4-byte string for gperf"""
    return f'"\\x{(cp >> 24) & 0xFF:02x}\\x{(cp >> 16) & 0xFF:02x}\\x{(cp >> 8) & 0xFF:02x}\\x{cp & 0xFF:02x}"'

def parse_collation_line(line):
    """Parse a line from allkeys.txt
    
    Format: XXXX ; [.PPPP.SSSS.TTTT]... # COMMENT
    Returns: (codepoint, [(primary, secondary, tertiary), ...])
    """
    # Skip comments and empty lines
    line = line.strip()
    if not line or line.startswith('#') or line.startswith('@'):
        return None
    
    # Split on semicolon
    parts = line.split(';')
    if len(parts) < 2:
        return None
    
    # Parse codepoint(s)
    codepoints_str = parts[0].strip().split()
    if len(codepoints_str) != 1:
        # Skip multi-codepoint sequences
        return None
    
    try:
        codepoint = int(codepoints_str[0], 16)
    except ValueError:
        return None
    
    # Parse collation elements [.XXXX.XXXX.XXXX]
    collation_part = parts[1].split('#')[0].strip()
    elements = []
    
    # Find all [.XXXX.XXXX.XXXX] patterns
    pattern = r'\[\.([0-9A-F]{4})\.([0-9A-F]{4})\.([0-9A-F]{4})\]'
    matches = re.findall(pattern, collation_part)
    
    for match in matches:
        primary = int(match[0], 16)
        secondary = int(match[1], 16)
        tertiary = int(match[2], 16)
        elements.append((primary, secondary, tertiary))
    
    if not elements:
        return None
    
    return (codepoint, elements)

def generate_gperf_header():
    """Generate the gperf file header"""
    return """%{
/*
 * Unicode Collation Algorithm Perfect Hash Lookup
 * Auto-generated from allkeys.txt
 */
#include <stdint.h>
#include <string.h>

/* Maximum collation elements per codepoint */
#define MAX_COLLATION_ELEMENTS 8

struct collation_data {
    uint32_t codepoint;
    uint8_t num_elements;
    struct {
        uint16_t primary;
        uint16_t secondary;
        uint16_t tertiary;
    } elements[MAX_COLLATION_ELEMENTS];
};
%}

struct collation_data;

%readonly-tables
%language=C
%struct-type
%define lookup-function-name lookup_collation_internal
%define hash-function-name hash_codepoint

%%
"""

def generate_gperf_entry(codepoint, elements):
    """Generate a single gperf entry"""
    key = codepoint_to_key(codepoint)
    
    # Build the struct initializer
    parts = [
        f"0x{codepoint:08X}",  # codepoint field
        str(len(elements))      # num_elements field
    ]
    
    # Add elements
    elem_strs = []
    for primary, secondary, tertiary in elements[:8]:  # Max 8 elements
        elem_strs.append(f"{{0x{primary:04X}, 0x{secondary:04X}, 0x{tertiary:04X}}}")
    
    # Pad with zeros if needed
    while len(elem_strs) < 8:
        elem_strs.append("{0x0000, 0x0000, 0x0000}")
    
    elements_str = ", ".join(elem_strs)
    
    return f"{key}, {{{parts[0]}, {parts[1]}, {{{elements_str}}}}}"

def generate_gperf_footer():
    """Generate the gperf file footer with public API"""
    return """%%

/*
 * Public API - lookup collation data for a codepoint
 */
const struct collation_data *
lookup_collation(uint32_t codepoint)
{
    unsigned char key[4];
    
    /* Convert codepoint to big-endian 4-byte key */
    key[0] = (codepoint >> 24) & 0xFF;
    key[1] = (codepoint >> 16) & 0xFF;
    key[2] = (codepoint >> 8) & 0xFF;
    key[3] = codepoint & 0xFF;
    
    return lookup_collation_internal((const char *)key, 4);
}

/*
 * Helper to print collation data
 */
void
print_collation_data(const struct collation_data *data)
{
    if (!data) {
        printf("Not found\\n");
        return;
    }
    
    printf("U+%04X: ", data->codepoint);
    for (int i = 0; i < data->num_elements; i++) {
        printf("[.%04X.%04X.%04X]",
               data->elements[i].primary,
               data->elements[i].secondary,
               data->elements[i].tertiary);
    }
    printf("\\n");
}
"""

def main():
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <allkeys.txt> [output.gperf]", file=sys.stderr)
        print("", file=sys.stderr)
        print("Generates a gperf input file from Unicode allkeys.txt", file=sys.stderr)
        print("Only includes single codepoint entries (not sequences)", file=sys.stderr)
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else 'collation.gperf'
    
    entries = []
    
    print(f"Reading {input_file}...", file=sys.stderr)
    
    with open(input_file, 'r', encoding='utf-8') as f:
        for line_num, line in enumerate(f, 1):
            result = parse_collation_line(line)
            if result:
                entries.append(result)
            
            if line_num % 5000 == 0:
                print(f"  Processed {line_num} lines, found {len(entries)} entries...", file=sys.stderr)
    
    print(f"Found {len(entries)} single codepoint entries", file=sys.stderr)
    print(f"Writing {output_file}...", file=sys.stderr)
    
    with open(output_file, 'w', encoding='utf-8') as f:
        # Write header
        f.write(generate_gperf_header())
        
        # Write entries
        for codepoint, elements in entries:
            f.write(generate_gperf_entry(codepoint, elements))
            f.write("\n")
        
        # Write footer
        f.write(generate_gperf_footer())
    
    print(f"Done! Generated {output_file}", file=sys.stderr)
    print(f"", file=sys.stderr)
    print(f"To generate the perfect hash code:", file=sys.stderr)
    print(f"  gperf {output_file} > collation_lookup.c", file=sys.stderr)
    print(f"", file=sys.stderr)
    print(f"Then compile with:", file=sys.stderr)
    print(f"  gcc -c collation_lookup.c", file=sys.stderr)

if __name__ == '__main__':
    main()
