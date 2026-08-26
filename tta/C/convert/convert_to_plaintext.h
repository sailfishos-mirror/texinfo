/* convert_to_plaintext.h - definitions for convert_to_plaintext.c */
#ifndef CONVERT_TO_PLAINTEXT_H
#define CONVERT_TO_PLAINTEXT_H

#include "command_ids.h"
#include "tree.h"
#include "tree_types.h"
#include "document_types.h"
#include "converter_types.h"
#include "plaintext_converter_state.h"
#include "list_macros.h"

/* Plaintext command data flags */
#define PF_informative            0x0001
#define PF_ignored                0x0002
#define PF_format_raw             0x0004
#define PF_style_map              0x0008
#define PF_asis                   0x0010
#define PF_quoted                 0x0020
#define PF_example_indented       0x0040
#define PF_indented               0x0080
#define PF_format_context         0x0100
#define PF_preformatted_context   0x0200
#define PF_menu                   0x0400
#define PF_punctuation_no_arg     0x0800
#define PF_flush                  0x1000
#define PF_advance_paragraph_count  0x2000
#define PF_no_punctuation_munging   0x4000
#define PF_non_quoted_when_nested   0x8000
#define PF_index_style              0x00010000

typedef struct PENDING_TEXT_COUNT_LINE_COUNT {
    PENDING_TEXT_LIST pending_text;
    int width;
    int line_count;
} PENDING_TEXT_COUNT_LINE_COUNT;

void plaintext_format_setup (enum converter_format format);

CONVERTER_INITIALIZATION_INFO *plaintext_converter_defaults
                                (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf);

void plaintext_convert_output_unit (CONVERTER *self,
                                    const OUTPUT_UNIT *output_unit);
char *plaintext_output (CONVERTER *self, DOCUMENT *document);

char *plaintext_convert (CONVERTER *self, DOCUMENT *document);

char *plaintext_convert_tree (CONVERTER *self, const ELEMENT *tree);

void plaintext_free_converter (CONVERTER *self);
void plaintext_converter_initialize (CONVERTER *self);

/* used in the Info converter */
void plaintext_conversion_initialization (CONVERTER *self, DOCUMENT *document);
void plaintext_conversion_finalization (CONVERTER *self);
const enum command_id *plaintext_get_informative_global_commands (void);

void plaintext_node_name (CONVERTER *self, const ELEMENT *element,
                          STRING_WITH_WIDTH *string_result);
void plaintext_cache_node_names (CONVERTER *self,
                                 NODE_RELATIONS_LIST *nodes_list);
void plaintext_process_footnotes (CONVERTER *self,
                                  const OUTPUT_UNIT *output_unit);
void plaintext_process_printindex (CONVERTER *self,
                                   const ELEMENT *printindex, int in_info);
char *plaintext_image_formatted_text (CONVERTER *self, const ELEMENT *element,
                                      const char *basefile, const char *text);

void plaintext_setup_output_encoding (CONVERTER *self);
void plaintext_encode_string (CONVERTER *self, const char *text, TEXT *result);

void plaintext_add_image (CONVERTER *self, const ELEMENT *element,
                     int lines_count, int image_width, int no_align);
void convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *e);
/* TODO add plaintext_ prefix for all the functions? */
void push_count_context (COUNT_CONTEXT_STACK *stack,
                         COUNT_CONTEXT count_context);
void stream_output (CONVERTER *self, const char *text);
void stream_output_add_text (CONVERTER *self, const char *text);
void stream_output_add_next (CONVERTER *self, const char *text);
char *pending_to_text (const PENDING_TEXT_LIST *pending_texts);
void stream_final_result (CONVERTER *self, TEXT *result);

void plaintext_add_target_location (CONVERTER *self, const ELEMENT *element);
void plaintext_convert_line (CONVERTER *self, const ELEMENT *converted,
                             int indent_length, int indent_length_next);
void plaintext_convert_line_new_context (CONVERTER *self,
                          const ELEMENT *converted,
                          int indent_length, int indent_length_next,
                          int suppress_styles, int no_added_eol,
                          PENDING_TEXT_COUNT_LINE_COUNT *output);

void pop_count_context (COUNT_CONTEXT_STACK *stack);
void add_newline_if_needed (CONVERTER *self);

decl_stack_fns(COUNT_CONTEXT_STACK, count_context, COUNT_CONTEXT);
decl_stack_fns(FORMATTER_STACK, formatter, FORMATTER);
#endif
