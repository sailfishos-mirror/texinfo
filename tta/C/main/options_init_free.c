/* Automatically generated from regenerate_C_options_info.pl */

#include <config.h>

#include <stdlib.h>
#include <string.h>

#include "option_types.h"
#include "options_data.h"
#include "converter_types.h"
#include "customization_options.h"
void
initialize_options (OPTIONS *options)
{
  options->BIT_user_function_number = 0;

/* array_cmdline */

  initialize_option (&options->CSS_FILES, GOT_bytes_string_list, "CSS_FILES", 0);
  initialize_option (&options->CSS_REFS, GOT_char_string_list, "CSS_REFS", 0);
  initialize_option (&options->EXPANDED_FORMATS, GOT_bytes_string_list, "EXPANDED_FORMATS", OF_parser_option);
  initialize_option (&options->INCLUDE_DIRECTORIES, GOT_file_string_list, "INCLUDE_DIRECTORIES", OF_parser_option);
  initialize_option (&options->TEXINFO_LANGUAGE_DIRECTORIES, GOT_file_string_list, "TEXINFO_LANGUAGE_DIRECTORIES", 0);

/* converter_cmdline */

  initialize_option (&options->SPLIT_SIZE, GOT_integer, "SPLIT_SIZE", 0);
  initialize_option (&options->FILLCOLUMN, GOT_integer, "FILLCOLUMN", 0);
  initialize_option (&options->NUMBER_SECTIONS, GOT_integer, "NUMBER_SECTIONS", 0);
  initialize_option (&options->NUMBER_FOOTNOTES, GOT_integer, "NUMBER_FOOTNOTES", 0);
  initialize_option (&options->TRANSLITERATE_FILE_NAMES, GOT_integer, "TRANSLITERATE_FILE_NAMES", 0);
  initialize_option (&options->SPLIT, GOT_char, "SPLIT", 0);
  initialize_option (&options->HEADERS, GOT_integer, "HEADERS", 0);
  initialize_option (&options->NODE_FILES, GOT_integer, "NODE_FILES", 0);
  initialize_option (&options->VERBOSE, GOT_integer, "VERBOSE", 0);
  initialize_option (&options->OUTFILE, GOT_char, "OUTFILE", 0);
  initialize_option (&options->SUBDIR, GOT_char, "SUBDIR", 0);
  initialize_option (&options->ENABLE_ENCODING, GOT_integer, "ENABLE_ENCODING", 0);

/* converter_customization */

  initialize_option (&options->TOP_NODE_UP, GOT_char, "TOP_NODE_UP", 0);
  initialize_option (&options->BASEFILENAME_LENGTH, GOT_integer, "BASEFILENAME_LENGTH", 0);
  initialize_option (&options->DOC_ENCODING_FOR_INPUT_FILE_NAME, GOT_integer, "DOC_ENCODING_FOR_INPUT_FILE_NAME", OF_parser_option);
  initialize_option (&options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME, GOT_integer, "DOC_ENCODING_FOR_OUTPUT_FILE_NAME", 0);
  initialize_option (&options->IMAGE_LINK_PREFIX, GOT_char, "IMAGE_LINK_PREFIX", 0);
  initialize_option (&options->CASE_INSENSITIVE_FILENAMES, GOT_integer, "CASE_INSENSITIVE_FILENAMES", 0);
  initialize_option (&options->DEBUG, GOT_integer, "DEBUG", OF_parser_option);
  initialize_option (&options->HANDLER_FATAL_ERROR_LEVEL, GOT_integer, "HANDLER_FATAL_ERROR_LEVEL", 0);
  initialize_option (&options->TEST, GOT_integer, "TEST", 0);
  initialize_option (&options->TEXTCONTENT_COMMENT, GOT_integer, "TEXTCONTENT_COMMENT", 0);
  initialize_option (&options->TEXINFO_DTD_VERSION, GOT_char, "TEXINFO_DTD_VERSION", 0);
  initialize_option (&options->USE_UNICODE_COLLATION, GOT_integer, "USE_UNICODE_COLLATION", 0);
  initialize_option (&options->ADD_TRANSLITERATED_REDIRECTION_FILES, GOT_integer, "ADD_TRANSLITERATED_REDIRECTION_FILES", 0);
  initialize_option (&options->AFTER_BODY_OPEN, GOT_char, "AFTER_BODY_OPEN", 0);
  initialize_option (&options->AFTER_SHORT_TOC_LINES, GOT_char, "AFTER_SHORT_TOC_LINES", 0);
  initialize_option (&options->AFTER_TOC_LINES, GOT_char, "AFTER_TOC_LINES", 0);
  initialize_option (&options->ASCII_DASHES_AND_QUOTES, GOT_integer, "ASCII_DASHES_AND_QUOTES", 0);
  initialize_option (&options->ASCII_GLYPH, GOT_integer, "ASCII_GLYPH", 0);
  initialize_option (&options->ASCII_PUNCTUATION, GOT_integer, "ASCII_PUNCTUATION", 0);
  initialize_option (&options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN, GOT_integer, "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN", 0);
  initialize_option (&options->AUTO_MENU_MAX_WIDTH, GOT_integer, "AUTO_MENU_MAX_WIDTH", 0);
  initialize_option (&options->BEFORE_SHORT_TOC_LINES, GOT_char, "BEFORE_SHORT_TOC_LINES", 0);
  initialize_option (&options->BEFORE_TOC_LINES, GOT_char, "BEFORE_TOC_LINES", 0);
  initialize_option (&options->BIG_RULE, GOT_char, "BIG_RULE", 0);
  initialize_option (&options->BODY_ELEMENT_ATTRIBUTES, GOT_char, "BODY_ELEMENT_ATTRIBUTES", 0);
  initialize_option (&options->CLASS_BEGIN_USEPACKAGE, GOT_char, "CLASS_BEGIN_USEPACKAGE", 0);
  initialize_option (&options->COPIABLE_LINKS, GOT_integer, "COPIABLE_LINKS", 0);
  initialize_option (&options->CHAPTER_HEADER_LEVEL, GOT_integer, "CHAPTER_HEADER_LEVEL", 0);
  initialize_option (&options->CHECK_HTMLXREF, GOT_integer, "CHECK_HTMLXREF", 0);
  initialize_option (&options->CLOSE_DOUBLE_QUOTE_SYMBOL, GOT_char, "CLOSE_DOUBLE_QUOTE_SYMBOL", 0);
  initialize_option (&options->CLOSE_QUOTE_SYMBOL, GOT_char, "CLOSE_QUOTE_SYMBOL", 0);
  initialize_option (&options->COLLATION_LANGUAGE, GOT_char, "COLLATION_LANGUAGE", 0);
  initialize_option (&options->COMMAND_LINE_ENCODING, GOT_char, "COMMAND_LINE_ENCODING", OF_parser_option);
  initialize_option (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE, GOT_integer, "INDENTED_BLOCK_COMMANDS_IN_TABLE", 0);
  initialize_option (&options->CONTENTS_OUTPUT_LOCATION, GOT_char, "CONTENTS_OUTPUT_LOCATION", 0);
  initialize_option (&options->CONVERT_TO_LATEX_IN_MATH, GOT_integer, "CONVERT_TO_LATEX_IN_MATH", 0);
  initialize_option (&options->DATE_IN_HEADER, GOT_integer, "DATE_IN_HEADER", 0);
  initialize_option (&options->DEFAULT_RULE, GOT_char, "DEFAULT_RULE", 0);
  initialize_option (&options->DEF_TABLE, GOT_integer, "DEF_TABLE", 0);
  initialize_option (&options->DO_ABOUT, GOT_integer, "DO_ABOUT", 0);
  initialize_option (&options->_DOCBOOK_PIECE, GOT_integer, "_DOCBOOK_PIECE", 0);
  initialize_option (&options->DOCTYPE, GOT_char, "DOCTYPE", 0);
  initialize_option (&options->DOCUMENTLANGUAGE_COLLATION, GOT_integer, "DOCUMENTLANGUAGE_COLLATION", 0);
  initialize_option (&options->END_USEPACKAGE, GOT_char, "END_USEPACKAGE", 0);
  initialize_option (&options->EPUB_CREATE_CONTAINER_FILE, GOT_integer, "EPUB_CREATE_CONTAINER_FILE", 0);
  initialize_option (&options->EPUB_KEEP_CONTAINER_FOLDER, GOT_integer, "EPUB_KEEP_CONTAINER_FOLDER", 0);
  initialize_option (&options->EXTENSION, GOT_char, "EXTENSION", 0);
  initialize_option (&options->EXTERNAL_CROSSREF_EXTENSION, GOT_char, "EXTERNAL_CROSSREF_EXTENSION", 0);
  initialize_option (&options->EXTERNAL_CROSSREF_SPLIT, GOT_char, "EXTERNAL_CROSSREF_SPLIT", 0);
  initialize_option (&options->EXTERNAL_DIR, GOT_char, "EXTERNAL_DIR", 0);
  initialize_option (&options->EXTRA_HEAD, GOT_char, "EXTRA_HEAD", 0);
  initialize_option (&options->FOOTNOTE_END_HEADER_LEVEL, GOT_integer, "FOOTNOTE_END_HEADER_LEVEL", 0);
  initialize_option (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL, GOT_integer, "FOOTNOTE_SEPARATE_HEADER_LEVEL", 0);
  initialize_option (&options->HEADER_IN_TABLE, GOT_integer, "HEADER_IN_TABLE", 0);
  initialize_option (&options->HIGHLIGHT_SYNTAX, GOT_char, "HIGHLIGHT_SYNTAX", 0);
  initialize_option (&options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE, GOT_char, "HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE", 0);
  initialize_option (&options->HTML_MATH, GOT_char, "HTML_MATH", 0);
  initialize_option (&options->HTML_ROOT_ELEMENT_ATTRIBUTES, GOT_char, "HTML_ROOT_ELEMENT_ATTRIBUTES", 0);
  initialize_option (&options->HTMLXREF_FILE, GOT_char, "HTMLXREF_FILE", 0);
  initialize_option (&options->HTMLXREF_MODE, GOT_char, "HTMLXREF_MODE", 0);
  initialize_option (&options->ICONS, GOT_integer, "ICONS", 0);
  initialize_option (&options->INDEX_ENTRY_COLON, GOT_char, "INDEX_ENTRY_COLON", 0);
  initialize_option (&options->INDEX_SPECIAL_CHARS_WARNING, GOT_integer, "INDEX_SPECIAL_CHARS_WARNING", 0);
  initialize_option (&options->INFO_JS_DIR, GOT_char, "INFO_JS_DIR", 0);
  initialize_option (&options->INFO_SPECIAL_CHARS_QUOTE, GOT_char, "INFO_SPECIAL_CHARS_QUOTE", 0);
  initialize_option (&options->INFO_SPECIAL_CHARS_WARNING, GOT_integer, "INFO_SPECIAL_CHARS_WARNING", 0);
  initialize_option (&options->INFO_MATH_IMAGES, GOT_integer, "INFO_MATH_IMAGES", 0);
  initialize_option (&options->IGNORE_REF_TO_TOP_NODE_UP, GOT_integer, "IGNORE_REF_TO_TOP_NODE_UP", 0);
  initialize_option (&options->INLINE_CSS_STYLE, GOT_integer, "INLINE_CSS_STYLE", 0);
  initialize_option (&options->INPUT_FILE_NAME_ENCODING, GOT_char, "INPUT_FILE_NAME_ENCODING", OF_parser_option);
  initialize_option (&options->JS_WEBLABELS, GOT_char, "JS_WEBLABELS", 0);
  initialize_option (&options->JS_WEBLABELS_FILE, GOT_char, "JS_WEBLABELS_FILE", 0);
  initialize_option (&options->LATEX_FLOATS_FILE_EXTENSION, GOT_char, "LATEX_FLOATS_FILE_EXTENSION", 0);
  initialize_option (&options->LOCALE_ENCODING, GOT_char, "LOCALE_ENCODING", OF_parser_option);
  initialize_option (&options->L2H_CLEAN, GOT_integer, "L2H_CLEAN", 0);
  initialize_option (&options->L2H_FILE, GOT_char, "L2H_FILE", 0);
  initialize_option (&options->L2H_HTML_VERSION, GOT_char, "L2H_HTML_VERSION", 0);
  initialize_option (&options->L2H_L2H, GOT_char, "L2H_L2H", 0);
  initialize_option (&options->L2H_SKIP, GOT_integer, "L2H_SKIP", 0);
  initialize_option (&options->L2H_TMP, GOT_char, "L2H_TMP", 0);
  initialize_option (&options->MATHJAX_CONFIGURATION, GOT_char, "MATHJAX_CONFIGURATION", 0);
  initialize_option (&options->MATHJAX_SCRIPT, GOT_char, "MATHJAX_SCRIPT", 0);
  initialize_option (&options->MATHJAX_SOURCE, GOT_char, "MATHJAX_SOURCE", 0);
  initialize_option (&options->MAX_HEADER_LEVEL, GOT_integer, "MAX_HEADER_LEVEL", 0);
  initialize_option (&options->MENU_ENTRY_COLON, GOT_char, "MENU_ENTRY_COLON", 0);
  initialize_option (&options->MENU_SYMBOL, GOT_char, "MENU_SYMBOL", 0);
  initialize_option (&options->MESSAGE_ENCODING, GOT_char, "MESSAGE_ENCODING", 0);
  initialize_option (&options->MONOLITHIC, GOT_integer, "MONOLITHIC", 0);
  initialize_option (&options->NO_CSS, GOT_integer, "NO_CSS", 0);
  initialize_option (&options->NO_NUMBER_FOOTNOTE_SYMBOL, GOT_char, "NO_NUMBER_FOOTNOTE_SYMBOL", 0);
  initialize_option (&options->NO_CUSTOM_HTML_ATTRIBUTE, GOT_integer, "NO_CUSTOM_HTML_ATTRIBUTE", 0);
  initialize_option (&options->NODE_NAME_IN_INDEX, GOT_integer, "NODE_NAME_IN_INDEX", 0);
  initialize_option (&options->NODE_NAME_IN_MENU, GOT_integer, "NODE_NAME_IN_MENU", 0);
  initialize_option (&options->NO_TOP_NODE_OUTPUT, GOT_integer, "NO_TOP_NODE_OUTPUT", 0);
  initialize_option (&options->OPEN_DOUBLE_QUOTE_SYMBOL, GOT_char, "OPEN_DOUBLE_QUOTE_SYMBOL", 0);
  initialize_option (&options->OPEN_QUOTE_SYMBOL, GOT_char, "OPEN_QUOTE_SYMBOL", 0);
  initialize_option (&options->OUTPUT_CHARACTERS, GOT_integer, "OUTPUT_CHARACTERS", 0);
  initialize_option (&options->OUTPUT_ENCODING_NAME, GOT_char, "OUTPUT_ENCODING_NAME", 0);
  initialize_option (&options->OUTPUT_FILE_NAME_ENCODING, GOT_char, "OUTPUT_FILE_NAME_ENCODING", 0);
  initialize_option (&options->OUTPUT_PERL_ENCODING, GOT_char, "OUTPUT_PERL_ENCODING", 0);
  initialize_option (&options->PACKAGE, GOT_char, "PACKAGE", 0);
  initialize_option (&options->PACKAGE_AND_VERSION, GOT_char, "PACKAGE_AND_VERSION", 0);
  initialize_option (&options->PACKAGE_NAME, GOT_char, "PACKAGE_NAME", 0);
  initialize_option (&options->PACKAGE_URL, GOT_char, "PACKAGE_URL", 0);
  initialize_option (&options->PACKAGE_VERSION, GOT_char, "PACKAGE_VERSION", 0);
  initialize_option (&options->PRE_BODY_CLOSE, GOT_char, "PRE_BODY_CLOSE", 0);
  initialize_option (&options->PREFIX, GOT_char, "PREFIX", 0);
  initialize_option (&options->PROGRAM, GOT_char, "PROGRAM", 0);
  initialize_option (&options->PROGRAM_NAME_IN_ABOUT, GOT_integer, "PROGRAM_NAME_IN_ABOUT", 0);
  initialize_option (&options->PROGRAM_NAME_IN_FOOTER, GOT_integer, "PROGRAM_NAME_IN_FOOTER", 0);
  initialize_option (&options->SECTION_NAME_IN_TITLE, GOT_integer, "SECTION_NAME_IN_TITLE", 0);
  initialize_option (&options->SHORT_TOC_LINK_TO_TOC, GOT_integer, "SHORT_TOC_LINK_TO_TOC", 0);
  initialize_option (&options->SHOW_TITLE, GOT_integer, "SHOW_TITLE", 0);
  initialize_option (&options->T4H_LATEX_CONVERSION, GOT_char, "T4H_LATEX_CONVERSION", 0);
  initialize_option (&options->T4H_MATH_CONVERSION, GOT_char, "T4H_MATH_CONVERSION", 0);
  initialize_option (&options->T4H_TEX_CONVERSION, GOT_char, "T4H_TEX_CONVERSION", 0);
  initialize_option (&options->TEXI2HTML, GOT_integer, "TEXI2HTML", 0);
  initialize_option (&options->TEXINFO_OUTPUT_FORMAT, GOT_char, "TEXINFO_OUTPUT_FORMAT", 0);
  initialize_option (&options->TXI_MARKUP_NO_SECTION_EXTENT, GOT_integer, "TXI_MARKUP_NO_SECTION_EXTENT", 0);
  initialize_option (&options->TOC_LINKS, GOT_integer, "TOC_LINKS", 0);
  initialize_option (&options->TOP_FILE, GOT_char, "TOP_FILE", 0);
  initialize_option (&options->TOP_NODE_FILE_TARGET, GOT_char, "TOP_NODE_FILE_TARGET", 0);
  initialize_option (&options->TOP_NODE_UP_URL, GOT_char, "TOP_NODE_UP_URL", 0);
  initialize_option (&options->USE_ACCESSKEY, GOT_integer, "USE_ACCESSKEY", 0);
  initialize_option (&options->USE_ISO, GOT_integer, "USE_ISO", 0);
  initialize_option (&options->USE_LINKS, GOT_integer, "USE_LINKS", 0);
  initialize_option (&options->USE_NODES, GOT_integer, "USE_NODES", 0);
  initialize_option (&options->USE_NODE_DIRECTIONS, GOT_integer, "USE_NODE_DIRECTIONS", 0);
  initialize_option (&options->USE_NUMERIC_ENTITY, GOT_integer, "USE_NUMERIC_ENTITY", 0);
  initialize_option (&options->USE_SETFILENAME_EXTENSION, GOT_integer, "USE_SETFILENAME_EXTENSION", 0);
  initialize_option (&options->USE_TITLEPAGE_FOR_TITLE, GOT_integer, "USE_TITLEPAGE_FOR_TITLE", 0);
  initialize_option (&options->USE_UNIDECODE, GOT_integer, "USE_UNIDECODE", 0);
  initialize_option (&options->USE_XML_SYNTAX, GOT_integer, "USE_XML_SYNTAX", 0);
  initialize_option (&options->VERTICAL_HEAD_NAVIGATION, GOT_integer, "VERTICAL_HEAD_NAVIGATION", 0);
  initialize_option (&options->WORDS_IN_PAGE, GOT_integer, "WORDS_IN_PAGE", 0);
  initialize_option (&options->XREF_USE_FLOAT_LABEL, GOT_integer, "XREF_USE_FLOAT_LABEL", 0);
  initialize_option (&options->XREF_USE_NODE_NAME_ARG, GOT_integer, "XREF_USE_NODE_NAME_ARG", 0);
  initialize_option (&options->XS_EXTERNAL_CONVERSION, GOT_integer, "XS_EXTERNAL_CONVERSION", 0);
  initialize_option (&options->XS_EXTERNAL_FORMATTING, GOT_integer, "XS_EXTERNAL_FORMATTING", 0);
  initialize_option (&options->XS_STRXFRM_COLLATION_LOCALE, GOT_char, "XS_STRXFRM_COLLATION_LOCALE", 0);
  initialize_option (&options->_INLINE_STYLE_WIDTH, GOT_integer, "_INLINE_STYLE_WIDTH", 0);

/* converter_other */

  initialize_option (&options->LINKS_DIRECTIONS, GOT_buttons, "LINKS_DIRECTIONS", 0);
  initialize_option (&options->TOP_BUTTONS, GOT_buttons, "TOP_BUTTONS", 0);
  initialize_option (&options->TOP_FOOTER_BUTTONS, GOT_buttons, "TOP_FOOTER_BUTTONS", 0);
  initialize_option (&options->SECTION_BUTTONS, GOT_buttons, "SECTION_BUTTONS", 0);
  initialize_option (&options->CHAPTER_FOOTER_BUTTONS, GOT_buttons, "CHAPTER_FOOTER_BUTTONS", 0);
  initialize_option (&options->SECTION_FOOTER_BUTTONS, GOT_buttons, "SECTION_FOOTER_BUTTONS", 0);
  initialize_option (&options->NODE_FOOTER_BUTTONS, GOT_buttons, "NODE_FOOTER_BUTTONS", 0);
  initialize_option (&options->MISC_BUTTONS, GOT_buttons, "MISC_BUTTONS", 0);
  initialize_option (&options->CHAPTER_BUTTONS, GOT_buttons, "CHAPTER_BUTTONS", 0);
  initialize_option (&options->ACTIVE_ICONS, GOT_icons, "ACTIVE_ICONS", 0);
  initialize_option (&options->PASSIVE_ICONS, GOT_icons, "PASSIVE_ICONS", 0);

/* multiple_at_command */

  initialize_option (&options->allowcodebreaks, GOT_char, "allowcodebreaks", 0);
  initialize_option (&options->clickstyle, GOT_char, "clickstyle", 0);
  initialize_option (&options->codequotebacktick, GOT_char, "codequotebacktick", 0);
  initialize_option (&options->codequoteundirected, GOT_char, "codequoteundirected", 0);
  initialize_option (&options->contents, GOT_integer, "contents", 0);
  initialize_option (&options->deftypefnnewline, GOT_char, "deftypefnnewline", 0);
  initialize_option (&options->documentencoding, GOT_char, "documentencoding", 0);
  initialize_option (&options->documentlanguage, GOT_char, "documentlanguage", OF_parser_option);
  initialize_option (&options->evenfooting, GOT_char, "evenfooting", 0);
  initialize_option (&options->evenheading, GOT_char, "evenheading", 0);
  initialize_option (&options->everyfooting, GOT_char, "everyfooting", 0);
  initialize_option (&options->everyheading, GOT_char, "everyheading", 0);
  initialize_option (&options->exampleindent, GOT_char, "exampleindent", 0);
  initialize_option (&options->firstparagraphindent, GOT_char, "firstparagraphindent", 0);
  initialize_option (&options->frenchspacing, GOT_char, "frenchspacing", 0);
  initialize_option (&options->headings, GOT_char, "headings", 0);
  initialize_option (&options->kbdinputstyle, GOT_char, "kbdinputstyle", 0);
  initialize_option (&options->microtype, GOT_char, "microtype", 0);
  initialize_option (&options->oddheading, GOT_char, "oddheading", 0);
  initialize_option (&options->oddfooting, GOT_char, "oddfooting", 0);
  initialize_option (&options->paragraphindent, GOT_char, "paragraphindent", 0);
  initialize_option (&options->shortcontents, GOT_integer, "shortcontents", 0);
  initialize_option (&options->summarycontents, GOT_integer, "summarycontents", 0);
  initialize_option (&options->urefbreakstyle, GOT_char, "urefbreakstyle", 0);
  initialize_option (&options->xrefautomaticsectiontitle, GOT_char, "xrefautomaticsectiontitle", 0);

/* parser */

  initialize_option (&options->IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME, GOT_integer, "IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME", OF_parser_option);
  initialize_option (&options->CPP_LINE_DIRECTIVES, GOT_integer, "CPP_LINE_DIRECTIVES", OF_parser_option);
  initialize_option (&options->MAX_MACRO_CALL_NESTING, GOT_integer, "MAX_MACRO_CALL_NESTING", OF_parser_option);
  initialize_option (&options->NO_INDEX, GOT_integer, "NO_INDEX", OF_parser_option);
  initialize_option (&options->NO_USER_COMMANDS, GOT_integer, "NO_USER_COMMANDS", OF_parser_option);

/* program_cmdline */

  initialize_option (&options->MACRO_EXPAND, GOT_bytes, "MACRO_EXPAND", 0);
  initialize_option (&options->INTERNAL_LINKS, GOT_bytes, "INTERNAL_LINKS", 0);
  initialize_option (&options->ERROR_LIMIT, GOT_integer, "ERROR_LIMIT", 0);
  initialize_option (&options->FORCE, GOT_integer, "FORCE", 0);
  initialize_option (&options->NO_WARN, GOT_integer, "NO_WARN", 0);
  initialize_option (&options->TRACE_INCLUDES, GOT_integer, "TRACE_INCLUDES", 0);
  initialize_option (&options->FORMAT_MENU, GOT_char, "FORMAT_MENU", OF_parser_option);

/* program_customization */

  initialize_option (&options->CHECK_NORMAL_MENU_STRUCTURE, GOT_integer, "CHECK_NORMAL_MENU_STRUCTURE", 0);
  initialize_option (&options->CHECK_MISSING_MENU_ENTRY, GOT_integer, "CHECK_MISSING_MENU_ENTRY", 0);
  initialize_option (&options->DUMP_STRUCTURE, GOT_bytes, "DUMP_STRUCTURE", 0);
  initialize_option (&options->DUMP_TREE, GOT_bytes, "DUMP_TREE", 0);
  initialize_option (&options->DUMP_TEXI, GOT_integer, "DUMP_TEXI", 0);
  initialize_option (&options->SHOW_BUILTIN_CSS_RULES, GOT_integer, "SHOW_BUILTIN_CSS_RULES", 0);
  initialize_option (&options->SORT_ELEMENT_COUNT, GOT_char, "SORT_ELEMENT_COUNT", 0);
  initialize_option (&options->SORT_ELEMENT_COUNT_WORDS, GOT_integer, "SORT_ELEMENT_COUNT_WORDS", 0);
  initialize_option (&options->TEXI2DVI, GOT_char, "TEXI2DVI", 0);
  initialize_option (&options->TREE_TRANSFORMATIONS, GOT_char, "TREE_TRANSFORMATIONS", 0);

/* unique_at_command */

  initialize_option (&options->afivepaper, GOT_char, "afivepaper", 0);
  initialize_option (&options->afourpaper, GOT_char, "afourpaper", 0);
  initialize_option (&options->afourlatex, GOT_char, "afourlatex", 0);
  initialize_option (&options->afourwide, GOT_char, "afourwide", 0);
  initialize_option (&options->bsixpaper, GOT_char, "bsixpaper", 0);
  initialize_option (&options->documentdescription, GOT_char, "documentdescription", 0);
  initialize_option (&options->evenfootingmarks, GOT_char, "evenfootingmarks", 0);
  initialize_option (&options->evenheadingmarks, GOT_char, "evenheadingmarks", 0);
  initialize_option (&options->everyfootingmarks, GOT_char, "everyfootingmarks", 0);
  initialize_option (&options->everyheadingmarks, GOT_char, "everyheadingmarks", 0);
  initialize_option (&options->fonttextsize, GOT_integer, "fonttextsize", 0);
  initialize_option (&options->footnotestyle, GOT_char, "footnotestyle", 0);
  initialize_option (&options->novalidate, GOT_integer, "novalidate", 0);
  initialize_option (&options->oddfootingmarks, GOT_char, "oddfootingmarks", 0);
  initialize_option (&options->oddheadingmarks, GOT_char, "oddheadingmarks", 0);
  initialize_option (&options->pagesizes, GOT_char, "pagesizes", 0);
  initialize_option (&options->setchapternewpage, GOT_char, "setchapternewpage", 0);
  initialize_option (&options->setfilename, GOT_char, "setfilename", 0);
  initialize_option (&options->smallbook, GOT_char, "smallbook", 0);
}

void
free_options (OPTIONS *options)
{

/* array_cmdline */

  free_option (&options->CSS_FILES);
  free_option (&options->CSS_REFS);
  free_option (&options->EXPANDED_FORMATS);
  free_option (&options->INCLUDE_DIRECTORIES);
  free_option (&options->TEXINFO_LANGUAGE_DIRECTORIES);

/* converter_cmdline */

  free_option (&options->SPLIT_SIZE);
  free_option (&options->FILLCOLUMN);
  free_option (&options->NUMBER_SECTIONS);
  free_option (&options->NUMBER_FOOTNOTES);
  free_option (&options->TRANSLITERATE_FILE_NAMES);
  free_option (&options->SPLIT);
  free_option (&options->HEADERS);
  free_option (&options->NODE_FILES);
  free_option (&options->VERBOSE);
  free_option (&options->OUTFILE);
  free_option (&options->SUBDIR);
  free_option (&options->ENABLE_ENCODING);

/* converter_customization */

  free_option (&options->TOP_NODE_UP);
  free_option (&options->BASEFILENAME_LENGTH);
  free_option (&options->DOC_ENCODING_FOR_INPUT_FILE_NAME);
  free_option (&options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME);
  free_option (&options->IMAGE_LINK_PREFIX);
  free_option (&options->CASE_INSENSITIVE_FILENAMES);
  free_option (&options->DEBUG);
  free_option (&options->HANDLER_FATAL_ERROR_LEVEL);
  free_option (&options->TEST);
  free_option (&options->TEXTCONTENT_COMMENT);
  free_option (&options->TEXINFO_DTD_VERSION);
  free_option (&options->USE_UNICODE_COLLATION);
  free_option (&options->ADD_TRANSLITERATED_REDIRECTION_FILES);
  free_option (&options->AFTER_BODY_OPEN);
  free_option (&options->AFTER_SHORT_TOC_LINES);
  free_option (&options->AFTER_TOC_LINES);
  free_option (&options->ASCII_DASHES_AND_QUOTES);
  free_option (&options->ASCII_GLYPH);
  free_option (&options->ASCII_PUNCTUATION);
  free_option (&options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN);
  free_option (&options->AUTO_MENU_MAX_WIDTH);
  free_option (&options->BEFORE_SHORT_TOC_LINES);
  free_option (&options->BEFORE_TOC_LINES);
  free_option (&options->BIG_RULE);
  free_option (&options->BODY_ELEMENT_ATTRIBUTES);
  free_option (&options->CLASS_BEGIN_USEPACKAGE);
  free_option (&options->COPIABLE_LINKS);
  free_option (&options->CHAPTER_HEADER_LEVEL);
  free_option (&options->CHECK_HTMLXREF);
  free_option (&options->CLOSE_DOUBLE_QUOTE_SYMBOL);
  free_option (&options->CLOSE_QUOTE_SYMBOL);
  free_option (&options->COLLATION_LANGUAGE);
  free_option (&options->COMMAND_LINE_ENCODING);
  free_option (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE);
  free_option (&options->CONTENTS_OUTPUT_LOCATION);
  free_option (&options->CONVERT_TO_LATEX_IN_MATH);
  free_option (&options->DATE_IN_HEADER);
  free_option (&options->DEFAULT_RULE);
  free_option (&options->DEF_TABLE);
  free_option (&options->DO_ABOUT);
  free_option (&options->_DOCBOOK_PIECE);
  free_option (&options->DOCTYPE);
  free_option (&options->DOCUMENTLANGUAGE_COLLATION);
  free_option (&options->END_USEPACKAGE);
  free_option (&options->EPUB_CREATE_CONTAINER_FILE);
  free_option (&options->EPUB_KEEP_CONTAINER_FOLDER);
  free_option (&options->EXTENSION);
  free_option (&options->EXTERNAL_CROSSREF_EXTENSION);
  free_option (&options->EXTERNAL_CROSSREF_SPLIT);
  free_option (&options->EXTERNAL_DIR);
  free_option (&options->EXTRA_HEAD);
  free_option (&options->FOOTNOTE_END_HEADER_LEVEL);
  free_option (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL);
  free_option (&options->HEADER_IN_TABLE);
  free_option (&options->HIGHLIGHT_SYNTAX);
  free_option (&options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE);
  free_option (&options->HTML_MATH);
  free_option (&options->HTML_ROOT_ELEMENT_ATTRIBUTES);
  free_option (&options->HTMLXREF_FILE);
  free_option (&options->HTMLXREF_MODE);
  free_option (&options->ICONS);
  free_option (&options->INDEX_ENTRY_COLON);
  free_option (&options->INDEX_SPECIAL_CHARS_WARNING);
  free_option (&options->INFO_JS_DIR);
  free_option (&options->INFO_SPECIAL_CHARS_QUOTE);
  free_option (&options->INFO_SPECIAL_CHARS_WARNING);
  free_option (&options->INFO_MATH_IMAGES);
  free_option (&options->IGNORE_REF_TO_TOP_NODE_UP);
  free_option (&options->INLINE_CSS_STYLE);
  free_option (&options->INPUT_FILE_NAME_ENCODING);
  free_option (&options->JS_WEBLABELS);
  free_option (&options->JS_WEBLABELS_FILE);
  free_option (&options->LATEX_FLOATS_FILE_EXTENSION);
  free_option (&options->LOCALE_ENCODING);
  free_option (&options->L2H_CLEAN);
  free_option (&options->L2H_FILE);
  free_option (&options->L2H_HTML_VERSION);
  free_option (&options->L2H_L2H);
  free_option (&options->L2H_SKIP);
  free_option (&options->L2H_TMP);
  free_option (&options->MATHJAX_CONFIGURATION);
  free_option (&options->MATHJAX_SCRIPT);
  free_option (&options->MATHJAX_SOURCE);
  free_option (&options->MAX_HEADER_LEVEL);
  free_option (&options->MENU_ENTRY_COLON);
  free_option (&options->MENU_SYMBOL);
  free_option (&options->MESSAGE_ENCODING);
  free_option (&options->MONOLITHIC);
  free_option (&options->NO_CSS);
  free_option (&options->NO_NUMBER_FOOTNOTE_SYMBOL);
  free_option (&options->NO_CUSTOM_HTML_ATTRIBUTE);
  free_option (&options->NODE_NAME_IN_INDEX);
  free_option (&options->NODE_NAME_IN_MENU);
  free_option (&options->NO_TOP_NODE_OUTPUT);
  free_option (&options->OPEN_DOUBLE_QUOTE_SYMBOL);
  free_option (&options->OPEN_QUOTE_SYMBOL);
  free_option (&options->OUTPUT_CHARACTERS);
  free_option (&options->OUTPUT_ENCODING_NAME);
  free_option (&options->OUTPUT_FILE_NAME_ENCODING);
  free_option (&options->OUTPUT_PERL_ENCODING);
  free_option (&options->PACKAGE);
  free_option (&options->PACKAGE_AND_VERSION);
  free_option (&options->PACKAGE_NAME);
  free_option (&options->PACKAGE_URL);
  free_option (&options->PACKAGE_VERSION);
  free_option (&options->PRE_BODY_CLOSE);
  free_option (&options->PREFIX);
  free_option (&options->PROGRAM);
  free_option (&options->PROGRAM_NAME_IN_ABOUT);
  free_option (&options->PROGRAM_NAME_IN_FOOTER);
  free_option (&options->SECTION_NAME_IN_TITLE);
  free_option (&options->SHORT_TOC_LINK_TO_TOC);
  free_option (&options->SHOW_TITLE);
  free_option (&options->T4H_LATEX_CONVERSION);
  free_option (&options->T4H_MATH_CONVERSION);
  free_option (&options->T4H_TEX_CONVERSION);
  free_option (&options->TEXI2HTML);
  free_option (&options->TEXINFO_OUTPUT_FORMAT);
  free_option (&options->TXI_MARKUP_NO_SECTION_EXTENT);
  free_option (&options->TOC_LINKS);
  free_option (&options->TOP_FILE);
  free_option (&options->TOP_NODE_FILE_TARGET);
  free_option (&options->TOP_NODE_UP_URL);
  free_option (&options->USE_ACCESSKEY);
  free_option (&options->USE_ISO);
  free_option (&options->USE_LINKS);
  free_option (&options->USE_NODES);
  free_option (&options->USE_NODE_DIRECTIONS);
  free_option (&options->USE_NUMERIC_ENTITY);
  free_option (&options->USE_SETFILENAME_EXTENSION);
  free_option (&options->USE_TITLEPAGE_FOR_TITLE);
  free_option (&options->USE_UNIDECODE);
  free_option (&options->USE_XML_SYNTAX);
  free_option (&options->VERTICAL_HEAD_NAVIGATION);
  free_option (&options->WORDS_IN_PAGE);
  free_option (&options->XREF_USE_FLOAT_LABEL);
  free_option (&options->XREF_USE_NODE_NAME_ARG);
  free_option (&options->XS_EXTERNAL_CONVERSION);
  free_option (&options->XS_EXTERNAL_FORMATTING);
  free_option (&options->XS_STRXFRM_COLLATION_LOCALE);
  free_option (&options->_INLINE_STYLE_WIDTH);

/* converter_other */

  free_option (&options->LINKS_DIRECTIONS);
  free_option (&options->TOP_BUTTONS);
  free_option (&options->TOP_FOOTER_BUTTONS);
  free_option (&options->SECTION_BUTTONS);
  free_option (&options->CHAPTER_FOOTER_BUTTONS);
  free_option (&options->SECTION_FOOTER_BUTTONS);
  free_option (&options->NODE_FOOTER_BUTTONS);
  free_option (&options->MISC_BUTTONS);
  free_option (&options->CHAPTER_BUTTONS);
  free_option (&options->ACTIVE_ICONS);
  free_option (&options->PASSIVE_ICONS);

/* multiple_at_command */

  free_option (&options->allowcodebreaks);
  free_option (&options->clickstyle);
  free_option (&options->codequotebacktick);
  free_option (&options->codequoteundirected);
  free_option (&options->contents);
  free_option (&options->deftypefnnewline);
  free_option (&options->documentencoding);
  free_option (&options->documentlanguage);
  free_option (&options->evenfooting);
  free_option (&options->evenheading);
  free_option (&options->everyfooting);
  free_option (&options->everyheading);
  free_option (&options->exampleindent);
  free_option (&options->firstparagraphindent);
  free_option (&options->frenchspacing);
  free_option (&options->headings);
  free_option (&options->kbdinputstyle);
  free_option (&options->microtype);
  free_option (&options->oddheading);
  free_option (&options->oddfooting);
  free_option (&options->paragraphindent);
  free_option (&options->shortcontents);
  free_option (&options->summarycontents);
  free_option (&options->urefbreakstyle);
  free_option (&options->xrefautomaticsectiontitle);

/* parser */

  free_option (&options->IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME);
  free_option (&options->CPP_LINE_DIRECTIVES);
  free_option (&options->MAX_MACRO_CALL_NESTING);
  free_option (&options->NO_INDEX);
  free_option (&options->NO_USER_COMMANDS);

/* program_cmdline */

  free_option (&options->MACRO_EXPAND);
  free_option (&options->INTERNAL_LINKS);
  free_option (&options->ERROR_LIMIT);
  free_option (&options->FORCE);
  free_option (&options->NO_WARN);
  free_option (&options->TRACE_INCLUDES);
  free_option (&options->FORMAT_MENU);

/* program_customization */

  free_option (&options->CHECK_NORMAL_MENU_STRUCTURE);
  free_option (&options->CHECK_MISSING_MENU_ENTRY);
  free_option (&options->DUMP_STRUCTURE);
  free_option (&options->DUMP_TREE);
  free_option (&options->DUMP_TEXI);
  free_option (&options->SHOW_BUILTIN_CSS_RULES);
  free_option (&options->SORT_ELEMENT_COUNT);
  free_option (&options->SORT_ELEMENT_COUNT_WORDS);
  free_option (&options->TEXI2DVI);
  free_option (&options->TREE_TRANSFORMATIONS);

/* unique_at_command */

  free_option (&options->afivepaper);
  free_option (&options->afourpaper);
  free_option (&options->afourlatex);
  free_option (&options->afourwide);
  free_option (&options->bsixpaper);
  free_option (&options->documentdescription);
  free_option (&options->evenfootingmarks);
  free_option (&options->evenheadingmarks);
  free_option (&options->everyfootingmarks);
  free_option (&options->everyheadingmarks);
  free_option (&options->fonttextsize);
  free_option (&options->footnotestyle);
  free_option (&options->novalidate);
  free_option (&options->oddfootingmarks);
  free_option (&options->oddheadingmarks);
  free_option (&options->pagesizes);
  free_option (&options->setchapternewpage);
  free_option (&options->setfilename);
  free_option (&options->smallbook);
}

void
clear_options (OPTIONS *options)
{
  options->BIT_user_function_number = 0;

/* array_cmdline */

  clear_option (&options->CSS_FILES);
  clear_option (&options->CSS_REFS);
  clear_option (&options->EXPANDED_FORMATS);
  clear_option (&options->INCLUDE_DIRECTORIES);
  clear_option (&options->TEXINFO_LANGUAGE_DIRECTORIES);

/* converter_cmdline */

  clear_option (&options->SPLIT_SIZE);
  clear_option (&options->FILLCOLUMN);
  clear_option (&options->NUMBER_SECTIONS);
  clear_option (&options->NUMBER_FOOTNOTES);
  clear_option (&options->TRANSLITERATE_FILE_NAMES);
  clear_option (&options->SPLIT);
  clear_option (&options->HEADERS);
  clear_option (&options->NODE_FILES);
  clear_option (&options->VERBOSE);
  clear_option (&options->OUTFILE);
  clear_option (&options->SUBDIR);
  clear_option (&options->ENABLE_ENCODING);

/* converter_customization */

  clear_option (&options->TOP_NODE_UP);
  clear_option (&options->BASEFILENAME_LENGTH);
  clear_option (&options->DOC_ENCODING_FOR_INPUT_FILE_NAME);
  clear_option (&options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME);
  clear_option (&options->IMAGE_LINK_PREFIX);
  clear_option (&options->CASE_INSENSITIVE_FILENAMES);
  clear_option (&options->DEBUG);
  clear_option (&options->HANDLER_FATAL_ERROR_LEVEL);
  clear_option (&options->TEST);
  clear_option (&options->TEXTCONTENT_COMMENT);
  clear_option (&options->TEXINFO_DTD_VERSION);
  clear_option (&options->USE_UNICODE_COLLATION);
  clear_option (&options->ADD_TRANSLITERATED_REDIRECTION_FILES);
  clear_option (&options->AFTER_BODY_OPEN);
  clear_option (&options->AFTER_SHORT_TOC_LINES);
  clear_option (&options->AFTER_TOC_LINES);
  clear_option (&options->ASCII_DASHES_AND_QUOTES);
  clear_option (&options->ASCII_GLYPH);
  clear_option (&options->ASCII_PUNCTUATION);
  clear_option (&options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN);
  clear_option (&options->AUTO_MENU_MAX_WIDTH);
  clear_option (&options->BEFORE_SHORT_TOC_LINES);
  clear_option (&options->BEFORE_TOC_LINES);
  clear_option (&options->BIG_RULE);
  clear_option (&options->BODY_ELEMENT_ATTRIBUTES);
  clear_option (&options->CLASS_BEGIN_USEPACKAGE);
  clear_option (&options->COPIABLE_LINKS);
  clear_option (&options->CHAPTER_HEADER_LEVEL);
  clear_option (&options->CHECK_HTMLXREF);
  clear_option (&options->CLOSE_DOUBLE_QUOTE_SYMBOL);
  clear_option (&options->CLOSE_QUOTE_SYMBOL);
  clear_option (&options->COLLATION_LANGUAGE);
  clear_option (&options->COMMAND_LINE_ENCODING);
  clear_option (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE);
  clear_option (&options->CONTENTS_OUTPUT_LOCATION);
  clear_option (&options->CONVERT_TO_LATEX_IN_MATH);
  clear_option (&options->DATE_IN_HEADER);
  clear_option (&options->DEFAULT_RULE);
  clear_option (&options->DEF_TABLE);
  clear_option (&options->DO_ABOUT);
  clear_option (&options->_DOCBOOK_PIECE);
  clear_option (&options->DOCTYPE);
  clear_option (&options->DOCUMENTLANGUAGE_COLLATION);
  clear_option (&options->END_USEPACKAGE);
  clear_option (&options->EPUB_CREATE_CONTAINER_FILE);
  clear_option (&options->EPUB_KEEP_CONTAINER_FOLDER);
  clear_option (&options->EXTENSION);
  clear_option (&options->EXTERNAL_CROSSREF_EXTENSION);
  clear_option (&options->EXTERNAL_CROSSREF_SPLIT);
  clear_option (&options->EXTERNAL_DIR);
  clear_option (&options->EXTRA_HEAD);
  clear_option (&options->FOOTNOTE_END_HEADER_LEVEL);
  clear_option (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL);
  clear_option (&options->HEADER_IN_TABLE);
  clear_option (&options->HIGHLIGHT_SYNTAX);
  clear_option (&options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE);
  clear_option (&options->HTML_MATH);
  clear_option (&options->HTML_ROOT_ELEMENT_ATTRIBUTES);
  clear_option (&options->HTMLXREF_FILE);
  clear_option (&options->HTMLXREF_MODE);
  clear_option (&options->ICONS);
  clear_option (&options->INDEX_ENTRY_COLON);
  clear_option (&options->INDEX_SPECIAL_CHARS_WARNING);
  clear_option (&options->INFO_JS_DIR);
  clear_option (&options->INFO_SPECIAL_CHARS_QUOTE);
  clear_option (&options->INFO_SPECIAL_CHARS_WARNING);
  clear_option (&options->INFO_MATH_IMAGES);
  clear_option (&options->IGNORE_REF_TO_TOP_NODE_UP);
  clear_option (&options->INLINE_CSS_STYLE);
  clear_option (&options->INPUT_FILE_NAME_ENCODING);
  clear_option (&options->JS_WEBLABELS);
  clear_option (&options->JS_WEBLABELS_FILE);
  clear_option (&options->LATEX_FLOATS_FILE_EXTENSION);
  clear_option (&options->LOCALE_ENCODING);
  clear_option (&options->L2H_CLEAN);
  clear_option (&options->L2H_FILE);
  clear_option (&options->L2H_HTML_VERSION);
  clear_option (&options->L2H_L2H);
  clear_option (&options->L2H_SKIP);
  clear_option (&options->L2H_TMP);
  clear_option (&options->MATHJAX_CONFIGURATION);
  clear_option (&options->MATHJAX_SCRIPT);
  clear_option (&options->MATHJAX_SOURCE);
  clear_option (&options->MAX_HEADER_LEVEL);
  clear_option (&options->MENU_ENTRY_COLON);
  clear_option (&options->MENU_SYMBOL);
  clear_option (&options->MESSAGE_ENCODING);
  clear_option (&options->MONOLITHIC);
  clear_option (&options->NO_CSS);
  clear_option (&options->NO_NUMBER_FOOTNOTE_SYMBOL);
  clear_option (&options->NO_CUSTOM_HTML_ATTRIBUTE);
  clear_option (&options->NODE_NAME_IN_INDEX);
  clear_option (&options->NODE_NAME_IN_MENU);
  clear_option (&options->NO_TOP_NODE_OUTPUT);
  clear_option (&options->OPEN_DOUBLE_QUOTE_SYMBOL);
  clear_option (&options->OPEN_QUOTE_SYMBOL);
  clear_option (&options->OUTPUT_CHARACTERS);
  clear_option (&options->OUTPUT_ENCODING_NAME);
  clear_option (&options->OUTPUT_FILE_NAME_ENCODING);
  clear_option (&options->OUTPUT_PERL_ENCODING);
  clear_option (&options->PACKAGE);
  clear_option (&options->PACKAGE_AND_VERSION);
  clear_option (&options->PACKAGE_NAME);
  clear_option (&options->PACKAGE_URL);
  clear_option (&options->PACKAGE_VERSION);
  clear_option (&options->PRE_BODY_CLOSE);
  clear_option (&options->PREFIX);
  clear_option (&options->PROGRAM);
  clear_option (&options->PROGRAM_NAME_IN_ABOUT);
  clear_option (&options->PROGRAM_NAME_IN_FOOTER);
  clear_option (&options->SECTION_NAME_IN_TITLE);
  clear_option (&options->SHORT_TOC_LINK_TO_TOC);
  clear_option (&options->SHOW_TITLE);
  clear_option (&options->T4H_LATEX_CONVERSION);
  clear_option (&options->T4H_MATH_CONVERSION);
  clear_option (&options->T4H_TEX_CONVERSION);
  clear_option (&options->TEXI2HTML);
  clear_option (&options->TEXINFO_OUTPUT_FORMAT);
  clear_option (&options->TXI_MARKUP_NO_SECTION_EXTENT);
  clear_option (&options->TOC_LINKS);
  clear_option (&options->TOP_FILE);
  clear_option (&options->TOP_NODE_FILE_TARGET);
  clear_option (&options->TOP_NODE_UP_URL);
  clear_option (&options->USE_ACCESSKEY);
  clear_option (&options->USE_ISO);
  clear_option (&options->USE_LINKS);
  clear_option (&options->USE_NODES);
  clear_option (&options->USE_NODE_DIRECTIONS);
  clear_option (&options->USE_NUMERIC_ENTITY);
  clear_option (&options->USE_SETFILENAME_EXTENSION);
  clear_option (&options->USE_TITLEPAGE_FOR_TITLE);
  clear_option (&options->USE_UNIDECODE);
  clear_option (&options->USE_XML_SYNTAX);
  clear_option (&options->VERTICAL_HEAD_NAVIGATION);
  clear_option (&options->WORDS_IN_PAGE);
  clear_option (&options->XREF_USE_FLOAT_LABEL);
  clear_option (&options->XREF_USE_NODE_NAME_ARG);
  clear_option (&options->XS_EXTERNAL_CONVERSION);
  clear_option (&options->XS_EXTERNAL_FORMATTING);
  clear_option (&options->XS_STRXFRM_COLLATION_LOCALE);
  clear_option (&options->_INLINE_STYLE_WIDTH);

/* converter_other */

  clear_option (&options->LINKS_DIRECTIONS);
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

/* multiple_at_command */

  clear_option (&options->allowcodebreaks);
  clear_option (&options->clickstyle);
  clear_option (&options->codequotebacktick);
  clear_option (&options->codequoteundirected);
  clear_option (&options->contents);
  clear_option (&options->deftypefnnewline);
  clear_option (&options->documentencoding);
  clear_option (&options->documentlanguage);
  clear_option (&options->evenfooting);
  clear_option (&options->evenheading);
  clear_option (&options->everyfooting);
  clear_option (&options->everyheading);
  clear_option (&options->exampleindent);
  clear_option (&options->firstparagraphindent);
  clear_option (&options->frenchspacing);
  clear_option (&options->headings);
  clear_option (&options->kbdinputstyle);
  clear_option (&options->microtype);
  clear_option (&options->oddheading);
  clear_option (&options->oddfooting);
  clear_option (&options->paragraphindent);
  clear_option (&options->shortcontents);
  clear_option (&options->summarycontents);
  clear_option (&options->urefbreakstyle);
  clear_option (&options->xrefautomaticsectiontitle);

/* parser */

  clear_option (&options->IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME);
  clear_option (&options->CPP_LINE_DIRECTIVES);
  clear_option (&options->MAX_MACRO_CALL_NESTING);
  clear_option (&options->NO_INDEX);
  clear_option (&options->NO_USER_COMMANDS);

/* program_cmdline */

  clear_option (&options->MACRO_EXPAND);
  clear_option (&options->INTERNAL_LINKS);
  clear_option (&options->ERROR_LIMIT);
  clear_option (&options->FORCE);
  clear_option (&options->NO_WARN);
  clear_option (&options->TRACE_INCLUDES);
  clear_option (&options->FORMAT_MENU);

/* program_customization */

  clear_option (&options->CHECK_NORMAL_MENU_STRUCTURE);
  clear_option (&options->CHECK_MISSING_MENU_ENTRY);
  clear_option (&options->DUMP_STRUCTURE);
  clear_option (&options->DUMP_TREE);
  clear_option (&options->DUMP_TEXI);
  clear_option (&options->SHOW_BUILTIN_CSS_RULES);
  clear_option (&options->SORT_ELEMENT_COUNT);
  clear_option (&options->SORT_ELEMENT_COUNT_WORDS);
  clear_option (&options->TEXI2DVI);
  clear_option (&options->TREE_TRANSFORMATIONS);

/* unique_at_command */

  clear_option (&options->afivepaper);
  clear_option (&options->afourpaper);
  clear_option (&options->afourlatex);
  clear_option (&options->afourwide);
  clear_option (&options->bsixpaper);
  clear_option (&options->documentdescription);
  clear_option (&options->evenfootingmarks);
  clear_option (&options->evenheadingmarks);
  clear_option (&options->everyfootingmarks);
  clear_option (&options->everyheadingmarks);
  clear_option (&options->fonttextsize);
  clear_option (&options->footnotestyle);
  clear_option (&options->novalidate);
  clear_option (&options->oddfootingmarks);
  clear_option (&options->oddheadingmarks);
  clear_option (&options->pagesizes);
  clear_option (&options->setchapternewpage);
  clear_option (&options->setfilename);
  clear_option (&options->smallbook);
}

void
copy_options (OPTIONS *destination, const OPTIONS *source)
{
  destination->BIT_user_function_number = source->BIT_user_function_number;

/* array_cmdline */

  copy_option (&destination->CSS_FILES, &source->CSS_FILES);
  copy_option (&destination->CSS_REFS, &source->CSS_REFS);
  copy_option (&destination->EXPANDED_FORMATS, &source->EXPANDED_FORMATS);
  copy_option (&destination->INCLUDE_DIRECTORIES, &source->INCLUDE_DIRECTORIES);
  copy_option (&destination->TEXINFO_LANGUAGE_DIRECTORIES, &source->TEXINFO_LANGUAGE_DIRECTORIES);

/* converter_cmdline */

  copy_option (&destination->SPLIT_SIZE, &source->SPLIT_SIZE);
  copy_option (&destination->FILLCOLUMN, &source->FILLCOLUMN);
  copy_option (&destination->NUMBER_SECTIONS, &source->NUMBER_SECTIONS);
  copy_option (&destination->NUMBER_FOOTNOTES, &source->NUMBER_FOOTNOTES);
  copy_option (&destination->TRANSLITERATE_FILE_NAMES, &source->TRANSLITERATE_FILE_NAMES);
  copy_option (&destination->SPLIT, &source->SPLIT);
  copy_option (&destination->HEADERS, &source->HEADERS);
  copy_option (&destination->NODE_FILES, &source->NODE_FILES);
  copy_option (&destination->VERBOSE, &source->VERBOSE);
  copy_option (&destination->OUTFILE, &source->OUTFILE);
  copy_option (&destination->SUBDIR, &source->SUBDIR);
  copy_option (&destination->ENABLE_ENCODING, &source->ENABLE_ENCODING);

/* converter_customization */

  copy_option (&destination->TOP_NODE_UP, &source->TOP_NODE_UP);
  copy_option (&destination->BASEFILENAME_LENGTH, &source->BASEFILENAME_LENGTH);
  copy_option (&destination->DOC_ENCODING_FOR_INPUT_FILE_NAME, &source->DOC_ENCODING_FOR_INPUT_FILE_NAME);
  copy_option (&destination->DOC_ENCODING_FOR_OUTPUT_FILE_NAME, &source->DOC_ENCODING_FOR_OUTPUT_FILE_NAME);
  copy_option (&destination->IMAGE_LINK_PREFIX, &source->IMAGE_LINK_PREFIX);
  copy_option (&destination->CASE_INSENSITIVE_FILENAMES, &source->CASE_INSENSITIVE_FILENAMES);
  copy_option (&destination->DEBUG, &source->DEBUG);
  copy_option (&destination->HANDLER_FATAL_ERROR_LEVEL, &source->HANDLER_FATAL_ERROR_LEVEL);
  copy_option (&destination->TEST, &source->TEST);
  copy_option (&destination->TEXTCONTENT_COMMENT, &source->TEXTCONTENT_COMMENT);
  copy_option (&destination->TEXINFO_DTD_VERSION, &source->TEXINFO_DTD_VERSION);
  copy_option (&destination->USE_UNICODE_COLLATION, &source->USE_UNICODE_COLLATION);
  copy_option (&destination->ADD_TRANSLITERATED_REDIRECTION_FILES, &source->ADD_TRANSLITERATED_REDIRECTION_FILES);
  copy_option (&destination->AFTER_BODY_OPEN, &source->AFTER_BODY_OPEN);
  copy_option (&destination->AFTER_SHORT_TOC_LINES, &source->AFTER_SHORT_TOC_LINES);
  copy_option (&destination->AFTER_TOC_LINES, &source->AFTER_TOC_LINES);
  copy_option (&destination->ASCII_DASHES_AND_QUOTES, &source->ASCII_DASHES_AND_QUOTES);
  copy_option (&destination->ASCII_GLYPH, &source->ASCII_GLYPH);
  copy_option (&destination->ASCII_PUNCTUATION, &source->ASCII_PUNCTUATION);
  copy_option (&destination->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN, &source->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN);
  copy_option (&destination->AUTO_MENU_MAX_WIDTH, &source->AUTO_MENU_MAX_WIDTH);
  copy_option (&destination->BEFORE_SHORT_TOC_LINES, &source->BEFORE_SHORT_TOC_LINES);
  copy_option (&destination->BEFORE_TOC_LINES, &source->BEFORE_TOC_LINES);
  copy_option (&destination->BIG_RULE, &source->BIG_RULE);
  copy_option (&destination->BODY_ELEMENT_ATTRIBUTES, &source->BODY_ELEMENT_ATTRIBUTES);
  copy_option (&destination->CLASS_BEGIN_USEPACKAGE, &source->CLASS_BEGIN_USEPACKAGE);
  copy_option (&destination->COPIABLE_LINKS, &source->COPIABLE_LINKS);
  copy_option (&destination->CHAPTER_HEADER_LEVEL, &source->CHAPTER_HEADER_LEVEL);
  copy_option (&destination->CHECK_HTMLXREF, &source->CHECK_HTMLXREF);
  copy_option (&destination->CLOSE_DOUBLE_QUOTE_SYMBOL, &source->CLOSE_DOUBLE_QUOTE_SYMBOL);
  copy_option (&destination->CLOSE_QUOTE_SYMBOL, &source->CLOSE_QUOTE_SYMBOL);
  copy_option (&destination->COLLATION_LANGUAGE, &source->COLLATION_LANGUAGE);
  copy_option (&destination->COMMAND_LINE_ENCODING, &source->COMMAND_LINE_ENCODING);
  copy_option (&destination->INDENTED_BLOCK_COMMANDS_IN_TABLE, &source->INDENTED_BLOCK_COMMANDS_IN_TABLE);
  copy_option (&destination->CONTENTS_OUTPUT_LOCATION, &source->CONTENTS_OUTPUT_LOCATION);
  copy_option (&destination->CONVERT_TO_LATEX_IN_MATH, &source->CONVERT_TO_LATEX_IN_MATH);
  copy_option (&destination->DATE_IN_HEADER, &source->DATE_IN_HEADER);
  copy_option (&destination->DEFAULT_RULE, &source->DEFAULT_RULE);
  copy_option (&destination->DEF_TABLE, &source->DEF_TABLE);
  copy_option (&destination->DO_ABOUT, &source->DO_ABOUT);
  copy_option (&destination->_DOCBOOK_PIECE, &source->_DOCBOOK_PIECE);
  copy_option (&destination->DOCTYPE, &source->DOCTYPE);
  copy_option (&destination->DOCUMENTLANGUAGE_COLLATION, &source->DOCUMENTLANGUAGE_COLLATION);
  copy_option (&destination->END_USEPACKAGE, &source->END_USEPACKAGE);
  copy_option (&destination->EPUB_CREATE_CONTAINER_FILE, &source->EPUB_CREATE_CONTAINER_FILE);
  copy_option (&destination->EPUB_KEEP_CONTAINER_FOLDER, &source->EPUB_KEEP_CONTAINER_FOLDER);
  copy_option (&destination->EXTENSION, &source->EXTENSION);
  copy_option (&destination->EXTERNAL_CROSSREF_EXTENSION, &source->EXTERNAL_CROSSREF_EXTENSION);
  copy_option (&destination->EXTERNAL_CROSSREF_SPLIT, &source->EXTERNAL_CROSSREF_SPLIT);
  copy_option (&destination->EXTERNAL_DIR, &source->EXTERNAL_DIR);
  copy_option (&destination->EXTRA_HEAD, &source->EXTRA_HEAD);
  copy_option (&destination->FOOTNOTE_END_HEADER_LEVEL, &source->FOOTNOTE_END_HEADER_LEVEL);
  copy_option (&destination->FOOTNOTE_SEPARATE_HEADER_LEVEL, &source->FOOTNOTE_SEPARATE_HEADER_LEVEL);
  copy_option (&destination->HEADER_IN_TABLE, &source->HEADER_IN_TABLE);
  copy_option (&destination->HIGHLIGHT_SYNTAX, &source->HIGHLIGHT_SYNTAX);
  copy_option (&destination->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE, &source->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE);
  copy_option (&destination->HTML_MATH, &source->HTML_MATH);
  copy_option (&destination->HTML_ROOT_ELEMENT_ATTRIBUTES, &source->HTML_ROOT_ELEMENT_ATTRIBUTES);
  copy_option (&destination->HTMLXREF_FILE, &source->HTMLXREF_FILE);
  copy_option (&destination->HTMLXREF_MODE, &source->HTMLXREF_MODE);
  copy_option (&destination->ICONS, &source->ICONS);
  copy_option (&destination->INDEX_ENTRY_COLON, &source->INDEX_ENTRY_COLON);
  copy_option (&destination->INDEX_SPECIAL_CHARS_WARNING, &source->INDEX_SPECIAL_CHARS_WARNING);
  copy_option (&destination->INFO_JS_DIR, &source->INFO_JS_DIR);
  copy_option (&destination->INFO_SPECIAL_CHARS_QUOTE, &source->INFO_SPECIAL_CHARS_QUOTE);
  copy_option (&destination->INFO_SPECIAL_CHARS_WARNING, &source->INFO_SPECIAL_CHARS_WARNING);
  copy_option (&destination->INFO_MATH_IMAGES, &source->INFO_MATH_IMAGES);
  copy_option (&destination->IGNORE_REF_TO_TOP_NODE_UP, &source->IGNORE_REF_TO_TOP_NODE_UP);
  copy_option (&destination->INLINE_CSS_STYLE, &source->INLINE_CSS_STYLE);
  copy_option (&destination->INPUT_FILE_NAME_ENCODING, &source->INPUT_FILE_NAME_ENCODING);
  copy_option (&destination->JS_WEBLABELS, &source->JS_WEBLABELS);
  copy_option (&destination->JS_WEBLABELS_FILE, &source->JS_WEBLABELS_FILE);
  copy_option (&destination->LATEX_FLOATS_FILE_EXTENSION, &source->LATEX_FLOATS_FILE_EXTENSION);
  copy_option (&destination->LOCALE_ENCODING, &source->LOCALE_ENCODING);
  copy_option (&destination->L2H_CLEAN, &source->L2H_CLEAN);
  copy_option (&destination->L2H_FILE, &source->L2H_FILE);
  copy_option (&destination->L2H_HTML_VERSION, &source->L2H_HTML_VERSION);
  copy_option (&destination->L2H_L2H, &source->L2H_L2H);
  copy_option (&destination->L2H_SKIP, &source->L2H_SKIP);
  copy_option (&destination->L2H_TMP, &source->L2H_TMP);
  copy_option (&destination->MATHJAX_CONFIGURATION, &source->MATHJAX_CONFIGURATION);
  copy_option (&destination->MATHJAX_SCRIPT, &source->MATHJAX_SCRIPT);
  copy_option (&destination->MATHJAX_SOURCE, &source->MATHJAX_SOURCE);
  copy_option (&destination->MAX_HEADER_LEVEL, &source->MAX_HEADER_LEVEL);
  copy_option (&destination->MENU_ENTRY_COLON, &source->MENU_ENTRY_COLON);
  copy_option (&destination->MENU_SYMBOL, &source->MENU_SYMBOL);
  copy_option (&destination->MESSAGE_ENCODING, &source->MESSAGE_ENCODING);
  copy_option (&destination->MONOLITHIC, &source->MONOLITHIC);
  copy_option (&destination->NO_CSS, &source->NO_CSS);
  copy_option (&destination->NO_NUMBER_FOOTNOTE_SYMBOL, &source->NO_NUMBER_FOOTNOTE_SYMBOL);
  copy_option (&destination->NO_CUSTOM_HTML_ATTRIBUTE, &source->NO_CUSTOM_HTML_ATTRIBUTE);
  copy_option (&destination->NODE_NAME_IN_INDEX, &source->NODE_NAME_IN_INDEX);
  copy_option (&destination->NODE_NAME_IN_MENU, &source->NODE_NAME_IN_MENU);
  copy_option (&destination->NO_TOP_NODE_OUTPUT, &source->NO_TOP_NODE_OUTPUT);
  copy_option (&destination->OPEN_DOUBLE_QUOTE_SYMBOL, &source->OPEN_DOUBLE_QUOTE_SYMBOL);
  copy_option (&destination->OPEN_QUOTE_SYMBOL, &source->OPEN_QUOTE_SYMBOL);
  copy_option (&destination->OUTPUT_CHARACTERS, &source->OUTPUT_CHARACTERS);
  copy_option (&destination->OUTPUT_ENCODING_NAME, &source->OUTPUT_ENCODING_NAME);
  copy_option (&destination->OUTPUT_FILE_NAME_ENCODING, &source->OUTPUT_FILE_NAME_ENCODING);
  copy_option (&destination->OUTPUT_PERL_ENCODING, &source->OUTPUT_PERL_ENCODING);
  copy_option (&destination->PACKAGE, &source->PACKAGE);
  copy_option (&destination->PACKAGE_AND_VERSION, &source->PACKAGE_AND_VERSION);
  copy_option (&destination->PACKAGE_NAME, &source->PACKAGE_NAME);
  copy_option (&destination->PACKAGE_URL, &source->PACKAGE_URL);
  copy_option (&destination->PACKAGE_VERSION, &source->PACKAGE_VERSION);
  copy_option (&destination->PRE_BODY_CLOSE, &source->PRE_BODY_CLOSE);
  copy_option (&destination->PREFIX, &source->PREFIX);
  copy_option (&destination->PROGRAM, &source->PROGRAM);
  copy_option (&destination->PROGRAM_NAME_IN_ABOUT, &source->PROGRAM_NAME_IN_ABOUT);
  copy_option (&destination->PROGRAM_NAME_IN_FOOTER, &source->PROGRAM_NAME_IN_FOOTER);
  copy_option (&destination->SECTION_NAME_IN_TITLE, &source->SECTION_NAME_IN_TITLE);
  copy_option (&destination->SHORT_TOC_LINK_TO_TOC, &source->SHORT_TOC_LINK_TO_TOC);
  copy_option (&destination->SHOW_TITLE, &source->SHOW_TITLE);
  copy_option (&destination->T4H_LATEX_CONVERSION, &source->T4H_LATEX_CONVERSION);
  copy_option (&destination->T4H_MATH_CONVERSION, &source->T4H_MATH_CONVERSION);
  copy_option (&destination->T4H_TEX_CONVERSION, &source->T4H_TEX_CONVERSION);
  copy_option (&destination->TEXI2HTML, &source->TEXI2HTML);
  copy_option (&destination->TEXINFO_OUTPUT_FORMAT, &source->TEXINFO_OUTPUT_FORMAT);
  copy_option (&destination->TXI_MARKUP_NO_SECTION_EXTENT, &source->TXI_MARKUP_NO_SECTION_EXTENT);
  copy_option (&destination->TOC_LINKS, &source->TOC_LINKS);
  copy_option (&destination->TOP_FILE, &source->TOP_FILE);
  copy_option (&destination->TOP_NODE_FILE_TARGET, &source->TOP_NODE_FILE_TARGET);
  copy_option (&destination->TOP_NODE_UP_URL, &source->TOP_NODE_UP_URL);
  copy_option (&destination->USE_ACCESSKEY, &source->USE_ACCESSKEY);
  copy_option (&destination->USE_ISO, &source->USE_ISO);
  copy_option (&destination->USE_LINKS, &source->USE_LINKS);
  copy_option (&destination->USE_NODES, &source->USE_NODES);
  copy_option (&destination->USE_NODE_DIRECTIONS, &source->USE_NODE_DIRECTIONS);
  copy_option (&destination->USE_NUMERIC_ENTITY, &source->USE_NUMERIC_ENTITY);
  copy_option (&destination->USE_SETFILENAME_EXTENSION, &source->USE_SETFILENAME_EXTENSION);
  copy_option (&destination->USE_TITLEPAGE_FOR_TITLE, &source->USE_TITLEPAGE_FOR_TITLE);
  copy_option (&destination->USE_UNIDECODE, &source->USE_UNIDECODE);
  copy_option (&destination->USE_XML_SYNTAX, &source->USE_XML_SYNTAX);
  copy_option (&destination->VERTICAL_HEAD_NAVIGATION, &source->VERTICAL_HEAD_NAVIGATION);
  copy_option (&destination->WORDS_IN_PAGE, &source->WORDS_IN_PAGE);
  copy_option (&destination->XREF_USE_FLOAT_LABEL, &source->XREF_USE_FLOAT_LABEL);
  copy_option (&destination->XREF_USE_NODE_NAME_ARG, &source->XREF_USE_NODE_NAME_ARG);
  copy_option (&destination->XS_EXTERNAL_CONVERSION, &source->XS_EXTERNAL_CONVERSION);
  copy_option (&destination->XS_EXTERNAL_FORMATTING, &source->XS_EXTERNAL_FORMATTING);
  copy_option (&destination->XS_STRXFRM_COLLATION_LOCALE, &source->XS_STRXFRM_COLLATION_LOCALE);
  copy_option (&destination->_INLINE_STYLE_WIDTH, &source->_INLINE_STYLE_WIDTH);

/* converter_other */

  copy_option (&destination->LINKS_DIRECTIONS, &source->LINKS_DIRECTIONS);
  copy_option (&destination->TOP_BUTTONS, &source->TOP_BUTTONS);
  copy_option (&destination->TOP_FOOTER_BUTTONS, &source->TOP_FOOTER_BUTTONS);
  copy_option (&destination->SECTION_BUTTONS, &source->SECTION_BUTTONS);
  copy_option (&destination->CHAPTER_FOOTER_BUTTONS, &source->CHAPTER_FOOTER_BUTTONS);
  copy_option (&destination->SECTION_FOOTER_BUTTONS, &source->SECTION_FOOTER_BUTTONS);
  copy_option (&destination->NODE_FOOTER_BUTTONS, &source->NODE_FOOTER_BUTTONS);
  copy_option (&destination->MISC_BUTTONS, &source->MISC_BUTTONS);
  copy_option (&destination->CHAPTER_BUTTONS, &source->CHAPTER_BUTTONS);
  copy_option (&destination->ACTIVE_ICONS, &source->ACTIVE_ICONS);
  copy_option (&destination->PASSIVE_ICONS, &source->PASSIVE_ICONS);

/* multiple_at_command */

  copy_option (&destination->allowcodebreaks, &source->allowcodebreaks);
  copy_option (&destination->clickstyle, &source->clickstyle);
  copy_option (&destination->codequotebacktick, &source->codequotebacktick);
  copy_option (&destination->codequoteundirected, &source->codequoteundirected);
  copy_option (&destination->contents, &source->contents);
  copy_option (&destination->deftypefnnewline, &source->deftypefnnewline);
  copy_option (&destination->documentencoding, &source->documentencoding);
  copy_option (&destination->documentlanguage, &source->documentlanguage);
  copy_option (&destination->evenfooting, &source->evenfooting);
  copy_option (&destination->evenheading, &source->evenheading);
  copy_option (&destination->everyfooting, &source->everyfooting);
  copy_option (&destination->everyheading, &source->everyheading);
  copy_option (&destination->exampleindent, &source->exampleindent);
  copy_option (&destination->firstparagraphindent, &source->firstparagraphindent);
  copy_option (&destination->frenchspacing, &source->frenchspacing);
  copy_option (&destination->headings, &source->headings);
  copy_option (&destination->kbdinputstyle, &source->kbdinputstyle);
  copy_option (&destination->microtype, &source->microtype);
  copy_option (&destination->oddheading, &source->oddheading);
  copy_option (&destination->oddfooting, &source->oddfooting);
  copy_option (&destination->paragraphindent, &source->paragraphindent);
  copy_option (&destination->shortcontents, &source->shortcontents);
  copy_option (&destination->summarycontents, &source->summarycontents);
  copy_option (&destination->urefbreakstyle, &source->urefbreakstyle);
  copy_option (&destination->xrefautomaticsectiontitle, &source->xrefautomaticsectiontitle);

/* parser */

  copy_option (&destination->IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME, &source->IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME);
  copy_option (&destination->CPP_LINE_DIRECTIVES, &source->CPP_LINE_DIRECTIVES);
  copy_option (&destination->MAX_MACRO_CALL_NESTING, &source->MAX_MACRO_CALL_NESTING);
  copy_option (&destination->NO_INDEX, &source->NO_INDEX);
  copy_option (&destination->NO_USER_COMMANDS, &source->NO_USER_COMMANDS);

/* program_cmdline */

  copy_option (&destination->MACRO_EXPAND, &source->MACRO_EXPAND);
  copy_option (&destination->INTERNAL_LINKS, &source->INTERNAL_LINKS);
  copy_option (&destination->ERROR_LIMIT, &source->ERROR_LIMIT);
  copy_option (&destination->FORCE, &source->FORCE);
  copy_option (&destination->NO_WARN, &source->NO_WARN);
  copy_option (&destination->TRACE_INCLUDES, &source->TRACE_INCLUDES);
  copy_option (&destination->FORMAT_MENU, &source->FORMAT_MENU);

/* program_customization */

  copy_option (&destination->CHECK_NORMAL_MENU_STRUCTURE, &source->CHECK_NORMAL_MENU_STRUCTURE);
  copy_option (&destination->CHECK_MISSING_MENU_ENTRY, &source->CHECK_MISSING_MENU_ENTRY);
  copy_option (&destination->DUMP_STRUCTURE, &source->DUMP_STRUCTURE);
  copy_option (&destination->DUMP_TREE, &source->DUMP_TREE);
  copy_option (&destination->DUMP_TEXI, &source->DUMP_TEXI);
  copy_option (&destination->SHOW_BUILTIN_CSS_RULES, &source->SHOW_BUILTIN_CSS_RULES);
  copy_option (&destination->SORT_ELEMENT_COUNT, &source->SORT_ELEMENT_COUNT);
  copy_option (&destination->SORT_ELEMENT_COUNT_WORDS, &source->SORT_ELEMENT_COUNT_WORDS);
  copy_option (&destination->TEXI2DVI, &source->TEXI2DVI);
  copy_option (&destination->TREE_TRANSFORMATIONS, &source->TREE_TRANSFORMATIONS);

/* unique_at_command */

  copy_option (&destination->afivepaper, &source->afivepaper);
  copy_option (&destination->afourpaper, &source->afourpaper);
  copy_option (&destination->afourlatex, &source->afourlatex);
  copy_option (&destination->afourwide, &source->afourwide);
  copy_option (&destination->bsixpaper, &source->bsixpaper);
  copy_option (&destination->documentdescription, &source->documentdescription);
  copy_option (&destination->evenfootingmarks, &source->evenfootingmarks);
  copy_option (&destination->evenheadingmarks, &source->evenheadingmarks);
  copy_option (&destination->everyfootingmarks, &source->everyfootingmarks);
  copy_option (&destination->everyheadingmarks, &source->everyheadingmarks);
  copy_option (&destination->fonttextsize, &source->fonttextsize);
  copy_option (&destination->footnotestyle, &source->footnotestyle);
  copy_option (&destination->novalidate, &source->novalidate);
  copy_option (&destination->oddfootingmarks, &source->oddfootingmarks);
  copy_option (&destination->oddheadingmarks, &source->oddheadingmarks);
  copy_option (&destination->pagesizes, &source->pagesizes);
  copy_option (&destination->setchapternewpage, &source->setchapternewpage);
  copy_option (&destination->setfilename, &source->setfilename);
  copy_option (&destination->smallbook, &source->smallbook);
}

void
setup_sortable_options (OPTION **to_sort, OPTIONS *options)
{
  to_sort[0] = &options->ACTIVE_ICONS;   /* converter_other */
  to_sort[1] = &options->ADD_TRANSLITERATED_REDIRECTION_FILES;   /* converter_customization */
  to_sort[2] = &options->AFTER_BODY_OPEN;   /* converter_customization */
  to_sort[3] = &options->AFTER_SHORT_TOC_LINES;   /* converter_customization */
  to_sort[4] = &options->AFTER_TOC_LINES;   /* converter_customization */
  to_sort[5] = &options->ASCII_DASHES_AND_QUOTES;   /* converter_customization */
  to_sort[6] = &options->ASCII_GLYPH;   /* converter_customization */
  to_sort[7] = &options->ASCII_PUNCTUATION;   /* converter_customization */
  to_sort[8] = &options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN;   /* converter_customization */
  to_sort[9] = &options->AUTO_MENU_MAX_WIDTH;   /* converter_customization */
  to_sort[10] = &options->BASEFILENAME_LENGTH;   /* converter_customization */
  to_sort[11] = &options->BEFORE_SHORT_TOC_LINES;   /* converter_customization */
  to_sort[12] = &options->BEFORE_TOC_LINES;   /* converter_customization */
  to_sort[13] = &options->BIG_RULE;   /* converter_customization */
  to_sort[14] = &options->BODY_ELEMENT_ATTRIBUTES;   /* converter_customization */
  to_sort[15] = &options->CASE_INSENSITIVE_FILENAMES;   /* converter_customization */
  to_sort[16] = &options->CHAPTER_BUTTONS;   /* converter_other */
  to_sort[17] = &options->CHAPTER_FOOTER_BUTTONS;   /* converter_other */
  to_sort[18] = &options->CHAPTER_HEADER_LEVEL;   /* converter_customization */
  to_sort[19] = &options->CHECK_HTMLXREF;   /* converter_customization */
  to_sort[20] = &options->CHECK_MISSING_MENU_ENTRY;   /* program_customization */
  to_sort[21] = &options->CHECK_NORMAL_MENU_STRUCTURE;   /* program_customization */
  to_sort[22] = &options->CLASS_BEGIN_USEPACKAGE;   /* converter_customization */
  to_sort[23] = &options->CLOSE_DOUBLE_QUOTE_SYMBOL;   /* converter_customization */
  to_sort[24] = &options->CLOSE_QUOTE_SYMBOL;   /* converter_customization */
  to_sort[25] = &options->COLLATION_LANGUAGE;   /* converter_customization */
  to_sort[26] = &options->COMMAND_LINE_ENCODING;   /* converter_customization */
  to_sort[27] = &options->CONTENTS_OUTPUT_LOCATION;   /* converter_customization */
  to_sort[28] = &options->CONVERT_TO_LATEX_IN_MATH;   /* converter_customization */
  to_sort[29] = &options->COPIABLE_LINKS;   /* converter_customization */
  to_sort[30] = &options->CPP_LINE_DIRECTIVES;   /* parser */
  to_sort[31] = &options->CSS_FILES;   /* array_cmdline */
  to_sort[32] = &options->CSS_REFS;   /* array_cmdline */
  to_sort[33] = &options->DATE_IN_HEADER;   /* converter_customization */
  to_sort[34] = &options->DEBUG;   /* converter_customization */
  to_sort[35] = &options->DEFAULT_RULE;   /* converter_customization */
  to_sort[36] = &options->DEF_TABLE;   /* converter_customization */
  to_sort[37] = &options->DOCTYPE;   /* converter_customization */
  to_sort[38] = &options->DOCUMENTLANGUAGE_COLLATION;   /* converter_customization */
  to_sort[39] = &options->DOC_ENCODING_FOR_INPUT_FILE_NAME;   /* converter_customization */
  to_sort[40] = &options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME;   /* converter_customization */
  to_sort[41] = &options->DO_ABOUT;   /* converter_customization */
  to_sort[42] = &options->DUMP_STRUCTURE;   /* program_customization */
  to_sort[43] = &options->DUMP_TEXI;   /* program_customization */
  to_sort[44] = &options->DUMP_TREE;   /* program_customization */
  to_sort[45] = &options->ENABLE_ENCODING;   /* converter_cmdline */
  to_sort[46] = &options->END_USEPACKAGE;   /* converter_customization */
  to_sort[47] = &options->EPUB_CREATE_CONTAINER_FILE;   /* converter_customization */
  to_sort[48] = &options->EPUB_KEEP_CONTAINER_FOLDER;   /* converter_customization */
  to_sort[49] = &options->ERROR_LIMIT;   /* program_cmdline */
  to_sort[50] = &options->EXPANDED_FORMATS;   /* array_cmdline */
  to_sort[51] = &options->EXTENSION;   /* converter_customization */
  to_sort[52] = &options->EXTERNAL_CROSSREF_EXTENSION;   /* converter_customization */
  to_sort[53] = &options->EXTERNAL_CROSSREF_SPLIT;   /* converter_customization */
  to_sort[54] = &options->EXTERNAL_DIR;   /* converter_customization */
  to_sort[55] = &options->EXTRA_HEAD;   /* converter_customization */
  to_sort[56] = &options->FILLCOLUMN;   /* converter_cmdline */
  to_sort[57] = &options->FOOTNOTE_END_HEADER_LEVEL;   /* converter_customization */
  to_sort[58] = &options->FOOTNOTE_SEPARATE_HEADER_LEVEL;   /* converter_customization */
  to_sort[59] = &options->FORCE;   /* program_cmdline */
  to_sort[60] = &options->FORMAT_MENU;   /* program_cmdline */
  to_sort[61] = &options->HANDLER_FATAL_ERROR_LEVEL;   /* converter_customization */
  to_sort[62] = &options->HEADERS;   /* converter_cmdline */
  to_sort[63] = &options->HEADER_IN_TABLE;   /* converter_customization */
  to_sort[64] = &options->HIGHLIGHT_SYNTAX;   /* converter_customization */
  to_sort[65] = &options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE;   /* converter_customization */
  to_sort[66] = &options->HTMLXREF_FILE;   /* converter_customization */
  to_sort[67] = &options->HTMLXREF_MODE;   /* converter_customization */
  to_sort[68] = &options->HTML_MATH;   /* converter_customization */
  to_sort[69] = &options->HTML_ROOT_ELEMENT_ATTRIBUTES;   /* converter_customization */
  to_sort[70] = &options->ICONS;   /* converter_customization */
  to_sort[71] = &options->IGNORE_REF_TO_TOP_NODE_UP;   /* converter_customization */
  to_sort[72] = &options->IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME;   /* parser */
  to_sort[73] = &options->IMAGE_LINK_PREFIX;   /* converter_customization */
  to_sort[74] = &options->INCLUDE_DIRECTORIES;   /* array_cmdline */
  to_sort[75] = &options->INDENTED_BLOCK_COMMANDS_IN_TABLE;   /* converter_customization */
  to_sort[76] = &options->INDEX_ENTRY_COLON;   /* converter_customization */
  to_sort[77] = &options->INDEX_SPECIAL_CHARS_WARNING;   /* converter_customization */
  to_sort[78] = &options->INFO_JS_DIR;   /* converter_customization */
  to_sort[79] = &options->INFO_MATH_IMAGES;   /* converter_customization */
  to_sort[80] = &options->INFO_SPECIAL_CHARS_QUOTE;   /* converter_customization */
  to_sort[81] = &options->INFO_SPECIAL_CHARS_WARNING;   /* converter_customization */
  to_sort[82] = &options->INLINE_CSS_STYLE;   /* converter_customization */
  to_sort[83] = &options->INPUT_FILE_NAME_ENCODING;   /* converter_customization */
  to_sort[84] = &options->INTERNAL_LINKS;   /* program_cmdline */
  to_sort[85] = &options->JS_WEBLABELS;   /* converter_customization */
  to_sort[86] = &options->JS_WEBLABELS_FILE;   /* converter_customization */
  to_sort[87] = &options->L2H_CLEAN;   /* converter_customization */
  to_sort[88] = &options->L2H_FILE;   /* converter_customization */
  to_sort[89] = &options->L2H_HTML_VERSION;   /* converter_customization */
  to_sort[90] = &options->L2H_L2H;   /* converter_customization */
  to_sort[91] = &options->L2H_SKIP;   /* converter_customization */
  to_sort[92] = &options->L2H_TMP;   /* converter_customization */
  to_sort[93] = &options->LATEX_FLOATS_FILE_EXTENSION;   /* converter_customization */
  to_sort[94] = &options->LINKS_DIRECTIONS;   /* converter_other */
  to_sort[95] = &options->LOCALE_ENCODING;   /* converter_customization */
  to_sort[96] = &options->MACRO_EXPAND;   /* program_cmdline */
  to_sort[97] = &options->MATHJAX_CONFIGURATION;   /* converter_customization */
  to_sort[98] = &options->MATHJAX_SCRIPT;   /* converter_customization */
  to_sort[99] = &options->MATHJAX_SOURCE;   /* converter_customization */
  to_sort[100] = &options->MAX_HEADER_LEVEL;   /* converter_customization */
  to_sort[101] = &options->MAX_MACRO_CALL_NESTING;   /* parser */
  to_sort[102] = &options->MENU_ENTRY_COLON;   /* converter_customization */
  to_sort[103] = &options->MENU_SYMBOL;   /* converter_customization */
  to_sort[104] = &options->MESSAGE_ENCODING;   /* converter_customization */
  to_sort[105] = &options->MISC_BUTTONS;   /* converter_other */
  to_sort[106] = &options->MONOLITHIC;   /* converter_customization */
  to_sort[107] = &options->NODE_FILES;   /* converter_cmdline */
  to_sort[108] = &options->NODE_FOOTER_BUTTONS;   /* converter_other */
  to_sort[109] = &options->NODE_NAME_IN_INDEX;   /* converter_customization */
  to_sort[110] = &options->NODE_NAME_IN_MENU;   /* converter_customization */
  to_sort[111] = &options->NO_CSS;   /* converter_customization */
  to_sort[112] = &options->NO_CUSTOM_HTML_ATTRIBUTE;   /* converter_customization */
  to_sort[113] = &options->NO_INDEX;   /* parser */
  to_sort[114] = &options->NO_NUMBER_FOOTNOTE_SYMBOL;   /* converter_customization */
  to_sort[115] = &options->NO_TOP_NODE_OUTPUT;   /* converter_customization */
  to_sort[116] = &options->NO_USER_COMMANDS;   /* parser */
  to_sort[117] = &options->NO_WARN;   /* program_cmdline */
  to_sort[118] = &options->NUMBER_FOOTNOTES;   /* converter_cmdline */
  to_sort[119] = &options->NUMBER_SECTIONS;   /* converter_cmdline */
  to_sort[120] = &options->OPEN_DOUBLE_QUOTE_SYMBOL;   /* converter_customization */
  to_sort[121] = &options->OPEN_QUOTE_SYMBOL;   /* converter_customization */
  to_sort[122] = &options->OUTFILE;   /* converter_cmdline */
  to_sort[123] = &options->OUTPUT_CHARACTERS;   /* converter_customization */
  to_sort[124] = &options->OUTPUT_ENCODING_NAME;   /* converter_customization */
  to_sort[125] = &options->OUTPUT_FILE_NAME_ENCODING;   /* converter_customization */
  to_sort[126] = &options->OUTPUT_PERL_ENCODING;   /* converter_customization */
  to_sort[127] = &options->PACKAGE;   /* converter_customization */
  to_sort[128] = &options->PACKAGE_AND_VERSION;   /* converter_customization */
  to_sort[129] = &options->PACKAGE_NAME;   /* converter_customization */
  to_sort[130] = &options->PACKAGE_URL;   /* converter_customization */
  to_sort[131] = &options->PACKAGE_VERSION;   /* converter_customization */
  to_sort[132] = &options->PASSIVE_ICONS;   /* converter_other */
  to_sort[133] = &options->PREFIX;   /* converter_customization */
  to_sort[134] = &options->PRE_BODY_CLOSE;   /* converter_customization */
  to_sort[135] = &options->PROGRAM;   /* converter_customization */
  to_sort[136] = &options->PROGRAM_NAME_IN_ABOUT;   /* converter_customization */
  to_sort[137] = &options->PROGRAM_NAME_IN_FOOTER;   /* converter_customization */
  to_sort[138] = &options->SECTION_BUTTONS;   /* converter_other */
  to_sort[139] = &options->SECTION_FOOTER_BUTTONS;   /* converter_other */
  to_sort[140] = &options->SECTION_NAME_IN_TITLE;   /* converter_customization */
  to_sort[141] = &options->SHORT_TOC_LINK_TO_TOC;   /* converter_customization */
  to_sort[142] = &options->SHOW_BUILTIN_CSS_RULES;   /* program_customization */
  to_sort[143] = &options->SHOW_TITLE;   /* converter_customization */
  to_sort[144] = &options->SORT_ELEMENT_COUNT;   /* program_customization */
  to_sort[145] = &options->SORT_ELEMENT_COUNT_WORDS;   /* program_customization */
  to_sort[146] = &options->SPLIT;   /* converter_cmdline */
  to_sort[147] = &options->SPLIT_SIZE;   /* converter_cmdline */
  to_sort[148] = &options->SUBDIR;   /* converter_cmdline */
  to_sort[149] = &options->T4H_LATEX_CONVERSION;   /* converter_customization */
  to_sort[150] = &options->T4H_MATH_CONVERSION;   /* converter_customization */
  to_sort[151] = &options->T4H_TEX_CONVERSION;   /* converter_customization */
  to_sort[152] = &options->TEST;   /* converter_customization */
  to_sort[153] = &options->TEXI2DVI;   /* program_customization */
  to_sort[154] = &options->TEXI2HTML;   /* converter_customization */
  to_sort[155] = &options->TEXINFO_DTD_VERSION;   /* converter_customization */
  to_sort[156] = &options->TEXINFO_LANGUAGE_DIRECTORIES;   /* array_cmdline */
  to_sort[157] = &options->TEXINFO_OUTPUT_FORMAT;   /* converter_customization */
  to_sort[158] = &options->TEXTCONTENT_COMMENT;   /* converter_customization */
  to_sort[159] = &options->TOC_LINKS;   /* converter_customization */
  to_sort[160] = &options->TOP_BUTTONS;   /* converter_other */
  to_sort[161] = &options->TOP_FILE;   /* converter_customization */
  to_sort[162] = &options->TOP_FOOTER_BUTTONS;   /* converter_other */
  to_sort[163] = &options->TOP_NODE_FILE_TARGET;   /* converter_customization */
  to_sort[164] = &options->TOP_NODE_UP;   /* converter_customization */
  to_sort[165] = &options->TOP_NODE_UP_URL;   /* converter_customization */
  to_sort[166] = &options->TRACE_INCLUDES;   /* program_cmdline */
  to_sort[167] = &options->TRANSLITERATE_FILE_NAMES;   /* converter_cmdline */
  to_sort[168] = &options->TREE_TRANSFORMATIONS;   /* program_customization */
  to_sort[169] = &options->TXI_MARKUP_NO_SECTION_EXTENT;   /* converter_customization */
  to_sort[170] = &options->USE_ACCESSKEY;   /* converter_customization */
  to_sort[171] = &options->USE_ISO;   /* converter_customization */
  to_sort[172] = &options->USE_LINKS;   /* converter_customization */
  to_sort[173] = &options->USE_NODES;   /* converter_customization */
  to_sort[174] = &options->USE_NODE_DIRECTIONS;   /* converter_customization */
  to_sort[175] = &options->USE_NUMERIC_ENTITY;   /* converter_customization */
  to_sort[176] = &options->USE_SETFILENAME_EXTENSION;   /* converter_customization */
  to_sort[177] = &options->USE_TITLEPAGE_FOR_TITLE;   /* converter_customization */
  to_sort[178] = &options->USE_UNICODE_COLLATION;   /* converter_customization */
  to_sort[179] = &options->USE_UNIDECODE;   /* converter_customization */
  to_sort[180] = &options->USE_XML_SYNTAX;   /* converter_customization */
  to_sort[181] = &options->VERBOSE;   /* converter_cmdline */
  to_sort[182] = &options->VERTICAL_HEAD_NAVIGATION;   /* converter_customization */
  to_sort[183] = &options->WORDS_IN_PAGE;   /* converter_customization */
  to_sort[184] = &options->XREF_USE_FLOAT_LABEL;   /* converter_customization */
  to_sort[185] = &options->XREF_USE_NODE_NAME_ARG;   /* converter_customization */
  to_sort[186] = &options->XS_EXTERNAL_CONVERSION;   /* converter_customization */
  to_sort[187] = &options->XS_EXTERNAL_FORMATTING;   /* converter_customization */
  to_sort[188] = &options->XS_STRXFRM_COLLATION_LOCALE;   /* converter_customization */
  to_sort[189] = &options->_DOCBOOK_PIECE;   /* converter_customization */
  to_sort[190] = &options->_INLINE_STYLE_WIDTH;   /* converter_customization */
  to_sort[191] = &options->afivepaper;   /* unique_at_command */
  to_sort[192] = &options->afourlatex;   /* unique_at_command */
  to_sort[193] = &options->afourpaper;   /* unique_at_command */
  to_sort[194] = &options->afourwide;   /* unique_at_command */
  to_sort[195] = &options->allowcodebreaks;   /* multiple_at_command */
  to_sort[196] = &options->bsixpaper;   /* unique_at_command */
  to_sort[197] = &options->clickstyle;   /* multiple_at_command */
  to_sort[198] = &options->codequotebacktick;   /* multiple_at_command */
  to_sort[199] = &options->codequoteundirected;   /* multiple_at_command */
  to_sort[200] = &options->contents;   /* multiple_at_command */
  to_sort[201] = &options->deftypefnnewline;   /* multiple_at_command */
  to_sort[202] = &options->documentdescription;   /* unique_at_command */
  to_sort[203] = &options->documentencoding;   /* multiple_at_command */
  to_sort[204] = &options->documentlanguage;   /* multiple_at_command */
  to_sort[205] = &options->evenfooting;   /* multiple_at_command */
  to_sort[206] = &options->evenfootingmarks;   /* unique_at_command */
  to_sort[207] = &options->evenheading;   /* multiple_at_command */
  to_sort[208] = &options->evenheadingmarks;   /* unique_at_command */
  to_sort[209] = &options->everyfooting;   /* multiple_at_command */
  to_sort[210] = &options->everyfootingmarks;   /* unique_at_command */
  to_sort[211] = &options->everyheading;   /* multiple_at_command */
  to_sort[212] = &options->everyheadingmarks;   /* unique_at_command */
  to_sort[213] = &options->exampleindent;   /* multiple_at_command */
  to_sort[214] = &options->firstparagraphindent;   /* multiple_at_command */
  to_sort[215] = &options->fonttextsize;   /* unique_at_command */
  to_sort[216] = &options->footnotestyle;   /* unique_at_command */
  to_sort[217] = &options->frenchspacing;   /* multiple_at_command */
  to_sort[218] = &options->headings;   /* multiple_at_command */
  to_sort[219] = &options->kbdinputstyle;   /* multiple_at_command */
  to_sort[220] = &options->microtype;   /* multiple_at_command */
  to_sort[221] = &options->novalidate;   /* unique_at_command */
  to_sort[222] = &options->oddfooting;   /* multiple_at_command */
  to_sort[223] = &options->oddfootingmarks;   /* unique_at_command */
  to_sort[224] = &options->oddheading;   /* multiple_at_command */
  to_sort[225] = &options->oddheadingmarks;   /* unique_at_command */
  to_sort[226] = &options->pagesizes;   /* unique_at_command */
  to_sort[227] = &options->paragraphindent;   /* multiple_at_command */
  to_sort[228] = &options->setchapternewpage;   /* unique_at_command */
  to_sort[229] = &options->setfilename;   /* unique_at_command */
  to_sort[230] = &options->shortcontents;   /* multiple_at_command */
  to_sort[231] = &options->smallbook;   /* unique_at_command */
  to_sort[232] = &options->summarycontents;   /* multiple_at_command */
  to_sort[233] = &options->urefbreakstyle;   /* multiple_at_command */
  to_sort[234] = &options->xrefautomaticsectiontitle;   /* multiple_at_command */
}


#include "command_ids.h"

void
setup_options_command_map (COMMAND_OPTION_NUMBER_CMD *options_command_map,
                           const OPTIONS *options)
{
  options_command_map[0].option_number = options->afivepaper.number;
  options_command_map[0].cmd = CM_afivepaper;    /* (unique_at_command) */
  options_command_map[1].option_number = options->afourlatex.number;
  options_command_map[1].cmd = CM_afourlatex;    /* (unique_at_command) */
  options_command_map[2].option_number = options->afourpaper.number;
  options_command_map[2].cmd = CM_afourpaper;    /* (unique_at_command) */
  options_command_map[3].option_number = options->afourwide.number;
  options_command_map[3].cmd = CM_afourwide;    /* (unique_at_command) */
  options_command_map[4].option_number = options->allowcodebreaks.number;
  options_command_map[4].cmd = CM_allowcodebreaks;    /* (multiple_at_command) */
  options_command_map[5].option_number = options->bsixpaper.number;
  options_command_map[5].cmd = CM_bsixpaper;    /* (unique_at_command) */
  options_command_map[6].option_number = options->clickstyle.number;
  options_command_map[6].cmd = CM_clickstyle;    /* (multiple_at_command) */
  options_command_map[7].option_number = options->codequotebacktick.number;
  options_command_map[7].cmd = CM_codequotebacktick;    /* (multiple_at_command) */
  options_command_map[8].option_number = options->codequoteundirected.number;
  options_command_map[8].cmd = CM_codequoteundirected;    /* (multiple_at_command) */
  options_command_map[9].option_number = options->contents.number;
  options_command_map[9].cmd = CM_contents;    /* (multiple_at_command) */
  options_command_map[10].option_number = options->deftypefnnewline.number;
  options_command_map[10].cmd = CM_deftypefnnewline;    /* (multiple_at_command) */
  options_command_map[11].option_number = options->documentdescription.number;
  options_command_map[11].cmd = CM_documentdescription;    /* (unique_at_command) */
  options_command_map[12].option_number = options->documentencoding.number;
  options_command_map[12].cmd = CM_documentencoding;    /* (multiple_at_command) */
  options_command_map[13].option_number = options->documentlanguage.number;
  options_command_map[13].cmd = CM_documentlanguage;    /* (multiple_at_command) */
  options_command_map[14].option_number = options->evenfooting.number;
  options_command_map[14].cmd = CM_evenfooting;    /* (multiple_at_command) */
  options_command_map[15].option_number = options->evenfootingmarks.number;
  options_command_map[15].cmd = CM_evenfootingmarks;    /* (unique_at_command) */
  options_command_map[16].option_number = options->evenheading.number;
  options_command_map[16].cmd = CM_evenheading;    /* (multiple_at_command) */
  options_command_map[17].option_number = options->evenheadingmarks.number;
  options_command_map[17].cmd = CM_evenheadingmarks;    /* (unique_at_command) */
  options_command_map[18].option_number = options->everyfooting.number;
  options_command_map[18].cmd = CM_everyfooting;    /* (multiple_at_command) */
  options_command_map[19].option_number = options->everyfootingmarks.number;
  options_command_map[19].cmd = CM_everyfootingmarks;    /* (unique_at_command) */
  options_command_map[20].option_number = options->everyheading.number;
  options_command_map[20].cmd = CM_everyheading;    /* (multiple_at_command) */
  options_command_map[21].option_number = options->everyheadingmarks.number;
  options_command_map[21].cmd = CM_everyheadingmarks;    /* (unique_at_command) */
  options_command_map[22].option_number = options->exampleindent.number;
  options_command_map[22].cmd = CM_exampleindent;    /* (multiple_at_command) */
  options_command_map[23].option_number = options->firstparagraphindent.number;
  options_command_map[23].cmd = CM_firstparagraphindent;    /* (multiple_at_command) */
  options_command_map[24].option_number = options->fonttextsize.number;
  options_command_map[24].cmd = CM_fonttextsize;    /* (unique_at_command) */
  options_command_map[25].option_number = options->footnotestyle.number;
  options_command_map[25].cmd = CM_footnotestyle;    /* (unique_at_command) */
  options_command_map[26].option_number = options->frenchspacing.number;
  options_command_map[26].cmd = CM_frenchspacing;    /* (multiple_at_command) */
  options_command_map[27].option_number = options->headings.number;
  options_command_map[27].cmd = CM_headings;    /* (multiple_at_command) */
  options_command_map[28].option_number = options->kbdinputstyle.number;
  options_command_map[28].cmd = CM_kbdinputstyle;    /* (multiple_at_command) */
  options_command_map[29].option_number = options->microtype.number;
  options_command_map[29].cmd = CM_microtype;    /* (multiple_at_command) */
  options_command_map[30].option_number = options->novalidate.number;
  options_command_map[30].cmd = CM_novalidate;    /* (unique_at_command) */
  options_command_map[31].option_number = options->oddfooting.number;
  options_command_map[31].cmd = CM_oddfooting;    /* (multiple_at_command) */
  options_command_map[32].option_number = options->oddfootingmarks.number;
  options_command_map[32].cmd = CM_oddfootingmarks;    /* (unique_at_command) */
  options_command_map[33].option_number = options->oddheading.number;
  options_command_map[33].cmd = CM_oddheading;    /* (multiple_at_command) */
  options_command_map[34].option_number = options->oddheadingmarks.number;
  options_command_map[34].cmd = CM_oddheadingmarks;    /* (unique_at_command) */
  options_command_map[35].option_number = options->pagesizes.number;
  options_command_map[35].cmd = CM_pagesizes;    /* (unique_at_command) */
  options_command_map[36].option_number = options->paragraphindent.number;
  options_command_map[36].cmd = CM_paragraphindent;    /* (multiple_at_command) */
  options_command_map[37].option_number = options->setchapternewpage.number;
  options_command_map[37].cmd = CM_setchapternewpage;    /* (unique_at_command) */
  options_command_map[38].option_number = options->setfilename.number;
  options_command_map[38].cmd = CM_setfilename;    /* (unique_at_command) */
  options_command_map[39].option_number = options->shortcontents.number;
  options_command_map[39].cmd = CM_shortcontents;    /* (multiple_at_command) */
  options_command_map[40].option_number = options->smallbook.number;
  options_command_map[40].cmd = CM_smallbook;    /* (unique_at_command) */
  options_command_map[41].option_number = options->summarycontents.number;
  options_command_map[41].cmd = CM_summarycontents;    /* (multiple_at_command) */
  options_command_map[42].option_number = options->urefbreakstyle.number;
  options_command_map[42].cmd = CM_urefbreakstyle;    /* (multiple_at_command) */
  options_command_map[43].option_number = options->xrefautomaticsectiontitle.number;
  options_command_map[43].cmd = CM_xrefautomaticsectiontitle;    /* (multiple_at_command) */
}

