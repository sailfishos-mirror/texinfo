/* convert_to_texinfo.h - definitions for convert_to_texinfo.c */
#ifndef CONVERT_TO_TEXINFO_H
#define CONVERT_TO_TEXINFO_H

#include "tree_types.h"

char *convert_to_texinfo (ELEMENT *e);
char *convert_contents_to_texinfo (ELEMENT *e);
char *link_element_to_texi (ELEMENT *element);
char *target_element_to_texi_label (ELEMENT *element);

int check_node_same_texinfo_code(ELEMENT *reference_node,
                                 ELEMENT *node_content);
char *root_heading_command_to_texinfo (ELEMENT *element);

#endif
