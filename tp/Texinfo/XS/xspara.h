#include "main/text.h"

int xspara_new (void);
void xspara_init_state (int end_sentence, int max, int indent_length,
                   int indent_length_next, int counter, int word_counter,
                   int lines_counter, int end_line_count, int no_break,
                   int ignore_columns, int keep_end_lines, int french_spacing,
                   int unfilled, int no_final_newline, int add_final_space);
void xspara_set_state (int paragraph);
TEXT xspara_add_next (char *, int, int transparent);
TEXT xspara_add_text (char *, int);
void xspara_set_space_protection (int space_protection, int ignore_columns,
       int keep_end_lines, int french_spacing, int double_width_no_break);
void xspara__end_line (void);
char *xspara_end_line (void);
char *xspara_get_pending (void);
char *xspara_end (void);
char *xspara_add_pending_word (int add_spaces);
void xspara_allow_end_sentence (void);
void xspara_remove_end_sentence (void);
void xspara_add_end_sentence (int value);
int xspara_end_line_count (void);
int xspara_counter (void);
