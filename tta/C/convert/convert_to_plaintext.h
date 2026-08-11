/* convert_to_plaintext.h - definitions for convert_to_plaintext.c */
#ifndef CONVERT_TO_PLAINTEXT_H
#define CONVERT_TO_PLAINTEXT_H

#include "command_ids.h"
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

/*
#define HF_pre_class            0x0008
#define HF_small_block_command  0x0010
#define HF_HTML_align           0x0020
#define HF_special_variety      0x0040
#define HF_indented_preformatted 0x0080
#define HF_style_command         0x0100
*/

typedef struct STRING_COUNT_LINE_COUNT {
    char *string;
    int count;
    int line_count;
} STRING_COUNT_LINE_COUNT;

void plaintext_format_setup (enum converter_format format);

CONVERTER_INITIALIZATION_INFO *plaintext_converter_defaults
                                (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf);

char *plaintext_convert_output_unit (CONVERTER *self,
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

void convert_to_plaintext_internal (CONVERTER *self, const ELEMENT *e);
/* TODO add plaintext_ prefix for all the functions? */
void stream_output (CONVERTER *self, const char *text);
void stream_output_encoded (CONVERTER *self, const char *encoded);
void stream_output_add_text (CONVERTER *self, const char *text);
void stream_output_add_next (CONVERTER *self, const char *text);
const char *stream_result (CONVERTER *self);
char *stream_yield_result (CONVERTER *self);

void plaintext_convert_line_new_context (CONVERTER *self,
                          const ELEMENT *converted,
                          int indent_length, int indent_length_next,
                           /* TODO $formatter_conf, */
                          STRING_COUNT_LINE_COUNT *output);
void plaintext_convert_line (CONVERTER *self, const ELEMENT *converted,
                             int indent_length, int indent_length_next);

void pop_count_context (COUNT_CONTEXT_STACK *stack);
void add_newline_if_needed (CONVERTER *self);

decl_stack_fns(COUNT_CONTEXT_STACK, count_context, COUNT_CONTEXT);
decl_stack_fns(FORMATTER_STACK, formatter, FORMATTER);
#endif
