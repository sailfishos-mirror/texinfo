use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'complex'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
NodeNext: [U1]
NodePrev: (dir)
NodeForward: [U1]
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 complex_sectioning_case.texi:l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3|prev->MISSING: (line_arg)[C3]]
 |normalized:{Top}
  *arguments_line C3
   *line_arg C1
    {Top}
   *line_arg C1
   |EXTRA
   |node_content:{First node}
   |normalized:{First-node}
    {First node}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @top C3 complex_sectioning_case.texi:l2
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E26|E28|E30]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  *2 @menu C8 complex_sectioning_case.texi:l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 complex_sectioning_case.texi:l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{First node}
    |normalized:{First-node}
     {First node}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 complex_sectioning_case.texi:l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{between node}
    |normalized:{between-node}
     {between node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 complex_sectioning_case.texi:l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Second node}
    |normalized:{Second-node}
     {Second node}
    {menu_entry_separator:::   }
    *menu_entry_description C1
     *preformatted C1
      {node 2\\n}
   *menu_entry C4 complex_sectioning_case.texi:l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Third node unnumbered}
    |normalized:{Third-node-unnumbered}
     {Third node unnumbered}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {unnumbered in Top menu\\n}
   *menu_entry C4 complex_sectioning_case.texi:l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{continuity}
    |normalized:{continuity}
     {continuity}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 complex_sectioning_case.texi:l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Last node no description}
    |normalized:{Last-node-no-description}
     {Last node no description}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 complex_sectioning_case.texi:l10
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
U1 unit[E4]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U10]
FastBack: [U0]
Next: [U10]
Up: [U0]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U0]
 *3 @node C1 complex_sectioning_case.texi:l12 {First node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E24|up->E0]
 |menus:EC[E5]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{First-node}
  *arguments_line C4
   *line_arg C1
    {First node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @chapter C5 complex_sectioning_case.texi:l13 {first node chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_childs:EC[E7|E18|E23]
 |section_directions:D[next->E26|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E26|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first node chapter}
  {empty_line:\\n}
  *paragraph C1
   {first node chapter text\\n}
  *5 @menu C6 complex_sectioning_case.texi:l16
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 complex_sectioning_case.texi:l17
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered}
    |normalized:{unnumbered}
     {unnumbered}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un\\n}
   *menu_entry C4 complex_sectioning_case.texi:l18
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered2}
    |normalized:{unnumbered2}
     {unnumbered2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un2\\n}
   *menu_entry C4 complex_sectioning_case.texi:l19
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered}
    |normalized:{numbered}
     {numbered}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {nu\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *@end C1 complex_sectioning_case.texi:l21
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
U2 unit[E7]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastForward: [U10]
FastBack: [U1]
Next: [U7]
Up: [U1]
NodeNext: [U7]
NodeUp: [U1]
NodeForward: [U3]
NodeBack: [U1]
 *6 @node C1 complex_sectioning_case.texi:l23 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[next->E17|up->E3]
 |menus:EC[E8]
 |node_directions:D[next->E17|up->E3]
 |normalized:{unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
 *7 @unnumberedsec C4 complex_sectioning_case.texi:l24 {unnumbered section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_childs:EC[E10|E12|E14|E16]
 |section_directions:D[next->E18|up->E4]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section}
  {empty_line:\\n}
  *8 @menu C6 complex_sectioning_case.texi:l26
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 complex_sectioning_case.texi:l27
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub}
    |normalized:{unnumbered-sub}
     {unnumbered sub}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un\\n}
   *menu_entry C4 complex_sectioning_case.texi:l28
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub}
    |normalized:{numbered-sub}
     {numbered sub}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {nu\\n}
   *menu_entry C4 complex_sectioning_case.texi:l29
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub2}
    |normalized:{unnumbered-sub2}
     {unnumbered sub2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {un2\\n}
   *menu_entry C4 complex_sectioning_case.texi:l30
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub2}
    |normalized:{numbered-sub2}
     {numbered sub2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {nu2\\n}
   *@end C1 complex_sectioning_case.texi:l31
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
U3 unit[E10]
unit_directions:D[next->[U4]|prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Forward: [U4]
Back: [U2]
FastForward: [U10]
FastBack: [U1]
Next: [U4]
Up: [U2]
NodeNext: [U4]
NodeUp: [U2]
NodeForward: [U4]
NodeBack: [U2]
 *9 @node C1 complex_sectioning_case.texi:l33 {unnumbered sub}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |menu_directions:D[next->E11|up->E6]
 |node_directions:D[next->E11|up->E6]
 |normalized:{unnumbered-sub}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub}
 *10 @unnumberedsubsec C2 complex_sectioning_case.texi:l34 {unnumbered subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_directions:D[next->E12|up->E7]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection}
  {empty_line:\\n}
U4 unit[E12]
unit_directions:D[next->[U5]|prev->[U3]]
UNIT_DIRECTIONS
This: [U4]
Forward: [U5]
Back: [U3]
FastForward: [U10]
FastBack: [U1]
Next: [U5]
Prev: [U3]
Up: [U2]
NodeNext: [U5]
NodePrev: [U3]
NodeUp: [U2]
NodeForward: [U5]
NodeBack: [U3]
 *11 @node C1 complex_sectioning_case.texi:l36 {numbered sub}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E9|up->E6]
 |node_directions:D[next->E13|prev->E9|up->E6]
 |normalized:{numbered-sub}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub}
 *12 @subsection C2 complex_sectioning_case.texi:l37 {numbered subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[next->E14|prev->E10|up->E7]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection}
  {empty_line:\\n}
U5 unit[E14]
unit_directions:D[next->[U6]|prev->[U4]]
UNIT_DIRECTIONS
This: [U5]
Forward: [U6]
Back: [U4]
FastForward: [U10]
FastBack: [U1]
Next: [U6]
Prev: [U4]
Up: [U2]
NodeNext: [U6]
NodePrev: [U4]
NodeUp: [U2]
NodeForward: [U6]
NodeBack: [U4]
 *13 @node C1 complex_sectioning_case.texi:l39 {unnumbered sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |associated_title_command:[E14]
 |is_target:{1}
 |menu_directions:D[next->E15|prev->E11|up->E6]
 |node_directions:D[next->E15|prev->E11|up->E6]
 |normalized:{unnumbered-sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub2}
 *14 @unnumberedsubsec C2 complex_sectioning_case.texi:l40 {unnumbered subsection2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E13]
 |associated_node:[E13]
 |section_directions:D[next->E16|prev->E12|up->E7]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection2}
  {empty_line:\\n}
U6 unit[E16]
unit_directions:D[next->[U7]|prev->[U5]]
UNIT_DIRECTIONS
This: [U6]
Forward: [U7]
Back: [U5]
FastForward: [U10]
FastBack: [U1]
Prev: [U5]
Up: [U2]
NodePrev: [U5]
NodeUp: [U2]
NodeForward: [U7]
NodeBack: [U5]
 *15 @node C1 complex_sectioning_case.texi:l42 {numbered sub2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |associated_title_command:[E16]
 |is_target:{1}
 |menu_directions:D[prev->E13|up->E6]
 |node_directions:D[prev->E13|up->E6]
 |normalized:{numbered-sub2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub2}
 *16 @subsection C2 complex_sectioning_case.texi:l43 {numbered subsection2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E15]
 |associated_node:[E15]
 |section_directions:D[prev->E14|up->E7]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection2}
  {empty_line:\\n}
U7 unit[E18]
unit_directions:D[next->[U8]|prev->[U6]]
UNIT_DIRECTIONS
This: [U7]
Forward: [U8]
Back: [U6]
FastForward: [U10]
FastBack: [U1]
Next: [U9]
Prev: [U2]
Up: [U1]
NodeNext: [U9]
NodePrev: [U2]
NodeUp: [U1]
NodeForward: [U8]
NodeBack: [U6]
 *17 @node C1 complex_sectioning_case.texi:l45 {unnumbered2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E18]
 |associated_title_command:[E18]
 |is_target:{1}
 |menu_directions:D[next->E22|prev->E6|up->E3]
 |menus:EC[E19]
 |node_directions:D[next->E22|prev->E6|up->E3]
 |normalized:{unnumbered2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered2}
 *18 @unnumberedsec C4 complex_sectioning_case.texi:l46 {unnumbered section2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E17]
 |associated_node:[E17]
 |section_childs:EC[E21]
 |section_directions:D[next->E23|prev->E7|up->E4]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section2}
  {empty_line:\\n}
  *19 @menu C3 complex_sectioning_case.texi:l48
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 complex_sectioning_case.texi:l49
    {menu_entry_leading_text:*  }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub3}
    |normalized:{numbered-sub3}
     {numbered sub3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 complex_sectioning_case.texi:l50
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
U8 unit[E21]
unit_directions:D[next->[U9]|prev->[U7]]
UNIT_DIRECTIONS
This: [U8]
Forward: [U9]
Back: [U7]
FastForward: [U10]
FastBack: [U1]
Up: [U7]
NodeUp: [U7]
NodeForward: [U9]
NodeBack: [U7]
 *20 @node C1 complex_sectioning_case.texi:l52 {numbered sub3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E21]
 |associated_title_command:[E21]
 |is_target:{1}
 |menu_directions:D[up->E17]
 |node_directions:D[up->E17]
 |normalized:{numbered-sub3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub3}
 *21 @subsection C3 complex_sectioning_case.texi:l53 {numbered subsection3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E20]
 |associated_node:[E20]
 |section_directions:D[up->E18]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection3}
  {empty_line:\\n}
  {empty_line:\\n}
U9 unit[E23]
unit_directions:D[next->[U10]|prev->[U8]]
UNIT_DIRECTIONS
This: [U9]
Forward: [U10]
Back: [U8]
FastForward: [U10]
FastBack: [U1]
Prev: [U7]
Up: [U1]
NodePrev: [U7]
NodeUp: [U1]
NodeBack: [U8]
 *22 @node C1 complex_sectioning_case.texi:l56 {numbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E23]
 |associated_title_command:[E23]
 |is_target:{1}
 |menu_directions:D[prev->E17|up->E3]
 |node_directions:D[prev->E17|up->E3]
 |normalized:{numbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered}
 *23 @section C2 complex_sectioning_case.texi:l57 {numbered section}
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |associated_anchor_command:[E22]
 |associated_node:[E22]
 |section_directions:D[prev->E18|up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered section}
  {empty_line:\\n}
 *24 @node C4 complex_sectioning_case.texi:l59 {between node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E25|prev->E3|up->E0]
 |node_directions:D[up->E0]
 |normalized:{between-node}
  *arguments_line C4
   *line_arg C1
    {between node}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {between node, node without sectioning node\\n}
  {empty_line:\\n}
U10 unit[E26]
unit_directions:D[next->[U11]|prev->[U9]]
UNIT_DIRECTIONS
This: [U10]
Forward: [U11]
Back: [U9]
FastForward: [U11]
FastBack: [U1]
Next: [U11]
Prev: [U1]
Up: [U0]
NodeNext: [U11]
NodeUp: [U0]
NodeForward: [U11]
 *25 @node C4 complex_sectioning_case.texi:l63 {Second node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E26]
 |associated_title_command:[E26]
 |is_target:{1}
 |menu_directions:D[next->E27|prev->E24|up->E0]
 |node_directions:D[next->E27|up->E0]
 |normalized:{Second-node}
  *arguments_line C4
   *line_arg C1
    {Second node}
   *line_arg C1
   |EXTRA
   |node_content:{Third node unnumbered}
   |normalized:{Third-node-unnumbered}
    {Third node unnumbered}
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {Second node text\\n}
  {empty_line:\\n}
 *26 @chapter C4 complex_sectioning_case.texi:l67 {second node chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E25]
 |associated_node:[E25]
 |section_directions:D[next->E28|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E28|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second node chapter}
  {empty_line:\\n}
  *paragraph C1
   {second node chapter text.\\n}
  {empty_line:\\n}
U11 unit[E28]
unit_directions:D[next->[U12]|prev->[U10]]
UNIT_DIRECTIONS
This: [U11]
Forward: [U12]
Back: [U10]
FastForward: [U12]
FastBack: [U10]
Next: [U12]
Prev: [U10]
Up: [U0]
NodeNext: [U12]
NodePrev: [U10]
NodeUp: [U0]
NodeForward: [U12]
NodeBack: [U10]
 *27 @node C1 complex_sectioning_case.texi:l71 {Third node unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E28]
 |associated_title_command:[E28]
 |is_target:{1}
 |menu_directions:D[next->E29|prev->E25|up->E0]
 |node_directions:D[next->E29|prev->E25|up->E0]
 |normalized:{Third-node-unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Third node unnumbered}
 *28 @unnumbered C4 complex_sectioning_case.texi:l72 {unnumbered chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E27]
 |associated_node:[E27]
 |section_directions:D[next->E30|prev->E26|up->E1]
 |section_level:{1}
 |toplevel_directions:D[next->E30|prev->E26|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered chapter}
  {empty_line:\\n}
  *paragraph C1
   {unnumbered chapter text.\\n}
  {empty_line:\\n}
U12 unit[E30]
unit_directions:D[prev->[U11]]
UNIT_DIRECTIONS
This: [U12]
Back: [U11]
FastBack: [U11]
Prev: [U11]
Up: [U0]
NodeNext: [U11]
NodePrev: [U12]
NodeUp: [U0]
NodeForward: [U11]
NodeBack: [U11]
 *29 @node C1 complex_sectioning_case.texi:l76 {continuity}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E30]
 |associated_title_command:[E30]
 |is_target:{1}
 |menu_directions:D[next->E31|prev->E27|up->E0]
 |node_directions:D[next->E27|prev->E31|up->E0]
 |normalized:{continuity}
  *arguments_line C4
   *line_arg C1
    {continuity}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{  }
   |EXTRA
   |node_content:{Third node unnumbered}
   |normalized:{Third-node-unnumbered}
    {Third node unnumbered}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Last node no description}
   |normalized:{Last-node-no-description}
    {Last node no description}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *30 @unnumbered C4 complex_sectioning_case.texi:l77 {unnumbered continuity}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E29]
 |associated_node:[E29]
 |section_directions:D[prev->E28|up->E1]
 |section_level:{1}
 |toplevel_directions:D[prev->E28|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered continuity}
  {empty_line:\\n}
  *paragraph C2
   {Unumbered and node needed for continuity between automatic \\n}
   {directions and lone node.\\n}
  {empty_line:\\n}
 *31 @node C3 complex_sectioning_case.texi:l82 {Last node no description}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E29|up->E0]
 |node_directions:D[prev->E29|up->E0]
 |normalized:{Last-node-no-description}
  *arguments_line C4
   *line_arg C1
    {Last node no description}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{continuity}
   |normalized:{continuity}
    {continuity}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *@contents C1 complex_sectioning_case.texi:l84
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'complex'} = '@node Top,First node,(dir)
@top
@menu
* First node:: 
* between node::
* Second node::   node 2
* Third node unnumbered:: unnumbered in Top menu
* continuity::
* Last node no description::
@end menu

@node First node,,Top,Top
@chapter first node chapter

first node chapter text
@menu
* unnumbered:: un
* unnumbered2:: un2
* numbered:: nu

@end menu

@node unnumbered
@unnumberedsec unnumbered section

@menu
* unnumbered sub:: un
* numbered sub:: nu
* unnumbered sub2:: un2
* numbered sub2:: nu2
@end menu

@node unnumbered sub
@unnumberedsubsec unnumbered subsection

@node numbered sub
@subsection numbered subsection

@node unnumbered sub2
@unnumberedsubsec unnumbered subsection2

@node numbered sub2
@subsection numbered subsection2

@node unnumbered2
@unnumberedsec unnumbered section2

@menu
*  numbered sub3::
@end menu

@node numbered sub3
@subsection numbered subsection3


@node numbered
@section  numbered section

@node between node,,,Top

between node, node without sectioning node

@node Second node,Third node unnumbered,,Top

Second node text

@chapter second node chapter

second node chapter text.

@node Third node unnumbered
@unnumbered unnumbered chapter

unnumbered chapter text.

@node continuity,  Third node unnumbered, Last node no description, Top
@unnumbered unnumbered continuity

Unumbered and node needed for continuity between automatic 
directions and lone node.

@node Last node no description,,continuity,Top

@contents
@bye
';


$result_texts{'complex'} = '* First node:: 
* between node::
* Second node::   node 2
* Third node unnumbered:: unnumbered in Top menu
* continuity::
* Last node no description::

1 first node chapter
********************

first node chapter text
* unnumbered:: un
* unnumbered2:: un2
* numbered:: nu


unnumbered section
==================

* unnumbered sub:: un
* numbered sub:: nu
* unnumbered sub2:: un2
* numbered sub2:: nu2

unnumbered subsection
---------------------

numbered subsection
-------------------

unnumbered subsection2
----------------------

numbered subsection2
--------------------

unnumbered section2
===================

*  numbered sub3::

numbered subsection3
--------------------


1.1 numbered section
====================


between node, node without sectioning node


Second node text

2 second node chapter
*********************

second node chapter text.

unnumbered chapter
******************

unnumbered chapter text.

unnumbered continuity
*********************

Unumbered and node needed for continuity between automatic 
directions and lone node.


';

$result_errors{'complex'} = [
  {
    'error_line' => 'warning: node next pointer for `continuity\' is `Third node unnumbered\' but next is `Last node no description\' in menu
',
    'file_name' => 'complex_sectioning_case.texi',
    'line_nr' => 76,
    'text' => 'node next pointer for `continuity\' is `Third node unnumbered\' but next is `Last node no description\' in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node prev pointer for `continuity\' is `Last node no description\' but prev is `Third node unnumbered\' in menu
',
    'file_name' => 'complex_sectioning_case.texi',
    'line_nr' => 76,
    'text' => 'node prev pointer for `continuity\' is `Last node no description\' but prev is `Third node unnumbered\' in menu',
    'type' => 'warning'
  }
];


1;
