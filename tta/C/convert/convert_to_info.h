/* convert_to_info.h - definitions for convert_to_info.c */
#ifndef CONVERT_TO_INFO_H
#define CONVERT_TO_INFO_H

#include "document_types.h"
#include "converter_types.h"

CONVERTER_INITIALIZATION_INFO *info_converter_defaults
                                (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf);

char *info_output (CONVERTER *self, DOCUMENT *document);

void info_format_printindex (CONVERTER *self, const ELEMENT *printindex);
void info_format_ref (CONVERTER *self, enum command_id cmd,
                      const ELEMENT *element);
void info_format_node (CONVERTER *self, const ELEMENT *node,
                       const NODE_RELATIONS *node_relations);
#endif
