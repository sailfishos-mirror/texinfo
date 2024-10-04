/* Automatically generated from regenerate_C_options_info.pl */

#include <config.h>

#include <stdlib.h>
#include <string.h>

#include "option_types.h"
#include "options_types.h"
#include "converter_types.h"
#include "utils.h"
#include "customization_options.h"

void
initialize_options (OPTIONS *options)
{
  options->BIT_user_function_number = 0;

/* array_cmdline */

  initialize_option (&options->CSS_FILES, GOT_bytes_string_list, "CSS_FILES");
  initialize_option (&options->CSS_REFS, GOT_char_string_list, "CSS_REFS");
  initialize_option (&options->EXPANDED_FORMATS, GOT_bytes_string_list, "EXPANDED_FORMATS");
  initialize_option (&options->INCLUDE_DIRECTORIES, GOT_file_string_list, "INCLUDE_DIRECTORIES");
  initialize_option (&options->TEXINFO_LANGUAGE_DIRECTORIES, GOT_file_string_list, "TEXINFO_LANGUAGE_DIRECTORIES");

/* converter_cmdline */

  initialize_option (&options->SPLIT_SIZE, GOT_integer, "SPLIT_SIZE");
  initialize_option (&options->FILLCOLUMN, GOT_integer, "FILLCOLUMN");
  initialize_option (&options->NUMBER_SECTIONS, GOT_integer, "NUMBER_SECTIONS");
  initialize_option (&options->NUMBER_FOOTNOTES, GOT_integer, "NUMBER_FOOTNOTES");
  initialize_option (&options->TRANSLITERATE_FILE_NAMES, GOT_integer, "TRANSLITERATE_FILE_NAMES");
  initialize_option (&options->SPLIT, GOT_char, "SPLIT");
  initialize_option (&options->HEADERS, GOT_integer, "HEADERS");
  initialize_option (&options->NODE_FILES, GOT_integer, "NODE_FILES");
  initialize_option (&options->VERBOSE, GOT_integer, "VERBOSE");
  initialize_option (&options->OUTFILE, GOT_char, "OUTFILE");
  initialize_option (&options->SUBDIR, GOT_char, "SUBDIR");
  initialize_option (&options->ENABLE_ENCODING, GOT_integer, "ENABLE_ENCODING");

/* converter_customization */

  initialize_option (&options->TOP_NODE_UP, GOT_char, "TOP_NODE_UP");
  initialize_option (&options->BASEFILENAME_LENGTH, GOT_integer, "BASEFILENAME_LENGTH");
  initialize_option (&options->DOC_ENCODING_FOR_INPUT_FILE_NAME, GOT_integer, "DOC_ENCODING_FOR_INPUT_FILE_NAME");
  initialize_option (&options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME, GOT_integer, "DOC_ENCODING_FOR_OUTPUT_FILE_NAME");
  initialize_option (&options->IMAGE_LINK_PREFIX, GOT_char, "IMAGE_LINK_PREFIX");
  initialize_option (&options->CASE_INSENSITIVE_FILENAMES, GOT_integer, "CASE_INSENSITIVE_FILENAMES");
  initialize_option (&options->DEBUG, GOT_integer, "DEBUG");
  initialize_option (&options->HANDLER_FATAL_ERROR_LEVEL, GOT_integer, "HANDLER_FATAL_ERROR_LEVEL");
  initialize_option (&options->TEST, GOT_integer, "TEST");
  initialize_option (&options->TEXTCONTENT_COMMENT, GOT_integer, "TEXTCONTENT_COMMENT");
  initialize_option (&options->TEXINFO_DTD_VERSION, GOT_char, "TEXINFO_DTD_VERSION");
  initialize_option (&options->USE_UNICODE_COLLATION, GOT_integer, "USE_UNICODE_COLLATION");
  initialize_option (&options->AFTER_BODY_OPEN, GOT_char, "AFTER_BODY_OPEN");
  initialize_option (&options->AFTER_SHORT_TOC_LINES, GOT_char, "AFTER_SHORT_TOC_LINES");
  initialize_option (&options->AFTER_TOC_LINES, GOT_char, "AFTER_TOC_LINES");
  initialize_option (&options->ASCII_DASHES_AND_QUOTES, GOT_integer, "ASCII_DASHES_AND_QUOTES");
  initialize_option (&options->ASCII_GLYPH, GOT_integer, "ASCII_GLYPH");
  initialize_option (&options->ASCII_PUNCTUATION, GOT_integer, "ASCII_PUNCTUATION");
  initialize_option (&options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN, GOT_integer, "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN");
  initialize_option (&options->AUTO_MENU_MAX_WIDTH, GOT_integer, "AUTO_MENU_MAX_WIDTH");
  initialize_option (&options->BEFORE_SHORT_TOC_LINES, GOT_char, "BEFORE_SHORT_TOC_LINES");
  initialize_option (&options->BEFORE_TOC_LINES, GOT_char, "BEFORE_TOC_LINES");
  initialize_option (&options->BIG_RULE, GOT_char, "BIG_RULE");
  initialize_option (&options->BODY_ELEMENT_ATTRIBUTES, GOT_char, "BODY_ELEMENT_ATTRIBUTES");
  initialize_option (&options->CLASS_BEGIN_USEPACKAGE, GOT_char, "CLASS_BEGIN_USEPACKAGE");
  initialize_option (&options->COPIABLE_LINKS, GOT_integer, "COPIABLE_LINKS");
  initialize_option (&options->CHAPTER_HEADER_LEVEL, GOT_integer, "CHAPTER_HEADER_LEVEL");
  initialize_option (&options->CHECK_HTMLXREF, GOT_integer, "CHECK_HTMLXREF");
  initialize_option (&options->CLOSE_DOUBLE_QUOTE_SYMBOL, GOT_char, "CLOSE_DOUBLE_QUOTE_SYMBOL");
  initialize_option (&options->CLOSE_QUOTE_SYMBOL, GOT_char, "CLOSE_QUOTE_SYMBOL");
  initialize_option (&options->COLLATION_LANGUAGE, GOT_char, "COLLATION_LANGUAGE");
  initialize_option (&options->COMMAND_LINE_ENCODING, GOT_char, "COMMAND_LINE_ENCODING");
  initialize_option (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE, GOT_integer, "INDENTED_BLOCK_COMMANDS_IN_TABLE");
  initialize_option (&options->CONTENTS_OUTPUT_LOCATION, GOT_char, "CONTENTS_OUTPUT_LOCATION");
  initialize_option (&options->CONVERT_TO_LATEX_IN_MATH, GOT_integer, "CONVERT_TO_LATEX_IN_MATH");
  initialize_option (&options->DATE_IN_HEADER, GOT_integer, "DATE_IN_HEADER");
  initialize_option (&options->DEFAULT_RULE, GOT_char, "DEFAULT_RULE");
  initialize_option (&options->DEF_TABLE, GOT_integer, "DEF_TABLE");
  initialize_option (&options->DO_ABOUT, GOT_integer, "DO_ABOUT");
  initialize_option (&options->DOCTYPE, GOT_char, "DOCTYPE");
  initialize_option (&options->DOCUMENTLANGUAGE_COLLATION, GOT_integer, "DOCUMENTLANGUAGE_COLLATION");
  initialize_option (&options->END_USEPACKAGE, GOT_char, "END_USEPACKAGE");
  initialize_option (&options->EPUB_CREATE_CONTAINER_FILE, GOT_integer, "EPUB_CREATE_CONTAINER_FILE");
  initialize_option (&options->EPUB_KEEP_CONTAINER_FOLDER, GOT_integer, "EPUB_KEEP_CONTAINER_FOLDER");
  initialize_option (&options->EXTENSION, GOT_char, "EXTENSION");
  initialize_option (&options->EXTERNAL_CROSSREF_EXTENSION, GOT_char, "EXTERNAL_CROSSREF_EXTENSION");
  initialize_option (&options->EXTERNAL_CROSSREF_SPLIT, GOT_char, "EXTERNAL_CROSSREF_SPLIT");
  initialize_option (&options->EXTERNAL_DIR, GOT_char, "EXTERNAL_DIR");
  initialize_option (&options->EXTRA_HEAD, GOT_char, "EXTRA_HEAD");
  initialize_option (&options->FOOTNOTE_END_HEADER_LEVEL, GOT_integer, "FOOTNOTE_END_HEADER_LEVEL");
  initialize_option (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL, GOT_integer, "FOOTNOTE_SEPARATE_HEADER_LEVEL");
  initialize_option (&options->HEADER_IN_TABLE, GOT_integer, "HEADER_IN_TABLE");
  initialize_option (&options->HIGHLIGHT_SYNTAX, GOT_char, "HIGHLIGHT_SYNTAX");
  initialize_option (&options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE, GOT_char, "HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE");
  initialize_option (&options->HTML_MATH, GOT_char, "HTML_MATH");
  initialize_option (&options->HTML_ROOT_ELEMENT_ATTRIBUTES, GOT_char, "HTML_ROOT_ELEMENT_ATTRIBUTES");
  initialize_option (&options->HTMLXREF_FILE, GOT_char, "HTMLXREF_FILE");
  initialize_option (&options->HTMLXREF_MODE, GOT_char, "HTMLXREF_MODE");
  initialize_option (&options->ICONS, GOT_integer, "ICONS");
  initialize_option (&options->INDEX_ENTRY_COLON, GOT_char, "INDEX_ENTRY_COLON");
  initialize_option (&options->INDEX_SPECIAL_CHARS_WARNING, GOT_integer, "INDEX_SPECIAL_CHARS_WARNING");
  initialize_option (&options->INFO_JS_DIR, GOT_char, "INFO_JS_DIR");
  initialize_option (&options->INFO_SPECIAL_CHARS_QUOTE, GOT_char, "INFO_SPECIAL_CHARS_QUOTE");
  initialize_option (&options->INFO_SPECIAL_CHARS_WARNING, GOT_integer, "INFO_SPECIAL_CHARS_WARNING");
  initialize_option (&options->IGNORE_REF_TO_TOP_NODE_UP, GOT_integer, "IGNORE_REF_TO_TOP_NODE_UP");
  initialize_option (&options->INLINE_CSS_STYLE, GOT_integer, "INLINE_CSS_STYLE");
  initialize_option (&options->INPUT_FILE_NAME_ENCODING, GOT_char, "INPUT_FILE_NAME_ENCODING");
  initialize_option (&options->JS_WEBLABELS, GOT_char, "JS_WEBLABELS");
  initialize_option (&options->JS_WEBLABELS_FILE, GOT_char, "JS_WEBLABELS_FILE");
  initialize_option (&options->LATEX_FLOATS_FILE_EXTENSION, GOT_char, "LATEX_FLOATS_FILE_EXTENSION");
  initialize_option (&options->LOCALE_ENCODING, GOT_char, "LOCALE_ENCODING");
  initialize_option (&options->L2H_CLEAN, GOT_integer, "L2H_CLEAN");
  initialize_option (&options->L2H_FILE, GOT_char, "L2H_FILE");
  initialize_option (&options->L2H_HTML_VERSION, GOT_char, "L2H_HTML_VERSION");
  initialize_option (&options->L2H_L2H, GOT_char, "L2H_L2H");
  initialize_option (&options->L2H_SKIP, GOT_integer, "L2H_SKIP");
  initialize_option (&options->L2H_TMP, GOT_char, "L2H_TMP");
  initialize_option (&options->MATHJAX_CONFIGURATION, GOT_char, "MATHJAX_CONFIGURATION");
  initialize_option (&options->MATHJAX_SCRIPT, GOT_char, "MATHJAX_SCRIPT");
  initialize_option (&options->MATHJAX_SOURCE, GOT_char, "MATHJAX_SOURCE");
  initialize_option (&options->MAX_HEADER_LEVEL, GOT_integer, "MAX_HEADER_LEVEL");
  initialize_option (&options->MENU_ENTRY_COLON, GOT_char, "MENU_ENTRY_COLON");
  initialize_option (&options->MENU_SYMBOL, GOT_char, "MENU_SYMBOL");
  initialize_option (&options->MESSAGE_ENCODING, GOT_char, "MESSAGE_ENCODING");
  initialize_option (&options->MONOLITHIC, GOT_integer, "MONOLITHIC");
  initialize_option (&options->NO_CSS, GOT_integer, "NO_CSS");
  initialize_option (&options->NO_NUMBER_FOOTNOTE_SYMBOL, GOT_char, "NO_NUMBER_FOOTNOTE_SYMBOL");
  initialize_option (&options->NO_CUSTOM_HTML_ATTRIBUTE, GOT_integer, "NO_CUSTOM_HTML_ATTRIBUTE");
  initialize_option (&options->NODE_NAME_IN_INDEX, GOT_integer, "NODE_NAME_IN_INDEX");
  initialize_option (&options->NODE_NAME_IN_MENU, GOT_integer, "NODE_NAME_IN_MENU");
  initialize_option (&options->NO_TOP_NODE_OUTPUT, GOT_integer, "NO_TOP_NODE_OUTPUT");
  initialize_option (&options->OPEN_DOUBLE_QUOTE_SYMBOL, GOT_char, "OPEN_DOUBLE_QUOTE_SYMBOL");
  initialize_option (&options->OPEN_QUOTE_SYMBOL, GOT_char, "OPEN_QUOTE_SYMBOL");
  initialize_option (&options->OUTPUT_CHARACTERS, GOT_integer, "OUTPUT_CHARACTERS");
  initialize_option (&options->OUTPUT_ENCODING_NAME, GOT_char, "OUTPUT_ENCODING_NAME");
  initialize_option (&options->OUTPUT_FILE_NAME_ENCODING, GOT_char, "OUTPUT_FILE_NAME_ENCODING");
  initialize_option (&options->OUTPUT_PERL_ENCODING, GOT_char, "OUTPUT_PERL_ENCODING");
  initialize_option (&options->PACKAGE, GOT_char, "PACKAGE");
  initialize_option (&options->PACKAGE_AND_VERSION, GOT_char, "PACKAGE_AND_VERSION");
  initialize_option (&options->PACKAGE_NAME, GOT_char, "PACKAGE_NAME");
  initialize_option (&options->PACKAGE_URL, GOT_char, "PACKAGE_URL");
  initialize_option (&options->PACKAGE_VERSION, GOT_char, "PACKAGE_VERSION");
  initialize_option (&options->PRE_BODY_CLOSE, GOT_char, "PRE_BODY_CLOSE");
  initialize_option (&options->PREFIX, GOT_char, "PREFIX");
  initialize_option (&options->PROGRAM, GOT_char, "PROGRAM");
  initialize_option (&options->PROGRAM_NAME_IN_ABOUT, GOT_integer, "PROGRAM_NAME_IN_ABOUT");
  initialize_option (&options->PROGRAM_NAME_IN_FOOTER, GOT_integer, "PROGRAM_NAME_IN_FOOTER");
  initialize_option (&options->SECTION_NAME_IN_TITLE, GOT_integer, "SECTION_NAME_IN_TITLE");
  initialize_option (&options->SHORT_TOC_LINK_TO_TOC, GOT_integer, "SHORT_TOC_LINK_TO_TOC");
  initialize_option (&options->SHOW_TITLE, GOT_integer, "SHOW_TITLE");
  initialize_option (&options->T4H_LATEX_CONVERSION, GOT_char, "T4H_LATEX_CONVERSION");
  initialize_option (&options->T4H_MATH_CONVERSION, GOT_char, "T4H_MATH_CONVERSION");
  initialize_option (&options->T4H_TEX_CONVERSION, GOT_char, "T4H_TEX_CONVERSION");
  initialize_option (&options->TEXI2HTML, GOT_integer, "TEXI2HTML");
  initialize_option (&options->TEXINFO_OUTPUT_FORMAT, GOT_char, "TEXINFO_OUTPUT_FORMAT");
  initialize_option (&options->TXI_MARKUP_NO_SECTION_EXTENT, GOT_integer, "TXI_MARKUP_NO_SECTION_EXTENT");
  initialize_option (&options->TOC_LINKS, GOT_integer, "TOC_LINKS");
  initialize_option (&options->TOP_FILE, GOT_char, "TOP_FILE");
  initialize_option (&options->TOP_NODE_FILE_TARGET, GOT_char, "TOP_NODE_FILE_TARGET");
  initialize_option (&options->TOP_NODE_UP_URL, GOT_char, "TOP_NODE_UP_URL");
  initialize_option (&options->USE_ACCESSKEY, GOT_integer, "USE_ACCESSKEY");
  initialize_option (&options->USE_ISO, GOT_integer, "USE_ISO");
  initialize_option (&options->USE_LINKS, GOT_integer, "USE_LINKS");
  initialize_option (&options->USE_NEXT_HEADING_FOR_LONE_NODE, GOT_integer, "USE_NEXT_HEADING_FOR_LONE_NODE");
  initialize_option (&options->USE_NODES, GOT_integer, "USE_NODES");
  initialize_option (&options->USE_NODE_DIRECTIONS, GOT_integer, "USE_NODE_DIRECTIONS");
  initialize_option (&options->USE_NUMERIC_ENTITY, GOT_integer, "USE_NUMERIC_ENTITY");
  initialize_option (&options->USE_REL_REV, GOT_integer, "USE_REL_REV");
  initialize_option (&options->USE_SETFILENAME_EXTENSION, GOT_integer, "USE_SETFILENAME_EXTENSION");
  initialize_option (&options->USE_TITLEPAGE_FOR_TITLE, GOT_integer, "USE_TITLEPAGE_FOR_TITLE");
  initialize_option (&options->USE_UNIDECODE, GOT_integer, "USE_UNIDECODE");
  initialize_option (&options->USE_XML_SYNTAX, GOT_integer, "USE_XML_SYNTAX");
  initialize_option (&options->VERTICAL_HEAD_NAVIGATION, GOT_integer, "VERTICAL_HEAD_NAVIGATION");
  initialize_option (&options->WORDS_IN_PAGE, GOT_integer, "WORDS_IN_PAGE");
  initialize_option (&options->XREF_USE_FLOAT_LABEL, GOT_integer, "XREF_USE_FLOAT_LABEL");
  initialize_option (&options->XREF_USE_NODE_NAME_ARG, GOT_integer, "XREF_USE_NODE_NAME_ARG");
  initialize_option (&options->XS_EXTERNAL_CONVERSION, GOT_integer, "XS_EXTERNAL_CONVERSION");
  initialize_option (&options->XS_EXTERNAL_FORMATTING, GOT_integer, "XS_EXTERNAL_FORMATTING");
  initialize_option (&options->XS_STRXFRM_COLLATION_LOCALE, GOT_char, "XS_STRXFRM_COLLATION_LOCALE");
  initialize_option (&options->_INLINE_STYLE_WIDTH, GOT_integer, "_INLINE_STYLE_WIDTH");

/* converter_other */

  initialize_option (&options->LINKS_BUTTONS, GOT_buttons, "LINKS_BUTTONS");
  initialize_option (&options->TOP_BUTTONS, GOT_buttons, "TOP_BUTTONS");
  initialize_option (&options->TOP_FOOTER_BUTTONS, GOT_buttons, "TOP_FOOTER_BUTTONS");
  initialize_option (&options->SECTION_BUTTONS, GOT_buttons, "SECTION_BUTTONS");
  initialize_option (&options->CHAPTER_FOOTER_BUTTONS, GOT_buttons, "CHAPTER_FOOTER_BUTTONS");
  initialize_option (&options->SECTION_FOOTER_BUTTONS, GOT_buttons, "SECTION_FOOTER_BUTTONS");
  initialize_option (&options->NODE_FOOTER_BUTTONS, GOT_buttons, "NODE_FOOTER_BUTTONS");
  initialize_option (&options->MISC_BUTTONS, GOT_buttons, "MISC_BUTTONS");
  initialize_option (&options->CHAPTER_BUTTONS, GOT_buttons, "CHAPTER_BUTTONS");
  initialize_option (&options->ACTIVE_ICONS, GOT_icons, "ACTIVE_ICONS");
  initialize_option (&options->PASSIVE_ICONS, GOT_icons, "PASSIVE_ICONS");

/* multiple_at_command */

  initialize_option (&options->allowcodebreaks, GOT_char, "allowcodebreaks");
  initialize_option (&options->clickstyle, GOT_char, "clickstyle");
  initialize_option (&options->codequotebacktick, GOT_char, "codequotebacktick");
  initialize_option (&options->codequoteundirected, GOT_char, "codequoteundirected");
  initialize_option (&options->contents, GOT_integer, "contents");
  initialize_option (&options->deftypefnnewline, GOT_char, "deftypefnnewline");
  initialize_option (&options->documentencoding, GOT_char, "documentencoding");
  initialize_option (&options->documentlanguage, GOT_char, "documentlanguage");
  initialize_option (&options->evenfooting, GOT_char, "evenfooting");
  initialize_option (&options->evenheading, GOT_char, "evenheading");
  initialize_option (&options->everyfooting, GOT_char, "everyfooting");
  initialize_option (&options->everyheading, GOT_char, "everyheading");
  initialize_option (&options->exampleindent, GOT_char, "exampleindent");
  initialize_option (&options->firstparagraphindent, GOT_char, "firstparagraphindent");
  initialize_option (&options->frenchspacing, GOT_char, "frenchspacing");
  initialize_option (&options->headings, GOT_char, "headings");
  initialize_option (&options->kbdinputstyle, GOT_char, "kbdinputstyle");
  initialize_option (&options->microtype, GOT_char, "microtype");
  initialize_option (&options->oddheading, GOT_char, "oddheading");
  initialize_option (&options->oddfooting, GOT_char, "oddfooting");
  initialize_option (&options->paragraphindent, GOT_char, "paragraphindent");
  initialize_option (&options->shortcontents, GOT_integer, "shortcontents");
  initialize_option (&options->summarycontents, GOT_integer, "summarycontents");
  initialize_option (&options->urefbreakstyle, GOT_char, "urefbreakstyle");
  initialize_option (&options->xrefautomaticsectiontitle, GOT_char, "xrefautomaticsectiontitle");

/* program_cmdline */

  initialize_option (&options->MACRO_EXPAND, GOT_bytes, "MACRO_EXPAND");
  initialize_option (&options->INTERNAL_LINKS, GOT_bytes, "INTERNAL_LINKS");
  initialize_option (&options->ERROR_LIMIT, GOT_integer, "ERROR_LIMIT");
  initialize_option (&options->FORCE, GOT_integer, "FORCE");
  initialize_option (&options->NO_WARN, GOT_integer, "NO_WARN");
  initialize_option (&options->SILENT, GOT_char, "SILENT");
  initialize_option (&options->TRACE_INCLUDES, GOT_integer, "TRACE_INCLUDES");
  initialize_option (&options->FORMAT_MENU, GOT_char, "FORMAT_MENU");

/* program_customization */

  initialize_option (&options->CHECK_NORMAL_MENU_STRUCTURE, GOT_integer, "CHECK_NORMAL_MENU_STRUCTURE");
  initialize_option (&options->CHECK_MISSING_MENU_ENTRY, GOT_integer, "CHECK_MISSING_MENU_ENTRY");
  initialize_option (&options->DUMP_TREE, GOT_integer, "DUMP_TREE");
  initialize_option (&options->DUMP_TEXI, GOT_integer, "DUMP_TEXI");
  initialize_option (&options->SHOW_BUILTIN_CSS_RULES, GOT_integer, "SHOW_BUILTIN_CSS_RULES");
  initialize_option (&options->SORT_ELEMENT_COUNT, GOT_char, "SORT_ELEMENT_COUNT");
  initialize_option (&options->SORT_ELEMENT_COUNT_WORDS, GOT_integer, "SORT_ELEMENT_COUNT_WORDS");
  initialize_option (&options->TEXI2DVI, GOT_char, "TEXI2DVI");
  initialize_option (&options->TREE_TRANSFORMATIONS, GOT_char, "TREE_TRANSFORMATIONS");

/* unique_at_command */

  initialize_option (&options->afivepaper, GOT_char, "afivepaper");
  initialize_option (&options->afourpaper, GOT_char, "afourpaper");
  initialize_option (&options->afourlatex, GOT_char, "afourlatex");
  initialize_option (&options->afourwide, GOT_char, "afourwide");
  initialize_option (&options->bsixpaper, GOT_char, "bsixpaper");
  initialize_option (&options->documentdescription, GOT_char, "documentdescription");
  initialize_option (&options->evenfootingmarks, GOT_char, "evenfootingmarks");
  initialize_option (&options->evenheadingmarks, GOT_char, "evenheadingmarks");
  initialize_option (&options->everyfootingmarks, GOT_char, "everyfootingmarks");
  initialize_option (&options->everyheadingmarks, GOT_char, "everyheadingmarks");
  initialize_option (&options->fonttextsize, GOT_integer, "fonttextsize");
  initialize_option (&options->footnotestyle, GOT_char, "footnotestyle");
  initialize_option (&options->novalidate, GOT_integer, "novalidate");
  initialize_option (&options->oddfootingmarks, GOT_char, "oddfootingmarks");
  initialize_option (&options->oddheadingmarks, GOT_char, "oddheadingmarks");
  initialize_option (&options->pagesizes, GOT_char, "pagesizes");
  initialize_option (&options->setchapternewpage, GOT_char, "setchapternewpage");
  initialize_option (&options->setfilename, GOT_char, "setfilename");
  initialize_option (&options->smallbook, GOT_char, "smallbook");
}

OPTION **
setup_sortable_options (OPTIONS *options)
{
  OPTION **result = (OPTION **)
    malloc (sizeof (OPTION *) * TXI_OPTIONS_NR);


/* array_cmdline */

  result[0] = &options->CSS_FILES;
  result[1] = &options->CSS_REFS;
  result[2] = &options->EXPANDED_FORMATS;
  result[3] = &options->INCLUDE_DIRECTORIES;
  result[4] = &options->TEXINFO_LANGUAGE_DIRECTORIES;

/* converter_cmdline */

  result[5] = &options->SPLIT_SIZE;
  result[6] = &options->FILLCOLUMN;
  result[7] = &options->NUMBER_SECTIONS;
  result[8] = &options->NUMBER_FOOTNOTES;
  result[9] = &options->TRANSLITERATE_FILE_NAMES;
  result[10] = &options->SPLIT;
  result[11] = &options->HEADERS;
  result[12] = &options->NODE_FILES;
  result[13] = &options->VERBOSE;
  result[14] = &options->OUTFILE;
  result[15] = &options->SUBDIR;
  result[16] = &options->ENABLE_ENCODING;

/* converter_customization */

  result[17] = &options->TOP_NODE_UP;
  result[18] = &options->BASEFILENAME_LENGTH;
  result[19] = &options->DOC_ENCODING_FOR_INPUT_FILE_NAME;
  result[20] = &options->DOC_ENCODING_FOR_OUTPUT_FILE_NAME;
  result[21] = &options->IMAGE_LINK_PREFIX;
  result[22] = &options->CASE_INSENSITIVE_FILENAMES;
  result[23] = &options->DEBUG;
  result[24] = &options->HANDLER_FATAL_ERROR_LEVEL;
  result[25] = &options->TEST;
  result[26] = &options->TEXTCONTENT_COMMENT;
  result[27] = &options->TEXINFO_DTD_VERSION;
  result[28] = &options->USE_UNICODE_COLLATION;
  result[29] = &options->AFTER_BODY_OPEN;
  result[30] = &options->AFTER_SHORT_TOC_LINES;
  result[31] = &options->AFTER_TOC_LINES;
  result[32] = &options->ASCII_DASHES_AND_QUOTES;
  result[33] = &options->ASCII_GLYPH;
  result[34] = &options->ASCII_PUNCTUATION;
  result[35] = &options->AUTO_MENU_DESCRIPTION_ALIGN_COLUMN;
  result[36] = &options->AUTO_MENU_MAX_WIDTH;
  result[37] = &options->BEFORE_SHORT_TOC_LINES;
  result[38] = &options->BEFORE_TOC_LINES;
  result[39] = &options->BIG_RULE;
  result[40] = &options->BODY_ELEMENT_ATTRIBUTES;
  result[41] = &options->CLASS_BEGIN_USEPACKAGE;
  result[42] = &options->COPIABLE_LINKS;
  result[43] = &options->CHAPTER_HEADER_LEVEL;
  result[44] = &options->CHECK_HTMLXREF;
  result[45] = &options->CLOSE_DOUBLE_QUOTE_SYMBOL;
  result[46] = &options->CLOSE_QUOTE_SYMBOL;
  result[47] = &options->COLLATION_LANGUAGE;
  result[48] = &options->COMMAND_LINE_ENCODING;
  result[49] = &options->INDENTED_BLOCK_COMMANDS_IN_TABLE;
  result[50] = &options->CONTENTS_OUTPUT_LOCATION;
  result[51] = &options->CONVERT_TO_LATEX_IN_MATH;
  result[52] = &options->DATE_IN_HEADER;
  result[53] = &options->DEFAULT_RULE;
  result[54] = &options->DEF_TABLE;
  result[55] = &options->DO_ABOUT;
  result[56] = &options->DOCTYPE;
  result[57] = &options->DOCUMENTLANGUAGE_COLLATION;
  result[58] = &options->END_USEPACKAGE;
  result[59] = &options->EPUB_CREATE_CONTAINER_FILE;
  result[60] = &options->EPUB_KEEP_CONTAINER_FOLDER;
  result[61] = &options->EXTENSION;
  result[62] = &options->EXTERNAL_CROSSREF_EXTENSION;
  result[63] = &options->EXTERNAL_CROSSREF_SPLIT;
  result[64] = &options->EXTERNAL_DIR;
  result[65] = &options->EXTRA_HEAD;
  result[66] = &options->FOOTNOTE_END_HEADER_LEVEL;
  result[67] = &options->FOOTNOTE_SEPARATE_HEADER_LEVEL;
  result[68] = &options->HEADER_IN_TABLE;
  result[69] = &options->HIGHLIGHT_SYNTAX;
  result[70] = &options->HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE;
  result[71] = &options->HTML_MATH;
  result[72] = &options->HTML_ROOT_ELEMENT_ATTRIBUTES;
  result[73] = &options->HTMLXREF_FILE;
  result[74] = &options->HTMLXREF_MODE;
  result[75] = &options->ICONS;
  result[76] = &options->INDEX_ENTRY_COLON;
  result[77] = &options->INDEX_SPECIAL_CHARS_WARNING;
  result[78] = &options->INFO_JS_DIR;
  result[79] = &options->INFO_SPECIAL_CHARS_QUOTE;
  result[80] = &options->INFO_SPECIAL_CHARS_WARNING;
  result[81] = &options->IGNORE_REF_TO_TOP_NODE_UP;
  result[82] = &options->INLINE_CSS_STYLE;
  result[83] = &options->INPUT_FILE_NAME_ENCODING;
  result[84] = &options->JS_WEBLABELS;
  result[85] = &options->JS_WEBLABELS_FILE;
  result[86] = &options->LATEX_FLOATS_FILE_EXTENSION;
  result[87] = &options->LOCALE_ENCODING;
  result[88] = &options->L2H_CLEAN;
  result[89] = &options->L2H_FILE;
  result[90] = &options->L2H_HTML_VERSION;
  result[91] = &options->L2H_L2H;
  result[92] = &options->L2H_SKIP;
  result[93] = &options->L2H_TMP;
  result[94] = &options->MATHJAX_CONFIGURATION;
  result[95] = &options->MATHJAX_SCRIPT;
  result[96] = &options->MATHJAX_SOURCE;
  result[97] = &options->MAX_HEADER_LEVEL;
  result[98] = &options->MENU_ENTRY_COLON;
  result[99] = &options->MENU_SYMBOL;
  result[100] = &options->MESSAGE_ENCODING;
  result[101] = &options->MONOLITHIC;
  result[102] = &options->NO_CSS;
  result[103] = &options->NO_NUMBER_FOOTNOTE_SYMBOL;
  result[104] = &options->NO_CUSTOM_HTML_ATTRIBUTE;
  result[105] = &options->NODE_NAME_IN_INDEX;
  result[106] = &options->NODE_NAME_IN_MENU;
  result[107] = &options->NO_TOP_NODE_OUTPUT;
  result[108] = &options->OPEN_DOUBLE_QUOTE_SYMBOL;
  result[109] = &options->OPEN_QUOTE_SYMBOL;
  result[110] = &options->OUTPUT_CHARACTERS;
  result[111] = &options->OUTPUT_ENCODING_NAME;
  result[112] = &options->OUTPUT_FILE_NAME_ENCODING;
  result[113] = &options->OUTPUT_PERL_ENCODING;
  result[114] = &options->PACKAGE;
  result[115] = &options->PACKAGE_AND_VERSION;
  result[116] = &options->PACKAGE_NAME;
  result[117] = &options->PACKAGE_URL;
  result[118] = &options->PACKAGE_VERSION;
  result[119] = &options->PRE_BODY_CLOSE;
  result[120] = &options->PREFIX;
  result[121] = &options->PROGRAM;
  result[122] = &options->PROGRAM_NAME_IN_ABOUT;
  result[123] = &options->PROGRAM_NAME_IN_FOOTER;
  result[124] = &options->SECTION_NAME_IN_TITLE;
  result[125] = &options->SHORT_TOC_LINK_TO_TOC;
  result[126] = &options->SHOW_TITLE;
  result[127] = &options->T4H_LATEX_CONVERSION;
  result[128] = &options->T4H_MATH_CONVERSION;
  result[129] = &options->T4H_TEX_CONVERSION;
  result[130] = &options->TEXI2HTML;
  result[131] = &options->TEXINFO_OUTPUT_FORMAT;
  result[132] = &options->TXI_MARKUP_NO_SECTION_EXTENT;
  result[133] = &options->TOC_LINKS;
  result[134] = &options->TOP_FILE;
  result[135] = &options->TOP_NODE_FILE_TARGET;
  result[136] = &options->TOP_NODE_UP_URL;
  result[137] = &options->USE_ACCESSKEY;
  result[138] = &options->USE_ISO;
  result[139] = &options->USE_LINKS;
  result[140] = &options->USE_NEXT_HEADING_FOR_LONE_NODE;
  result[141] = &options->USE_NODES;
  result[142] = &options->USE_NODE_DIRECTIONS;
  result[143] = &options->USE_NUMERIC_ENTITY;
  result[144] = &options->USE_REL_REV;
  result[145] = &options->USE_SETFILENAME_EXTENSION;
  result[146] = &options->USE_TITLEPAGE_FOR_TITLE;
  result[147] = &options->USE_UNIDECODE;
  result[148] = &options->USE_XML_SYNTAX;
  result[149] = &options->VERTICAL_HEAD_NAVIGATION;
  result[150] = &options->WORDS_IN_PAGE;
  result[151] = &options->XREF_USE_FLOAT_LABEL;
  result[152] = &options->XREF_USE_NODE_NAME_ARG;
  result[153] = &options->XS_EXTERNAL_CONVERSION;
  result[154] = &options->XS_EXTERNAL_FORMATTING;
  result[155] = &options->XS_STRXFRM_COLLATION_LOCALE;
  result[156] = &options->_INLINE_STYLE_WIDTH;

/* converter_other */

  result[157] = &options->LINKS_BUTTONS;
  result[158] = &options->TOP_BUTTONS;
  result[159] = &options->TOP_FOOTER_BUTTONS;
  result[160] = &options->SECTION_BUTTONS;
  result[161] = &options->CHAPTER_FOOTER_BUTTONS;
  result[162] = &options->SECTION_FOOTER_BUTTONS;
  result[163] = &options->NODE_FOOTER_BUTTONS;
  result[164] = &options->MISC_BUTTONS;
  result[165] = &options->CHAPTER_BUTTONS;
  result[166] = &options->ACTIVE_ICONS;
  result[167] = &options->PASSIVE_ICONS;

/* multiple_at_command */

  result[168] = &options->allowcodebreaks;
  result[169] = &options->clickstyle;
  result[170] = &options->codequotebacktick;
  result[171] = &options->codequoteundirected;
  result[172] = &options->contents;
  result[173] = &options->deftypefnnewline;
  result[174] = &options->documentencoding;
  result[175] = &options->documentlanguage;
  result[176] = &options->evenfooting;
  result[177] = &options->evenheading;
  result[178] = &options->everyfooting;
  result[179] = &options->everyheading;
  result[180] = &options->exampleindent;
  result[181] = &options->firstparagraphindent;
  result[182] = &options->frenchspacing;
  result[183] = &options->headings;
  result[184] = &options->kbdinputstyle;
  result[185] = &options->microtype;
  result[186] = &options->oddheading;
  result[187] = &options->oddfooting;
  result[188] = &options->paragraphindent;
  result[189] = &options->shortcontents;
  result[190] = &options->summarycontents;
  result[191] = &options->urefbreakstyle;
  result[192] = &options->xrefautomaticsectiontitle;

/* program_cmdline */

  result[193] = &options->MACRO_EXPAND;
  result[194] = &options->INTERNAL_LINKS;
  result[195] = &options->ERROR_LIMIT;
  result[196] = &options->FORCE;
  result[197] = &options->NO_WARN;
  result[198] = &options->SILENT;
  result[199] = &options->TRACE_INCLUDES;
  result[200] = &options->FORMAT_MENU;

/* program_customization */

  result[201] = &options->CHECK_NORMAL_MENU_STRUCTURE;
  result[202] = &options->CHECK_MISSING_MENU_ENTRY;
  result[203] = &options->DUMP_TREE;
  result[204] = &options->DUMP_TEXI;
  result[205] = &options->SHOW_BUILTIN_CSS_RULES;
  result[206] = &options->SORT_ELEMENT_COUNT;
  result[207] = &options->SORT_ELEMENT_COUNT_WORDS;
  result[208] = &options->TEXI2DVI;
  result[209] = &options->TREE_TRANSFORMATIONS;

/* unique_at_command */

  result[210] = &options->afivepaper;
  result[211] = &options->afourpaper;
  result[212] = &options->afourlatex;
  result[213] = &options->afourwide;
  result[214] = &options->bsixpaper;
  result[215] = &options->documentdescription;
  result[216] = &options->evenfootingmarks;
  result[217] = &options->evenheadingmarks;
  result[218] = &options->everyfootingmarks;
  result[219] = &options->everyheadingmarks;
  result[220] = &options->fonttextsize;
  result[221] = &options->footnotestyle;
  result[222] = &options->novalidate;
  result[223] = &options->oddfootingmarks;
  result[224] = &options->oddheadingmarks;
  result[225] = &options->pagesizes;
  result[226] = &options->setchapternewpage;
  result[227] = &options->setfilename;
  result[228] = &options->smallbook;

  return result;
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
  free_option (&options->USE_NEXT_HEADING_FOR_LONE_NODE);
  free_option (&options->USE_NODES);
  free_option (&options->USE_NODE_DIRECTIONS);
  free_option (&options->USE_NUMERIC_ENTITY);
  free_option (&options->USE_REL_REV);
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

  free_option (&options->LINKS_BUTTONS);
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

/* program_cmdline */

  free_option (&options->MACRO_EXPAND);
  free_option (&options->INTERNAL_LINKS);
  free_option (&options->ERROR_LIMIT);
  free_option (&options->FORCE);
  free_option (&options->NO_WARN);
  free_option (&options->SILENT);
  free_option (&options->TRACE_INCLUDES);
  free_option (&options->FORMAT_MENU);

/* program_customization */

  free_option (&options->CHECK_NORMAL_MENU_STRUCTURE);
  free_option (&options->CHECK_MISSING_MENU_ENTRY);
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
  clear_option (&options->USE_NEXT_HEADING_FOR_LONE_NODE);
  clear_option (&options->USE_NODES);
  clear_option (&options->USE_NODE_DIRECTIONS);
  clear_option (&options->USE_NUMERIC_ENTITY);
  clear_option (&options->USE_REL_REV);
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

/* program_cmdline */

  clear_option (&options->MACRO_EXPAND);
  clear_option (&options->INTERNAL_LINKS);
  clear_option (&options->ERROR_LIMIT);
  clear_option (&options->FORCE);
  clear_option (&options->NO_WARN);
  clear_option (&options->SILENT);
  clear_option (&options->TRACE_INCLUDES);
  clear_option (&options->FORMAT_MENU);

/* program_customization */

  clear_option (&options->CHECK_NORMAL_MENU_STRUCTURE);
  clear_option (&options->CHECK_MISSING_MENU_ENTRY);
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
  copy_option (&destination->USE_NEXT_HEADING_FOR_LONE_NODE, &source->USE_NEXT_HEADING_FOR_LONE_NODE);
  copy_option (&destination->USE_NODES, &source->USE_NODES);
  copy_option (&destination->USE_NODE_DIRECTIONS, &source->USE_NODE_DIRECTIONS);
  copy_option (&destination->USE_NUMERIC_ENTITY, &source->USE_NUMERIC_ENTITY);
  copy_option (&destination->USE_REL_REV, &source->USE_REL_REV);
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

  copy_option (&destination->LINKS_BUTTONS, &source->LINKS_BUTTONS);
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

/* program_cmdline */

  copy_option (&destination->MACRO_EXPAND, &source->MACRO_EXPAND);
  copy_option (&destination->INTERNAL_LINKS, &source->INTERNAL_LINKS);
  copy_option (&destination->ERROR_LIMIT, &source->ERROR_LIMIT);
  copy_option (&destination->FORCE, &source->FORCE);
  copy_option (&destination->NO_WARN, &source->NO_WARN);
  copy_option (&destination->SILENT, &source->SILENT);
  copy_option (&destination->TRACE_INCLUDES, &source->TRACE_INCLUDES);
  copy_option (&destination->FORMAT_MENU, &source->FORMAT_MENU);

/* program_customization */

  copy_option (&destination->CHECK_NORMAL_MENU_STRUCTURE, &source->CHECK_NORMAL_MENU_STRUCTURE);
  copy_option (&destination->CHECK_MISSING_MENU_ENTRY, &source->CHECK_MISSING_MENU_ENTRY);
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

#include "command_ids.h"

OPTION *
get_command_option (OPTIONS *options,
                    enum command_id cmd)
{
  switch (cmd)
    {
    case CM_afivepaper:
    {
      return &options->afivepaper;
      break;
    }
    case CM_afourlatex:
    {
      return &options->afourlatex;
      break;
    }
    case CM_afourpaper:
    {
      return &options->afourpaper;
      break;
    }
    case CM_afourwide:
    {
      return &options->afourwide;
      break;
    }
    case CM_allowcodebreaks:
    {
      return &options->allowcodebreaks;
      break;
    }
    case CM_bsixpaper:
    {
      return &options->bsixpaper;
      break;
    }
    case CM_clickstyle:
    {
      return &options->clickstyle;
      break;
    }
    case CM_codequotebacktick:
    {
      return &options->codequotebacktick;
      break;
    }
    case CM_codequoteundirected:
    {
      return &options->codequoteundirected;
      break;
    }
    case CM_contents:
    {
      return &options->contents;
      break;
    }
    case CM_deftypefnnewline:
    {
      return &options->deftypefnnewline;
      break;
    }
    case CM_documentdescription:
    {
      return &options->documentdescription;
      break;
    }
    case CM_documentencoding:
    {
      return &options->documentencoding;
      break;
    }
    case CM_documentlanguage:
    {
      return &options->documentlanguage;
      break;
    }
    case CM_evenfooting:
    {
      return &options->evenfooting;
      break;
    }
    case CM_evenfootingmarks:
    {
      return &options->evenfootingmarks;
      break;
    }
    case CM_evenheading:
    {
      return &options->evenheading;
      break;
    }
    case CM_evenheadingmarks:
    {
      return &options->evenheadingmarks;
      break;
    }
    case CM_everyfooting:
    {
      return &options->everyfooting;
      break;
    }
    case CM_everyfootingmarks:
    {
      return &options->everyfootingmarks;
      break;
    }
    case CM_everyheading:
    {
      return &options->everyheading;
      break;
    }
    case CM_everyheadingmarks:
    {
      return &options->everyheadingmarks;
      break;
    }
    case CM_exampleindent:
    {
      return &options->exampleindent;
      break;
    }
    case CM_firstparagraphindent:
    {
      return &options->firstparagraphindent;
      break;
    }
    case CM_fonttextsize:
    {
      return &options->fonttextsize;
      break;
    }
    case CM_footnotestyle:
    {
      return &options->footnotestyle;
      break;
    }
    case CM_frenchspacing:
    {
      return &options->frenchspacing;
      break;
    }
    case CM_headings:
    {
      return &options->headings;
      break;
    }
    case CM_kbdinputstyle:
    {
      return &options->kbdinputstyle;
      break;
    }
    case CM_microtype:
    {
      return &options->microtype;
      break;
    }
    case CM_novalidate:
    {
      return &options->novalidate;
      break;
    }
    case CM_oddfooting:
    {
      return &options->oddfooting;
      break;
    }
    case CM_oddfootingmarks:
    {
      return &options->oddfootingmarks;
      break;
    }
    case CM_oddheading:
    {
      return &options->oddheading;
      break;
    }
    case CM_oddheadingmarks:
    {
      return &options->oddheadingmarks;
      break;
    }
    case CM_pagesizes:
    {
      return &options->pagesizes;
      break;
    }
    case CM_paragraphindent:
    {
      return &options->paragraphindent;
      break;
    }
    case CM_setchapternewpage:
    {
      return &options->setchapternewpage;
      break;
    }
    case CM_setfilename:
    {
      return &options->setfilename;
      break;
    }
    case CM_shortcontents:
    {
      return &options->shortcontents;
      break;
    }
    case CM_smallbook:
    {
      return &options->smallbook;
      break;
    }
    case CM_summarycontents:
    {
      return &options->summarycontents;
      break;
    }
    case CM_urefbreakstyle:
    {
      return &options->urefbreakstyle;
      break;
    }
    case CM_xrefautomaticsectiontitle:
    {
      return &options->xrefautomaticsectiontitle;
      break;
    }

    default:
      return 0;
    }
}

void
html_fill_options_directions (OPTIONS *options, const CONVERTER *converter)
{
  if (options->LINKS_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->LINKS_BUTTONS.o.buttons);

  if (options->TOP_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->TOP_BUTTONS.o.buttons);

  if (options->TOP_FOOTER_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->TOP_FOOTER_BUTTONS.o.buttons);

  if (options->SECTION_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->SECTION_BUTTONS.o.buttons);

  if (options->CHAPTER_FOOTER_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->CHAPTER_FOOTER_BUTTONS.o.buttons);

  if (options->SECTION_FOOTER_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->SECTION_FOOTER_BUTTONS.o.buttons);

  if (options->NODE_FOOTER_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->NODE_FOOTER_BUTTONS.o.buttons);

  if (options->MISC_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->MISC_BUTTONS.o.buttons);

  if (options->CHAPTER_BUTTONS.o.buttons)
    html_fill_button_directions_specification_list (converter, options->CHAPTER_BUTTONS.o.buttons);

}

COMMAND_OPTION_DEFAULT command_option_default_table[] = {
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* afivepaper (unique_at_command) */
{GOT_char, -2, 0},   /* afourlatex (unique_at_command) */
{GOT_char, -2, 0},   /* afourpaper (unique_at_command) */
{GOT_char, -2, 0},   /* afourwide (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_char, -2, "true"},   /* allowcodebreaks (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* bsixpaper (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "@arrow"},   /* clickstyle (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_char, -2, "off"},   /* codequotebacktick (multiple_at_command) */
{GOT_char, -2, "off"},   /* codequoteundirected (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_integer, 0, 0},   /* contents (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "off"},   /* deftypefnnewline (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* documentdescription (unique_at_command) */
{GOT_char, -2, "utf-8"},   /* documentencoding (multiple_at_command) */
{GOT_char, -2, 0},   /* documentlanguage (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* evenfooting (multiple_at_command) */
{GOT_char, -2, 0},   /* evenfootingmarks (unique_at_command) */
{GOT_char, -2, 0},   /* evenheading (multiple_at_command) */
{GOT_char, -2, 0},   /* evenheadingmarks (unique_at_command) */
{GOT_char, -2, 0},   /* everyfooting (multiple_at_command) */
{GOT_char, -2, "bottom"},   /* everyfootingmarks (unique_at_command) */
{GOT_char, -2, 0},   /* everyheading (multiple_at_command) */
{GOT_char, -2, "bottom"},   /* everyheadingmarks (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_char, -2, "5"},   /* exampleindent (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "none"},   /* firstparagraphindent (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_integer, 11, 0},   /* fonttextsize (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_char, -2, "end"},   /* footnotestyle (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_char, -2, "off"},   /* frenchspacing (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "on"},   /* headings (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "distinct"},   /* kbdinputstyle (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* microtype (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_integer, 0, 0},   /* novalidate (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* oddfooting (multiple_at_command) */
{GOT_char, -2, 0},   /* oddfootingmarks (unique_at_command) */
{GOT_char, -2, 0},   /* oddheading (multiple_at_command) */
{GOT_char, -2, 0},   /* oddheadingmarks (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* pagesizes (unique_at_command) */
{GOT_char, -2, "3"},   /* paragraphindent (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "on"},   /* setchapternewpage (unique_at_command) */
{GOT_char, -2, 0},   /* setfilename (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_integer, 0, 0},   /* shortcontents (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, 0},   /* smallbook (unique_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_integer, 0, 0},   /* summarycontents (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "after"},   /* urefbreakstyle (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_char, -2, "off"},   /* xrefautomaticsectiontitle (multiple_at_command) */
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
{GOT_NONE, -2, 0},
};

static OPTION _sorted_options_ACTIVE_ICONS_tmp = {GOT_icons, "ACTIVE_ICONS", 1, 0, -1};  /* converter_other */
static OPTION _sorted_options_AFTER_BODY_OPEN_tmp = {GOT_char, "AFTER_BODY_OPEN", 2, 0, -1};  /* converter_customization */
static OPTION _sorted_options_AFTER_SHORT_TOC_LINES_tmp = {GOT_char, "AFTER_SHORT_TOC_LINES", 3, 0, -1};  /* converter_customization */
static OPTION _sorted_options_AFTER_TOC_LINES_tmp = {GOT_char, "AFTER_TOC_LINES", 4, 0, -1};  /* converter_customization */
static OPTION _sorted_options_ASCII_DASHES_AND_QUOTES_tmp = {GOT_integer, "ASCII_DASHES_AND_QUOTES", 5, 0, -1};  /* converter_customization */
static OPTION _sorted_options_ASCII_GLYPH_tmp = {GOT_integer, "ASCII_GLYPH", 6, 0, -1};  /* converter_customization */
static OPTION _sorted_options_ASCII_PUNCTUATION_tmp = {GOT_integer, "ASCII_PUNCTUATION", 7, 0, -1};  /* converter_customization */
static OPTION _sorted_options_AUTO_MENU_DESCRIPTION_ALIGN_COLUMN_tmp = {GOT_integer, "AUTO_MENU_DESCRIPTION_ALIGN_COLUMN", 8, 0, -1};  /* converter_customization */
static OPTION _sorted_options_AUTO_MENU_MAX_WIDTH_tmp = {GOT_integer, "AUTO_MENU_MAX_WIDTH", 9, 0, -1};  /* converter_customization */
static OPTION _sorted_options_BASEFILENAME_LENGTH_tmp = {GOT_integer, "BASEFILENAME_LENGTH", 10, 0, -1};  /* converter_customization */
static OPTION _sorted_options_BEFORE_SHORT_TOC_LINES_tmp = {GOT_char, "BEFORE_SHORT_TOC_LINES", 11, 0, -1};  /* converter_customization */
static OPTION _sorted_options_BEFORE_TOC_LINES_tmp = {GOT_char, "BEFORE_TOC_LINES", 12, 0, -1};  /* converter_customization */
static OPTION _sorted_options_BIG_RULE_tmp = {GOT_char, "BIG_RULE", 13, 0, -1};  /* converter_customization */
static OPTION _sorted_options_BODY_ELEMENT_ATTRIBUTES_tmp = {GOT_char, "BODY_ELEMENT_ATTRIBUTES", 14, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CASE_INSENSITIVE_FILENAMES_tmp = {GOT_integer, "CASE_INSENSITIVE_FILENAMES", 15, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CHAPTER_BUTTONS_tmp = {GOT_buttons, "CHAPTER_BUTTONS", 16, 0, -1};  /* converter_other */
static OPTION _sorted_options_CHAPTER_FOOTER_BUTTONS_tmp = {GOT_buttons, "CHAPTER_FOOTER_BUTTONS", 17, 0, -1};  /* converter_other */
static OPTION _sorted_options_CHAPTER_HEADER_LEVEL_tmp = {GOT_integer, "CHAPTER_HEADER_LEVEL", 18, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CHECK_HTMLXREF_tmp = {GOT_integer, "CHECK_HTMLXREF", 19, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CHECK_MISSING_MENU_ENTRY_tmp = {GOT_integer, "CHECK_MISSING_MENU_ENTRY", 20, 0, -1};  /* program_customization */
static OPTION _sorted_options_CHECK_NORMAL_MENU_STRUCTURE_tmp = {GOT_integer, "CHECK_NORMAL_MENU_STRUCTURE", 21, 0, -1};  /* program_customization */
static OPTION _sorted_options_CLASS_BEGIN_USEPACKAGE_tmp = {GOT_char, "CLASS_BEGIN_USEPACKAGE", 22, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CLOSE_DOUBLE_QUOTE_SYMBOL_tmp = {GOT_char, "CLOSE_DOUBLE_QUOTE_SYMBOL", 23, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CLOSE_QUOTE_SYMBOL_tmp = {GOT_char, "CLOSE_QUOTE_SYMBOL", 24, 0, -1};  /* converter_customization */
static OPTION _sorted_options_COLLATION_LANGUAGE_tmp = {GOT_char, "COLLATION_LANGUAGE", 25, 0, -1};  /* converter_customization */
static OPTION _sorted_options_COMMAND_LINE_ENCODING_tmp = {GOT_char, "COMMAND_LINE_ENCODING", 26, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CONTENTS_OUTPUT_LOCATION_tmp = {GOT_char, "CONTENTS_OUTPUT_LOCATION", 27, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CONVERT_TO_LATEX_IN_MATH_tmp = {GOT_integer, "CONVERT_TO_LATEX_IN_MATH", 28, 0, -1};  /* converter_customization */
static OPTION _sorted_options_COPIABLE_LINKS_tmp = {GOT_integer, "COPIABLE_LINKS", 29, 0, -1};  /* converter_customization */
static OPTION _sorted_options_CSS_FILES_tmp = {GOT_bytes_string_list, "CSS_FILES", 30, 0, -1};  /* array_cmdline */
static OPTION _sorted_options_CSS_REFS_tmp = {GOT_char_string_list, "CSS_REFS", 31, 0, -1};  /* array_cmdline */
static OPTION _sorted_options_DATE_IN_HEADER_tmp = {GOT_integer, "DATE_IN_HEADER", 32, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DEBUG_tmp = {GOT_integer, "DEBUG", 33, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DEFAULT_RULE_tmp = {GOT_char, "DEFAULT_RULE", 34, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DEF_TABLE_tmp = {GOT_integer, "DEF_TABLE", 35, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DOCTYPE_tmp = {GOT_char, "DOCTYPE", 36, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DOCUMENTLANGUAGE_COLLATION_tmp = {GOT_integer, "DOCUMENTLANGUAGE_COLLATION", 37, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DOC_ENCODING_FOR_INPUT_FILE_NAME_tmp = {GOT_integer, "DOC_ENCODING_FOR_INPUT_FILE_NAME", 38, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DOC_ENCODING_FOR_OUTPUT_FILE_NAME_tmp = {GOT_integer, "DOC_ENCODING_FOR_OUTPUT_FILE_NAME", 39, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DO_ABOUT_tmp = {GOT_integer, "DO_ABOUT", 40, 0, -1};  /* converter_customization */
static OPTION _sorted_options_DUMP_TEXI_tmp = {GOT_integer, "DUMP_TEXI", 41, 0, -1};  /* program_customization */
static OPTION _sorted_options_DUMP_TREE_tmp = {GOT_integer, "DUMP_TREE", 42, 0, -1};  /* program_customization */
static OPTION _sorted_options_ENABLE_ENCODING_tmp = {GOT_integer, "ENABLE_ENCODING", 43, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_END_USEPACKAGE_tmp = {GOT_char, "END_USEPACKAGE", 44, 0, -1};  /* converter_customization */
static OPTION _sorted_options_EPUB_CREATE_CONTAINER_FILE_tmp = {GOT_integer, "EPUB_CREATE_CONTAINER_FILE", 45, 0, -1};  /* converter_customization */
static OPTION _sorted_options_EPUB_KEEP_CONTAINER_FOLDER_tmp = {GOT_integer, "EPUB_KEEP_CONTAINER_FOLDER", 46, 0, -1};  /* converter_customization */
static OPTION _sorted_options_ERROR_LIMIT_tmp = {GOT_integer, "ERROR_LIMIT", 47, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_EXPANDED_FORMATS_tmp = {GOT_bytes_string_list, "EXPANDED_FORMATS", 48, 0, -1};  /* array_cmdline */
static OPTION _sorted_options_EXTENSION_tmp = {GOT_char, "EXTENSION", 49, 0, -1};  /* converter_customization */
static OPTION _sorted_options_EXTERNAL_CROSSREF_EXTENSION_tmp = {GOT_char, "EXTERNAL_CROSSREF_EXTENSION", 50, 0, -1};  /* converter_customization */
static OPTION _sorted_options_EXTERNAL_CROSSREF_SPLIT_tmp = {GOT_char, "EXTERNAL_CROSSREF_SPLIT", 51, 0, -1};  /* converter_customization */
static OPTION _sorted_options_EXTERNAL_DIR_tmp = {GOT_char, "EXTERNAL_DIR", 52, 0, -1};  /* converter_customization */
static OPTION _sorted_options_EXTRA_HEAD_tmp = {GOT_char, "EXTRA_HEAD", 53, 0, -1};  /* converter_customization */
static OPTION _sorted_options_FILLCOLUMN_tmp = {GOT_integer, "FILLCOLUMN", 54, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_FOOTNOTE_END_HEADER_LEVEL_tmp = {GOT_integer, "FOOTNOTE_END_HEADER_LEVEL", 55, 0, -1};  /* converter_customization */
static OPTION _sorted_options_FOOTNOTE_SEPARATE_HEADER_LEVEL_tmp = {GOT_integer, "FOOTNOTE_SEPARATE_HEADER_LEVEL", 56, 0, -1};  /* converter_customization */
static OPTION _sorted_options_FORCE_tmp = {GOT_integer, "FORCE", 57, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_FORMAT_MENU_tmp = {GOT_char, "FORMAT_MENU", 58, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_HANDLER_FATAL_ERROR_LEVEL_tmp = {GOT_integer, "HANDLER_FATAL_ERROR_LEVEL", 59, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HEADERS_tmp = {GOT_integer, "HEADERS", 60, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_HEADER_IN_TABLE_tmp = {GOT_integer, "HEADER_IN_TABLE", 61, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HIGHLIGHT_SYNTAX_tmp = {GOT_char, "HIGHLIGHT_SYNTAX", 62, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE_tmp = {GOT_char, "HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE", 63, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HTMLXREF_FILE_tmp = {GOT_char, "HTMLXREF_FILE", 64, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HTMLXREF_MODE_tmp = {GOT_char, "HTMLXREF_MODE", 65, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HTML_MATH_tmp = {GOT_char, "HTML_MATH", 66, 0, -1};  /* converter_customization */
static OPTION _sorted_options_HTML_ROOT_ELEMENT_ATTRIBUTES_tmp = {GOT_char, "HTML_ROOT_ELEMENT_ATTRIBUTES", 67, 0, -1};  /* converter_customization */
static OPTION _sorted_options_ICONS_tmp = {GOT_integer, "ICONS", 68, 0, -1};  /* converter_customization */
static OPTION _sorted_options_IGNORE_REF_TO_TOP_NODE_UP_tmp = {GOT_integer, "IGNORE_REF_TO_TOP_NODE_UP", 69, 0, -1};  /* converter_customization */
static OPTION _sorted_options_IMAGE_LINK_PREFIX_tmp = {GOT_char, "IMAGE_LINK_PREFIX", 70, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INCLUDE_DIRECTORIES_tmp = {GOT_file_string_list, "INCLUDE_DIRECTORIES", 71, 0, -1};  /* array_cmdline */
static OPTION _sorted_options_INDENTED_BLOCK_COMMANDS_IN_TABLE_tmp = {GOT_integer, "INDENTED_BLOCK_COMMANDS_IN_TABLE", 72, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INDEX_ENTRY_COLON_tmp = {GOT_char, "INDEX_ENTRY_COLON", 73, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INDEX_SPECIAL_CHARS_WARNING_tmp = {GOT_integer, "INDEX_SPECIAL_CHARS_WARNING", 74, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INFO_JS_DIR_tmp = {GOT_char, "INFO_JS_DIR", 75, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INFO_SPECIAL_CHARS_QUOTE_tmp = {GOT_char, "INFO_SPECIAL_CHARS_QUOTE", 76, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INFO_SPECIAL_CHARS_WARNING_tmp = {GOT_integer, "INFO_SPECIAL_CHARS_WARNING", 77, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INLINE_CSS_STYLE_tmp = {GOT_integer, "INLINE_CSS_STYLE", 78, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INPUT_FILE_NAME_ENCODING_tmp = {GOT_char, "INPUT_FILE_NAME_ENCODING", 79, 0, -1};  /* converter_customization */
static OPTION _sorted_options_INTERNAL_LINKS_tmp = {GOT_bytes, "INTERNAL_LINKS", 80, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_JS_WEBLABELS_tmp = {GOT_char, "JS_WEBLABELS", 81, 0, -1};  /* converter_customization */
static OPTION _sorted_options_JS_WEBLABELS_FILE_tmp = {GOT_char, "JS_WEBLABELS_FILE", 82, 0, -1};  /* converter_customization */
static OPTION _sorted_options_L2H_CLEAN_tmp = {GOT_integer, "L2H_CLEAN", 83, 0, -1};  /* converter_customization */
static OPTION _sorted_options_L2H_FILE_tmp = {GOT_char, "L2H_FILE", 84, 0, -1};  /* converter_customization */
static OPTION _sorted_options_L2H_HTML_VERSION_tmp = {GOT_char, "L2H_HTML_VERSION", 85, 0, -1};  /* converter_customization */
static OPTION _sorted_options_L2H_L2H_tmp = {GOT_char, "L2H_L2H", 86, 0, -1};  /* converter_customization */
static OPTION _sorted_options_L2H_SKIP_tmp = {GOT_integer, "L2H_SKIP", 87, 0, -1};  /* converter_customization */
static OPTION _sorted_options_L2H_TMP_tmp = {GOT_char, "L2H_TMP", 88, 0, -1};  /* converter_customization */
static OPTION _sorted_options_LATEX_FLOATS_FILE_EXTENSION_tmp = {GOT_char, "LATEX_FLOATS_FILE_EXTENSION", 89, 0, -1};  /* converter_customization */
static OPTION _sorted_options_LINKS_BUTTONS_tmp = {GOT_buttons, "LINKS_BUTTONS", 90, 0, -1};  /* converter_other */
static OPTION _sorted_options_LOCALE_ENCODING_tmp = {GOT_char, "LOCALE_ENCODING", 91, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MACRO_EXPAND_tmp = {GOT_bytes, "MACRO_EXPAND", 92, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_MATHJAX_CONFIGURATION_tmp = {GOT_char, "MATHJAX_CONFIGURATION", 93, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MATHJAX_SCRIPT_tmp = {GOT_char, "MATHJAX_SCRIPT", 94, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MATHJAX_SOURCE_tmp = {GOT_char, "MATHJAX_SOURCE", 95, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MAX_HEADER_LEVEL_tmp = {GOT_integer, "MAX_HEADER_LEVEL", 96, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MENU_ENTRY_COLON_tmp = {GOT_char, "MENU_ENTRY_COLON", 97, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MENU_SYMBOL_tmp = {GOT_char, "MENU_SYMBOL", 98, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MESSAGE_ENCODING_tmp = {GOT_char, "MESSAGE_ENCODING", 99, 0, -1};  /* converter_customization */
static OPTION _sorted_options_MISC_BUTTONS_tmp = {GOT_buttons, "MISC_BUTTONS", 100, 0, -1};  /* converter_other */
static OPTION _sorted_options_MONOLITHIC_tmp = {GOT_integer, "MONOLITHIC", 101, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NODE_FILES_tmp = {GOT_integer, "NODE_FILES", 102, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_NODE_FOOTER_BUTTONS_tmp = {GOT_buttons, "NODE_FOOTER_BUTTONS", 103, 0, -1};  /* converter_other */
static OPTION _sorted_options_NODE_NAME_IN_INDEX_tmp = {GOT_integer, "NODE_NAME_IN_INDEX", 104, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NODE_NAME_IN_MENU_tmp = {GOT_integer, "NODE_NAME_IN_MENU", 105, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NO_CSS_tmp = {GOT_integer, "NO_CSS", 106, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NO_CUSTOM_HTML_ATTRIBUTE_tmp = {GOT_integer, "NO_CUSTOM_HTML_ATTRIBUTE", 107, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NO_NUMBER_FOOTNOTE_SYMBOL_tmp = {GOT_char, "NO_NUMBER_FOOTNOTE_SYMBOL", 108, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NO_TOP_NODE_OUTPUT_tmp = {GOT_integer, "NO_TOP_NODE_OUTPUT", 109, 0, -1};  /* converter_customization */
static OPTION _sorted_options_NO_WARN_tmp = {GOT_integer, "NO_WARN", 110, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_NUMBER_FOOTNOTES_tmp = {GOT_integer, "NUMBER_FOOTNOTES", 111, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_NUMBER_SECTIONS_tmp = {GOT_integer, "NUMBER_SECTIONS", 112, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_OPEN_DOUBLE_QUOTE_SYMBOL_tmp = {GOT_char, "OPEN_DOUBLE_QUOTE_SYMBOL", 113, 0, -1};  /* converter_customization */
static OPTION _sorted_options_OPEN_QUOTE_SYMBOL_tmp = {GOT_char, "OPEN_QUOTE_SYMBOL", 114, 0, -1};  /* converter_customization */
static OPTION _sorted_options_OUTFILE_tmp = {GOT_char, "OUTFILE", 115, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_OUTPUT_CHARACTERS_tmp = {GOT_integer, "OUTPUT_CHARACTERS", 116, 0, -1};  /* converter_customization */
static OPTION _sorted_options_OUTPUT_ENCODING_NAME_tmp = {GOT_char, "OUTPUT_ENCODING_NAME", 117, 0, -1};  /* converter_customization */
static OPTION _sorted_options_OUTPUT_FILE_NAME_ENCODING_tmp = {GOT_char, "OUTPUT_FILE_NAME_ENCODING", 118, 0, -1};  /* converter_customization */
static OPTION _sorted_options_OUTPUT_PERL_ENCODING_tmp = {GOT_char, "OUTPUT_PERL_ENCODING", 119, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PACKAGE_tmp = {GOT_char, "PACKAGE", 120, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PACKAGE_AND_VERSION_tmp = {GOT_char, "PACKAGE_AND_VERSION", 121, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PACKAGE_NAME_tmp = {GOT_char, "PACKAGE_NAME", 122, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PACKAGE_URL_tmp = {GOT_char, "PACKAGE_URL", 123, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PACKAGE_VERSION_tmp = {GOT_char, "PACKAGE_VERSION", 124, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PASSIVE_ICONS_tmp = {GOT_icons, "PASSIVE_ICONS", 125, 0, -1};  /* converter_other */
static OPTION _sorted_options_PREFIX_tmp = {GOT_char, "PREFIX", 126, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PRE_BODY_CLOSE_tmp = {GOT_char, "PRE_BODY_CLOSE", 127, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PROGRAM_tmp = {GOT_char, "PROGRAM", 128, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PROGRAM_NAME_IN_ABOUT_tmp = {GOT_integer, "PROGRAM_NAME_IN_ABOUT", 129, 0, -1};  /* converter_customization */
static OPTION _sorted_options_PROGRAM_NAME_IN_FOOTER_tmp = {GOT_integer, "PROGRAM_NAME_IN_FOOTER", 130, 0, -1};  /* converter_customization */
static OPTION _sorted_options_SECTION_BUTTONS_tmp = {GOT_buttons, "SECTION_BUTTONS", 131, 0, -1};  /* converter_other */
static OPTION _sorted_options_SECTION_FOOTER_BUTTONS_tmp = {GOT_buttons, "SECTION_FOOTER_BUTTONS", 132, 0, -1};  /* converter_other */
static OPTION _sorted_options_SECTION_NAME_IN_TITLE_tmp = {GOT_integer, "SECTION_NAME_IN_TITLE", 133, 0, -1};  /* converter_customization */
static OPTION _sorted_options_SHORT_TOC_LINK_TO_TOC_tmp = {GOT_integer, "SHORT_TOC_LINK_TO_TOC", 134, 0, -1};  /* converter_customization */
static OPTION _sorted_options_SHOW_BUILTIN_CSS_RULES_tmp = {GOT_integer, "SHOW_BUILTIN_CSS_RULES", 135, 0, -1};  /* program_customization */
static OPTION _sorted_options_SHOW_TITLE_tmp = {GOT_integer, "SHOW_TITLE", 136, 0, -1};  /* converter_customization */
static OPTION _sorted_options_SILENT_tmp = {GOT_char, "SILENT", 137, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_SORT_ELEMENT_COUNT_tmp = {GOT_char, "SORT_ELEMENT_COUNT", 138, 0, -1};  /* program_customization */
static OPTION _sorted_options_SORT_ELEMENT_COUNT_WORDS_tmp = {GOT_integer, "SORT_ELEMENT_COUNT_WORDS", 139, 0, -1};  /* program_customization */
static OPTION _sorted_options_SPLIT_tmp = {GOT_char, "SPLIT", 140, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_SPLIT_SIZE_tmp = {GOT_integer, "SPLIT_SIZE", 141, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_SUBDIR_tmp = {GOT_char, "SUBDIR", 142, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_T4H_LATEX_CONVERSION_tmp = {GOT_char, "T4H_LATEX_CONVERSION", 143, 0, -1};  /* converter_customization */
static OPTION _sorted_options_T4H_MATH_CONVERSION_tmp = {GOT_char, "T4H_MATH_CONVERSION", 144, 0, -1};  /* converter_customization */
static OPTION _sorted_options_T4H_TEX_CONVERSION_tmp = {GOT_char, "T4H_TEX_CONVERSION", 145, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TEST_tmp = {GOT_integer, "TEST", 146, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TEXI2DVI_tmp = {GOT_char, "TEXI2DVI", 147, 0, -1};  /* program_customization */
static OPTION _sorted_options_TEXI2HTML_tmp = {GOT_integer, "TEXI2HTML", 148, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TEXINFO_DTD_VERSION_tmp = {GOT_char, "TEXINFO_DTD_VERSION", 149, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TEXINFO_LANGUAGE_DIRECTORIES_tmp = {GOT_file_string_list, "TEXINFO_LANGUAGE_DIRECTORIES", 150, 0, -1};  /* array_cmdline */
static OPTION _sorted_options_TEXINFO_OUTPUT_FORMAT_tmp = {GOT_char, "TEXINFO_OUTPUT_FORMAT", 151, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TEXTCONTENT_COMMENT_tmp = {GOT_integer, "TEXTCONTENT_COMMENT", 152, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TOC_LINKS_tmp = {GOT_integer, "TOC_LINKS", 153, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TOP_BUTTONS_tmp = {GOT_buttons, "TOP_BUTTONS", 154, 0, -1};  /* converter_other */
static OPTION _sorted_options_TOP_FILE_tmp = {GOT_char, "TOP_FILE", 155, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TOP_FOOTER_BUTTONS_tmp = {GOT_buttons, "TOP_FOOTER_BUTTONS", 156, 0, -1};  /* converter_other */
static OPTION _sorted_options_TOP_NODE_FILE_TARGET_tmp = {GOT_char, "TOP_NODE_FILE_TARGET", 157, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TOP_NODE_UP_tmp = {GOT_char, "TOP_NODE_UP", 158, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TOP_NODE_UP_URL_tmp = {GOT_char, "TOP_NODE_UP_URL", 159, 0, -1};  /* converter_customization */
static OPTION _sorted_options_TRACE_INCLUDES_tmp = {GOT_integer, "TRACE_INCLUDES", 160, 0, -1};  /* program_cmdline */
static OPTION _sorted_options_TRANSLITERATE_FILE_NAMES_tmp = {GOT_integer, "TRANSLITERATE_FILE_NAMES", 161, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_TREE_TRANSFORMATIONS_tmp = {GOT_char, "TREE_TRANSFORMATIONS", 162, 0, -1};  /* program_customization */
static OPTION _sorted_options_TXI_MARKUP_NO_SECTION_EXTENT_tmp = {GOT_integer, "TXI_MARKUP_NO_SECTION_EXTENT", 163, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_ACCESSKEY_tmp = {GOT_integer, "USE_ACCESSKEY", 164, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_ISO_tmp = {GOT_integer, "USE_ISO", 165, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_LINKS_tmp = {GOT_integer, "USE_LINKS", 166, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_NEXT_HEADING_FOR_LONE_NODE_tmp = {GOT_integer, "USE_NEXT_HEADING_FOR_LONE_NODE", 167, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_NODES_tmp = {GOT_integer, "USE_NODES", 168, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_NODE_DIRECTIONS_tmp = {GOT_integer, "USE_NODE_DIRECTIONS", 169, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_NUMERIC_ENTITY_tmp = {GOT_integer, "USE_NUMERIC_ENTITY", 170, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_REL_REV_tmp = {GOT_integer, "USE_REL_REV", 171, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_SETFILENAME_EXTENSION_tmp = {GOT_integer, "USE_SETFILENAME_EXTENSION", 172, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_TITLEPAGE_FOR_TITLE_tmp = {GOT_integer, "USE_TITLEPAGE_FOR_TITLE", 173, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_UNICODE_COLLATION_tmp = {GOT_integer, "USE_UNICODE_COLLATION", 174, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_UNIDECODE_tmp = {GOT_integer, "USE_UNIDECODE", 175, 0, -1};  /* converter_customization */
static OPTION _sorted_options_USE_XML_SYNTAX_tmp = {GOT_integer, "USE_XML_SYNTAX", 176, 0, -1};  /* converter_customization */
static OPTION _sorted_options_VERBOSE_tmp = {GOT_integer, "VERBOSE", 177, 0, -1};  /* converter_cmdline */
static OPTION _sorted_options_VERTICAL_HEAD_NAVIGATION_tmp = {GOT_integer, "VERTICAL_HEAD_NAVIGATION", 178, 0, -1};  /* converter_customization */
static OPTION _sorted_options_WORDS_IN_PAGE_tmp = {GOT_integer, "WORDS_IN_PAGE", 179, 0, -1};  /* converter_customization */
static OPTION _sorted_options_XREF_USE_FLOAT_LABEL_tmp = {GOT_integer, "XREF_USE_FLOAT_LABEL", 180, 0, -1};  /* converter_customization */
static OPTION _sorted_options_XREF_USE_NODE_NAME_ARG_tmp = {GOT_integer, "XREF_USE_NODE_NAME_ARG", 181, 0, -1};  /* converter_customization */
static OPTION _sorted_options_XS_EXTERNAL_CONVERSION_tmp = {GOT_integer, "XS_EXTERNAL_CONVERSION", 182, 0, -1};  /* converter_customization */
static OPTION _sorted_options_XS_EXTERNAL_FORMATTING_tmp = {GOT_integer, "XS_EXTERNAL_FORMATTING", 183, 0, -1};  /* converter_customization */
static OPTION _sorted_options_XS_STRXFRM_COLLATION_LOCALE_tmp = {GOT_char, "XS_STRXFRM_COLLATION_LOCALE", 184, 0, -1};  /* converter_customization */
static OPTION _sorted_options__INLINE_STYLE_WIDTH_tmp = {GOT_integer, "_INLINE_STYLE_WIDTH", 185, 0, -1};  /* converter_customization */
static OPTION _sorted_options_afivepaper_tmp = {GOT_char, "afivepaper", 186, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_afourlatex_tmp = {GOT_char, "afourlatex", 187, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_afourpaper_tmp = {GOT_char, "afourpaper", 188, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_afourwide_tmp = {GOT_char, "afourwide", 189, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_allowcodebreaks_tmp = {GOT_char, "allowcodebreaks", 190, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_bsixpaper_tmp = {GOT_char, "bsixpaper", 191, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_clickstyle_tmp = {GOT_char, "clickstyle", 192, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_codequotebacktick_tmp = {GOT_char, "codequotebacktick", 193, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_codequoteundirected_tmp = {GOT_char, "codequoteundirected", 194, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_contents_tmp = {GOT_integer, "contents", 195, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_deftypefnnewline_tmp = {GOT_char, "deftypefnnewline", 196, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_documentdescription_tmp = {GOT_char, "documentdescription", 197, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_documentencoding_tmp = {GOT_char, "documentencoding", 198, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_documentlanguage_tmp = {GOT_char, "documentlanguage", 199, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_evenfooting_tmp = {GOT_char, "evenfooting", 200, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_evenfootingmarks_tmp = {GOT_char, "evenfootingmarks", 201, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_evenheading_tmp = {GOT_char, "evenheading", 202, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_evenheadingmarks_tmp = {GOT_char, "evenheadingmarks", 203, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_everyfooting_tmp = {GOT_char, "everyfooting", 204, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_everyfootingmarks_tmp = {GOT_char, "everyfootingmarks", 205, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_everyheading_tmp = {GOT_char, "everyheading", 206, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_everyheadingmarks_tmp = {GOT_char, "everyheadingmarks", 207, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_exampleindent_tmp = {GOT_char, "exampleindent", 208, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_firstparagraphindent_tmp = {GOT_char, "firstparagraphindent", 209, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_fonttextsize_tmp = {GOT_integer, "fonttextsize", 210, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_footnotestyle_tmp = {GOT_char, "footnotestyle", 211, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_frenchspacing_tmp = {GOT_char, "frenchspacing", 212, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_headings_tmp = {GOT_char, "headings", 213, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_kbdinputstyle_tmp = {GOT_char, "kbdinputstyle", 214, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_microtype_tmp = {GOT_char, "microtype", 215, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_novalidate_tmp = {GOT_integer, "novalidate", 216, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_oddfooting_tmp = {GOT_char, "oddfooting", 217, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_oddfootingmarks_tmp = {GOT_char, "oddfootingmarks", 218, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_oddheading_tmp = {GOT_char, "oddheading", 219, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_oddheadingmarks_tmp = {GOT_char, "oddheadingmarks", 220, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_pagesizes_tmp = {GOT_char, "pagesizes", 221, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_paragraphindent_tmp = {GOT_char, "paragraphindent", 222, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_setchapternewpage_tmp = {GOT_char, "setchapternewpage", 223, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_setfilename_tmp = {GOT_char, "setfilename", 224, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_shortcontents_tmp = {GOT_integer, "shortcontents", 225, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_smallbook_tmp = {GOT_char, "smallbook", 226, 0, -1};  /* unique_at_command */
static OPTION _sorted_options_summarycontents_tmp = {GOT_integer, "summarycontents", 227, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_urefbreakstyle_tmp = {GOT_char, "urefbreakstyle", 228, 0, -1};  /* multiple_at_command */
static OPTION _sorted_options_xrefautomaticsectiontitle_tmp = {GOT_char, "xrefautomaticsectiontitle", 229, 0, -1};  /* multiple_at_command */


OPTION *txi_base_sorted_options[TXI_OPTIONS_NR] = {
&_sorted_options_ACTIVE_ICONS_tmp,
&_sorted_options_AFTER_BODY_OPEN_tmp,
&_sorted_options_AFTER_SHORT_TOC_LINES_tmp,
&_sorted_options_AFTER_TOC_LINES_tmp,
&_sorted_options_ASCII_DASHES_AND_QUOTES_tmp,
&_sorted_options_ASCII_GLYPH_tmp,
&_sorted_options_ASCII_PUNCTUATION_tmp,
&_sorted_options_AUTO_MENU_DESCRIPTION_ALIGN_COLUMN_tmp,
&_sorted_options_AUTO_MENU_MAX_WIDTH_tmp,
&_sorted_options_BASEFILENAME_LENGTH_tmp,
&_sorted_options_BEFORE_SHORT_TOC_LINES_tmp,
&_sorted_options_BEFORE_TOC_LINES_tmp,
&_sorted_options_BIG_RULE_tmp,
&_sorted_options_BODY_ELEMENT_ATTRIBUTES_tmp,
&_sorted_options_CASE_INSENSITIVE_FILENAMES_tmp,
&_sorted_options_CHAPTER_BUTTONS_tmp,
&_sorted_options_CHAPTER_FOOTER_BUTTONS_tmp,
&_sorted_options_CHAPTER_HEADER_LEVEL_tmp,
&_sorted_options_CHECK_HTMLXREF_tmp,
&_sorted_options_CHECK_MISSING_MENU_ENTRY_tmp,
&_sorted_options_CHECK_NORMAL_MENU_STRUCTURE_tmp,
&_sorted_options_CLASS_BEGIN_USEPACKAGE_tmp,
&_sorted_options_CLOSE_DOUBLE_QUOTE_SYMBOL_tmp,
&_sorted_options_CLOSE_QUOTE_SYMBOL_tmp,
&_sorted_options_COLLATION_LANGUAGE_tmp,
&_sorted_options_COMMAND_LINE_ENCODING_tmp,
&_sorted_options_CONTENTS_OUTPUT_LOCATION_tmp,
&_sorted_options_CONVERT_TO_LATEX_IN_MATH_tmp,
&_sorted_options_COPIABLE_LINKS_tmp,
&_sorted_options_CSS_FILES_tmp,
&_sorted_options_CSS_REFS_tmp,
&_sorted_options_DATE_IN_HEADER_tmp,
&_sorted_options_DEBUG_tmp,
&_sorted_options_DEFAULT_RULE_tmp,
&_sorted_options_DEF_TABLE_tmp,
&_sorted_options_DOCTYPE_tmp,
&_sorted_options_DOCUMENTLANGUAGE_COLLATION_tmp,
&_sorted_options_DOC_ENCODING_FOR_INPUT_FILE_NAME_tmp,
&_sorted_options_DOC_ENCODING_FOR_OUTPUT_FILE_NAME_tmp,
&_sorted_options_DO_ABOUT_tmp,
&_sorted_options_DUMP_TEXI_tmp,
&_sorted_options_DUMP_TREE_tmp,
&_sorted_options_ENABLE_ENCODING_tmp,
&_sorted_options_END_USEPACKAGE_tmp,
&_sorted_options_EPUB_CREATE_CONTAINER_FILE_tmp,
&_sorted_options_EPUB_KEEP_CONTAINER_FOLDER_tmp,
&_sorted_options_ERROR_LIMIT_tmp,
&_sorted_options_EXPANDED_FORMATS_tmp,
&_sorted_options_EXTENSION_tmp,
&_sorted_options_EXTERNAL_CROSSREF_EXTENSION_tmp,
&_sorted_options_EXTERNAL_CROSSREF_SPLIT_tmp,
&_sorted_options_EXTERNAL_DIR_tmp,
&_sorted_options_EXTRA_HEAD_tmp,
&_sorted_options_FILLCOLUMN_tmp,
&_sorted_options_FOOTNOTE_END_HEADER_LEVEL_tmp,
&_sorted_options_FOOTNOTE_SEPARATE_HEADER_LEVEL_tmp,
&_sorted_options_FORCE_tmp,
&_sorted_options_FORMAT_MENU_tmp,
&_sorted_options_HANDLER_FATAL_ERROR_LEVEL_tmp,
&_sorted_options_HEADERS_tmp,
&_sorted_options_HEADER_IN_TABLE_tmp,
&_sorted_options_HIGHLIGHT_SYNTAX_tmp,
&_sorted_options_HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE_tmp,
&_sorted_options_HTMLXREF_FILE_tmp,
&_sorted_options_HTMLXREF_MODE_tmp,
&_sorted_options_HTML_MATH_tmp,
&_sorted_options_HTML_ROOT_ELEMENT_ATTRIBUTES_tmp,
&_sorted_options_ICONS_tmp,
&_sorted_options_IGNORE_REF_TO_TOP_NODE_UP_tmp,
&_sorted_options_IMAGE_LINK_PREFIX_tmp,
&_sorted_options_INCLUDE_DIRECTORIES_tmp,
&_sorted_options_INDENTED_BLOCK_COMMANDS_IN_TABLE_tmp,
&_sorted_options_INDEX_ENTRY_COLON_tmp,
&_sorted_options_INDEX_SPECIAL_CHARS_WARNING_tmp,
&_sorted_options_INFO_JS_DIR_tmp,
&_sorted_options_INFO_SPECIAL_CHARS_QUOTE_tmp,
&_sorted_options_INFO_SPECIAL_CHARS_WARNING_tmp,
&_sorted_options_INLINE_CSS_STYLE_tmp,
&_sorted_options_INPUT_FILE_NAME_ENCODING_tmp,
&_sorted_options_INTERNAL_LINKS_tmp,
&_sorted_options_JS_WEBLABELS_tmp,
&_sorted_options_JS_WEBLABELS_FILE_tmp,
&_sorted_options_L2H_CLEAN_tmp,
&_sorted_options_L2H_FILE_tmp,
&_sorted_options_L2H_HTML_VERSION_tmp,
&_sorted_options_L2H_L2H_tmp,
&_sorted_options_L2H_SKIP_tmp,
&_sorted_options_L2H_TMP_tmp,
&_sorted_options_LATEX_FLOATS_FILE_EXTENSION_tmp,
&_sorted_options_LINKS_BUTTONS_tmp,
&_sorted_options_LOCALE_ENCODING_tmp,
&_sorted_options_MACRO_EXPAND_tmp,
&_sorted_options_MATHJAX_CONFIGURATION_tmp,
&_sorted_options_MATHJAX_SCRIPT_tmp,
&_sorted_options_MATHJAX_SOURCE_tmp,
&_sorted_options_MAX_HEADER_LEVEL_tmp,
&_sorted_options_MENU_ENTRY_COLON_tmp,
&_sorted_options_MENU_SYMBOL_tmp,
&_sorted_options_MESSAGE_ENCODING_tmp,
&_sorted_options_MISC_BUTTONS_tmp,
&_sorted_options_MONOLITHIC_tmp,
&_sorted_options_NODE_FILES_tmp,
&_sorted_options_NODE_FOOTER_BUTTONS_tmp,
&_sorted_options_NODE_NAME_IN_INDEX_tmp,
&_sorted_options_NODE_NAME_IN_MENU_tmp,
&_sorted_options_NO_CSS_tmp,
&_sorted_options_NO_CUSTOM_HTML_ATTRIBUTE_tmp,
&_sorted_options_NO_NUMBER_FOOTNOTE_SYMBOL_tmp,
&_sorted_options_NO_TOP_NODE_OUTPUT_tmp,
&_sorted_options_NO_WARN_tmp,
&_sorted_options_NUMBER_FOOTNOTES_tmp,
&_sorted_options_NUMBER_SECTIONS_tmp,
&_sorted_options_OPEN_DOUBLE_QUOTE_SYMBOL_tmp,
&_sorted_options_OPEN_QUOTE_SYMBOL_tmp,
&_sorted_options_OUTFILE_tmp,
&_sorted_options_OUTPUT_CHARACTERS_tmp,
&_sorted_options_OUTPUT_ENCODING_NAME_tmp,
&_sorted_options_OUTPUT_FILE_NAME_ENCODING_tmp,
&_sorted_options_OUTPUT_PERL_ENCODING_tmp,
&_sorted_options_PACKAGE_tmp,
&_sorted_options_PACKAGE_AND_VERSION_tmp,
&_sorted_options_PACKAGE_NAME_tmp,
&_sorted_options_PACKAGE_URL_tmp,
&_sorted_options_PACKAGE_VERSION_tmp,
&_sorted_options_PASSIVE_ICONS_tmp,
&_sorted_options_PREFIX_tmp,
&_sorted_options_PRE_BODY_CLOSE_tmp,
&_sorted_options_PROGRAM_tmp,
&_sorted_options_PROGRAM_NAME_IN_ABOUT_tmp,
&_sorted_options_PROGRAM_NAME_IN_FOOTER_tmp,
&_sorted_options_SECTION_BUTTONS_tmp,
&_sorted_options_SECTION_FOOTER_BUTTONS_tmp,
&_sorted_options_SECTION_NAME_IN_TITLE_tmp,
&_sorted_options_SHORT_TOC_LINK_TO_TOC_tmp,
&_sorted_options_SHOW_BUILTIN_CSS_RULES_tmp,
&_sorted_options_SHOW_TITLE_tmp,
&_sorted_options_SILENT_tmp,
&_sorted_options_SORT_ELEMENT_COUNT_tmp,
&_sorted_options_SORT_ELEMENT_COUNT_WORDS_tmp,
&_sorted_options_SPLIT_tmp,
&_sorted_options_SPLIT_SIZE_tmp,
&_sorted_options_SUBDIR_tmp,
&_sorted_options_T4H_LATEX_CONVERSION_tmp,
&_sorted_options_T4H_MATH_CONVERSION_tmp,
&_sorted_options_T4H_TEX_CONVERSION_tmp,
&_sorted_options_TEST_tmp,
&_sorted_options_TEXI2DVI_tmp,
&_sorted_options_TEXI2HTML_tmp,
&_sorted_options_TEXINFO_DTD_VERSION_tmp,
&_sorted_options_TEXINFO_LANGUAGE_DIRECTORIES_tmp,
&_sorted_options_TEXINFO_OUTPUT_FORMAT_tmp,
&_sorted_options_TEXTCONTENT_COMMENT_tmp,
&_sorted_options_TOC_LINKS_tmp,
&_sorted_options_TOP_BUTTONS_tmp,
&_sorted_options_TOP_FILE_tmp,
&_sorted_options_TOP_FOOTER_BUTTONS_tmp,
&_sorted_options_TOP_NODE_FILE_TARGET_tmp,
&_sorted_options_TOP_NODE_UP_tmp,
&_sorted_options_TOP_NODE_UP_URL_tmp,
&_sorted_options_TRACE_INCLUDES_tmp,
&_sorted_options_TRANSLITERATE_FILE_NAMES_tmp,
&_sorted_options_TREE_TRANSFORMATIONS_tmp,
&_sorted_options_TXI_MARKUP_NO_SECTION_EXTENT_tmp,
&_sorted_options_USE_ACCESSKEY_tmp,
&_sorted_options_USE_ISO_tmp,
&_sorted_options_USE_LINKS_tmp,
&_sorted_options_USE_NEXT_HEADING_FOR_LONE_NODE_tmp,
&_sorted_options_USE_NODES_tmp,
&_sorted_options_USE_NODE_DIRECTIONS_tmp,
&_sorted_options_USE_NUMERIC_ENTITY_tmp,
&_sorted_options_USE_REL_REV_tmp,
&_sorted_options_USE_SETFILENAME_EXTENSION_tmp,
&_sorted_options_USE_TITLEPAGE_FOR_TITLE_tmp,
&_sorted_options_USE_UNICODE_COLLATION_tmp,
&_sorted_options_USE_UNIDECODE_tmp,
&_sorted_options_USE_XML_SYNTAX_tmp,
&_sorted_options_VERBOSE_tmp,
&_sorted_options_VERTICAL_HEAD_NAVIGATION_tmp,
&_sorted_options_WORDS_IN_PAGE_tmp,
&_sorted_options_XREF_USE_FLOAT_LABEL_tmp,
&_sorted_options_XREF_USE_NODE_NAME_ARG_tmp,
&_sorted_options_XS_EXTERNAL_CONVERSION_tmp,
&_sorted_options_XS_EXTERNAL_FORMATTING_tmp,
&_sorted_options_XS_STRXFRM_COLLATION_LOCALE_tmp,
&_sorted_options__INLINE_STYLE_WIDTH_tmp,
&_sorted_options_afivepaper_tmp,
&_sorted_options_afourlatex_tmp,
&_sorted_options_afourpaper_tmp,
&_sorted_options_afourwide_tmp,
&_sorted_options_allowcodebreaks_tmp,
&_sorted_options_bsixpaper_tmp,
&_sorted_options_clickstyle_tmp,
&_sorted_options_codequotebacktick_tmp,
&_sorted_options_codequoteundirected_tmp,
&_sorted_options_contents_tmp,
&_sorted_options_deftypefnnewline_tmp,
&_sorted_options_documentdescription_tmp,
&_sorted_options_documentencoding_tmp,
&_sorted_options_documentlanguage_tmp,
&_sorted_options_evenfooting_tmp,
&_sorted_options_evenfootingmarks_tmp,
&_sorted_options_evenheading_tmp,
&_sorted_options_evenheadingmarks_tmp,
&_sorted_options_everyfooting_tmp,
&_sorted_options_everyfootingmarks_tmp,
&_sorted_options_everyheading_tmp,
&_sorted_options_everyheadingmarks_tmp,
&_sorted_options_exampleindent_tmp,
&_sorted_options_firstparagraphindent_tmp,
&_sorted_options_fonttextsize_tmp,
&_sorted_options_footnotestyle_tmp,
&_sorted_options_frenchspacing_tmp,
&_sorted_options_headings_tmp,
&_sorted_options_kbdinputstyle_tmp,
&_sorted_options_microtype_tmp,
&_sorted_options_novalidate_tmp,
&_sorted_options_oddfooting_tmp,
&_sorted_options_oddfootingmarks_tmp,
&_sorted_options_oddheading_tmp,
&_sorted_options_oddheadingmarks_tmp,
&_sorted_options_pagesizes_tmp,
&_sorted_options_paragraphindent_tmp,
&_sorted_options_setchapternewpage_tmp,
&_sorted_options_setfilename_tmp,
&_sorted_options_shortcontents_tmp,
&_sorted_options_smallbook_tmp,
&_sorted_options_summarycontents_tmp,
&_sorted_options_urefbreakstyle_tmp,
&_sorted_options_xrefautomaticsectiontitle_tmp,
};

