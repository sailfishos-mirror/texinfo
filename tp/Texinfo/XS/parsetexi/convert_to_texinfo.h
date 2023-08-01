/* convert_to_texinfo.h - definitions for convert_to_texinfo.c */
#ifndef CONVERT_TO_TEXINFO_H
#define CONVERT_TO_TEXINFO_H

#include "tree_types.h"

char *convert_to_texinfo (ELEMENT *e);
char *convert_contents_to_texinfo (ELEMENT *e);
char *node_extra_to_texi (NODE_SPEC_EXTRA *nse);

#endif
