/* This file automatically generated by command_data.awk */

#include "builtin_commands.h"

COMMAND builtin_command_data[] = {
{0, 0, 0, 0, 0},
{"\t", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"\n", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"\x20", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"!", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"\"", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"&", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"'", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"*", CF_nobrace | CF_preamble | CF_no_paragraph, CF_formatted_nobrace, NOBRACE_symbol, 0},
{",", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"-", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{".", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"/", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{":", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"=", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"?", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"@", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"AA", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"AE", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"DH", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"H", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"L", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"LaTeX", CF_brace, 0, BRACE_noarg, 0},
{"O", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"OE", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"TH", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"TeX", CF_brace, 0, BRACE_noarg, 0},
{"U", CF_brace, 0, BRACE_arguments, 1},
{"\\", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"^", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"`", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"aa", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"abbr", CF_brace | CF_contain_basic_inline, CF_explained, BRACE_arguments, 2},
{"acronym", CF_brace | CF_contain_basic_inline, CF_explained, BRACE_arguments, 2},
{"ae", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"afivepaper", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"afourlatex", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"afourpaper", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"afourwide", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"alias", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 2},
{"allowcodebreaks", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"ampchar", CF_brace, 0, BRACE_noarg, 0},
{"anchor", CF_brace | CF_contain_basic_inline | CF_no_paragraph, CF_non_formatted_brace, BRACE_arguments, 1},
{"appendix", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_appendix, LINE_line, 1},
{"appendixsec", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_appendix, LINE_line, 1},
{"appendixsection", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_appendix, LINE_line, 1},
{"appendixsubsec", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_appendix, LINE_line, 1},
{"appendixsubsubsec", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_appendix, LINE_line, 1},
{"arrow", CF_brace, 0, BRACE_noarg, 0},
{"asis", CF_brace, 0, BRACE_style_other, 1},
{"atchar", CF_brace, 0, BRACE_noarg, 0},
{"author", CF_line | CF_no_paragraph | CF_global | CF_contain_basic_inline, CF_formatted_line, LINE_line, 1},
{"b", CF_brace, 0, BRACE_style_other, 1},
{"backslashchar", CF_brace, 0, BRACE_noarg, 0},
{"bsixpaper", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"bullet", CF_brace, 0, BRACE_noarg, 0},
{"bye", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 0},
{"c", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 1},
{"caption", CF_brace | CF_close_paragraph | CF_no_paragraph, CF_non_formatted_brace, BRACE_context, 1},
{"cartouche", CF_block | CF_no_paragraph | CF_close_paragraph, 0, BLOCK_other, 1},
{"center", CF_line | CF_no_paragraph | CF_close_paragraph, CF_formatted_line, LINE_line, 1},
{"centerchap", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading | CF_deprecated, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"chapheading", CF_line | CF_no_paragraph | CF_contain_basic_inline | CF_sectioning_heading | CF_close_paragraph | CF_global, CF_formatted_line, LINE_line, 1},
{"chapter", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line, LINE_line, 1},
{"cindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"cite", CF_brace, 0, BRACE_style_other, 1},
{"clear", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 1},
{"click", CF_brace, 0, BRACE_noarg, 0},
{"clicksequence", CF_brace, 0, BRACE_style_other, 1},
{"clickstyle", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_deprecated, 0, LINE_lineraw, 1},
{"code", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"codequotebacktick", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"codequoteundirected", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"columnfractions", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"comma", CF_brace, 0, BRACE_noarg, 0},
{"command", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"comment", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 1},
{"contents", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global | CF_preamble, 0, LINE_lineraw, 0},
{"copying", CF_block | CF_no_paragraph | CF_close_paragraph | CF_global_unique | CF_preamble, 0, BLOCK_region, 0},
{"copyright", CF_brace, 0, BRACE_noarg, 0},
{"cpindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"defblock", CF_block | CF_no_paragraph | CF_close_paragraph, 0, BLOCK_def, 0},
{"defcodeindex", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"defcv", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"defcvx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"deffn", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"deffnx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"defindex", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"definfoenclose", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text | CF_deprecated, 0, LINE_specific, 3},
{"definfoenclose_command", CF_internal | CF_brace, 0, BRACE_style_other, 1},
{"defivar", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defivarx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"defline", CF_line | CF_no_paragraph | CF_def | CF_close_paragraph, 0, LINE_line, 1},
{"defmac", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defmacx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"defmethod", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defmethodx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"defop", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"defopt", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defoptx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"defopx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"defspec", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defspecx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"deftp", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftpx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"deftypecv", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypecvx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"deftypefn", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypefnnewline", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"deftypefnx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"deftypefun", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypefunx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"deftypeivar", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypeivarx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"deftypeline", CF_line | CF_no_paragraph | CF_def | CF_close_paragraph, 0, LINE_line, 1},
{"deftypemethod", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypemethodx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"deftypeop", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypeopx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"deftypevar", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypevarx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"deftypevr", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"deftypevrx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"defun", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defunx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"defvar", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, BLOCK_def, 0},
{"defvarx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_def_alias | CF_close_paragraph, 0, LINE_line, 1},
{"defvr", CF_block | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, BLOCK_def, 0},
{"defvrx", CF_line | CF_no_paragraph | CF_def | CF_contain_basic_inline | CF_close_paragraph, 0, LINE_line, 1},
{"detailmenu", CF_block | CF_no_paragraph | CF_close_paragraph | CF_global, 0, BLOCK_menu, 0},
{"dfn", CF_brace, 0, BRACE_style_other, 1},
{"dh", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"dircategory", CF_line | CF_no_paragraph | CF_close_paragraph | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"direntry", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preamble, 0, BLOCK_menu, 0},
{"display", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted, 0, BLOCK_preformatted, 0},
{"displaymath", CF_block | CF_no_paragraph | CF_close_paragraph | CF_math, 0, BLOCK_math, 0},
{"dmn", CF_brace | CF_contain_plain_text, 0, BRACE_other, 1},
{"docbook", CF_block | CF_no_paragraph | CF_preamble, 0, BLOCK_format_raw, 0},
{"documentdescription", CF_block | CF_no_paragraph | CF_close_paragraph | CF_global_unique | CF_preamble, 0, BLOCK_region, 0},
{"documentencoding", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_text, 1},
{"documentlanguage", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_text, 1},
{"dotaccent", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"dotless", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"dots", CF_brace, 0, BRACE_noarg, 0},
{"email", CF_brace | CF_contain_basic_inline, 0, BRACE_arguments, 2},
{"emph", CF_brace, 0, BRACE_style_other, 1},
{"end", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_text, 1},
{"enddots", CF_brace, 0, BRACE_noarg, 0},
{"enumerate", CF_block | CF_no_paragraph | CF_close_paragraph | CF_blockitem | CF_contain_basic_inline, 0, BLOCK_item_container, 1},
{"env", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"equiv", CF_brace, 0, BRACE_noarg, 0},
{"error", CF_brace, 0, BRACE_noarg, 0},
{"errormsg", CF_brace | CF_preamble | CF_contain_basic_inline | CF_no_paragraph, CF_non_formatted_brace, BRACE_arguments, 1},
{"euro", CF_brace, 0, BRACE_noarg, 0},
{"evenfooting", CF_line | CF_no_paragraph | CF_global_unique | CF_heading_spec | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"evenfootingmarks", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"evenheading", CF_line | CF_no_paragraph | CF_global_unique | CF_heading_spec | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"evenheadingmarks", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"everyfooting", CF_line | CF_no_paragraph | CF_global_unique | CF_heading_spec | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"everyfootingmarks", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"everyheading", CF_line | CF_no_paragraph | CF_global_unique | CF_heading_spec | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"everyheadingmarks", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"example", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted | CF_preformatted_code | CF_variadic | CF_contain_basic_inline, 0, BLOCK_preformatted, 0},
{"exampleindent", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"exclamdown", CF_brace, 0, BRACE_noarg, 0},
{"exdent", CF_line | CF_no_paragraph | CF_close_paragraph, CF_formatted_line, LINE_line, 1},
{"expansion", CF_brace, 0, BRACE_noarg, 0},
{"file", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"finalout", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 0},
{"findex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"firstparagraphindent", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"float", CF_block | CF_no_paragraph | CF_close_paragraph | CF_global | CF_contain_basic_inline, 0, BLOCK_float, 2},
{"flushleft", CF_block | CF_no_paragraph | CF_close_paragraph, 0, 0, 0},
{"flushright", CF_block | CF_no_paragraph | CF_close_paragraph, 0, 0, 0},
{"fnindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"fonttextsize", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"footnote", CF_brace | CF_global, 0, BRACE_context, 1},
{"footnotestyle", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"format", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted, 0, BLOCK_preformatted, 0},
{"frenchspacing", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"ftable", CF_block | CF_no_paragraph | CF_close_paragraph | CF_blockitem | CF_contain_basic_inline, 0, BLOCK_item_line, 1},
{"geq", CF_brace, 0, BRACE_noarg, 0},
{"group", CF_block | CF_no_paragraph | CF_close_paragraph, 0, 0, 0},
{"guillemetleft", CF_brace, 0, BRACE_noarg, 0},
{"guillemetright", CF_brace, 0, BRACE_noarg, 0},
{"guillemotleft", CF_brace, 0, BRACE_noarg, 0},
{"guillemotright", CF_brace, 0, BRACE_noarg, 0},
{"guilsinglleft", CF_brace, 0, BRACE_noarg, 0},
{"guilsinglright", CF_brace, 0, BRACE_noarg, 0},
{"hashchar", CF_brace, 0, BRACE_noarg, 0},
{"heading", CF_line | CF_no_paragraph | CF_contain_basic_inline | CF_sectioning_heading | CF_close_paragraph | CF_global, CF_formatted_line, LINE_line, 1},
{"headings", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"headitem", CF_nobrace | CF_close_paragraph | CF_no_paragraph, CF_formatted_nobrace, NOBRACE_skipspace, 0},
{"headitemfont", CF_brace, 0, BRACE_style_other, 1},
{"html", CF_block | CF_no_paragraph | CF_preamble, 0, BLOCK_format_raw, 0},
{"hyphenation", CF_brace | CF_global | CF_preamble | CF_contain_plain_text | CF_no_paragraph, CF_non_formatted_brace, BRACE_arguments, 1},
{"i", CF_brace, 0, BRACE_style_other, 1},
{"ifclear", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 1},
{"ifcommanddefined", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 1},
{"ifcommandnotdefined", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 1},
{"ifdocbook", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifhtml", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifinfo", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"iflatex", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnotdocbook", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnothtml", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnotinfo", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnotlatex", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnotplaintext", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnottex", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifnotxml", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifplaintext", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifset", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 1},
{"iftex", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ifxml", CF_block | CF_no_paragraph, 0, BLOCK_conditional, 0},
{"ignore", CF_block | CF_no_paragraph | CF_preamble, CF_non_formatted_block, BLOCK_raw, 0},
{"image", CF_brace | CF_contain_basic_inline | CF_no_paragraph, 0, BRACE_arguments, 5},
{"include", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_text, 1},
{"indent", CF_nobrace | CF_preamble | CF_no_paragraph, 0, NOBRACE_skipspace, 0},
{"indentedblock", CF_block | CF_no_paragraph | CF_close_paragraph, 0, 0, 0},
{"index_entry_command", CF_internal | CF_line | CF_index_entry_command | CF_contain_basic_inline | CF_no_paragraph, 0, LINE_line, 1},
{"indicateurl", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"inforef", CF_brace | CF_ref | CF_contain_basic_inline | CF_deprecated, 0, BRACE_arguments, 3},
{"inlinefmt", CF_brace | CF_preamble, CF_inline_format, BRACE_inline, 2},
{"inlinefmtifelse", CF_brace | CF_preamble, CF_inline_format, BRACE_inline, 3},
{"inlineifclear", CF_brace | CF_preamble, CF_inline_conditional, BRACE_inline, 2},
{"inlineifset", CF_brace | CF_preamble, CF_inline_conditional, BRACE_inline, 2},
{"inlineraw", CF_brace | CF_preamble, CF_inline_format, BRACE_inline, 2},
{"insertcopying", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global, CF_formattable_line, LINE_lineraw, 0},
{"item", CF_nobrace | CF_close_paragraph | CF_no_paragraph, CF_formatted_nobrace, NOBRACE_skipspace, 0},
{"item_LINE", CF_line | CF_no_paragraph | CF_close_paragraph, CF_formatted_line, LINE_line, 1},
{"itemize", CF_block | CF_no_paragraph | CF_close_paragraph | CF_blockitem | CF_contain_basic_inline, 0, BLOCK_item_container, 1},
{"itemx", CF_line | CF_no_paragraph | CF_close_paragraph, CF_formatted_line, LINE_line, 1},
{"kbd", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"kbdinputstyle", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"key", CF_brace | CF_contain_plain_text, CF_brace_code, BRACE_style_code, 1},
{"kindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"kyindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"l", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"latex", CF_block | CF_no_paragraph | CF_preamble, 0, BLOCK_format_raw, 0},
{"lbracechar", CF_brace, 0, BRACE_noarg, 0},
{"leq", CF_brace, 0, BRACE_noarg, 0},
{"linemacro", CF_block | CF_no_paragraph | CF_preamble, CF_non_formatted_block, BLOCK_raw, 0},
{"link", CF_brace | CF_ref | CF_contain_basic_inline, 0, BRACE_arguments, 3},
{"lisp", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted | CF_preformatted_code, 0, BLOCK_preformatted, 0},
{"listoffloats", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global | CF_contain_basic_inline, CF_formattable_line, LINE_line, 1},
{"lowersections", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 0},
{"macro", CF_block | CF_no_paragraph | CF_preamble, CF_non_formatted_block, BLOCK_raw, 0},
{"majorheading", CF_line | CF_no_paragraph | CF_contain_basic_inline | CF_sectioning_heading | CF_close_paragraph | CF_global, CF_formatted_line, LINE_line, 1},
{"math", CF_brace | CF_math | CF_contain_basic_inline, 0, BRACE_context, 1},
{"menu", CF_block | CF_no_paragraph | CF_close_paragraph, 0, BLOCK_menu, 0},
{"microtype", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"minus", CF_brace, 0, BRACE_noarg, 0},
{"multitable", CF_block | CF_no_paragraph | CF_close_paragraph | CF_blockitem | CF_contain_basic_inline, 0, BLOCK_multitable, 0},
{"namedanchor", CF_brace | CF_contain_basic_inline | CF_no_paragraph, CF_non_formatted_brace, BRACE_arguments, 2},
{"need", CF_line | CF_no_paragraph | CF_close_paragraph | CF_contain_plain_text, CF_formattable_line, LINE_specific, 1},
{"node", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline, CF_formatted_line, LINE_line, 4},
{"nodedescription", CF_line | CF_no_paragraph | CF_close_paragraph | CF_contain_basic_inline, 0, LINE_line, 1},
{"nodedescriptionblock", CF_block | CF_no_paragraph | CF_close_paragraph, CF_non_formatted_block, 0, 0},
{"noindent", CF_nobrace | CF_preamble | CF_no_paragraph, 0, NOBRACE_skipspace, 0},
{"novalidate", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"o", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"oddfooting", CF_line | CF_no_paragraph | CF_global_unique | CF_heading_spec | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"oddfootingmarks", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"oddheading", CF_line | CF_no_paragraph | CF_global_unique | CF_heading_spec | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"oddheadingmarks", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"oe", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"ogonek", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"option", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"ordf", CF_brace, 0, BRACE_noarg, 0},
{"ordm", CF_brace, 0, BRACE_noarg, 0},
{"page", CF_line | CF_no_paragraph | CF_close_paragraph, CF_formatted_line, LINE_lineraw, 0},
{"pagesizes", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_line, 1},
{"paragraphindent", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"part", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading | CF_global, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"pgindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"pindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"point", CF_brace, 0, BRACE_noarg, 0},
{"pounds", CF_brace, 0, BRACE_noarg, 0},
{"print", CF_brace, 0, BRACE_noarg, 0},
{"printindex", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global | CF_contain_plain_text, CF_formattable_line, LINE_specific, 1},
{"pxref", CF_brace | CF_ref | CF_contain_basic_inline, 0, BRACE_arguments, 5},
{"questiondown", CF_brace, 0, BRACE_noarg, 0},
{"quotation", CF_block | CF_no_paragraph | CF_close_paragraph | CF_contain_basic_inline, 0, BLOCK_quotation, 1},
{"quotedblbase", CF_brace, 0, BRACE_noarg, 0},
{"quotedblleft", CF_brace, 0, BRACE_noarg, 0},
{"quotedblright", CF_brace, 0, BRACE_noarg, 0},
{"quoteleft", CF_brace, 0, BRACE_noarg, 0},
{"quoteright", CF_brace, 0, BRACE_noarg, 0},
{"quotesinglbase", CF_brace, 0, BRACE_noarg, 0},
{"r", CF_brace, 0, BRACE_style_no_code, 1},
{"raggedright", CF_block | CF_no_paragraph | CF_close_paragraph, 0, 0, 0},
{"raisesections", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 0},
{"rbracechar", CF_brace, 0, BRACE_noarg, 0},
{"ref", CF_brace | CF_ref | CF_contain_basic_inline, 0, BRACE_arguments, 5},
{"refill", CF_nobrace | CF_preamble | CF_deprecated | CF_no_paragraph, 0, NOBRACE_other, 0},
{"registeredsymbol", CF_brace, 0, BRACE_noarg, 0},
{"result", CF_brace, 0, BRACE_noarg, 0},
{"ringaccent", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"rmacro", CF_block | CF_no_paragraph | CF_preamble, CF_non_formatted_block, BLOCK_raw, 0},
{"samp", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"sansserif", CF_brace, 0, BRACE_style_other, 1},
{"sc", CF_brace, 0, BRACE_style_other, 1},
{"section", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line, LINE_line, 1},
{"seealso", CF_brace | CF_contain_basic_inline, CF_in_index, BRACE_arguments, 1},
{"seeentry", CF_brace | CF_contain_basic_inline, CF_in_index, BRACE_arguments, 1},
{"set", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 2},
{"setchapternewpage", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"setfilename", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global_unique | CF_preamble | CF_contain_plain_text, 0, LINE_text, 1},
{"settitle", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"shortcaption", CF_brace | CF_close_paragraph | CF_contain_basic_inline | CF_no_paragraph, CF_non_formatted_brace, BRACE_context, 1},
{"shortcontents", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global | CF_preamble, 0, LINE_lineraw, 0},
{"shorttitlepage", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble | CF_contain_basic_inline, 0, LINE_line, 1},
{"slanted", CF_brace, 0, BRACE_style_other, 1},
{"smallbook", CF_line | CF_no_paragraph | CF_global_unique | CF_preamble, 0, LINE_lineraw, 0},
{"smalldisplay", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted, 0, BLOCK_preformatted, 0},
{"smallexample", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted | CF_preformatted_code, 0, BLOCK_preformatted, 0},
{"smallformat", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted, 0, BLOCK_preformatted, 0},
{"smallindentedblock", CF_block | CF_no_paragraph | CF_close_paragraph, 0, 0, 0},
{"smalllisp", CF_block | CF_no_paragraph | CF_close_paragraph | CF_preformatted | CF_preformatted_code, 0, BLOCK_preformatted, 0},
{"smallquotation", CF_block | CF_no_paragraph | CF_close_paragraph | CF_contain_basic_inline, 0, BLOCK_quotation, 1},
{"sortas", CF_brace | CF_contain_plain_text, CF_in_index | CF_non_formatted_brace, BRACE_arguments, 1},
{"sp", CF_line | CF_no_paragraph | CF_close_paragraph | CF_contain_plain_text, CF_formattable_line, LINE_specific, 1},
{"ss", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"strong", CF_brace, 0, BRACE_style_other, 1},
{"sub", CF_brace, 0, BRACE_style_other, 1},
{"subentry", CF_line | CF_no_paragraph | CF_contain_basic_inline, CF_in_index, LINE_line, 1},
{"subheading", CF_line | CF_no_paragraph | CF_contain_basic_inline | CF_sectioning_heading | CF_close_paragraph | CF_global, CF_formatted_line, LINE_line, 1},
{"subsection", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line, LINE_line, 1},
{"subsubheading", CF_line | CF_no_paragraph | CF_contain_basic_inline | CF_sectioning_heading | CF_close_paragraph | CF_global, CF_formatted_line, LINE_line, 1},
{"subsubsection", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line, LINE_line, 1},
{"subtitle", CF_line | CF_no_paragraph | CF_global | CF_contain_basic_inline, CF_formatted_line, LINE_line, 1},
{"summarycontents", CF_line | CF_no_paragraph | CF_close_paragraph | CF_global | CF_preamble, 0, LINE_lineraw, 0},
{"sup", CF_brace, 0, BRACE_style_other, 1},
{"syncodeindex", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 2},
{"synindex", CF_line | CF_no_paragraph | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 2},
{"t", CF_brace, CF_brace_code, BRACE_style_code, 1},
{"tab", CF_nobrace | CF_close_paragraph | CF_no_paragraph, CF_formatted_nobrace, NOBRACE_skipspace, 0},
{"table", CF_block | CF_no_paragraph | CF_close_paragraph | CF_blockitem | CF_contain_basic_inline, 0, BLOCK_item_line, 1},
{"tex", CF_block | CF_no_paragraph | CF_preamble, 0, BLOCK_format_raw, 0},
{"textdegree", CF_brace, 0, BRACE_noarg, 0},
{"th", CF_brace, CF_letter_no_arg, BRACE_noarg, 0},
{"thischapter", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thischaptername", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thischapternum", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thisfile", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thispage", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thissection", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thissectionname", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thissectionnum", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"thistitle", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_other, 0},
{"tie", CF_brace, 0, BRACE_noarg, 0},
{"tieaccent", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"tindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"title", CF_line | CF_no_paragraph | CF_global_unique | CF_contain_basic_inline, CF_formatted_line, LINE_line, 1},
{"titlefont", CF_brace | CF_close_paragraph | CF_global | CF_contain_basic_inline | CF_no_paragraph, 0, BRACE_other, 1},
{"titlepage", CF_block | CF_no_paragraph | CF_close_paragraph | CF_global_unique | CF_preamble, 0, BLOCK_region, 0},
{"today", CF_brace, 0, BRACE_noarg, 0},
{"top", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading | CF_global_unique, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"tpindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"txiinternalvalue", CF_internal | CF_brace, 0, BRACE_special, 1},
{"u", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"ubaraccent", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"udotaccent", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"unmacro", CF_line | CF_no_paragraph | CF_preamble, 0, LINE_lineraw, 1},
{"unnumbered", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"unnumberedsec", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"unnumberedsubsec", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"unnumberedsubsubsec", CF_line | CF_no_paragraph | CF_root | CF_contain_basic_inline | CF_sectioning_heading, CF_formatted_line | CF_unnumbered, LINE_line, 1},
{"uref", CF_brace | CF_contain_basic_inline, 0, BRACE_arguments, 3},
{"urefbreakstyle", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"url", CF_brace | CF_contain_basic_inline, 0, BRACE_arguments, 3},
{"v", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
{"value", CF_brace, 0, BRACE_special, 1},
{"var", CF_brace, 0, BRACE_style_other, 1},
{"verb", CF_brace, CF_brace_code, BRACE_special, 1},
{"verbatim", CF_block | CF_no_paragraph | CF_close_paragraph, 0, BLOCK_raw, 0},
{"verbatiminclude", CF_line | CF_no_paragraph | CF_close_paragraph | CF_contain_plain_text, CF_formattable_line, LINE_text, 1},
{"vindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"vrindex", CF_line | CF_no_paragraph | CF_index_entry_command | CF_contain_basic_inline, 0, LINE_line, 1},
{"vskip", CF_line | CF_no_paragraph, CF_formattable_line, LINE_lineraw, 1},
{"vtable", CF_block | CF_no_paragraph | CF_close_paragraph | CF_blockitem | CF_contain_basic_inline, 0, BLOCK_item_line, 1},
{"w", CF_brace | CF_contain_basic_inline, 0, BRACE_special, 1},
{"xml", CF_block | CF_no_paragraph | CF_preamble, 0, BLOCK_format_raw, 0},
{"xref", CF_brace | CF_ref | CF_contain_basic_inline, 0, BRACE_arguments, 5},
{"xrefautomaticsectiontitle", CF_line | CF_no_paragraph | CF_global | CF_preamble | CF_contain_plain_text, 0, LINE_specific, 1},
{"xrefname", CF_line | CF_no_paragraph | CF_contain_basic_inline | CF_close_paragraph | CF_global, 0, LINE_line, 1},
{"{", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"|", CF_nobrace | CF_in_heading_spec, 0, NOBRACE_symbol, 0},
{"}", CF_nobrace, CF_formatted_nobrace, NOBRACE_symbol, 0},
{"~", CF_brace | CF_accent | CF_contain_plain_text, 0, BRACE_accent, 1},
};
