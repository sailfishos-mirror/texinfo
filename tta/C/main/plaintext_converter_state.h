/* plaintext_converter_state.h - plaintext-specific converter state */

#ifndef PLAINTEXT_CONVERTER_STATE_H
#define PLAINTEXT_CONVERTER_STATE_H

typedef struct COUNT_CONTEXT {
  size_t lines;
  size_t bytes;
  TEXT result;
  /* TEXT pending_text; */
} COUNT_CONTEXT;

typedef struct {
    COUNT_CONTEXT *stack;
    size_t top;   /* One above last pushed. */
    size_t space;
} COUNT_CONTEXT_STACK;

typedef struct PLAINTEXT_CONVERTER_STATE {
    COUNT_CONTEXT_STACK count_context;
} PLAINTEXT_CONVERTER_STATE;


#endif
