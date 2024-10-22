/* Automatically generated from regenerate_C_options_info.pl */

#include <config.h>

#include "option_types.h"
#include "options_data.h"
#include "converters_options.h"

/* for html_fill_button_directions_specification_list */
#include "utils.h"
#include "customization_options.h"
/* external definition of html_fill_options_directions */
#include "html_conversion_api.h"

void
set_common_regular_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->PACKAGE, -2, "texinfo");
  option_set_conf (&options->PACKAGE_NAME, -2, "GNU Texinfo");
  option_set_conf (&options->PACKAGE_AND_VERSION, -2, "texinfo");
  option_set_conf (&options->PACKAGE_VERSION, -2, "");
  option_set_conf (&options->PACKAGE_URL, -2, "https://www.gnu.org/software/texinfo/");
  option_set_conf (&options->PROGRAM, -2, "");
}

void
add_common_regular_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "PACKAGE", -2, "texinfo");
  add_new_option_value (options_list, GOT_char, "PACKAGE_NAME", -2, "GNU Texinfo");
  add_new_option_value (options_list, GOT_char, "PACKAGE_AND_VERSION", -2, "texinfo");
  add_new_option_value (options_list, GOT_char, "PACKAGE_VERSION", -2, "");
  add_new_option_value (options_list, GOT_char, "PACKAGE_URL", -2, "https://www.gnu.org/software/texinfo/");
  add_new_option_value (options_list, GOT_char, "PROGRAM", -2, "");
}

void
set_converter_regular_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->documentlanguage, -2, 0);
}

void
add_converter_regular_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "documentlanguage", -2, 0);
}

void
set_html_regular_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->BIG_RULE, -2, "<hr>");
  option_set_conf (&options->BODY_ELEMENT_ATTRIBUTES, -2, 0);
  option_set_conf (&options->CHAPTER_HEADER_LEVEL, 2, 0);
  option_set_conf (&options->CLOSE_QUOTE_SYMBOL, -2, 0);
  option_set_conf (&options->CONTENTS_OUTPUT_LOCATION, -2, "after_top");
  option_set_conf (&options->CONVERT_TO_LATEX_IN_MATH, -1, 0);
  option_set_conf (&options->INDENTED_BLOCK_COMMANDS_IN_TABLE, 0, 0);
  option_set_conf (&options->CHECK_HTMLXREF, 1, 0);
  option_set_conf (&options->COPIABLE_LINKS, 1, 0);
  option_set_conf (&options->DATE_IN_HEADER, 0, 0);
  option_set_conf (&options->DEFAULT_RULE, -2, "<hr>");
  option_set_conf (&options->documentlanguage, -2, "en");
  option_set_conf (&options->DOCTYPE, -2, "<!DOCTYPE html>");
  option_set_conf (&options->DO_ABOUT, 0, 0);
  option_set_conf (&options->OUTPUT_CHARACTERS, 0, 0);
  option_set_conf (&options->EXTENSION, -2, "html");
  option_set_conf (&options->EXTERNAL_CROSSREF_EXTENSION, -2, 0);
  option_set_conf (&options->FOOTNOTE_END_HEADER_LEVEL, 4, 0);
  option_set_conf (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL, 4, 0);
  option_set_conf (&options->FORMAT_MENU, -2, "sectiontoc");
  option_set_conf (&options->HEADERS, 1, 0);
  option_set_conf (&options->INDEX_ENTRY_COLON, -2, "");
  option_set_conf (&options->INLINE_CSS_STYLE, 0, 0);
  option_set_conf (&options->JS_WEBLABELS, -2, "generate");
  option_set_conf (&options->JS_WEBLABELS_FILE, -2, "js_licenses.html");
  option_set_conf (&options->MAX_HEADER_LEVEL, 4, 0);
  option_set_conf (&options->MENU_ENTRY_COLON, -2, ":");
  option_set_conf (&options->MENU_SYMBOL, -2, 0);
  option_set_conf (&options->MONOLITHIC, 1, 0);
  option_set_conf (&options->NO_CUSTOM_HTML_ATTRIBUTE, 0, 0);
  option_set_conf (&options->NO_CSS, 0, 0);
  option_set_conf (&options->NO_NUMBER_FOOTNOTE_SYMBOL, -2, "*");
  option_set_conf (&options->NODE_NAME_IN_MENU, 1, 0);
  option_set_conf (&options->OPEN_QUOTE_SYMBOL, -2, 0);
  option_set_conf (&options->OUTPUT_ENCODING_NAME, -2, "utf-8");
  option_set_conf (&options->SECTION_NAME_IN_TITLE, 0, 0);
  option_set_conf (&options->SHORT_TOC_LINK_TO_TOC, 1, 0);
  option_set_conf (&options->SHOW_TITLE, -1, 0);
  option_set_conf (&options->SPLIT, -2, "node");
  option_set_conf (&options->TOP_FILE, -2, "index.html");
  option_set_conf (&options->TOP_NODE_FILE_TARGET, -2, "index.html");
  option_set_conf (&options->USE_ACCESSKEY, 1, 0);
  option_set_conf (&options->USE_NEXT_HEADING_FOR_LONE_NODE, 1, 0);
  option_set_conf (&options->USE_ISO, 1, 0);
  option_set_conf (&options->USE_LINKS, 1, 0);
  option_set_conf (&options->USE_NODES, 1, 0);
  option_set_conf (&options->USE_NODE_DIRECTIONS, -1, 0);
  option_set_conf (&options->USE_REL_REV, 1, 0);
  option_set_conf (&options->USE_TITLEPAGE_FOR_TITLE, 1, 0);
  option_set_conf (&options->WORDS_IN_PAGE, 300, 0);
  option_set_conf (&options->XREF_USE_NODE_NAME_ARG, -1, 0);
  option_set_conf (&options->XREF_USE_FLOAT_LABEL, 0, 0);
  option_set_conf (&options->xrefautomaticsectiontitle, -2, "on");
}

void
add_html_regular_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "BIG_RULE", -2, "<hr>");
  add_new_option_value (options_list, GOT_char, "BODY_ELEMENT_ATTRIBUTES", -2, 0);
  add_new_option_value (options_list, GOT_integer, "CHAPTER_HEADER_LEVEL", 2, 0);
  add_new_option_value (options_list, GOT_char, "CLOSE_QUOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_char, "CONTENTS_OUTPUT_LOCATION", -2, "after_top");
  add_new_option_value (options_list, GOT_integer, "CONVERT_TO_LATEX_IN_MATH", -1, 0);
  add_new_option_value (options_list, GOT_integer, "INDENTED_BLOCK_COMMANDS_IN_TABLE", 0, 0);
  add_new_option_value (options_list, GOT_integer, "CHECK_HTMLXREF", 1, 0);
  add_new_option_value (options_list, GOT_integer, "COPIABLE_LINKS", 1, 0);
  add_new_option_value (options_list, GOT_integer, "DATE_IN_HEADER", 0, 0);
  add_new_option_value (options_list, GOT_char, "DEFAULT_RULE", -2, "<hr>");
  add_new_option_value (options_list, GOT_char, "documentlanguage", -2, "en");
  add_new_option_value (options_list, GOT_char, "DOCTYPE", -2, "<!DOCTYPE html>");
  add_new_option_value (options_list, GOT_integer, "DO_ABOUT", 0, 0);
  add_new_option_value (options_list, GOT_integer, "OUTPUT_CHARACTERS", 0, 0);
  add_new_option_value (options_list, GOT_char, "EXTENSION", -2, "html");
  add_new_option_value (options_list, GOT_char, "EXTERNAL_CROSSREF_EXTENSION", -2, 0);
  add_new_option_value (options_list, GOT_integer, "FOOTNOTE_END_HEADER_LEVEL", 4, 0);
  add_new_option_value (options_list, GOT_integer, "FOOTNOTE_SEPARATE_HEADER_LEVEL", 4, 0);
  add_new_option_value (options_list, GOT_char, "FORMAT_MENU", -2, "sectiontoc");
  add_new_option_value (options_list, GOT_integer, "HEADERS", 1, 0);
  add_new_option_value (options_list, GOT_char, "INDEX_ENTRY_COLON", -2, "");
  add_new_option_value (options_list, GOT_integer, "INLINE_CSS_STYLE", 0, 0);
  add_new_option_value (options_list, GOT_char, "JS_WEBLABELS", -2, "generate");
  add_new_option_value (options_list, GOT_char, "JS_WEBLABELS_FILE", -2, "js_licenses.html");
  add_new_option_value (options_list, GOT_integer, "MAX_HEADER_LEVEL", 4, 0);
  add_new_option_value (options_list, GOT_char, "MENU_ENTRY_COLON", -2, ":");
  add_new_option_value (options_list, GOT_char, "MENU_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_integer, "MONOLITHIC", 1, 0);
  add_new_option_value (options_list, GOT_integer, "NO_CUSTOM_HTML_ATTRIBUTE", 0, 0);
  add_new_option_value (options_list, GOT_integer, "NO_CSS", 0, 0);
  add_new_option_value (options_list, GOT_char, "NO_NUMBER_FOOTNOTE_SYMBOL", -2, "*");
  add_new_option_value (options_list, GOT_integer, "NODE_NAME_IN_MENU", 1, 0);
  add_new_option_value (options_list, GOT_char, "OPEN_QUOTE_SYMBOL", -2, 0);
  add_new_option_value (options_list, GOT_char, "OUTPUT_ENCODING_NAME", -2, "utf-8");
  add_new_option_value (options_list, GOT_integer, "SECTION_NAME_IN_TITLE", 0, 0);
  add_new_option_value (options_list, GOT_integer, "SHORT_TOC_LINK_TO_TOC", 1, 0);
  add_new_option_value (options_list, GOT_integer, "SHOW_TITLE", -1, 0);
  add_new_option_value (options_list, GOT_char, "SPLIT", -2, "node");
  add_new_option_value (options_list, GOT_char, "TOP_FILE", -2, "index.html");
  add_new_option_value (options_list, GOT_char, "TOP_NODE_FILE_TARGET", -2, "index.html");
  add_new_option_value (options_list, GOT_integer, "USE_ACCESSKEY", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NEXT_HEADING_FOR_LONE_NODE", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_ISO", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_LINKS", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NODES", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NODE_DIRECTIONS", -1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_REL_REV", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_TITLEPAGE_FOR_TITLE", 1, 0);
  add_new_option_value (options_list, GOT_integer, "WORDS_IN_PAGE", 300, 0);
  add_new_option_value (options_list, GOT_integer, "XREF_USE_NODE_NAME_ARG", -1, 0);
  add_new_option_value (options_list, GOT_integer, "XREF_USE_FLOAT_LABEL", 0, 0);
  add_new_option_value (options_list, GOT_char, "xrefautomaticsectiontitle", -2, "on");
}

void
set_texi2html_regular_options_defaults (OPTIONS *options)
{
  option_set_conf (&options->FORMAT_MENU, -2, "menu");
  option_set_conf (&options->USE_SETFILENAME_EXTENSION, 0, 0);
  option_set_conf (&options->footnotestyle, -2, "separate");
  option_set_conf (&options->CONTENTS_OUTPUT_LOCATION, -2, "separate_element");
  option_set_conf (&options->FORCE, 1, 0);
  option_set_conf (&options->USE_ACCESSKEY, 0, 0);
  option_set_conf (&options->NODE_NAME_IN_MENU, 0, 0);
  option_set_conf (&options->SHORT_TOC_LINK_TO_TOC, 0, 0);
  option_set_conf (&options->SHOW_TITLE, 1, 0);
  option_set_conf (&options->USE_REL_REV, 0, 0);
  option_set_conf (&options->USE_LINKS, 0, 0);
  option_set_conf (&options->USE_NODES, 0, 0);
  option_set_conf (&options->SPLIT, -2, "");
  option_set_conf (&options->PROGRAM_NAME_IN_FOOTER, 1, 0);
  option_set_conf (&options->PROGRAM_NAME_IN_ABOUT, 1, 0);
  option_set_conf (&options->HEADER_IN_TABLE, 1, 0);
  option_set_conf (&options->MENU_ENTRY_COLON, -2, "");
  option_set_conf (&options->INDEX_ENTRY_COLON, -2, "");
  option_set_conf (&options->DO_ABOUT, -1, 0);
  option_set_conf (&options->CHAPTER_HEADER_LEVEL, 1, 0);
  option_set_conf (&options->BIG_RULE, -2, "<hr style=\"height: 6px;\">");
  option_set_conf (&options->FOOTNOTE_END_HEADER_LEVEL, 3, 0);
  option_set_conf (&options->FOOTNOTE_SEPARATE_HEADER_LEVEL, 1, 0);
}

void
add_texi2html_regular_options_defaults (OPTIONS_LIST *options_list)
{
  add_new_option_value (options_list, GOT_char, "FORMAT_MENU", -2, "menu");
  add_new_option_value (options_list, GOT_integer, "USE_SETFILENAME_EXTENSION", 0, 0);
  add_new_option_value (options_list, GOT_char, "footnotestyle", -2, "separate");
  add_new_option_value (options_list, GOT_char, "CONTENTS_OUTPUT_LOCATION", -2, "separate_element");
  add_new_option_value (options_list, GOT_integer, "FORCE", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_ACCESSKEY", 0, 0);
  add_new_option_value (options_list, GOT_integer, "NODE_NAME_IN_MENU", 0, 0);
  add_new_option_value (options_list, GOT_integer, "SHORT_TOC_LINK_TO_TOC", 0, 0);
  add_new_option_value (options_list, GOT_integer, "SHOW_TITLE", 1, 0);
  add_new_option_value (options_list, GOT_integer, "USE_REL_REV", 0, 0);
  add_new_option_value (options_list, GOT_integer, "USE_LINKS", 0, 0);
  add_new_option_value (options_list, GOT_integer, "USE_NODES", 0, 0);
  add_new_option_value (options_list, GOT_char, "SPLIT", -2, "");
  add_new_option_value (options_list, GOT_integer, "PROGRAM_NAME_IN_FOOTER", 1, 0);
  add_new_option_value (options_list, GOT_integer, "PROGRAM_NAME_IN_ABOUT", 1, 0);
  add_new_option_value (options_list, GOT_integer, "HEADER_IN_TABLE", 1, 0);
  add_new_option_value (options_list, GOT_char, "MENU_ENTRY_COLON", -2, "");
  add_new_option_value (options_list, GOT_char, "INDEX_ENTRY_COLON", -2, "");
  add_new_option_value (options_list, GOT_integer, "DO_ABOUT", -1, 0);
  add_new_option_value (options_list, GOT_integer, "CHAPTER_HEADER_LEVEL", 1, 0);
  add_new_option_value (options_list, GOT_char, "BIG_RULE", -2, "<hr style=\"height: 6px;\">");
  add_new_option_value (options_list, GOT_integer, "FOOTNOTE_END_HEADER_LEVEL", 3, 0);
  add_new_option_value (options_list, GOT_integer, "FOOTNOTE_SEPARATE_HEADER_LEVEL", 1, 0);
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

