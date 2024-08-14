/* html_converter_types.h - declarations of types used in conversion to HTML */
#ifndef HTML_CONVERTER_TYPES_H
#define HTML_CONVERTER_TYPES_H

/* Copyright 2010-2024 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

#include "command_ids.h"

enum count_elements_in_filename_type {
   CEFT_total,
   CEFT_remaining,
   CEFT_current,
};

enum css_info_type {
   CI_css_info_element_classes,
   CI_css_info_imports, 
   CI_css_info_rules,
};

/* HTML command data flags */
#define HF_composition_context  0x0001
#define HF_format_context       0x0002
#define HF_format_raw           0x0004
#define HF_pre_class            0x0008
#define HF_small_block_command  0x0010
#define HF_HTML_align           0x0020
#define HF_special_variety      0x0040
#define HF_indented_preformatted 0x0080
#define HF_style_command         0x0100

typedef struct HTML_COMMAND_STRUCT {
    unsigned long flags;
    enum command_id pre_class_cmd;
    enum command_id upper_case_cmd;
} HTML_COMMAND_STRUCT;

extern HTML_COMMAND_STRUCT html_commands_data[BUILTIN_CMD_NUMBER];

#endif
