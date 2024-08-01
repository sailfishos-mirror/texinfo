/* Automatically generated from ./../../maintain/regenerate_C_options_info.pl */

#include <config.h>

#include "options_types.h"
#include "converter.h"
#include "converters_defaults.h"

void set_html_regular_options_defaults (OPTIONS *options)
{
  set_conf (&options->BIG_RULE, -2, "<hr>");
  set_conf (&options->BODY_ELEMENT_ATTRIBUTES, -2, 0);
  set_conf (&options->CHAPTER_HEADER_LEVEL, 2, 0);
  set_conf (&options->CLOSE_QUOTE_SYMBOL, -2, 0);
  set_conf (&options->CONTENTS_OUTPUT_LOCATION, -2, "after_top");
  set_conf (&options->CONVERT_TO_LATEX_IN_MATH, -1, 0);
  set_conf (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE, 0, 0);
  set_conf (&options->COPIABLE_LINKS, 1, 0);
  set_conf (&options->DATE_IN_HEADER, 0, 0);
  set_conf (&options->DEFAULT_RULE, -2, "<hr>");
  set_conf (&options->documentlanguage, -2, "en");
  set_conf (&options->DOCTYPE, -2, "<!DOCTYPE html>");
  set_conf (&options->DO_ABOUT, 0, 0);
  set_conf (&options->OUTPUT_CHARACTERS, 0, 0);
  set_conf (&options->EXTENSION, -2, "html");
  set_conf (&options->EXTERNAL_CROSSREF_EXTENSION, -2, 0);
  set_conf (&options->FOOTNOTE_END_HEADER_LEVEL, 4, 0);
  set_conf (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL, 4, 0);
  set_conf (&options->FORMAT_MENU, -2, "sectiontoc");
  set_conf (&options->HEADERS, 1, 0);
  set_conf (&options->INDEX_ENTRY_COLON, -2, "");
  set_conf (&options->INLINE_CSS_STYLE, 0, 0);
  set_conf (&options->JS_WEBLABELS, -2, "generate");
  set_conf (&options->JS_WEBLABELS_FILE, -2, "js_licenses.html");
  set_conf (&options->MAX_HEADER_LEVEL, 4, 0);
  set_conf (&options->MENU_ENTRY_COLON, -2, ":");
  set_conf (&options->MENU_SYMBOL, -2, 0);
  set_conf (&options->MONOLITHIC, 1, 0);
  set_conf (&options->NO_CUSTOM_HTML_ATTRIBUTE, 0, 0);
  set_conf (&options->NO_CSS, 0, 0);
  set_conf (&options->NO_NUMBER_FOOTNOTE_SYMBOL, -2, "*");
  set_conf (&options->NODE_NAME_IN_MENU, 1, 0);
  set_conf (&options->OPEN_QUOTE_SYMBOL, -2, 0);
  set_conf (&options->OUTPUT_ENCODING_NAME, -2, "utf-8");
  set_conf (&options->SECTION_NAME_IN_TITLE, 0, 0);
  set_conf (&options->SHORT_TOC_LINK_TO_TOC, 1, 0);
  set_conf (&options->SHOW_TITLE, -1, 0);
  set_conf (&options->SPLIT, -2, "node");
  set_conf (&options->TOP_FILE, -2, "index.html");
  set_conf (&options->TOP_NODE_FILE_TARGET, -2, "index.html");
  set_conf (&options->USE_ACCESSKEY, 1, 0);
  set_conf (&options->USE_NEXT_HEADING_FOR_LONE_NODE, 1, 0);
  set_conf (&options->USE_ISO, 1, 0);
  set_conf (&options->USE_LINKS, 1, 0);
  set_conf (&options->USE_NODES, 1, 0);
  set_conf (&options->USE_NODE_DIRECTIONS, -1, 0);
  set_conf (&options->USE_REL_REV, 1, 0);
  set_conf (&options->USE_TITLEPAGE_FOR_TITLE, 1, 0);
  set_conf (&options->WORDS_IN_PAGE, 300, 0);
  set_conf (&options->XREF_USE_NODE_NAME_ARG, -1, 0);
  set_conf (&options->XREF_USE_FLOAT_LABEL, 0, 0);
  set_conf (&options->xrefautomaticsectiontitle, -2, "on");
}

