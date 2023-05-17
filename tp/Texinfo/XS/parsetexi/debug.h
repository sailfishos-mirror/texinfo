/* debug.h - declarations for debug.c */
#ifndef TEXINFO_DEBUG_H
#define TEXINFO_DEBUG_H

/* We define TEXINFO_DEBUG_H instead of DEBUG_H to avoid a clash with Perl
   header files in some versions of Perl. */

#include "tree_types.h"

void debug (char *s, ...);
void debug_nonl (char *s, ...);
extern int debug_output;
void debug_print_element (ELEMENT *e, int print_parent);

#endif
