#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>

#include "allkeys_bin.h"

/* Statistics */
typedef struct {
    size_t total_lines;
    size_t comment_lines;
    size_t directive_lines;
    size_t data_lines;
    size_t single_entries;
    size_t sequence_entries;
    size_t parse_errors;
    size_t max_sequence_len;
    size_t max_elements;
} ParseStats;

/* Parse a hexadecimal number */
int parse_hex(const char *str, uint32_t *value) {
    char *endptr;
    unsigned long val = strtoul(str, &endptr, 16);
    
    if (endptr == str || val > 0x10FFFF) {
        return 0;
    }
    
    *value = (uint32_t)val;
    return 1;
}

/* Parse collation element like [.0000.0000.0000] */
int parse_collation_element(const char **str, CollationElement *elem) {
    const char *s = *str;
    
    /* Skip whitespace */
    while (*s && isspace(*s)) s++;
    
    if (*s != '[') return 0;
    s++;
    
    if (*s == '.')
      elem->variable_weight_p = true;
    else if (*s == '*')
      elem->variable_weight_p = false;
    else
      return 0;
    s++;
    
    /* Parse primary weight */
    char hex[5] = {0};
    for (int i = 0; i < 4 && isxdigit(*s); i++, s++) {
        hex[i] = *s;
    }
    elem->primary = (uint16_t)strtoul(hex, NULL, 16);
    
    if (*s != '.') return 0;
    s++;
    
    /* Parse secondary weight */
    memset(hex, 0, sizeof(hex));
    for (int i = 0; i < 4 && isxdigit(*s); i++, s++) {
        hex[i] = *s;
    }
    elem->secondary = (uint16_t)strtoul(hex, NULL, 16);
    
    if (*s != '.') return 0;
    s++;
    
    /* Parse tertiary weight */
    memset(hex, 0, sizeof(hex));
    for (int i = 0; i < 4 && isxdigit(*s); i++, s++) {
        hex[i] = *s;
    }
    elem->tertiary = (uint16_t)strtoul(hex, NULL, 16);
    
    if (*s != ']') return 0;
    s++;
    
    *str = s;
    return 1;
}

/* Parse a single line from allkeys.txt */
int parse_line(const char *line, CollationEntry *entry, ParseStats *stats) {
    const char *p = line;
    
    /* Skip leading whitespace */
    while (*p && isspace(*p)) p++;
    
    /* Skip comments and empty lines */
    if (*p == '#' || *p == '\0') {
        stats->comment_lines++;
        return 0;
    }
    
    /* Skip directives */
    if (*p == '@') {
        stats->directive_lines++;
        return 0;
    }
    
    /* Parse codepoint sequence */
    entry->num_codepoints = 0;
    while (*p && isxdigit(*p)) {
        uint32_t codepoint;
        char hex[7] = {0};
        int i = 0;
        
        while (isxdigit(*p) && i < 6) {
            hex[i++] = *p++;
        }
        
        if (!parse_hex(hex, &codepoint)) {
            stats->parse_errors++;
            fprintf(stderr, "parse error at hex codepoint\n");
            return -1;
        }
        
        if (entry->num_codepoints >= MAX_SEQUENCE_LENGTH) {
            fprintf(stderr, "Warning: sequence too long at line\n");
            stats->parse_errors++;
            return -1;
        }
        
        entry->codepoints[entry->num_codepoints++] = codepoint;
        
        /* Skip whitespace between codepoints */
        while (*p && isspace(*p) && *p != ';') p++;
    }
    
    if (entry->num_codepoints == 0) {
        return 0; /* Not a data line */
    }
    
    /* Update max sequence length */
    if (entry->num_codepoints > stats->max_sequence_len) {
        stats->max_sequence_len = entry->num_codepoints;
    }
    
    /* Skip to semicolon */
    while (*p && *p != ';') p++;
    if (*p != ';') {
        fprintf(stderr, "junk at end of line\n");
        stats->parse_errors++;
        return -1;
    }
    p++;
    
    /* Parse collation elements */
    entry->num_elements = 0;
    while (*p && *p != '#') {
        if (*p == '[') {
            CollationElement elem;
            if (!parse_collation_element(&p, &elem)) {
                fprintf(stderr,
                "could not parse collation element |%s|\n",
                p);
                stats->parse_errors++;
                return -1;
            }
            
            if (entry->num_elements >= MAX_COLLATION_ELEMENTS) {
              /* only for U+FDFA
                 ARABIC LIGATURE SALLALLAHOU ALAYHE WASALLAM */
                fprintf(stderr,
                  "Warning: too many collation elements at |%s|\n", p);
                stats->parse_errors++;
                return -1;
            }
            
            entry->elements[entry->num_elements++] = elem;
        } else {
            p++;
        }
    }
    
    /* Update max elements */
    if (entry->num_elements > stats->max_elements) {
        stats->max_elements = entry->num_elements;
    }
    
    /* Update statistics */
    stats->data_lines++;
    if (entry->num_codepoints == 1) {
        stats->single_entries++;
    } else {
        stats->sequence_entries++;
    }
    
    return 1;
}

/* Parse version string like "17.0.0" to integer like 170000 */
uint32_t parse_version(const char *line) {
    unsigned int major = 0, minor = 0, patch = 0;
    
    if (sscanf(line, "@version %u.%u.%u", &major, &minor, &patch) == 3) {
        return major * 10000 + minor * 100 + patch;
    }
    
    return 0;
}

/* Write binary format */
int write_binary(const char *output_file, CollationEntry *entries, 
                 size_t num_entries, uint32_t version, ParseStats *stats) {
    FILE *fp = fopen(output_file, "wb");
    if (!fp) {
        perror("Failed to open output file");
        return -1;
    }
    
    /* Write header */
    BinaryHeader header;
    memcpy(header.magic, "UCABIN01", 8);
    header.version = version;
    header.num_entries = (uint32_t)num_entries;
    header.num_singles = (uint32_t)stats->single_entries;
    header.num_sequences = (uint32_t)stats->sequence_entries;
    
    if (fwrite(&header, sizeof(BinaryHeader), 1, fp) != 1) {
        perror("Failed to write header");
        fclose(fp);
        return -1;
    }
    
    /* Write entries */
    for (size_t i = 0; i < num_entries; i++) {
        if (fwrite(&entries[i], sizeof(CollationEntry), 1, fp) != 1) {
            perror("Failed to write entry");
            fclose(fp);
            return -1;
        }
    }
    
    fclose(fp);
    return 0;
}

int main(int argc, char *argv[]) {
    if (argc < 2 || argc > 3) {
        fprintf(stderr, "Usage: %s <allkeys.txt> [output.bin]\n", argv[0]);
        return 1;
    }
    
    const char *input_file = argv[1];
    const char *output_file = argc == 3 ? argv[2] : "allkeys.bin";
    
    FILE *fp = fopen(input_file, "r");
    if (!fp) {
        perror("Failed to open input file");
        return 1;
    }
    
    printf("Parsing %s...\n", input_file);
    
    /* Allocate space for entries (max possible is number of lines) */
    CollationEntry *entries = calloc(40000, sizeof(CollationEntry));
    if (!entries) {
        perror("Memory allocation failed");
        fclose(fp);
        return 1;
    }
    
    ParseStats stats = {0};
    size_t num_entries = 0;
    uint32_t version = 0;
    char line[4096];
    
    /* Parse file */
    while (fgets(line, sizeof(line), fp)) {
        stats.total_lines++;
        
        /* Check for version directive */
        if (strncmp(line, "@version", 8) == 0) {
            version = parse_version(line);
            if (version) {
                printf("UCA Version: %u.%u.%u\n", 
                       version / 10000, 
                       (version / 100) % 100, 
                       version % 100);
            }
        }
        
        CollationEntry entry = {0};
        int result = parse_line(line, &entry, &stats);
        
        if (result > 0) {
            entries[num_entries++] = entry;
        }
        
        /* Progress indicator */
        if (stats.total_lines % 5000 == 0) {
            printf("  Processed %zu lines...\r", stats.total_lines);
            fflush(stdout);
        }
    }
    
    fclose(fp);
    
    printf("\nParsing complete!\n\n");
    
    /* Print statistics */
    printf("Statistics:\n");
    printf("  Total lines:          %zu\n", stats.total_lines);
    printf("  Comment lines:        %zu\n", stats.comment_lines);
    printf("  Directive lines:      %zu\n", stats.directive_lines);
    printf("  Data lines:           %zu\n", stats.data_lines);
    printf("  Single codepoints:    %zu\n", stats.single_entries);
    printf("  Multi-codepoint seq:  %zu\n", stats.sequence_entries);
    printf("  Parse errors:         %zu\n", stats.parse_errors);
    printf("  Max sequence length:  %zu codepoints\n", stats.max_sequence_len);
    printf("  Max collation elems:  %zu elements\n\n", stats.max_elements);
    
    /* Write binary file */
    printf("Writing binary file: %s\n", output_file);
    if (write_binary(output_file, entries, num_entries, version, &stats) < 0) {
        free(entries);
        return 1;
    }
    
    /* Calculate file sizes */
    size_t binary_size = sizeof(BinaryHeader) + num_entries * sizeof(CollationEntry);
    printf("Binary file size: %zu bytes (%.2f MB)\n", 
           binary_size, binary_size / (1024.0 * 1024.0));
    
    free(entries);
    
    printf("\nSuccess! Binary database created.\n");
    
    return 0;
}
