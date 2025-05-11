use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'lone_Top_node'} = 'U0 unit[E3]
UNIT_DIRECTIONS
This: [U0]
NodePrev: [U0]
NodeUp: [U0]
 *before_node_section C1
  *preamble_before_content
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C3 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{First}
    |normalized:{First}
     {First}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *2 @node C1 l7 {First}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{First}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First}
 *3 @chapter C1 l8 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
';


$result_texis{'lone_Top_node'} = '@node Top

@menu
* First::
@end menu

@node First
@chapter chap
';


$result_texts{'lone_Top_node'} = '
* First::

1 chap
******
';

$result_errors{'lone_Top_node'} = [
  {
    'error_line' => 'warning: node `Top\' is up for `First\' in menu but not in sectioning
',
    'line_nr' => 7,
    'text' => 'node `Top\' is up for `First\' in menu but not in sectioning',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'lone_Top_node'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:First}%
';

1;
