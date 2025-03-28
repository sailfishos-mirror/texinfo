/* customization_options.h - declarations for customization_options.c */
#ifndef CUSTOMIZATION_OPTIONS_H
#define CUSTOMIZATION_OPTIONS_H

/* Copyright 2010-2025 Free Software Foundation, Inc.

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

#include <stddef.h>

#include "option_types.h"
#include "options_data.h"
#include "command_ids.h"
/* for enum command_location */
#include "document_types.h"
#include "converter_types.h"

extern OPTIONS txi_base_options;
extern OPTION *txi_base_sorted_options[TXI_OPTIONS_NR];
extern COMMAND_OPTION_NUMBER_CMD
         txi_options_command_map[TXI_COMMAND_OPTIONS_NR];

/* in options_init_free.c */
void initialize_options (OPTIONS *options);
void setup_sortable_options (OPTION **to_sort, OPTIONS *options);
void setup_options_command_map (COMMAND_OPTION_NUMBER_CMD *options_command_map,
                                const OPTIONS *options);



OPTION **new_sorted_options (OPTIONS *options);
OPTION *find_option_string (OPTION **sorted_options, const char *name);



void txi_initialise_base_options (void);



OPTIONS *new_options (void);

void clear_option (OPTION *option);
void free_option (OPTION *option);
void initialize_option (OPTION *option, enum global_option_type type,
                        const char *name, unsigned long flags);
int option_set_conf (OPTION *option, int int_value, const char *char_value);
void option_force_conf (OPTION *option, int int_value, const char *char_value);
void copy_option (OPTION *destination, const OPTION *source);



void initialize_options_list (OPTIONS_LIST *options_list);
void clear_options_list (OPTIONS_LIST *options_list);
void free_options_list (OPTIONS_LIST *options_list);
int option_number_in_option_list (OPTIONS_LIST *options_list, size_t number);
void options_list_add_option_number (OPTIONS_LIST *options_list,
                                     size_t number);
OPTION *options_list_remove_option_number (OPTIONS_LIST *options_list,
                                           size_t number);
void copy_options_list (OPTIONS_LIST *options_list,
                        const OPTIONS_LIST *options_src);
void copy_options_list_set_configured (OPTIONS *options,
                                       OPTION **sorted_options,
                                       const OPTIONS_LIST *options_list,
                                       int set_configured);

OPTION *add_option_value (OPTIONS_LIST *options_list,
                          const char *name,
                          int int_value, const char *char_value);
OPTION *add_new_button_option (OPTIONS_LIST *options_list,
                              const char *option_name,
                              BUTTON_SPECIFICATION_LIST *buttons);
OPTION *add_option_strlist_value (OPTIONS_LIST *options_list,
                          const char *option_name, const STRING_LIST *strlist);
char *show_options_list_options_set (OPTIONS_LIST *options_list);



OPTION *get_converter_command_option (OPTION **sorted_options,
                                      enum command_id cmd);
void set_informative_command_value (OPTION **sorted_options,
                                    const ELEMENT *element);
const ELEMENT *set_global_document_command (GLOBAL_COMMANDS *global_commands,
                             OPTION **sorted_options, enum command_id cmd,
                             enum command_location command_location);



CONVERTER_INITIALIZATION_INFO *new_converter_initialization_info (void);

#endif
