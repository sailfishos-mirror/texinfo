/* texinfo.h - Texinfo API */
#ifndef TEXINFO_H
#define TEXINFO_H

#include <stddef.h>

#include "document_types.h"
#include "converter_types.h"
#include "option_types.h"

/* document transformations selection flags */
#define STTF_complete_tree_nodes_menus              0x0001
#define STTF_complete_tree_nodes_missing_menu       0x0002
#define STTF_fill_gaps_in_sectioning                0x0004
#define STTF_insert_nodes_for_sectioning_commands   0x0008
#define STTF_move_index_entries_after_items         0x0010
#define STTF_regenerate_master_menu                 0x0020
#define STTF_relate_index_entries_to_table_items    0x0040

/* document structuring selection flags */
#define STTF_floats                                 0x0080
#define STTF_no_warn_non_empty_parts                0x0100
#define STTF_nodes_tree                             0x0200
#define STTF_setup_index_entries_sort_strings       0x0400

/* for complete_tree_nodes_menus, complete_tree_nodes_missing_menu
   and regenerate_master_menu */
#define STTF_complete_menus_use_sections            0x0800

/* not strictly a structuring and transformations selection flag, used to
   mark that splitting is possible for a format */
#define STTF_split                                  0x1000

void txi_general_setup (int texinfo_uninstalled,
                   const char *converterdatadir, const char *tp_builddir,
                   const char *top_srcdir, int use_external_translate_string);

void txi_set_base_default_options (OPTIONS_LIST *options,
                                   const char *locale_encoding,
                                   const char *program_file);

void txi_customization_loading_setup (int embedded_interpreter,
                   int *argc_ref, char ***argv_ref, char ***env_ref);

void txi_converter_output_format_setup (const char *converted_format,
                                        const char *external_module);

CONVERTER_INITIALIZATION_INFO *txi_converter_format_defaults (
                               const char *format_str,
                               OPTIONS_LIST *customizations);

void txi_parser (const char *file_path, const char *locale_encoding,
                 const VALUE_LIST *values, OPTIONS_LIST *options);

DOCUMENT *txi_parse_texi_file (const char *input_file_path, int *status);

void txi_complete_document (DOCUMENT *document, unsigned long flags,
                            int format_menu);

void txi_converter_initialization_setup (CONVERTER_INITIALIZATION_INFO *conf,
                                    const DEPRECATED_DIRS_LIST *deprecated_dirs,
                                    const OPTIONS_LIST *customizations);
int txi_load_init_file (const char *file, int embedded_interpreter);
void txi_customization_loading_finish (int embedded_interpreter);

CONVERTER *txi_converter_setup (const char *external_module,
                     const char *converted_format,
                     const CONVERTER_INITIALIZATION_INFO *converter_init_info);

char *txi_converter_output (const char *external_module,
                            CONVERTER *converter, DOCUMENT *document);
char *txi_converter_convert (CONVERTER *converter, DOCUMENT *document);

size_t txi_handle_parser_error_messages (DOCUMENT *document, int no_warn,
                                       int use_filename,
                                       const char *message_encoding);
size_t txi_handle_document_error_messages (DOCUMENT *document, int no_warn,
                                         int use_filename,
                                         const char *message_encoding);
size_t txi_handle_converter_error_messages (CONVERTER *converter, int no_warn,
                                          int use_filename,
                                          const char *message_encoding);

void txi_document_remove (DOCUMENT *document);

void txi_converter_reset (CONVERTER *converter);
void txi_converter_destroy (CONVERTER *converter);

#endif
