#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <time.h>

#include "collation_hybrid.c"

/* Parse statistics */
typedef struct {
    size_t total_lines;
    size_t data_lines;
    size_t single_entries;
    size_t sequence_entries;
    size_t parse_errors;
    uint32_t version;
} ParseStats;

/* Parse a hexadecimal number */
static int parse_hex(const char *str, uint32_t *value)
{
    char *endptr;
    unsigned long val = strtoul(str, &endptr, 16);
    
    if (endptr == str || val > 0x10FFFF) {
        return 0;
    }
    
    *value = (uint32_t)val;
    return 1;
}

/* Parse collation element like [.0000.0000.0000] or [*0000.0000.0000] */
static int parse_collation_element(const char **str, CollationElement *elem)
{
    const char *s = *str;
    
    /* Skip whitespace */
    while (*s && isspace(*s)) s++;
    
    if (*s != '[') return 0;
    s++;
    
    /* Check for variable weighting marker */
    if (*s == '*') {
        elem->variable = 1;
        s++;
    } else if (*s == '.') {
        elem->variable = 0;
        s++;
    } else {
        return 0;
    }
    
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

/* Parse version string like "17.0.0" to integer */
static uint32_t parse_version(const char *line)
{
    unsigned int major = 0, minor = 0, patch = 0;
    
    if (sscanf(line, "@version %u.%u.%u", &major, &minor, &patch) == 3) {
        return major * 10000 + minor * 100 + patch;
    }
    
    return 0;
}

/* Parse a line from allkeys.txt */
static int parse_line(const char *line, CollationDB *db, ParseStats *stats)
{
    const char *p = line;
    
    /* Skip leading whitespace */
    while (*p && isspace(*p)) p++;
    
    /* Skip comments and empty lines */
    if (*p == '#' || *p == '\0') {
        return 0;
    }
    
    /* Check for version directive */
    if (*p == '@') {
        if (strncmp(line, "@version", 8) == 0) {
            stats->version = parse_version(line);
        }
        return 0;
    }
    
    /* Parse codepoint sequence */
    uint32_t codepoints[32];
    size_t num_codepoints = 0;
    
    while (*p && isxdigit(*p)) {
        char hex[7] = {0};
        int i = 0;
        
        while (isxdigit(*p) && i < 6) {
            hex[i++] = *p++;
        }
        
        if (!parse_hex(hex, &codepoints[num_codepoints])) {
            stats->parse_errors++;
            return -1;
        }
        
        num_codepoints++;
        
        if (num_codepoints >= 32) {
            stats->parse_errors++;
            return -1;
        }
        
        /* Skip whitespace between codepoints */
        while (*p && isspace(*p) && *p != ';') p++;
    }
    
    if (num_codepoints == 0) {
        return 0;
    }
    
    /* Skip to semicolon */
    while (*p && *p != ';') p++;
    if (*p != ';') {
        stats->parse_errors++;
        return -1;
    }
    p++;
    
    /* Parse collation elements */
    CollationData *data = calloc(1, sizeof(CollationData));
    if (!data) {
        stats->parse_errors++;
        return -1;
    }
    
    while (*p && *p != '#') {
        if (*p == '[') {
            CollationElement elem;
            if (!parse_collation_element(&p, &elem)) {
                free(data);
                stats->parse_errors++;
                return -1;
            }
            
            if (data->num_elements >= MAX_COLLATION_ELEMENTS) {
                free(data);
                stats->parse_errors++;
                return -1;
            }
            
            data->elements[data->num_elements++] = elem;
        } else {
            p++;
        }
    }
    
    if (data->num_elements == 0) {
        free(data);
        return 0;
    }
    
    /* Insert into database */
    int success;
    if (num_codepoints == 1) {
        success = collation_insert_codepoint(db, codepoints[0], data);
        if (success) {
            stats->single_entries++;
        }
    } else {
        success = collation_insert_sequence(db, codepoints, num_codepoints, data);
        if (success) {
            stats->sequence_entries++;
        }
    }
    
    if (!success) {
        free(data);
        stats->parse_errors++;
        return -1;
    }
    
    stats->data_lines++;
    return 1;
}

/* Load allkeys.txt into database */
CollationDB* load_allkeys(const char *filename, ParseStats *stats)
{
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        perror("Failed to open input file");
        return NULL;
    }
    
    CollationDB *db = collation_db_create();
    if (!db) {
        fprintf(stderr, "Failed to create database\n");
        fclose(fp);
        return NULL;
    }
    
    memset(stats, 0, sizeof(ParseStats));
    
    char line[4096];
    
    printf("Loading %s...\n", filename);
    clock_t start = clock();
    
    while (fgets(line, sizeof(line), fp)) {
        stats->total_lines++;
        parse_line(line, db, stats);
        
        if (stats->total_lines % 5000 == 0) {
            printf("  Processed %zu lines...\r", stats->total_lines);
            fflush(stdout);
        }
    }
    
    clock_t end = clock();
    double elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    
    fclose(fp);
    
    printf("\nLoading complete in %.2f seconds!\n\n", elapsed);
    
    return db;
}

/* Test the database */
void test_database(CollationDB *db)
{
    printf("Testing database lookups:\n\n");
    
    /* Test some single codepoints */
    struct {
        uint32_t cp;
        const char *name;
    } test_singles[] = {
        {0x0000, "NULL"},
        {0x0020, "SPACE"},
        {0x0041, "LATIN CAPITAL LETTER A"},
        {0x0061, "LATIN SMALL LETTER A"},
        {0x00E9, "LATIN SMALL LETTER E WITH ACUTE"},
        {0x4E16, "CJK UNIFIED IDEOGRAPH (世)"},
    };
    
    for (size_t i = 0; i < sizeof(test_singles) / sizeof(test_singles[0]); i++) {
        printf("U+%04X (%s): ", test_singles[i].cp, test_singles[i].name);
        CollationData *data = collation_lookup_codepoint(db, test_singles[i].cp);
        if (data) {
            print_collation_data(data);
        } else {
            printf("NOT FOUND\n");
        }
    }
    
    printf("\n");
    
    /* Test some sequences */
    uint32_t seq1[] = {0x006C, 0x00B7};  /* LATIN SMALL LETTER L WITH MIDDLE DOT */
    printf("U+006C U+00B7 (l·): ");
    CollationData *data = collation_lookup_sequence(db, seq1, 2);
    if (data) {
        print_collation_data(data);
    } else {
        printf("NOT FOUND\n");
    }
}

/* Benchmark lookups */
void benchmark_database(CollationDB *db)
{
    printf("\nBenchmarking lookups:\n");
    
    const int NUM_LOOKUPS = 1000000;
    uint32_t test_codepoints[] = {
        0x0020, 0x0041, 0x0061, 0x00E9, 0x4E16, 0x0030, 0x0039
    };
    size_t num_test = sizeof(test_codepoints) / sizeof(test_codepoints[0]);
    
    clock_t start = clock();
    
    for (int i = 0; i < NUM_LOOKUPS; i++) {
        uint32_t cp = test_codepoints[i % num_test];
        CollationData *data = collation_lookup_codepoint(db, cp);
        (void)data;  /* Suppress unused warning */
    }
    
    clock_t end = clock();
    double elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    
    printf("  %d lookups in %.3f seconds\n", NUM_LOOKUPS, elapsed);
    printf("  %.2f lookups per second\n", NUM_LOOKUPS / elapsed);
    printf("  %.2f nanoseconds per lookup\n", (elapsed / NUM_LOOKUPS) * 1e9);
}

int main(int argc, char *argv[])
{
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <allkeys.txt>\n", argv[0]);
        return 1;
    }
    
    const char *input_file = argv[1];
    
    ParseStats stats;
    CollationDB *db = load_allkeys(input_file, &stats);
    
    if (!db) {
        return 1;
    }
    
    /* Print statistics */
    printf("Parse Statistics:\n");
    printf("  Total lines:       %zu\n", stats.total_lines);
    printf("  Data lines:        %zu\n", stats.data_lines);
    printf("  Single codepoints: %zu\n", stats.single_entries);
    printf("  Sequences:         %zu\n", stats.sequence_entries);
    printf("  Parse errors:      %zu\n", stats.parse_errors);
    if (stats.version) {
        printf("  UCA Version:       %u.%u.%u\n",
               stats.version / 10000,
               (stats.version / 100) % 100,
               stats.version % 100);
    }
    printf("\n");
    
    collation_db_print_stats(db);
    printf("\n");
    
    test_database(db);
    
    benchmark_database(db);
    
    collation_db_free(db);
    
    return 0;
}
