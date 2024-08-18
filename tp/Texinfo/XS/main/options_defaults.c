/* Automatically generated from regenerate_C_options_info.pl */

#include <config.h>

#include "option_types.h"
#include "options_types.h"
#include "customization_options.h"
#include "options_defaults.h"


/* array_cmdline */

void
set_array_cmdline_options_defaults (OPTIONS *options)
{
  clear_option (&options->CSS_FILES);
  clear_option (&options->CSS_REFS);
  clear_option (&options->EXPANDED_FORMATS);
  clear_option (&options->INCLUDE_DIRECTORIES);
  clear_option (&options->TEXINFO_LANGUAGE_DIRECTORIES);
}

void
add_array_cmdline_options_defaults (OPTIONS_LIST *options_list)
{
  OPTION *option;

  option = new_option (GOT_bytes_string_list, "CSS_FILES", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_char_string_list, "CSS_REFS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_bytes_string_list, "EXPANDED_FORMATS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_file_string_list, "INCLUDE_DIRECTORIES", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_file_string_list, "TEXINFO_LANGUAGE_DIRECTORIES", 0);
  options_list_add_option (options_list, option);
}


/* converter_cmdline */

void
set_converter_cmdline_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->SPLIT_SIZE, 300000, 0);
  option_set_conf (&options->FILLCOLUMN, 72, 0);
  option_set_conf (&options->NUMBER_SECTIONS, 1, 0);
  option_set_conf (&options->NUMBER_FOOTNOTES, 1, 0);
  option_set_conf (&options->TRANSLITERATE_FILE_NAMES, 1, 0);
  option_set_conf (&options->SPLIT, -2, 0);
  option_set_conf (&options->HEADERS, 1, 0);
  option_set_conf (&options->NODE_FILES, -1, 0);
  option_set_conf (&options->VERBOSE, -1, 0);
  option_set_conf (&options->OUTFILE, -2, 0);
  option_set_conf (&options->SUBDIR, -2, 0);
  option_set_conf (&options->ENABLE_ENCODING, 1, 0);
}

void
add_converter_cmdline_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_integer, "SPLIT_SIZE", 300000, 0);
  add_new_option_value (options_list, GOT_integer, "FILLCOLUMN", 72, 0);
  add_new_option_value (options_list, GOT_integer, "NUMBER_SECTIONS", 1, 0);
  add_new_option_value (options_list, GOT_integer, "NUMBER_FOOTNOTES", 1, 0);
  add_new_option_value (options_list, GOT_integer, "TRANSLITERATE_FILE_NAMES", 1, 0);
  add_new_option_value (options_list, GOT_char, "SPLIT", -2, 0);
  add_new_option_value (options_list, GOT_integer, "HEADERS", 1, 0);
  add_new_option_value (options_list, GOT_integer, "NODE_FILES", -1, 0);
  add_new_option_value (options_list, GOT_integer, "VERBOSE", -1, 0);
  add_new_option_value (options_list, GOT_char, "OUTFILE", -2, 0);
  add_new_option_value (options_list, GOT_char, "SUBDIR", -2, 0);
  add_new_option_value (options_list, GOT_integer, "ENABLE_ENCODING", 1, 0);
}


/* converter_customization */

void
set_converter_customization_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->TOP_NODE_UP, -2, "(dir)");
  option_set_conf (&options->BASEFILENAME_LENGTH, 255-10, 0);
  option_set_conf (&options->DOC_ENCODING_FOR_INPUT_FILE_NAME, 1, 0);
  option_set_conf (&options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME, 0, 0);
  option_set_conf (&options->IMAGE_LINK_PREFIX, -2, 0);
  option_set_conf (&options->CASE_INSENSITIVE_FILENAMES, 0, 0);
  option_set_conf (&options->DEBUG, 0, 0);
  option_set_conf (&options->HANDLER_FATAL_ERROR_LEVEL, 100, 0);
  option_set_conf (&options->TEST, 0, 0);
  option_set_conf (&options->TEXTCONTENT_COMMENT, -1, 0);
  option_set_conf (&options->TEXINFO_DTD_VERSION, -2, "7.1");
  option_set_conf (&options->USE_UNICODE_COLLATION, 1, 0);
  option_set_conf (&options->AFTER_BODY_OPEN, -2, 0);
  option_set_conf (&options->AFTER_SHORT_TOC_LINES, -2, 0);
  option_set_conf (&options->AFTER_TOC_LINES, -2, 0);
  option_set_conf (&options->ASCII_DASHES_AND_QUOTES, -1, 0);
  option_set_conf (&options->ASCII_GLYPH, -1, 0);
  option_set_conf (&options->ASCII_PUNCTUATION, -1, 0);
  option_set_conf (&options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN, -1, 0);
  option_set_conf (&options->AUTO_MENU_MAX_WIDTH, -1, 0);
  option_set_conf (&options->BEFORE_SHORT_TOC_LINES, -2, 0);
  option_set_conf (&options->BEFORE_TOC_LINES, -2, 0);
  option_set_conf (&options->BIG_RULE, -2, 0);
  option_set_conf (&options->BODY_ELEMENT_ATTRIBUTES, -2, 0);
  option_set_conf (&options->CLASS_BEGIN_USEPACKAGE, -2, 0);
  option_set_conf (&options->COPIABLE_LINKS, -1, 0);
  option_set_conf (&options->CHAPTER_HEADER_LEVEL, -1, 0);
  option_set_conf (&options->CHECK_HTMLXREF, -1, 0);
  option_set_conf (&options->CLOSE_DOUBLE_QUOTE_SYMBOL, -2, 0);
  option_set_conf (&options->CLOSE_QUOTE_SYMBOL, -2, 0);
  option_set_conf (&options->COLLATION_LANGUAGE, -2, 0);
  option_set_conf (&options->COMMAND_LINE_ENCODING, -2, 0);
  option_set_conf (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE, -1, 0);
  option_set_conf (&options->CONTENTS_OUTPUT_LOCATION, -2, 0);
  option_set_conf (&options->CONVERT_TO_LATEX_IN_MATH, -1, 0);
  option_set_conf (&options->DATE_IN_HEADER, -1, 0);
  option_set_conf (&options->DEFAULT_RULE, -2, 0);
  option_set_conf (&options->DEF_TABLE, -1, 0);
  option_set_conf (&options->DO_ABOUT, -1, 0);
  option_set_conf (&options->DOCTYPE, -2, 0);
  option_set_conf (&options->DOCUMENTLANGUAGE_COLLATION, -1, 0);
  option_set_conf (&options->END_USEPACKAGE, -2, 0);
  option_set_conf (&options->EPUB_CREATE_CONTAINER_FILE, -1, 0);
  option_set_conf (&options->EPUB_KEEP_CONTAINER_FOLDER, -1, 0);
  option_set_conf (&options->EXTENSION, -2, 0);
  option_set_conf (&options->EXTERNAL_CROSSREF_EXTENSION, -2, 0);
  option_set_conf (&options->EXTERNAL_CROSSREF_SPLIT, -2, 0);
  option_set_conf (&options->EXTERNAL_DIR, -2, 0);
  option_set_conf (&options->EXTRA_HEAD, -2, 0);
  option_set_conf (&options->FOOTNOTE_END_HEADER_LEVEL, -1, 0);
  option_set_conf (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL, -1, 0);
  option_set_conf (&options->HEADER_IN_TABLE, -1, 0);
  option_set_conf (&options->HIGHLIGHT_SYNTAX, -2, 0);
  option_set_conf (&options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE, -2, 0);
  option_set_conf (&options->HTML_MATH, -2, 0);
  option_set_conf (&options->HTML_ROOT_ELEMENT_ATTRIBUTES, -2, 0);
  option_set_conf (&options->HTMLXREF_FILE, -2, 0);
  option_set_conf (&options->HTMLXREF_MODE, -2, 0);
  option_set_conf (&options->ICONS, -1, 0);
  option_set_conf (&options->INDEX_ENTRY_COLON, -2, 0);
  option_set_conf (&options->INDEX_SPECIAL_CHARS_WARNING, -1, 0);
  option_set_conf (&options->INFO_JS_DIR, -2, 0);
  option_set_conf (&options->INFO_SPECIAL_CHARS_QUOTE, -2, 0);
  option_set_conf (&options->INFO_SPECIAL_CHARS_WARNING, -1, 0);
  option_set_conf (&options->IGNORE_REF_TO_TOP_NODE_UP, -1, 0);
  option_set_conf (&options->INLINE_CSS_STYLE, -1, 0);
  option_set_conf (&options->INPUT_FILE_NAME_ENCODING, -2, 0);
  option_set_conf (&options->JS_WEBLABELS, -2, 0);
  option_set_conf (&options->JS_WEBLABELS_FILE, -2, 0);
  option_set_conf (&options->LATEX_FLOATS_FILE_EXTENSION, -2, "tfl");
  option_set_conf (&options->LOCALE_ENCODING, -2, 0);
  option_set_conf (&options->L2H_CLEAN, -1, 0);
  option_set_conf (&options->L2H_FILE, -2, 0);
  option_set_conf (&options->L2H_HTML_VERSION, -2, 0);
  option_set_conf (&options->L2H_L2H, -2, 0);
  option_set_conf (&options->L2H_SKIP, -1, 0);
  option_set_conf (&options->L2H_TMP, -2, 0);
  option_set_conf (&options->MATHJAX_CONFIGURATION, -2, 0);
  option_set_conf (&options->MATHJAX_SCRIPT, -2, 0);
  option_set_conf (&options->MATHJAX_SOURCE, -2, 0);
  option_set_conf (&options->MAX_HEADER_LEVEL, -1, 0);
  option_set_conf (&options->MENU_ENTRY_COLON, -2, 0);
  option_set_conf (&options->MENU_SYMBOL, -2, 0);
  option_set_conf (&options->MESSAGE_ENCODING, -2, 0);
  option_set_conf (&options->MONOLITHIC, -1, 0);
  option_set_conf (&options->NO_CSS, -1, 0);
  option_set_conf (&options->NO_NUMBER_FOOTNOTE_SYMBOL, -2, 0);
  option_set_conf (&options->NO_CUSTOM_HTML_ATTRIBUTE, -1, 0);
  option_set_conf (&options->NODE_NAME_IN_INDEX, -1, 0);
  option_set_conf (&options->NODE_NAME_IN_MENU, -1, 0);
  option_set_conf (&options->NO_TOP_NODE_OUTPUT, -1, 0);
  option_set_conf (&options->OPEN_DOUBLE_QUOTE_SYMBOL, -2, 0);
  option_set_conf (&options->OPEN_QUOTE_SYMBOL, -2, 0);
  option_set_conf (&options->OUTPUT_CHARACTERS, -1, 0);
  option_set_conf (&options->OUTPUT_ENCODING_NAME, -2, 0);
  option_set_conf (&options->OUTPUT_FILE_NAME_ENCODING, -2, 0);
  option_set_conf (&options->OUTPUT_PERL_ENCODING, -2, 0);
  option_set_conf (&options->PACKAGE, -2, 0);
  option_set_conf (&options->PACKAGE_AND_VERSION, -2, 0);
  option_set_conf (&options->PACKAGE_NAME, -2, 0);
  option_set_conf (&options->PACKAGE_URL, -2, 0);
  option_set_conf (&options->PACKAGE_VERSION, -2, 0);
  option_set_conf (&options->PRE_BODY_CLOSE, -2, 0);
  option_set_conf (&options->PREFIX, -2, 0);
  option_set_conf (&options->PROGRAM, -2, 0);
  option_set_conf (&options->PROGRAM_NAME_IN_ABOUT, -1, 0);
  option_set_conf (&options->PROGRAM_NAME_IN_FOOTER, -1, 0);
  option_set_conf (&options->SECTION_NAME_IN_TITLE, -1, 0);
  option_set_conf (&options->SHORT_TOC_LINK_TO_TOC, -1, 0);
  option_set_conf (&options->SHOW_TITLE, -1, 0);
  option_set_conf (&options->T4H_LATEX_CONVERSION, -2, 0);
  option_set_conf (&options->T4H_MATH_CONVERSION, -2, 0);
  option_set_conf (&options->T4H_TEX_CONVERSION, -2, 0);
  option_set_conf (&options->TEXI2HTML, -1, 0);
  option_set_conf (&options->TEXINFO_OUTPUT_FORMAT, -2, 0);
  option_set_conf (&options->TXI_MARKUP_NO_SECTION_EXTENT, -1, 0);
  option_set_conf (&options->TOC_LINKS, -1, 0);
  option_set_conf (&options->TOP_FILE, -2, 0);
  option_set_conf (&options->TOP_NODE_FILE_TARGET, -2, 0);
  option_set_conf (&options->TOP_NODE_UP_URL, -2, 0);
  option_set_conf (&options->USE_ACCESSKEY, -1, 0);
  option_set_conf (&options->USE_ISO, -1, 0);
  option_set_conf (&options->USE_LINKS, -1, 0);
  option_set_conf (&options->USE_NEXT_HEADING_FOR_LONE_NODE, -1, 0);
  option_set_conf (&options->USE_NODES, -1, 0);
  option_set_conf (&options->USE_NODE_DIRECTIONS, -1, 0);
  option_set_conf (&options->USE_NUMERIC_ENTITY, -1, 0);
  option_set_conf (&options->USE_REL_REV, -1, 0);
  option_set_conf (&options->USE_SETFILENAME_EXTENSION, -1, 0);
  option_set_conf (&options->USE_TITLEPAGE_FOR_TITLE, -1, 0);
  option_set_conf (&options->USE_UNIDECODE, -1, 0);
  option_set_conf (&options->USE_XML_SYNTAX, -1, 0);
  option_set_conf (&options->VERTICAL_HEAD_NAVIGATION, -1, 0);
  option_set_conf (&options->WORDS_IN_PAGE, -1, 0);
  option_set_conf (&options->XREF_USE_FLOAT_LABEL, -1, 0);
  option_set_conf (&options->XREF_USE_NODE_NAME_ARG, -1, 0);
  option_set_conf (&options->XS_EXTERNAL_CONVERSION, -1, 0);
  option_set_conf (&options->XS_EXTERNAL_FORMATTING, -1, 0);
  option_set_conf (&options->XS_STRXFRM_COLLATION_LOCALE, -2, 0);
  option_set_conf (&options->_INLINE_STYLE_WIDTH, -1, 0);
}

void
add_converter_customization_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "TOP_NODE_UP", -2, "(dir)");
  add_new_option_value (options_list, GOT_integer, "BASEFILENAME_LENGTH", 255-10, 0);
  add_new_option_value (options_list, GOT_integer, "DOC_ENCODING_FOR_INPUT_FILE_NAME", 1, 0);
  add_new_option_value (options_list, GOT_integer, "DOC_ENCODING_FOR_OUTPUT_FILE_NAME", 0, 0);
  add_new_option_value (options_list, GOT_char, "IMAGE_LINK_PREFIX", -2, 0);
  add_new_option_value (options_list, GOT_integer, "CASE_INSENSITIVE_FILENAMES", 0, 0);
  add_new_option_value (options_list, GOT_integer, "DEBUG", 0, 0);
  add_new_option_value (options_list, GOT_integer, "HANDLER_FATAL_ERROR_LEVEL", 100, 0);
  add_new_option_value (options_list, GOT_integer, "TEST", 0, 0);
  add_new_option_value (options_list, GOT_integer, "TEXTCONTENT_COMMENT", -1, 0);
  add_new_option_value (options_list, GOT_char, "TEXINFO_DTD_VERSION", -2, "7.1");
  add_new_option_value (options_list, GOT_integer, "USE_UNICODE_COLLATION", 1, 0);
  add_new_option_value (options_list, GOT_char, "AFTER_BODY_OPEN", -2, 0);
  add_new_option_value (options_list, GOT_char, "AFTER_SHORT_TOC_LINES", -2, 0);
  add_new_option_value (options_list, GOT_char, "AFTER_TOC_LINES", -2, 0);
  add_new_option_value (options_list, GOT_integer, "ASCII_DASHES_AND_QUOTES", -1, 0);
  add_new_option_value (options_list, GOT_integer, "ASCII_GLYPH", -1, 0);
  add_new_option_value (options_list, GOT_integer, "ASCII_PUNCTUATION", -1, 0);
  add_new_option_value (options_list, GOT_integer, "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN", -1, 0);
  add_new_option_value (options_list, GOT_integer, "AUTO_MENU_MAX_WIDTH", -1, 0);
  add_new_option_value (options_list, GOT_char, "BEFORE_SHORT_TOC_LINES", -2, 0);
  add_new_option_value (options_list, GOT_char, "BEFORE_TOC_LINES", -2, 0);
  add_new_option_value (options_list, GOT_char, "BIG_RULE", -2, 0);
  add_new_option_value (options_list, GOT_char, "BODY_ELEMENT_ATTRIBUTES", -2, 0);
  add_new_option_value (options_list, GOT_char, "CLASS_BEGIN_USEPACKAGE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "COPIABLE_LINKS", -1, 0);
  add_new_option_value (options_list, GOT_integer, "CHAPTER_HEADER_LEVEL", -1, 0);
  add_new_option_value (options_list, GOT_integer, "CHECK_HTMLXREF", -1, 0);
  add_new_option_value (options_list, GOT_char, "CLOSE_DOUBLE_QUOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_char, "CLOSE_QUOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_char, "COLLATION_LANGUAGE", -2, 0);
  add_new_option_value (options_list, GOT_char, "COMMAND_LINE_ENCODING", -2, 0);
  add_new_option_value (options_list, GOT_integer, "INDENTED_BLOCK_COMMANDS_IN_TABLE", -1, 0);
  add_new_option_value (options_list, GOT_char, "CONTENTS_OUTPUT_LOCATION", -2, 0);
  add_new_option_value (options_list, GOT_integer, "CONVERT_TO_LATEX_IN_MATH", -1, 0);
  add_new_option_value (options_list, GOT_integer, "DATE_IN_HEADER", -1, 0);
  add_new_option_value (options_list, GOT_char, "DEFAULT_RULE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "DEF_TABLE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "DO_ABOUT", -1, 0);
  add_new_option_value (options_list, GOT_char, "DOCTYPE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "DOCUMENTLANGUAGE_COLLATION", -1, 0);
  add_new_option_value (options_list, GOT_char, "END_USEPACKAGE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "EPUB_CREATE_CONTAINER_FILE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "EPUB_KEEP_CONTAINER_FOLDER", -1, 0);
  add_new_option_value (options_list, GOT_char, "EXTENSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "EXTERNAL_CROSSREF_EXTENSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "EXTERNAL_CROSSREF_SPLIT", -2, 0);
  add_new_option_value (options_list, GOT_char, "EXTERNAL_DIR", -2, 0);
  add_new_option_value (options_list, GOT_char, "EXTRA_HEAD", -2, 0);
  add_new_option_value (options_list, GOT_integer, "FOOTNOTE_END_HEADER_LEVEL", -1, 0);
  add_new_option_value (options_list, GOT_integer, "FOOTNOTE_SEPARATE_HEADER_LEVEL", -1, 0);
  add_new_option_value (options_list, GOT_integer, "HEADER_IN_TABLE", -1, 0);
  add_new_option_value (options_list, GOT_char, "HIGHLIGHT_SYNTAX", -2, 0);
  add_new_option_value (options_list, GOT_char, "HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE", -2, 0);
  add_new_option_value (options_list, GOT_char, "HTML_MATH", -2, 0);
  add_new_option_value (options_list, GOT_char, "HTML_ROOT_ELEMENT_ATTRIBUTES", -2, 0);
  add_new_option_value (options_list, GOT_char, "HTMLXREF_FILE", -2, 0);
  add_new_option_value (options_list, GOT_char, "HTMLXREF_MODE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "ICONS", -1, 0);
  add_new_option_value (options_list, GOT_char, "INDEX_ENTRY_COLON", -2, 0);
  add_new_option_value (options_list, GOT_integer, "INDEX_SPECIAL_CHARS_WARNING", -1, 0);
  add_new_option_value (options_list, GOT_char, "INFO_JS_DIR", -2, 0);
  add_new_option_value (options_list, GOT_char, "INFO_SPECIAL_CHARS_QUOTE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "INFO_SPECIAL_CHARS_WARNING", -1, 0);
  add_new_option_value (options_list, GOT_integer, "IGNORE_REF_TO_TOP_NODE_UP", -1, 0);
  add_new_option_value (options_list, GOT_integer, "INLINE_CSS_STYLE", -1, 0);
  add_new_option_value (options_list, GOT_char, "INPUT_FILE_NAME_ENCODING", -2, 0);
  add_new_option_value (options_list, GOT_char, "JS_WEBLABELS", -2, 0);
  add_new_option_value (options_list, GOT_char, "JS_WEBLABELS_FILE", -2, 0);
  add_new_option_value (options_list, GOT_char, "LATEX_FLOATS_FILE_EXTENSION", -2, "tfl");
  add_new_option_value (options_list, GOT_char, "LOCALE_ENCODING", -2, 0);
  add_new_option_value (options_list, GOT_integer, "L2H_CLEAN", -1, 0);
  add_new_option_value (options_list, GOT_char, "L2H_FILE", -2, 0);
  add_new_option_value (options_list, GOT_char, "L2H_HTML_VERSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "L2H_L2H", -2, 0);
  add_new_option_value (options_list, GOT_integer, "L2H_SKIP", -1, 0);
  add_new_option_value (options_list, GOT_char, "L2H_TMP", -2, 0);
  add_new_option_value (options_list, GOT_char, "MATHJAX_CONFIGURATION", -2, 0);
  add_new_option_value (options_list, GOT_char, "MATHJAX_SCRIPT", -2, 0);
  add_new_option_value (options_list, GOT_char, "MATHJAX_SOURCE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "MAX_HEADER_LEVEL", -1, 0);
  add_new_option_value (options_list, GOT_char, "MENU_ENTRY_COLON", -2, 0);
  add_new_option_value (options_list, GOT_char, "MENU_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_char, "MESSAGE_ENCODING", -2, 0);
  add_new_option_value (options_list, GOT_integer, "MONOLITHIC", -1, 0);
  add_new_option_value (options_list, GOT_integer, "NO_CSS", -1, 0);
  add_new_option_value (options_list, GOT_char, "NO_NUMBER_FOOTNOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_integer, "NO_CUSTOM_HTML_ATTRIBUTE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "NODE_NAME_IN_INDEX", -1, 0);
  add_new_option_value (options_list, GOT_integer, "NODE_NAME_IN_MENU", -1, 0);
  add_new_option_value (options_list, GOT_integer, "NO_TOP_NODE_OUTPUT", -1, 0);
  add_new_option_value (options_list, GOT_char, "OPEN_DOUBLE_QUOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_char, "OPEN_QUOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_integer, "OUTPUT_CHARACTERS", -1, 0);
  add_new_option_value (options_list, GOT_char, "OUTPUT_ENCODING_NAME", -2, 0);
  add_new_option_value (options_list, GOT_char, "OUTPUT_FILE_NAME_ENCODING", -2, 0);
  add_new_option_value (options_list, GOT_char, "OUTPUT_PERL_ENCODING", -2, 0);
  add_new_option_value (options_list, GOT_char, "PACKAGE", -2, 0);
  add_new_option_value (options_list, GOT_char, "PACKAGE_AND_VERSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "PACKAGE_NAME", -2, 0);
  add_new_option_value (options_list, GOT_char, "PACKAGE_URL", -2, 0);
  add_new_option_value (options_list, GOT_char, "PACKAGE_VERSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "PRE_BODY_CLOSE", -2, 0);
  add_new_option_value (options_list, GOT_char, "PREFIX", -2, 0);
  add_new_option_value (options_list, GOT_char, "PROGRAM", -2, 0);
  add_new_option_value (options_list, GOT_integer, "PROGRAM_NAME_IN_ABOUT", -1, 0);
  add_new_option_value (options_list, GOT_integer, "PROGRAM_NAME_IN_FOOTER", -1, 0);
  add_new_option_value (options_list, GOT_integer, "SECTION_NAME_IN_TITLE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "SHORT_TOC_LINK_TO_TOC", -1, 0);
  add_new_option_value (options_list, GOT_integer, "SHOW_TITLE", -1, 0);
  add_new_option_value (options_list, GOT_char, "T4H_LATEX_CONVERSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "T4H_MATH_CONVERSION", -2, 0);
  add_new_option_value (options_list, GOT_char, "T4H_TEX_CONVERSION", -2, 0);
  add_new_option_value (options_list, GOT_integer, "TEXI2HTML", -1, 0);
  add_new_option_value (options_list, GOT_char, "TEXINFO_OUTPUT_FORMAT", -2, 0);
  add_new_option_value (options_list, GOT_integer, "TXI_MARKUP_NO_SECTION_EXTENT", -1, 0);
  add_new_option_value (options_list, GOT_integer, "TOC_LINKS", -1, 0);
  add_new_option_value (options_list, GOT_char, "TOP_FILE", -2, 0);
  add_new_option_value (options_list, GOT_char, "TOP_NODE_FILE_TARGET", -2, 0);
  add_new_option_value (options_list, GOT_char, "TOP_NODE_UP_URL", -2, 0);
  add_new_option_value (options_list, GOT_integer, "USE_ACCESSKEY", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_ISO", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_LINKS", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NEXT_HEADING_FOR_LONE_NODE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NODES", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NODE_DIRECTIONS", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NUMERIC_ENTITY", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_REL_REV", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_SETFILENAME_EXTENSION", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_TITLEPAGE_FOR_TITLE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_UNIDECODE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_XML_SYNTAX", -1, 0);
  add_new_option_value (options_list, GOT_integer, "VERTICAL_HEAD_NAVIGATION", -1, 0);
  add_new_option_value (options_list, GOT_integer, "WORDS_IN_PAGE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "XREF_USE_FLOAT_LABEL", -1, 0);
  add_new_option_value (options_list, GOT_integer, "XREF_USE_NODE_NAME_ARG", -1, 0);
  add_new_option_value (options_list, GOT_integer, "XS_EXTERNAL_CONVERSION", -1, 0);
  add_new_option_value (options_list, GOT_integer, "XS_EXTERNAL_FORMATTING", -1, 0);
  add_new_option_value (options_list, GOT_char, "XS_STRXFRM_COLLATION_LOCALE", -2, 0);
  add_new_option_value (options_list, GOT_integer, "_INLINE_STYLE_WIDTH", -1, 0);
}


/* converter_other */

void
set_converter_other_options_defaults (OPTIONS *options)
{
  clear_option (&options->LINKS_BUTTONS);
  clear_option (&options->TOP_BUTTONS);
  clear_option (&options->TOP_FOOTER_BUTTONS);
  clear_option (&options->SECTION_BUTTONS);
  clear_option (&options->CHAPTER_FOOTER_BUTTONS);
  clear_option (&options->SECTION_FOOTER_BUTTONS);
  clear_option (&options->NODE_FOOTER_BUTTONS);
  clear_option (&options->MISC_BUTTONS);
  clear_option (&options->CHAPTER_BUTTONS);
  clear_option (&options->ACTIVE_ICONS);
  clear_option (&options->PASSIVE_ICONS);
}

void
add_converter_other_options_defaults (OPTIONS_LIST *options_list)
{
  OPTION *option;

  option = new_option (GOT_buttons, "LINKS_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "TOP_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "TOP_FOOTER_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "SECTION_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "CHAPTER_FOOTER_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "SECTION_FOOTER_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "NODE_FOOTER_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "MISC_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_buttons, "CHAPTER_BUTTONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_icons, "ACTIVE_ICONS", 0);
  options_list_add_option (options_list, option);
  option = new_option (GOT_icons, "PASSIVE_ICONS", 0);
  options_list_add_option (options_list, option);
}


/* multiple_at_command */

void
set_multiple_at_command_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->allowcodebreaks, -2, "true");
  option_set_conf (&options->clickstyle, -2, "@arrow");
  option_set_conf (&options->codequotebacktick, -2, "off");
  option_set_conf (&options->codequoteundirected, -2, "off");
  option_set_conf (&options->contents, 0, 0);
  option_set_conf (&options->deftypefnnewline, -2, "off");
  option_set_conf (&options->documentencoding, -2, "utf-8");
  option_set_conf (&options->documentlanguage, -2, 0);
  option_set_conf (&options->evenfooting, -2, 0);
  option_set_conf (&options->evenheading, -2, 0);
  option_set_conf (&options->everyfooting, -2, 0);
  option_set_conf (&options->everyheading, -2, 0);
  option_set_conf (&options->exampleindent, -2, "5");
  option_set_conf (&options->firstparagraphindent, -2, "none");
  option_set_conf (&options->frenchspacing, -2, "off");
  option_set_conf (&options->headings, -2, "on");
  option_set_conf (&options->kbdinputstyle, -2, "distinct");
  option_set_conf (&options->microtype, -2, 0);
  option_set_conf (&options->oddheading, -2, 0);
  option_set_conf (&options->oddfooting, -2, 0);
  option_set_conf (&options->paragraphindent, -2, "3");
  option_set_conf (&options->shortcontents, 0, 0);
  option_set_conf (&options->summarycontents, 0, 0);
  option_set_conf (&options->urefbreakstyle, -2, "after");
  option_set_conf (&options->xrefautomaticsectiontitle, -2, "off");
}

void
add_multiple_at_command_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "allowcodebreaks", -2, "true");
  add_new_option_value (options_list, GOT_char, "clickstyle", -2, "@arrow");
  add_new_option_value (options_list, GOT_char, "codequotebacktick", -2, "off");
  add_new_option_value (options_list, GOT_char, "codequoteundirected", -2, "off");
  add_new_option_value (options_list, GOT_integer, "contents", 0, 0);
  add_new_option_value (options_list, GOT_char, "deftypefnnewline", -2, "off");
  add_new_option_value (options_list, GOT_char, "documentencoding", -2, "utf-8");
  add_new_option_value (options_list, GOT_char, "documentlanguage", -2, 0);
  add_new_option_value (options_list, GOT_char, "evenfooting", -2, 0);
  add_new_option_value (options_list, GOT_char, "evenheading", -2, 0);
  add_new_option_value (options_list, GOT_char, "everyfooting", -2, 0);
  add_new_option_value (options_list, GOT_char, "everyheading", -2, 0);
  add_new_option_value (options_list, GOT_char, "exampleindent", -2, "5");
  add_new_option_value (options_list, GOT_char, "firstparagraphindent", -2, "none");
  add_new_option_value (options_list, GOT_char, "frenchspacing", -2, "off");
  add_new_option_value (options_list, GOT_char, "headings", -2, "on");
  add_new_option_value (options_list, GOT_char, "kbdinputstyle", -2, "distinct");
  add_new_option_value (options_list, GOT_char, "microtype", -2, 0);
  add_new_option_value (options_list, GOT_char, "oddheading", -2, 0);
  add_new_option_value (options_list, GOT_char, "oddfooting", -2, 0);
  add_new_option_value (options_list, GOT_char, "paragraphindent", -2, "3");
  add_new_option_value (options_list, GOT_integer, "shortcontents", 0, 0);
  add_new_option_value (options_list, GOT_integer, "summarycontents", 0, 0);
  add_new_option_value (options_list, GOT_char, "urefbreakstyle", -2, "after");
  add_new_option_value (options_list, GOT_char, "xrefautomaticsectiontitle", -2, "off");
}


/* program_cmdline */

void
set_program_cmdline_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->MACRO_EXPAND, -2, 0);
  option_set_conf (&options->INTERNAL_LINKS, -2, 0);
  option_set_conf (&options->ERROR_LIMIT, 100, 0);
  option_set_conf (&options->FORCE, -1, 0);
  option_set_conf (&options->NO_WARN, -1, 0);
  option_set_conf (&options->SILENT, -2, 0);
  option_set_conf (&options->TRACE_INCLUDES, 0, 0);
  option_set_conf (&options->FORMAT_MENU, -2, "menu");
}

void
add_program_cmdline_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_bytes, "MACRO_EXPAND", -2, 0);
  add_new_option_value (options_list, GOT_bytes, "INTERNAL_LINKS", -2, 0);
  add_new_option_value (options_list, GOT_integer, "ERROR_LIMIT", 100, 0);
  add_new_option_value (options_list, GOT_integer, "FORCE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "NO_WARN", -1, 0);
  add_new_option_value (options_list, GOT_char, "SILENT", -2, 0);
  add_new_option_value (options_list, GOT_integer, "TRACE_INCLUDES", 0, 0);
  add_new_option_value (options_list, GOT_char, "FORMAT_MENU", -2, "menu");
}


/* program_customization */

void
set_program_customization_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->CHECK_NORMAL_MENU_STRUCTURE, 1, 0);
  option_set_conf (&options->CHECK_MISSING_MENU_ENTRY, 1, 0);
  option_set_conf (&options->DUMP_TREE, -1, 0);
  option_set_conf (&options->DUMP_TEXI, -1, 0);
  option_set_conf (&options->SHOW_BUILTIN_CSS_RULES, 0, 0);
  option_set_conf (&options->SORT_ELEMENT_COUNT, -2, 0);
  option_set_conf (&options->SORT_ELEMENT_COUNT_WORDS, -1, 0);
  option_set_conf (&options->TEXI2DVI, -2, "texi2dvi");
  option_set_conf (&options->TREE_TRANSFORMATIONS, -2, 0);
}

void
add_program_customization_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_integer, "CHECK_NORMAL_MENU_STRUCTURE", 1, 0);
  add_new_option_value (options_list, GOT_integer, "CHECK_MISSING_MENU_ENTRY", 1, 0);
  add_new_option_value (options_list, GOT_integer, "DUMP_TREE", -1, 0);
  add_new_option_value (options_list, GOT_integer, "DUMP_TEXI", -1, 0);
  add_new_option_value (options_list, GOT_integer, "SHOW_BUILTIN_CSS_RULES", 0, 0);
  add_new_option_value (options_list, GOT_char, "SORT_ELEMENT_COUNT", -2, 0);
  add_new_option_value (options_list, GOT_integer, "SORT_ELEMENT_COUNT_WORDS", -1, 0);
  add_new_option_value (options_list, GOT_char, "TEXI2DVI", -2, "texi2dvi");
  add_new_option_value (options_list, GOT_char, "TREE_TRANSFORMATIONS", -2, 0);
}


/* unique_at_command */

void
set_unique_at_command_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->afivepaper, -2, 0);
  option_set_conf (&options->afourpaper, -2, 0);
  option_set_conf (&options->afourlatex, -2, 0);
  option_set_conf (&options->afourwide, -2, 0);
  option_set_conf (&options->bsixpaper, -2, 0);
  option_set_conf (&options->documentdescription, -2, 0);
  option_set_conf (&options->evenfootingmarks, -2, 0);
  option_set_conf (&options->evenheadingmarks, -2, 0);
  option_set_conf (&options->everyfootingmarks, -2, "bottom");
  option_set_conf (&options->everyheadingmarks, -2, "bottom");
  option_set_conf (&options->fonttextsize, 11, 0);
  option_set_conf (&options->footnotestyle, -2, "end");
  option_set_conf (&options->novalidate, 0, 0);
  option_set_conf (&options->oddfootingmarks, -2, 0);
  option_set_conf (&options->oddheadingmarks, -2, 0);
  option_set_conf (&options->pagesizes, -2, 0);
  option_set_conf (&options->setchapternewpage, -2, "on");
  option_set_conf (&options->setfilename, -2, 0);
  option_set_conf (&options->smallbook, -2, 0);
}

void
add_unique_at_command_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "afivepaper", -2, 0);
  add_new_option_value (options_list, GOT_char, "afourpaper", -2, 0);
  add_new_option_value (options_list, GOT_char, "afourlatex", -2, 0);
  add_new_option_value (options_list, GOT_char, "afourwide", -2, 0);
  add_new_option_value (options_list, GOT_char, "bsixpaper", -2, 0);
  add_new_option_value (options_list, GOT_char, "documentdescription", -2, 0);
  add_new_option_value (options_list, GOT_char, "evenfootingmarks", -2, 0);
  add_new_option_value (options_list, GOT_char, "evenheadingmarks", -2, 0);
  add_new_option_value (options_list, GOT_char, "everyfootingmarks", -2, "bottom");
  add_new_option_value (options_list, GOT_char, "everyheadingmarks", -2, "bottom");
  add_new_option_value (options_list, GOT_integer, "fonttextsize", 11, 0);
  add_new_option_value (options_list, GOT_char, "footnotestyle", -2, "end");
  add_new_option_value (options_list, GOT_integer, "novalidate", 0, 0);
  add_new_option_value (options_list, GOT_char, "oddfootingmarks", -2, 0);
  add_new_option_value (options_list, GOT_char, "oddheadingmarks", -2, 0);
  add_new_option_value (options_list, GOT_char, "pagesizes", -2, 0);
  add_new_option_value (options_list, GOT_char, "setchapternewpage", -2, "on");
  add_new_option_value (options_list, GOT_char, "setfilename", -2, 0);
  add_new_option_value (options_list, GOT_char, "smallbook", -2, 0);
}

void
set_all_options_defaults (OPTIONS *options)
{
  set_array_cmdline_options_defaults (options);
  set_converter_cmdline_options_defaults (options);
  set_converter_customization_options_defaults (options);
  set_converter_other_options_defaults (options);
  set_multiple_at_command_options_defaults (options);
  set_program_cmdline_options_defaults (options);
  set_program_customization_options_defaults (options);
  set_unique_at_command_options_defaults (options);
}

