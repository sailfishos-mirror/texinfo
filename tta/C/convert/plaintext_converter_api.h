/* plainttext_converter_api.h - Plaintext converter API */
#ifndef PLAINTEXT_CONVERTER_API_H
#define PLAINTEXT_CONVERTER_API_H

/* Copyright 2010-2026 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>. */

/* Plaintext Converter API */

#include "document_types.h"
#include "converter_types.h"

CONVERTER_INITIALIZATION_INFO *plaintext_converter_defaults
                                (enum converter_format format,
                                 const CONVERTER_INITIALIZATION_INFO *conf);

char *plaintext_output (CONVERTER *converter, DOCUMENT *document);

char *plaintext_convert (CONVERTER *converter, DOCUMENT *document);

char *plaintext_convert_tree (CONVERTER *converter,
                                 const ELEMENT *tree);

void plaintext_free_converter (CONVERTER *converter);
void plaintext_converter_initialize (CONVERTER *self);

#endif
