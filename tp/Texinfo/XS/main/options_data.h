/* Automatically generated from regenerate_C_options_info.pl */

#ifndef OPTIONS_DATA_H
#define OPTIONS_DATA_H

#include "option_types.h"

/* Undefine values set from autoconf as we use these as
   customization variable names.  The original values are
   available with a _CONFIG suffix, e.g. PACKAGE_CONFIG for
   PACKAGE. */
#undef PACKAGE
#undef PACKAGE_NAME
#undef PACKAGE_URL
#undef PACKAGE_VERSION

#define TXI_OPTIONS_NR 233

typedef struct OPTIONS {
    size_t BIT_user_function_number;

/* array_cmdline */

    OPTION CSS_FILES;
    OPTION CSS_REFS;
    OPTION EXPANDED_FORMATS;
    OPTION INCLUDE_DIRECTORIES;
    OPTION TEXINFO_LANGUAGE_DIRECTORIES;

/* converter_cmdline */

    OPTION SPLIT_SIZE;
    OPTION FILLCOLUMN;
    OPTION NUMBER_SECTIONS;
    OPTION NUMBER_FOOTNOTES;
    OPTION TRANSLITERATE_FILE_NAMES;
    OPTION SPLIT;
    OPTION HEADERS;
    OPTION NODE_FILES;
    OPTION VERBOSE;
    OPTION OUTFILE;
    OPTION SUBDIR;
    OPTION ENABLE_ENCODING;

/* converter_customization */

    OPTION TOP_NODE_UP;
    OPTION BASEFILENAME_LENGTH;
    OPTION DOC_ENCODING_FOR_INPUT_FILE_NAME;
    OPTION DOC_ENCODING_FOR_OUTPUT_FILE_NAME;
    OPTION IMAGE_LINK_PREFIX;
    OPTION CASE_INSENSITIVE_FILENAMES;
    OPTION DEBUG;
    OPTION HANDLER_FATAL_ERROR_LEVEL;
    OPTION TEST;
    OPTION TEXTCONTENT_COMMENT;
    OPTION TEXINFO_DTD_VERSION;
    OPTION USE_UNICODE_COLLATION;
    OPTION AFTER_BODY_OPEN;
    OPTION AFTER_SHORT_TOC_LINES;
    OPTION AFTER_TOC_LINES;
    OPTION ASCII_DASHES_AND_QUOTES;
    OPTION ASCII_GLYPH;
    OPTION ASCII_PUNCTUATION;
    OPTION AUTO_MENU_DESCRIPTION_ALIGN_COLUMN;
    OPTION AUTO_MENU_MAX_WIDTH;
    OPTION BEFORE_SHORT_TOC_LINES;
    OPTION BEFORE_TOC_LINES;
    OPTION BIG_RULE;
    OPTION BODY_ELEMENT_ATTRIBUTES;
    OPTION CLASS_BEGIN_USEPACKAGE;
    OPTION COPIABLE_LINKS;
    OPTION CHAPTER_HEADER_LEVEL;
    OPTION CHECK_HTMLXREF;
    OPTION CLOSE_DOUBLE_QUOTE_SYMBOL;
    OPTION CLOSE_QUOTE_SYMBOL;
    OPTION COLLATION_LANGUAGE;
    OPTION COMMAND_LINE_ENCODING;
    OPTION INDENTED_BLOCK_COMMANDS_IN_TABLE;
    OPTION CONTENTS_OUTPUT_LOCATION;
    OPTION CONVERT_TO_LATEX_IN_MATH;
    OPTION DATE_IN_HEADER;
    OPTION DEFAULT_RULE;
    OPTION DEF_TABLE;
    OPTION DO_ABOUT;
    OPTION DOCTYPE;
    OPTION DOCUMENTLANGUAGE_COLLATION;
    OPTION END_USEPACKAGE;
    OPTION EPUB_CREATE_CONTAINER_FILE;
    OPTION EPUB_KEEP_CONTAINER_FOLDER;
    OPTION EXTENSION;
    OPTION EXTERNAL_CROSSREF_EXTENSION;
    OPTION EXTERNAL_CROSSREF_SPLIT;
    OPTION EXTERNAL_DIR;
    OPTION EXTRA_HEAD;
    OPTION FOOTNOTE_END_HEADER_LEVEL;
    OPTION FOOTNOTE_SEPARATE_HEADER_LEVEL;
    OPTION HEADER_IN_TABLE;
    OPTION HIGHLIGHT_SYNTAX;
    OPTION HIGHLIGHT_SYNTAX_DEFAULT_LANGUAGE;
    OPTION HTML_MATH;
    OPTION HTML_ROOT_ELEMENT_ATTRIBUTES;
    OPTION HTMLXREF_FILE;
    OPTION HTMLXREF_MODE;
    OPTION ICONS;
    OPTION INDEX_ENTRY_COLON;
    OPTION INDEX_SPECIAL_CHARS_WARNING;
    OPTION INFO_JS_DIR;
    OPTION INFO_SPECIAL_CHARS_QUOTE;
    OPTION INFO_SPECIAL_CHARS_WARNING;
    OPTION INFO_MATH_IMAGES;
    OPTION IGNORE_REF_TO_TOP_NODE_UP;
    OPTION INLINE_CSS_STYLE;
    OPTION INPUT_FILE_NAME_ENCODING;
    OPTION JS_WEBLABELS;
    OPTION JS_WEBLABELS_FILE;
    OPTION LATEX_FLOATS_FILE_EXTENSION;
    OPTION LOCALE_ENCODING;
    OPTION L2H_CLEAN;
    OPTION L2H_FILE;
    OPTION L2H_HTML_VERSION;
    OPTION L2H_L2H;
    OPTION L2H_SKIP;
    OPTION L2H_TMP;
    OPTION MATHJAX_CONFIGURATION;
    OPTION MATHJAX_SCRIPT;
    OPTION MATHJAX_SOURCE;
    OPTION MAX_HEADER_LEVEL;
    OPTION MENU_ENTRY_COLON;
    OPTION MENU_SYMBOL;
    OPTION MESSAGE_ENCODING;
    OPTION MONOLITHIC;
    OPTION NO_CSS;
    OPTION NO_NUMBER_FOOTNOTE_SYMBOL;
    OPTION NO_CUSTOM_HTML_ATTRIBUTE;
    OPTION NODE_NAME_IN_INDEX;
    OPTION NODE_NAME_IN_MENU;
    OPTION NO_TOP_NODE_OUTPUT;
    OPTION OPEN_DOUBLE_QUOTE_SYMBOL;
    OPTION OPEN_QUOTE_SYMBOL;
    OPTION OUTPUT_CHARACTERS;
    OPTION OUTPUT_ENCODING_NAME;
    OPTION OUTPUT_FILE_NAME_ENCODING;
    OPTION OUTPUT_PERL_ENCODING;
    OPTION PACKAGE;
    OPTION PACKAGE_AND_VERSION;
    OPTION PACKAGE_NAME;
    OPTION PACKAGE_URL;
    OPTION PACKAGE_VERSION;
    OPTION PRE_BODY_CLOSE;
    OPTION PREFIX;
    OPTION PROGRAM;
    OPTION PROGRAM_NAME_IN_ABOUT;
    OPTION PROGRAM_NAME_IN_FOOTER;
    OPTION SECTION_NAME_IN_TITLE;
    OPTION SHORT_TOC_LINK_TO_TOC;
    OPTION SHOW_TITLE;
    OPTION T4H_LATEX_CONVERSION;
    OPTION T4H_MATH_CONVERSION;
    OPTION T4H_TEX_CONVERSION;
    OPTION TEXI2HTML;
    OPTION TEXINFO_OUTPUT_FORMAT;
    OPTION TXI_MARKUP_NO_SECTION_EXTENT;
    OPTION TOC_LINKS;
    OPTION TOP_FILE;
    OPTION TOP_NODE_FILE_TARGET;
    OPTION TOP_NODE_UP_URL;
    OPTION USE_ACCESSKEY;
    OPTION USE_ISO;
    OPTION USE_LINKS;
    OPTION USE_NEXT_HEADING_FOR_LONE_NODE;
    OPTION USE_NODES;
    OPTION USE_NODE_DIRECTIONS;
    OPTION USE_NUMERIC_ENTITY;
    OPTION USE_SETFILENAME_EXTENSION;
    OPTION USE_TITLEPAGE_FOR_TITLE;
    OPTION USE_UNIDECODE;
    OPTION USE_XML_SYNTAX;
    OPTION VERTICAL_HEAD_NAVIGATION;
    OPTION WORDS_IN_PAGE;
    OPTION XREF_USE_FLOAT_LABEL;
    OPTION XREF_USE_NODE_NAME_ARG;
    OPTION XS_EXTERNAL_CONVERSION;
    OPTION XS_EXTERNAL_FORMATTING;
    OPTION XS_STRXFRM_COLLATION_LOCALE;
    OPTION _INLINE_STYLE_WIDTH;

/* converter_other */

    OPTION LINKS_DIRECTIONS;
    OPTION TOP_BUTTONS;
    OPTION TOP_FOOTER_BUTTONS;
    OPTION SECTION_BUTTONS;
    OPTION CHAPTER_FOOTER_BUTTONS;
    OPTION SECTION_FOOTER_BUTTONS;
    OPTION NODE_FOOTER_BUTTONS;
    OPTION MISC_BUTTONS;
    OPTION CHAPTER_BUTTONS;
    OPTION ACTIVE_ICONS;
    OPTION PASSIVE_ICONS;

/* multiple_at_command */

    OPTION allowcodebreaks;
    OPTION clickstyle;
    OPTION codequotebacktick;
    OPTION codequoteundirected;
    OPTION contents;
    OPTION deftypefnnewline;
    OPTION documentencoding;
    OPTION documentlanguage;
    OPTION evenfooting;
    OPTION evenheading;
    OPTION everyfooting;
    OPTION everyheading;
    OPTION exampleindent;
    OPTION firstparagraphindent;
    OPTION frenchspacing;
    OPTION headings;
    OPTION kbdinputstyle;
    OPTION microtype;
    OPTION oddheading;
    OPTION oddfooting;
    OPTION paragraphindent;
    OPTION shortcontents;
    OPTION summarycontents;
    OPTION urefbreakstyle;
    OPTION xrefautomaticsectiontitle;

/* parser */

    OPTION IGNORE_SPACE_AFTER_BRACED_COMMAND_NAME;
    OPTION CPP_LINE_DIRECTIVES;
    OPTION MAX_MACRO_CALL_NESTING;
    OPTION NO_INDEX;
    OPTION NO_USER_COMMANDS;

/* program_cmdline */

    OPTION MACRO_EXPAND;
    OPTION INTERNAL_LINKS;
    OPTION ERROR_LIMIT;
    OPTION FORCE;
    OPTION NO_WARN;
    OPTION TRACE_INCLUDES;
    OPTION FORMAT_MENU;

/* program_customization */

    OPTION CHECK_NORMAL_MENU_STRUCTURE;
    OPTION CHECK_MISSING_MENU_ENTRY;
    OPTION DUMP_TREE;
    OPTION DUMP_TEXI;
    OPTION SHOW_BUILTIN_CSS_RULES;
    OPTION SORT_ELEMENT_COUNT;
    OPTION SORT_ELEMENT_COUNT_WORDS;
    OPTION TEXI2DVI;
    OPTION TREE_TRANSFORMATIONS;

/* unique_at_command */

    OPTION afivepaper;
    OPTION afourpaper;
    OPTION afourlatex;
    OPTION afourwide;
    OPTION bsixpaper;
    OPTION documentdescription;
    OPTION evenfootingmarks;
    OPTION evenheadingmarks;
    OPTION everyfootingmarks;
    OPTION everyheadingmarks;
    OPTION fonttextsize;
    OPTION footnotestyle;
    OPTION novalidate;
    OPTION oddfootingmarks;
    OPTION oddheadingmarks;
    OPTION pagesizes;
    OPTION setchapternewpage;
    OPTION setfilename;
    OPTION smallbook;
} OPTIONS;

#endif
