use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'check_htmlxref_no_use_nodes'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content
 *@node C1 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {Top}
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |manual_content:{../there/no_existing_no_manual_direction}
    {(}
    {../there/no_existing_no_manual_direction}
    {)}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *@top C6 l3 {top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {top}
  {empty_line:\\n}
  *paragraph C4
   *@ref C4 l5
    *brace_arg C1
    |EXTRA
    |node_content:{a}
     {a}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {b}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {c}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {no_existing_no_manual.info}
   {\\n}
   *@ref C4 l6
    *brace_arg C1
    |EXTRA
    |node_content:{a}
     {a}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {b}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {c}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     {no_existing_no_manual.info}
   {\\n}
  {empty_line:\\n}
  *@menu C5 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{first}
    |normalized:{first}
     {first}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{other_no_existing_no_manual}
     {(}
     {other_no_existing_no_manual}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l12
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C2 l14 {first}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{first}
  *arguments_line C2
   *line_arg C1
    {first}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |manual_content:{no_existing_no_manual.info}
    {(}
    {no_existing_no_manual.info}
    {)}
  {empty_line:\\n}
 *@node C1 l16 {chapter}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{chapter}
  *arguments_line C3
   *line_arg C1
    {chapter}
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |manual_content:{chap_not_existing}
    {(}
    {chap_not_existing}
    {)}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |manual_content:{dir}
   |node_content:{node in dir}
   |normalized:{node-in-dir}
    {(}
    {dir}
    {)}
    {node in dir}
 *@chapter C3 l17 {Chapter}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 l19
    *brace_arg C4
    |EXTRA
    |manual_content:{some_name_inf.inf}
    |node_content:{aa}
     {(}
     {some_name_inf.inf}
     {)}
     {aa}
   {.\\n}
';


$result_texis{'check_htmlxref_no_use_nodes'} = '
@node Top, (../there/no_existing_no_manual_direction), first, (dir)
@top top

@ref{a, b, c, no_existing_no_manual.info}
@ref{a, b, c, no_existing_no_manual.info}

@menu
* first::
* (other_no_existing_no_manual)::
* chapter::
@end menu

@node first, (no_existing_no_manual.info)

@node chapter, (chap_not_existing), (dir)node in dir
@chapter Chapter

@xref{(some_name_inf.inf)aa}.
';


$result_texts{'check_htmlxref_no_use_nodes'} = 'top
***

a
a

* first::
* (other_no_existing_no_manual)::
* chapter::


1 Chapter
*********

(some_name_inf.inf)aa.
';

$result_errors{'check_htmlxref_no_use_nodes'} = [
  {
    'error_line' => 'warning: node `first\' in menu where `chapter\' expected
',
    'line_nr' => 9,
    'text' => 'node `first\' in menu where `chapter\' expected',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node next pointer for `first\' is `(no_existing_no_manual.info)\' but next is `chapter\' in menu
',
    'line_nr' => 11,
    'text' => 'node next pointer for `first\' is `(no_existing_no_manual.info)\' but next is `chapter\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev pointer for `chapter\' is `(dir)node in dir\' but prev is `first\' in menu
',
    'line_nr' => 11,
    'text' => 'node prev pointer for `chapter\' is `(dir)node in dir\' but prev is `first\' in menu',
    'type' => 'warning'
  }
];


$result_nodes_list{'check_htmlxref_no_use_nodes'} = '1|Top
 associated_section: top
 associated_title_command: top
 menus:
  first
  (other_no_existing_no_manual)
  chapter
 node_directions:
  next-> (../there/no_existing_no_manual_direction)
  prev->first
  up-> (dir)

2|first
 node_directions:
  next-> (no_existing_no_manual.info)

3|chapter
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
 node_directions:
  next-> (chap_not_existing)
  prev-> (dir)node in dir

';

$result_sections_list{'check_htmlxref_no_use_nodes'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Chapter
 section_children:
  1|Chapter
2|Chapter
 associated_anchor_command: chapter
 associated_node: chapter
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
';

$result_sectioning_root{'check_htmlxref_no_use_nodes'} = 'level: -1
list:
 1|top
';

$result_headings_list{'check_htmlxref_no_use_nodes'} = '';

$result_converted_errors{'file_html'}->{'check_htmlxref_no_use_nodes'} = [
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 5,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 5,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 6,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 6,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `dir\'
',
    'line_nr' => 2,
    'text' => 'no HTML cross-references entry found for `dir\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `../there/no_existing_no_manual_direction\'
',
    'line_nr' => 2,
    'text' => 'no HTML cross-references entry found for `../there/no_existing_no_manual_direction\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .inf suffix in reference for manual `some_name_inf.inf\'
',
    'line_nr' => 19,
    'text' => 'do not set .inf suffix in reference for manual `some_name_inf.inf\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `some_name_inf.inf\'
',
    'line_nr' => 19,
    'text' => 'no HTML cross-references entry found for `some_name_inf.inf\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `chap_not_existing\'
',
    'line_nr' => 16,
    'text' => 'no HTML cross-references entry found for `chap_not_existing\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `dir\'
',
    'line_nr' => 16,
    'text' => 'no HTML cross-references entry found for `dir\'',
    'type' => 'warning'
  }
];


1;
