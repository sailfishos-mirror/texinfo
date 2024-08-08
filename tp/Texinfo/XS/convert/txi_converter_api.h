/* txi_html_api.h - API of conversion of Texinfo document to HTML */
#ifndef TXI_HTML_API_H
#define TXI_HTML_API_H

#include "document_types.h"

/* document structuring and transformations selection flags */
#define STTF_relate_index_entries_to_table_items    0x0001
#define STTF_move_index_entries_after_items         0x0002
#define STTF_insert_nodes_for_sectioning_commands   0x0004
#define STTF_no_warn_non_empty_parts                0x0008
#define STTF_complete_tree_nodes_menus              0x0010
#define STTF_complete_tree_nodes_missing_menu       0x0020
#define STTF_regenerate_master_menu                 0x0040
#define STTF_nodes_tree                             0x0080
#define STTF_floats                                 0x0100
#define STTF_setup_index_entries_sort_strings       0x0200
/* for complete_tree_nodes_menus, complete_tree_nodes_missing_menu
   and regenerate_master_menu */
#define STTF_complete_menus_use_sections            0x0400

/* in api.c */
size_t parse_file (const char *input_file_path, int *status);

/* locales dir for output strings translations */
void txi_setup (const char *localesdir, int texinfo_uninstalled,
                const char *tp_builddir,
                const char *pkgdatadir, const char *top_srcdir);

void
txi_parser (const char *file_path, const char *locale_encoding,
            const char **expanded_formats);

int txi_complete_document (DOCUMENT *document, unsigned long flags,
                          int format_menu);

CONVERTER *txi_converter (const char *format, const char *locale_encoding,
                          const char *program_file);

char *txi_html_output (CONVERTER *converter, DOCUMENT *document);
#endif
