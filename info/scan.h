/* scan.h -- Exported functions and variables from scan.c.

   Copyright 1993-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

   Originally written by Brian Fox. */

#ifndef SCAN_H
#define SCAN_H

#include "nodes.h"
#include "window.h"

/* Variable which holds the most recent filename parsed as a result of
   calling info_parse_xxx (). */
extern char *info_parsed_filename;

/* Variable which holds the most recent nodename parsed as a result of
   calling info_parse_xxx (). */
extern char *info_parsed_nodename;

/* Parse the filename and nodename out of STRING. */ 
void info_parse_node (char *string);

size_t read_quoted_string (char *start, char *terminator, size_t lines,
                           char **output);

/* Get the menu entry associated with LABEL in NODE.  Return a
   pointer to the reference if found, or NULL.  If SLOPPY, accept
   initial substrings and check insensitively to case. */
const REFERENCE *info_get_menu_entry_by_label (const NODE *node,
                                               const char *label, int sloppy);

/* A utility function for concatenating REFERENCE **.  Returns a new
   REFERENCE ** which is the concatenation of REF1 and REF2.  The REF1
   and REF2 arrays are freed, but their contents are not. */
REFERENCE **info_concatenate_references (REFERENCE * const *ref1,
                                         REFERENCE * const *ref2);

/* Copy an existing reference into new memory.  */
REFERENCE *info_copy_reference (const REFERENCE *src);

/* Copy a list of existing references into new memory.  */
REFERENCE **info_copy_references (REFERENCE * const *ref1);

/* Free the data associated with a single REF */
void info_reference_free (REFERENCE *ref);

/* Free the data associated with REFERENCES. */
void info_free_references (REFERENCE **references);

/* Create new REFERENCE structure. */
REFERENCE *info_new_reference (const char *filename, const char *nodename);

/* Free a NODE object that is suitable for being placed in a window. */
void free_history_node (NODE *node);

/* Search for sequences of whitespace or newlines in STRING, replacing
   all such sequences with just a single space.  Remove whitespace from
   start and end of string. */
void canonicalize_whitespace (char *string);

void scan_node_contents (NODE *node, FILE_BUFFER *fb, TAG **tag_ptr);

#endif /* not SCAN_H */
