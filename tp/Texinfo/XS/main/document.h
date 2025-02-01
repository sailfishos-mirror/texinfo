/* document.h - declarations for document.c */
#ifndef DOCUMENT_H
#define DOCUMENT_H

#include <stddef.h>

#include "tree_types.h"
#include "option_types.h"
#include "options_data.h"
#include "document_types.h"

/* avoid an interdependency with convert_to_text.h */
struct TEXT_OPTIONS;

typedef struct INSTALLED_PATHS {
    char *converterdatadir;
} INSTALLED_PATHS;

typedef struct UNINSTALLED_PATHS {
    char *tp_builddir;
    char *tp_srcdir;
} UNINSTALLED_PATHS;

typedef struct PATHS_INFORMATION {
    int texinfo_uninstalled;
    union {
      INSTALLED_PATHS installed;
      UNINSTALLED_PATHS uninstalled;
    } p;
} PATHS_INFORMATION;

extern PATHS_INFORMATION txi_paths_info;

void setup_texinfo_main (int texinfo_uninstalled,
                    const char *converterdatadir,
                 const char *tp_builddir, const char *tp_srcdir);


DOCUMENT *retrieve_document (size_t document_descriptor);
DOCUMENT *new_document (void);
void register_document_options (DOCUMENT *document, OPTIONS *options,
                                OPTION **sorted_options);
void register_document_convert_index_text_options (DOCUMENT *document,
                                         struct TEXT_OPTIONS *text_options);

void set_document_options (DOCUMENT *document,
                      const OPTIONS_LIST *program_options,
                      const OPTIONS_LIST *cmdline_options,
                      const OPTIONS_LIST *init_files_options);

const MERGED_INDICES *document_merged_indices (DOCUMENT *document);
const INDICES_SORT_STRINGS *document_indices_sort_strings (
                               DOCUMENT *document,
                               ERROR_MESSAGE_LIST *error_messages,
                               OPTIONS *options);

COLLATION_INDICES_SORTED_BY_INDEX *sorted_indices_by_index (
                         DOCUMENT *document,
                         ERROR_MESSAGE_LIST *error_messages,
                         OPTIONS *options, int use_unicode_collation,
                         const char *collation_language,
                         const char *collation_locale);
COLLATION_INDICES_SORTED_BY_LETTER *sorted_indices_by_letter (
                          DOCUMENT *document,
                          ERROR_MESSAGE_LIST *error_messages,
                          OPTIONS *options, int use_unicode_collation,
                          const char *collation_language,
                          const char *collation_locale);

void remove_document_descriptor (size_t document_descriptor);
ELEMENT *unregister_document_merge_with_document (size_t document_descriptor,
                                                  DOCUMENT *document);

void add_other_global_info_string (OTHER_GLOBAL_INFO *other_global_info,
                                   const char *key, const char *value);

void set_output_encoding (OPTIONS *customization_information,
                          DOCUMENT *document);

void wipe_document_parser_errors (size_t document_descriptor);
void wipe_document_errors (size_t document_descriptor);

#endif
