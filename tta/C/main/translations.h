/* translations.h - declarations for translations.c */
#ifndef TRANSLATIONS_H
#define TRANSLATIONS_H

#include <stddef.h>

#include "options_data.h"
#include "tree_types.h"
#include "document_types.h"

// msgfmt --statistics po_document/*.pot
#define TXI_DOCUMENT_TRANSLATED_STRINGS_NR 243

/* TXI_CONVERT_STRINGS_NR and TXI_PARSER_STRINGS_NR are used to
   dimension hashes, such that it is not a big deal if their values
   diverge somewhat from the intended dimensioning values.  Besides,
   it is possible that the numbers currently used are not optimal,
   for instance it is likely that a document never needs all the
   translated strings.
 */
/* there are two translated strings in parser related to definition
   name and category, that are not shared with the remaining of the
   codes
 */
#define TXI_PARSER_STRINGS_NR 2

/* number of document strings except for parser strings */
#define TXI_CONVERT_STRINGS_NR \
  (TXI_DOCUMENT_TRANSLATED_STRINGS_NR - TXI_PARSER_STRINGS_NR)

extern LANG_TRANSLATION **converters_translation_cache;

void set_output_strings_translate_method (int use_external_translate_string_in);
void setup_output_strings_translations (const char *localesdir,
                                        const char *strings_textdomain_in);

void free_translation_cache (LANG_TRANSLATION **translation_cache);

const LANG_TRANSLATION *set_lang_info_translation (
                        LANG_TRANSLATION ***lang_translations_ptr,
                        DOCUMENT_LANG_INFO *info,
                        size_t cache_size);
const LANG_TRANSLATION *new_element_language_translation (
                        LANG_TRANSLATION ***lang_translations_ptr,
                        const ELEMENT *element,
                        size_t cache_size);
const LANG_TRANSLATION *set_lang_info_copy_translation (
                        LANG_TRANSLATION ***lang_translations_ptr,
                        const DOCUMENT_LANG_INFO *info,
                        size_t cache_size);
TRANSLATION_TREE *add_translation_tree (
                   LANG_TRANSLATION_TREE_LIST *translations,
                      const char *translated);
const LANG_TRANSLATION *set_translations_documentlanguage (
                                   LANG_TRANSLATION ***lang_translations,
                                   const char *documentlanguage,
                                   const LANG_TRANSLATION *current_lang_translations,
                                   size_t cache_size);
const LANG_TRANSLATION *set_translations_documentscript (
                                 LANG_TRANSLATION ***lang_translations,
                                 const char *documentscript,
                                 const LANG_TRANSLATION *current_lang_translations,
                                 size_t cache_size);
const LANG_TRANSLATION *set_translations_documentlanguagevariant (
                                 LANG_TRANSLATION ***lang_translations,
                                 const STRING_LIST *documentlanguagevariant,
                                 const LANG_TRANSLATION *current_lang_translations,
                                 size_t cache_size);
const LANG_TRANSLATION *set_preamble_language_commands (
                                PREAMBLE_LANG_CMD_LIST *preamble_lang,
                                LANG_TRANSLATION ***lang_translations,
                                const char *documentlanguage,
                                const char *documentscript,
                                size_t cache_size);
const LANG_TRANSLATION *reset_lang_translation_from_customization (
                                LANG_TRANSLATION ***lang_translations,
                                const char *set_documentlanguage,
                                const char *set_documentscript,
                                size_t cache_size);
char *translate_string (const char *string, const char *language_env,
                        const char *translation_context);
TRANSLATION_TREE *cache_translate_string (const char *string,
                        const LANG_TRANSLATION *lang_translation,
                        const char *translation_context);
DOCUMENT *replace_convert_substrings (const char *translated_string,
                          NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                          int debug_level);
ELEMENT *substitute_substrings_in_tree (ELEMENT *tree,
                     const NAMED_STRING_ELEMENT_LIST *replaced_substrings);
char *replace_substrings (const char *string,
                    const NAMED_STRING_ELEMENT_LIST *replaced_substrings);

ELEMENT *gdt_tree (const char *string, DOCUMENT *document,
                   const LANG_TRANSLATION *lang_translation,
                   NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                   int debug_level, const char *translation_context);

char *gdt_string (const char *string,
                  const LANG_TRANSLATION *lang_translation,
                  NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                  const char *translation_context);

ELEMENT *pgdt_tree (const char *translation_context, const char *string,
                    DOCUMENT *document,
                    const LANG_TRANSLATION *lang_translation,
                    NAMED_STRING_ELEMENT_LIST *replaced_substrings,
                    int debug_level);

NAMED_STRING_ELEMENT_LIST * new_named_string_element_list (void);
void add_string_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                              const char *name, char *string);
void add_element_to_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel,
                                               const char *name,
                                               ELEMENT *element);
void destroy_named_string_element_list (NAMED_STRING_ELEMENT_LIST *nsel);

#endif
