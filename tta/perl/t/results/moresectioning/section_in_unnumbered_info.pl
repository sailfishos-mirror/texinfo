use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_unnumbered_info'} = '*document_root C65
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 section_in_unnumbered_text.texi:l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C8 section_in_unnumbered_text.texi:l3 {Test section in unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E9|E14|E33|E64]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Test section in unnumbered}
  {empty_line:\\n}
  *@contents C1 section_in_unnumbered_text.texi:l5
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C1
   {Menu:\\n}
  {empty_line:\\n}
  *2 @menu C7 section_in_unnumbered_text.texi:l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l10
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
   *menu_entry C4 section_in_unnumbered_text.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered}
    |normalized:{unnumbered}
     {unnumbered}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 2}
    |normalized:{chapter-2}
     {chapter 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter 3}
    |normalized:{chapter-3}
     {chapter 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l14
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered 4}
    |normalized:{unnumbered-4}
     {unnumbered 4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l15
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
 *3 @node C1 section_in_unnumbered_text.texi:l17 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E8|up->E0]
 |menus:EC[E5]
 |node_directions:D[next->E8|prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *4 @chapter C4 section_in_unnumbered_text.texi:l18 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_childs:EC[E7]
 |section_directions:D[next->E9|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E9|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *5 @menu C3 section_in_unnumbered_text.texi:l20
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l21
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section in chapter}
    |normalized:{section-in-chapter}
     {section in chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l22
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
 *6 @node C1 section_in_unnumbered_text.texi:l24 {section in chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[up->E3]
 |normalized:{section-in-chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section in chapter}
 *7 @section C2 section_in_unnumbered_text.texi:l25 {section in chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section in chapter}
  {empty_line:\\n}
 *8 @node C1 section_in_unnumbered_text.texi:l27 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E3|up->E0]
 |menus:EC[E10]
 |node_directions:D[next->E13|prev->E3|up->E0]
 |normalized:{unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
 *9 @unnumbered C4 section_in_unnumbered_text.texi:l28 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_childs:EC[E12]
 |section_directions:D[next->E14|prev->E4|up->E1]
 |section_level:{1}
 |toplevel_directions:D[next->E14|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  {empty_line:\\n}
  *10 @menu C3 section_in_unnumbered_text.texi:l30
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l31
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section in unnumbered}
    |normalized:{section-in-unnumbered}
     {section in unnumbered}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l32
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
 *11 @node C1 section_in_unnumbered_text.texi:l34 {section in unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[up->E8]
 |node_directions:D[up->E8]
 |normalized:{section-in-unnumbered}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section in unnumbered}
 *12 @section C2 section_in_unnumbered_text.texi:l35 {section in unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[up->E9]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section in unnumbered}
  {empty_line:\\n}
 *13 @node C1 section_in_unnumbered_text.texi:l37 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |associated_title_command:[E14]
 |is_target:{1}
 |menu_directions:D[next->E32|prev->E8|up->E0]
 |menus:EC[E15]
 |node_directions:D[next->E32|prev->E8|up->E0]
 |normalized:{chapter-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
 *14 @chapter C4 section_in_unnumbered_text.texi:l38 {chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E13]
 |associated_node:[E13]
 |section_childs:EC[E17|E28]
 |section_directions:D[next->E33|prev->E9|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E33|prev->E9|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 2}
  {empty_line:\\n}
  *15 @menu C4 section_in_unnumbered_text.texi:l40
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l41
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec 2}
    |normalized:{unnumberedsec-2}
     {unnumberedsec 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l42
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec 2-1}
    |normalized:{unnumberedsec-2_002d1}
     {unnumberedsec 2-1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l43
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
 *16 @node C1 section_in_unnumbered_text.texi:l45 {unnumberedsec 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |associated_title_command:[E17]
 |is_target:{1}
 |menu_directions:D[next->E27|up->E13]
 |menus:EC[E18]
 |node_directions:D[next->E27|up->E13]
 |normalized:{unnumberedsec-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 2}
 *17 @unnumberedsec C4 section_in_unnumbered_text.texi:l46 {unnumbered section 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E16]
 |associated_node:[E16]
 |section_childs:EC[E20|E22|E24|E26]
 |section_directions:D[next->E28|up->E14]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section 2}
  {empty_line:\\n}
  *18 @menu C6 section_in_unnumbered_text.texi:l48
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l49
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub 2}
    |normalized:{unnumbered-sub-2}
     {unnumbered sub 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l50
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub 2}
    |normalized:{numbered-sub-2}
     {numbered sub 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l51
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub2 2}
    |normalized:{unnumbered-sub2-2}
     {unnumbered sub2 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l52
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub2 2}
    |normalized:{numbered-sub2-2}
     {numbered sub2 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l53
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
 *19 @node C1 section_in_unnumbered_text.texi:l55 {unnumbered sub 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E20]
 |associated_title_command:[E20]
 |is_target:{1}
 |menu_directions:D[next->E21|up->E16]
 |node_directions:D[next->E21|up->E16]
 |normalized:{unnumbered-sub-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub 2}
 *20 @unnumberedsubsec C2 section_in_unnumbered_text.texi:l56 {unnumbered subsection 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E19]
 |associated_node:[E19]
 |section_directions:D[next->E22|up->E17]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection 2}
  {empty_line:\\n}
 *21 @node C1 section_in_unnumbered_text.texi:l58 {numbered sub 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E22]
 |associated_title_command:[E22]
 |is_target:{1}
 |menu_directions:D[next->E23|prev->E19|up->E16]
 |node_directions:D[next->E23|prev->E19|up->E16]
 |normalized:{numbered-sub-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub 2}
 *22 @subsection C2 section_in_unnumbered_text.texi:l59 {numbered subsection 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E21]
 |associated_node:[E21]
 |section_directions:D[next->E24|prev->E20|up->E17]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection 2}
  {empty_line:\\n}
 *23 @node C1 section_in_unnumbered_text.texi:l61 {unnumbered sub2 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E24]
 |associated_title_command:[E24]
 |is_target:{1}
 |menu_directions:D[next->E25|prev->E21|up->E16]
 |node_directions:D[next->E25|prev->E21|up->E16]
 |normalized:{unnumbered-sub2-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub2 2}
 *24 @unnumberedsubsec C2 section_in_unnumbered_text.texi:l62 {unnumbered subsection2 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E23]
 |associated_node:[E23]
 |section_directions:D[next->E26|prev->E22|up->E17]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection2 2}
  {empty_line:\\n}
 *25 @node C1 section_in_unnumbered_text.texi:l64 {numbered sub2 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E26]
 |associated_title_command:[E26]
 |is_target:{1}
 |menu_directions:D[prev->E23|up->E16]
 |node_directions:D[prev->E23|up->E16]
 |normalized:{numbered-sub2-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub2 2}
 *26 @subsection C2 section_in_unnumbered_text.texi:l65 {numbered subsection2 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E25]
 |associated_node:[E25]
 |section_directions:D[prev->E24|up->E17]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection2 2}
  {empty_line:\\n}
 *27 @node C1 section_in_unnumbered_text.texi:l67 {unnumberedsec 2-1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E28]
 |associated_title_command:[E28]
 |is_target:{1}
 |menu_directions:D[prev->E16|up->E13]
 |menus:EC[E29]
 |node_directions:D[prev->E16|up->E13]
 |normalized:{unnumberedsec-2_002d1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 2-1}
 *28 @unnumberedsec C4 section_in_unnumbered_text.texi:l68 {unnumberedsec 2-1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E27]
 |associated_node:[E27]
 |section_childs:EC[E31]
 |section_directions:D[prev->E17|up->E14]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 2-1}
  {empty_line:\\n}
  *29 @menu C3 section_in_unnumbered_text.texi:l70
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l71
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub 2-1}
    |normalized:{numbered-sub-2_002d1}
     {numbered sub 2-1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l72
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
 *30 @node C1 section_in_unnumbered_text.texi:l74 {numbered sub 2-1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E31]
 |associated_title_command:[E31]
 |is_target:{1}
 |menu_directions:D[up->E27]
 |node_directions:D[up->E27]
 |normalized:{numbered-sub-2_002d1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub 2-1}
 *31 @subsection C3 section_in_unnumbered_text.texi:l75 {numbered subsection 2-1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E30]
 |associated_node:[E30]
 |section_directions:D[up->E28]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection 2-1}
  {empty_line:\\n}
  {empty_line:\\n}
 *32 @node C1 section_in_unnumbered_text.texi:l78 {chapter 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E33]
 |associated_title_command:[E33]
 |is_target:{1}
 |menu_directions:D[next->E63|prev->E13|up->E0]
 |menus:EC[E34]
 |node_directions:D[next->E63|prev->E13|up->E0]
 |normalized:{chapter-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 3}
 *33 @chapter C4 section_in_unnumbered_text.texi:l79 {chapter 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E32]
 |associated_node:[E32]
 |section_childs:EC[E36|E47|E49|E54|E59]
 |section_directions:D[next->E64|prev->E14|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E64|prev->E14|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter 3}
  {empty_line:\\n}
  *34 @menu C7 section_in_unnumbered_text.texi:l81
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l82
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec 3}
    |normalized:{unnumberedsec-3}
     {unnumberedsec 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l83
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section 3-1}
    |normalized:{section-3_002d1}
     {section 3-1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l84
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec 3-2}
    |normalized:{unnumberedsec-3_002d2}
     {unnumberedsec 3-2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l85
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section 3-3}
    |normalized:{section-3_002d3}
     {section 3-3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l86
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec 3-4}
    |normalized:{unnumberedsec-3_002d4}
     {unnumberedsec 3-4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l87
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
 *35 @node C1 section_in_unnumbered_text.texi:l89 {unnumberedsec 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E36]
 |associated_title_command:[E36]
 |is_target:{1}
 |menu_directions:D[next->E46|up->E32]
 |menus:EC[E37]
 |node_directions:D[next->E46|up->E32]
 |normalized:{unnumberedsec-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 3}
 *36 @unnumberedsec C4 section_in_unnumbered_text.texi:l90 {unnumbered section 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E35]
 |associated_node:[E35]
 |section_childs:EC[E39|E41|E43|E45]
 |section_directions:D[next->E47|up->E33]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section 3}
  {empty_line:\\n}
  *37 @menu C6 section_in_unnumbered_text.texi:l92
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l93
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub 3}
    |normalized:{unnumbered-sub-3}
     {unnumbered sub 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l94
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub 3}
    |normalized:{numbered-sub-3}
     {numbered sub 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l95
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub2 3}
    |normalized:{unnumbered-sub2-3}
     {unnumbered sub2 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l96
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub2 3}
    |normalized:{numbered-sub2-3}
     {numbered sub2 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l97
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
 *38 @node C1 section_in_unnumbered_text.texi:l99 {unnumbered sub 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E39]
 |associated_title_command:[E39]
 |is_target:{1}
 |menu_directions:D[next->E40|up->E35]
 |node_directions:D[next->E40|up->E35]
 |normalized:{unnumbered-sub-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub 3}
 *39 @unnumberedsubsec C2 section_in_unnumbered_text.texi:l100 {unnumbered subsection 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E38]
 |associated_node:[E38]
 |section_directions:D[next->E41|up->E36]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection 3}
  {empty_line:\\n}
 *40 @node C1 section_in_unnumbered_text.texi:l102 {numbered sub 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E41]
 |associated_title_command:[E41]
 |is_target:{1}
 |menu_directions:D[next->E42|prev->E38|up->E35]
 |node_directions:D[next->E42|prev->E38|up->E35]
 |normalized:{numbered-sub-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub 3}
 *41 @subsection C2 section_in_unnumbered_text.texi:l103 {numbered subsection 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E40]
 |associated_node:[E40]
 |section_directions:D[next->E43|prev->E39|up->E36]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection 3}
  {empty_line:\\n}
 *42 @node C1 section_in_unnumbered_text.texi:l105 {unnumbered sub2 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E43]
 |associated_title_command:[E43]
 |is_target:{1}
 |menu_directions:D[next->E44|prev->E40|up->E35]
 |node_directions:D[next->E44|prev->E40|up->E35]
 |normalized:{unnumbered-sub2-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub2 3}
 *43 @unnumberedsubsec C2 section_in_unnumbered_text.texi:l106 {unnumbered subsection2 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E42]
 |associated_node:[E42]
 |section_directions:D[next->E45|prev->E41|up->E36]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection2 3}
  {empty_line:\\n}
 *44 @node C1 section_in_unnumbered_text.texi:l108 {numbered sub2 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E45]
 |associated_title_command:[E45]
 |is_target:{1}
 |menu_directions:D[prev->E42|up->E35]
 |node_directions:D[prev->E42|up->E35]
 |normalized:{numbered-sub2-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub2 3}
 *45 @subsection C2 section_in_unnumbered_text.texi:l109 {numbered subsection2 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E44]
 |associated_node:[E44]
 |section_directions:D[prev->E43|up->E36]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection2 3}
  {empty_line:\\n}
 *46 @node C1 section_in_unnumbered_text.texi:l111 {section 3-1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E47]
 |associated_title_command:[E47]
 |is_target:{1}
 |menu_directions:D[next->E48|prev->E35|up->E32]
 |node_directions:D[next->E48|prev->E35|up->E32]
 |normalized:{section-3_002d1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 3-1}
 *47 @section C2 section_in_unnumbered_text.texi:l112 {section 3-1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E46]
 |associated_node:[E46]
 |section_directions:D[next->E49|prev->E36|up->E33]
 |section_level:{2}
 |section_number:{3.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 3-1}
  {empty_line:\\n}
 *48 @node C1 section_in_unnumbered_text.texi:l114 {unnumberedsec 3-2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E49]
 |associated_title_command:[E49]
 |is_target:{1}
 |menu_directions:D[next->E53|prev->E46|up->E32]
 |menus:EC[E50]
 |node_directions:D[next->E53|prev->E46|up->E32]
 |normalized:{unnumberedsec-3_002d2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 3-2}
 *49 @unnumberedsec C4 section_in_unnumbered_text.texi:l115 {unnumberedsec 3-2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E48]
 |associated_node:[E48]
 |section_childs:EC[E52]
 |section_directions:D[next->E54|prev->E47|up->E33]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 3-2}
  {empty_line:\\n}
  *50 @menu C3 section_in_unnumbered_text.texi:l117
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l118
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub 3-2}
    |normalized:{numbered-sub-3_002d2}
     {numbered sub 3-2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l119
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
 *51 @node C1 section_in_unnumbered_text.texi:l121 {numbered sub 3-2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E52]
 |associated_title_command:[E52]
 |is_target:{1}
 |menu_directions:D[up->E48]
 |node_directions:D[up->E48]
 |normalized:{numbered-sub-3_002d2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub 3-2}
 *52 @subsection C2 section_in_unnumbered_text.texi:l122 {numbered subsection 3-2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E51]
 |associated_node:[E51]
 |section_directions:D[up->E49]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection 3-2}
  {empty_line:\\n}
 *53 @node C1 section_in_unnumbered_text.texi:l124 {section 3-3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E54]
 |associated_title_command:[E54]
 |is_target:{1}
 |menu_directions:D[next->E58|prev->E48|up->E32]
 |menus:EC[E55]
 |node_directions:D[next->E58|prev->E48|up->E32]
 |normalized:{section-3_002d3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 3-3}
 *54 @section C4 section_in_unnumbered_text.texi:l125 {section 3-3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E53]
 |associated_node:[E53]
 |section_childs:EC[E57]
 |section_directions:D[next->E59|prev->E49|up->E33]
 |section_level:{2}
 |section_number:{3.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 3-3}
  {empty_line:\\n}
  *55 @menu C3 section_in_unnumbered_text.texi:l127
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l128
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{subsection 3-3}
    |normalized:{subsection-3_002d3}
     {subsection 3-3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l129
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
 *56 @node C1 section_in_unnumbered_text.texi:l131 {subsection 3-3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E57]
 |associated_title_command:[E57]
 |is_target:{1}
 |menu_directions:D[up->E53]
 |node_directions:D[up->E53]
 |normalized:{subsection-3_002d3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 3-3}
 *57 @subsection C2 section_in_unnumbered_text.texi:l132 {subsection 3-3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E56]
 |associated_node:[E56]
 |section_directions:D[up->E54]
 |section_level:{3}
 |section_number:{3.2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 3-3}
  {empty_line:\\n}
 *58 @node C1 section_in_unnumbered_text.texi:l134 {unnumberedsec 3-4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E59]
 |associated_title_command:[E59]
 |is_target:{1}
 |menu_directions:D[prev->E53|up->E32]
 |menus:EC[E60]
 |node_directions:D[prev->E53|up->E32]
 |normalized:{unnumberedsec-3_002d4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 3-4}
 *59 @unnumberedsec C4 section_in_unnumbered_text.texi:l135 {unnumberedsec 3-4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E58]
 |associated_node:[E58]
 |section_childs:EC[E62]
 |section_directions:D[prev->E54|up->E33]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 3-4}
  {empty_line:\\n}
  *60 @menu C3 section_in_unnumbered_text.texi:l137
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l138
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub 3-4}
    |normalized:{numbered-sub-3_002d4}
     {numbered sub 3-4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l139
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
 *61 @node C1 section_in_unnumbered_text.texi:l141 {numbered sub 3-4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E62]
 |associated_title_command:[E62]
 |is_target:{1}
 |menu_directions:D[up->E58]
 |node_directions:D[up->E58]
 |normalized:{numbered-sub-3_002d4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub 3-4}
 *62 @subsection C2 section_in_unnumbered_text.texi:l142 {numbered subsection 3-4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E61]
 |associated_node:[E61]
 |section_directions:D[up->E59]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection 3-4}
  {empty_line:\\n}
 *63 @node C1 section_in_unnumbered_text.texi:l144 {unnumbered 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E64]
 |associated_title_command:[E64]
 |is_target:{1}
 |menu_directions:D[prev->E32|up->E0]
 |menus:EC[E65]
 |node_directions:D[prev->E32|up->E0]
 |normalized:{unnumbered-4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered 4}
 *64 @unnumbered C4 section_in_unnumbered_text.texi:l145 {unnumbered  4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E63]
 |associated_node:[E63]
 |section_childs:EC[E67]
 |section_directions:D[prev->E33|up->E1]
 |section_level:{1}
 |toplevel_directions:D[prev->E33|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered  4}
  {empty_line:\\n}
  *65 @menu C3 section_in_unnumbered_text.texi:l147
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l148
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumberedsec 4}
    |normalized:{unnumberedsec-4}
     {unnumberedsec 4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l149
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
 *66 @node C1 section_in_unnumbered_text.texi:l151 {unnumberedsec 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E67]
 |associated_title_command:[E67]
 |is_target:{1}
 |menu_directions:D[up->E63]
 |menus:EC[E68]
 |node_directions:D[up->E63]
 |normalized:{unnumberedsec-4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumberedsec 4}
 *67 @unnumberedsec C4 section_in_unnumbered_text.texi:l152 {unnumbered section 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E66]
 |associated_node:[E66]
 |section_childs:EC[E70|E72|E74|E76]
 |section_directions:D[up->E64]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered section 4}
  {empty_line:\\n}
  *68 @menu C6 section_in_unnumbered_text.texi:l154
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l155
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub 4}
    |normalized:{unnumbered-sub-4}
     {unnumbered sub 4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l156
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub 4}
    |normalized:{numbered-sub-4}
     {numbered sub 4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l157
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{unnumbered sub2 4}
    |normalized:{unnumbered-sub2-4}
     {unnumbered sub2 4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 section_in_unnumbered_text.texi:l158
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{numbered sub2 4}
    |normalized:{numbered-sub2-4}
     {numbered sub2 4}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 section_in_unnumbered_text.texi:l159
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
 *69 @node C1 section_in_unnumbered_text.texi:l161 {unnumbered sub 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E70]
 |associated_title_command:[E70]
 |is_target:{1}
 |menu_directions:D[next->E71|up->E66]
 |node_directions:D[next->E71|up->E66]
 |normalized:{unnumbered-sub-4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub 4}
 *70 @unnumberedsubsec C2 section_in_unnumbered_text.texi:l162 {unnumbered subsection 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E69]
 |associated_node:[E69]
 |section_directions:D[next->E72|up->E67]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection 4}
  {empty_line:\\n}
 *71 @node C1 section_in_unnumbered_text.texi:l164 {numbered sub 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E72]
 |associated_title_command:[E72]
 |is_target:{1}
 |menu_directions:D[next->E73|prev->E69|up->E66]
 |node_directions:D[next->E73|prev->E69|up->E66]
 |normalized:{numbered-sub-4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub 4}
 *72 @subsection C2 section_in_unnumbered_text.texi:l165 {numbered subsection 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E71]
 |associated_node:[E71]
 |section_directions:D[next->E74|prev->E70|up->E67]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection 4}
  {empty_line:\\n}
 *73 @node C1 section_in_unnumbered_text.texi:l167 {unnumbered sub2 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E74]
 |associated_title_command:[E74]
 |is_target:{1}
 |menu_directions:D[next->E75|prev->E71|up->E66]
 |node_directions:D[next->E75|prev->E71|up->E66]
 |normalized:{unnumbered-sub2-4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered sub2 4}
 *74 @unnumberedsubsec C2 section_in_unnumbered_text.texi:l168 {unnumbered subsection2 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E73]
 |associated_node:[E73]
 |section_directions:D[next->E76|prev->E72|up->E67]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered subsection2 4}
  {empty_line:\\n}
 *75 @node C1 section_in_unnumbered_text.texi:l170 {numbered sub2 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E76]
 |associated_title_command:[E76]
 |is_target:{1}
 |menu_directions:D[prev->E73|up->E66]
 |node_directions:D[prev->E73|up->E66]
 |normalized:{numbered-sub2-4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered sub2 4}
 *76 @subsection C1 section_in_unnumbered_text.texi:l171 {numbered subsection2 4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E75]
 |associated_node:[E75]
 |section_directions:D[prev->E74|up->E67]
 |section_level:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {numbered subsection2 4}
';


$result_texis{'section_in_unnumbered_info'} = '
@node Top
@top Test section in unnumbered

@contents

Menu:

@menu
* chapter::
* unnumbered::
* chapter 2::
* chapter 3::
* unnumbered 4::
@end menu

@node chapter
@chapter chapter

@menu
* section in chapter::
@end menu

@node section in chapter
@section section in chapter

@node unnumbered
@unnumbered unnumbered

@menu
* section in unnumbered::
@end menu

@node section in unnumbered
@section section in unnumbered

@node chapter 2
@chapter chapter 2

@menu
* unnumberedsec 2::
* unnumberedsec 2-1::
@end menu

@node unnumberedsec 2
@unnumberedsec unnumbered section 2

@menu
* unnumbered sub 2::
* numbered sub 2::
* unnumbered sub2 2::
* numbered sub2 2::
@end menu

@node unnumbered sub 2
@unnumberedsubsec unnumbered subsection 2

@node numbered sub 2
@subsection numbered subsection 2

@node unnumbered sub2 2
@unnumberedsubsec unnumbered subsection2 2

@node numbered sub2 2
@subsection numbered subsection2 2

@node unnumberedsec 2-1
@unnumberedsec unnumberedsec 2-1

@menu
* numbered sub 2-1::
@end menu

@node numbered sub 2-1
@subsection numbered subsection 2-1


@node chapter 3
@chapter chapter 3

@menu
* unnumberedsec 3::
* section 3-1::
* unnumberedsec 3-2::
* section 3-3::
* unnumberedsec 3-4::
@end menu

@node unnumberedsec 3
@unnumberedsec unnumbered section 3

@menu
* unnumbered sub 3::
* numbered sub 3::
* unnumbered sub2 3::
* numbered sub2 3::
@end menu

@node unnumbered sub 3
@unnumberedsubsec unnumbered subsection 3

@node numbered sub 3
@subsection numbered subsection 3

@node unnumbered sub2 3
@unnumberedsubsec unnumbered subsection2 3

@node numbered sub2 3
@subsection numbered subsection2 3

@node section 3-1
@section section 3-1

@node unnumberedsec 3-2
@unnumberedsec unnumberedsec 3-2

@menu
* numbered sub 3-2::
@end menu

@node numbered sub 3-2
@subsection numbered subsection 3-2

@node section 3-3
@section section 3-3

@menu
* subsection 3-3::
@end menu

@node subsection 3-3
@subsection subsection 3-3

@node unnumberedsec 3-4
@unnumberedsec unnumberedsec 3-4

@menu
* numbered sub 3-4::
@end menu

@node numbered sub 3-4
@subsection numbered subsection 3-4

@node unnumbered 4
@unnumbered unnumbered  4

@menu
* unnumberedsec 4::
@end menu

@node unnumberedsec 4
@unnumberedsec unnumbered section 4

@menu
* unnumbered sub 4::
* numbered sub 4::
* unnumbered sub2 4::
* numbered sub2 4::
@end menu

@node unnumbered sub 4
@unnumberedsubsec unnumbered subsection 4

@node numbered sub 4
@subsection numbered subsection 4

@node unnumbered sub2 4
@unnumberedsubsec unnumbered subsection2 4

@node numbered sub2 4
@subsection numbered subsection2 4
';


$result_texts{'section_in_unnumbered_info'} = 'Test section in unnumbered
**************************


Menu:

* chapter::
* unnumbered::
* chapter 2::
* chapter 3::
* unnumbered 4::

1 chapter
*********

* section in chapter::

1.1 section in chapter
======================

unnumbered
**********

* section in unnumbered::

section in unnumbered
=====================

2 chapter 2
***********

* unnumberedsec 2::
* unnumberedsec 2-1::

unnumbered section 2
====================

* unnumbered sub 2::
* numbered sub 2::
* unnumbered sub2 2::
* numbered sub2 2::

unnumbered subsection 2
-----------------------

numbered subsection 2
---------------------

unnumbered subsection2 2
------------------------

numbered subsection2 2
----------------------

unnumberedsec 2-1
=================

* numbered sub 2-1::

numbered subsection 2-1
-----------------------


3 chapter 3
***********

* unnumberedsec 3::
* section 3-1::
* unnumberedsec 3-2::
* section 3-3::
* unnumberedsec 3-4::

unnumbered section 3
====================

* unnumbered sub 3::
* numbered sub 3::
* unnumbered sub2 3::
* numbered sub2 3::

unnumbered subsection 3
-----------------------

numbered subsection 3
---------------------

unnumbered subsection2 3
------------------------

numbered subsection2 3
----------------------

3.1 section 3-1
===============

unnumberedsec 3-2
=================

* numbered sub 3-2::

numbered subsection 3-2
-----------------------

3.2 section 3-3
===============

* subsection 3-3::

3.2.1 subsection 3-3
--------------------

unnumberedsec 3-4
=================

* numbered sub 3-4::

numbered subsection 3-4
-----------------------

unnumbered  4
*************

* unnumberedsec 4::

unnumbered section 4
====================

* unnumbered sub 4::
* numbered sub 4::
* unnumbered sub2 4::
* numbered sub2 4::

unnumbered subsection 4
-----------------------

numbered subsection 4
---------------------

unnumbered subsection2 4
------------------------

numbered subsection2 4
----------------------
';

$result_errors{'section_in_unnumbered_info'} = [];



$result_converted{'info'}->{'section_in_unnumbered_info'} = 'This is , produced from section_in_unnumbered_text.texi.


File: ,  Node: Top,  Next: chapter,  Up: (dir)

Test section in unnumbered
**************************

Menu:

* Menu:

* chapter::
* unnumbered::
* chapter 2::
* chapter 3::
* unnumbered 4::


File: ,  Node: chapter,  Next: unnumbered,  Prev: Top,  Up: Top

1 chapter
*********

* Menu:

* section in chapter::


File: ,  Node: section in chapter,  Up: chapter

1.1 section in chapter
======================


File: ,  Node: unnumbered,  Next: chapter 2,  Prev: chapter,  Up: Top

unnumbered
**********

* Menu:

* section in unnumbered::


File: ,  Node: section in unnumbered,  Up: unnumbered

section in unnumbered
=====================


File: ,  Node: chapter 2,  Next: chapter 3,  Prev: unnumbered,  Up: Top

2 chapter 2
***********

* Menu:

* unnumberedsec 2::
* unnumberedsec 2-1::


File: ,  Node: unnumberedsec 2,  Next: unnumberedsec 2-1,  Up: chapter 2

unnumbered section 2
====================

* Menu:

* unnumbered sub 2::
* numbered sub 2::
* unnumbered sub2 2::
* numbered sub2 2::


File: ,  Node: unnumbered sub 2,  Next: numbered sub 2,  Up: unnumberedsec 2

unnumbered subsection 2
-----------------------


File: ,  Node: numbered sub 2,  Next: unnumbered sub2 2,  Prev: unnumbered sub 2,  Up: unnumberedsec 2

numbered subsection 2
---------------------


File: ,  Node: unnumbered sub2 2,  Next: numbered sub2 2,  Prev: numbered sub 2,  Up: unnumberedsec 2

unnumbered subsection2 2
------------------------


File: ,  Node: numbered sub2 2,  Prev: unnumbered sub2 2,  Up: unnumberedsec 2

numbered subsection2 2
----------------------


File: ,  Node: unnumberedsec 2-1,  Prev: unnumberedsec 2,  Up: chapter 2

unnumberedsec 2-1
=================

* Menu:

* numbered sub 2-1::


File: ,  Node: numbered sub 2-1,  Up: unnumberedsec 2-1

numbered subsection 2-1
-----------------------


File: ,  Node: chapter 3,  Next: unnumbered 4,  Prev: chapter 2,  Up: Top

3 chapter 3
***********

* Menu:

* unnumberedsec 3::
* section 3-1::
* unnumberedsec 3-2::
* section 3-3::
* unnumberedsec 3-4::


File: ,  Node: unnumberedsec 3,  Next: section 3-1,  Up: chapter 3

unnumbered section 3
====================

* Menu:

* unnumbered sub 3::
* numbered sub 3::
* unnumbered sub2 3::
* numbered sub2 3::


File: ,  Node: unnumbered sub 3,  Next: numbered sub 3,  Up: unnumberedsec 3

unnumbered subsection 3
-----------------------


File: ,  Node: numbered sub 3,  Next: unnumbered sub2 3,  Prev: unnumbered sub 3,  Up: unnumberedsec 3

numbered subsection 3
---------------------


File: ,  Node: unnumbered sub2 3,  Next: numbered sub2 3,  Prev: numbered sub 3,  Up: unnumberedsec 3

unnumbered subsection2 3
------------------------


File: ,  Node: numbered sub2 3,  Prev: unnumbered sub2 3,  Up: unnumberedsec 3

numbered subsection2 3
----------------------


File: ,  Node: section 3-1,  Next: unnumberedsec 3-2,  Prev: unnumberedsec 3,  Up: chapter 3

3.1 section 3-1
===============


File: ,  Node: unnumberedsec 3-2,  Next: section 3-3,  Prev: section 3-1,  Up: chapter 3

unnumberedsec 3-2
=================

* Menu:

* numbered sub 3-2::


File: ,  Node: numbered sub 3-2,  Up: unnumberedsec 3-2

numbered subsection 3-2
-----------------------


File: ,  Node: section 3-3,  Next: unnumberedsec 3-4,  Prev: unnumberedsec 3-2,  Up: chapter 3

3.2 section 3-3
===============

* Menu:

* subsection 3-3::


File: ,  Node: subsection 3-3,  Up: section 3-3

3.2.1 subsection 3-3
--------------------


File: ,  Node: unnumberedsec 3-4,  Prev: section 3-3,  Up: chapter 3

unnumberedsec 3-4
=================

* Menu:

* numbered sub 3-4::


File: ,  Node: numbered sub 3-4,  Up: unnumberedsec 3-4

numbered subsection 3-4
-----------------------


File: ,  Node: unnumbered 4,  Prev: chapter 3,  Up: Top

unnumbered 4
************

* Menu:

* unnumberedsec 4::


File: ,  Node: unnumberedsec 4,  Up: unnumbered 4

unnumbered section 4
====================

* Menu:

* unnumbered sub 4::
* numbered sub 4::
* unnumbered sub2 4::
* numbered sub2 4::


File: ,  Node: unnumbered sub 4,  Next: numbered sub 4,  Up: unnumberedsec 4

unnumbered subsection 4
-----------------------


File: ,  Node: numbered sub 4,  Next: unnumbered sub2 4,  Prev: unnumbered sub 4,  Up: unnumberedsec 4

numbered subsection 4
---------------------


File: ,  Node: unnumbered sub2 4,  Next: numbered sub2 4,  Prev: numbered sub 4,  Up: unnumberedsec 4

unnumbered subsection2 4
------------------------


File: ,  Node: numbered sub2 4,  Prev: unnumbered sub2 4,  Up: unnumberedsec 4

numbered subsection2 4
----------------------


Tag Table:
Node: Top58
Node: chapter252
Node: section in chapter373
Node: unnumbered471
Node: section in unnumbered603
Node: chapter 2705
Node: unnumberedsec 2857
Node: unnumbered sub 21068
Node: numbered sub 21197
Node: unnumbered sub2 21348
Node: numbered sub2 21504
Node: unnumberedsec 2-11633
Node: numbered sub 2-11777
Node: chapter 31885
Node: unnumberedsec 32093
Node: unnumbered sub 32298
Node: numbered sub 32427
Node: unnumbered sub2 32578
Node: numbered sub2 32734
Node: section 3-12863
Node: unnumberedsec 3-22992
Node: numbered sub 3-23152
Node: section 3-33260
Node: subsection 3-33420
Node: unnumberedsec 3-43514
Node: numbered sub 3-43654
Node: unnumbered 43762
Node: unnumberedsec 43878
Node: unnumbered sub 44066
Node: numbered sub 44195
Node: unnumbered sub2 44346
Node: numbered sub2 44502

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'section_in_unnumbered_info'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test section in unnumbered</title>

<meta name="description" content="Test section in unnumbered">
<meta name="keywords" content="Test section in unnumbered">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
ul.toc-numbered-mark {list-style: none}
-->
</style>


</head>

<body lang="">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="Test-section-in-unnumbered"><span>Test section in unnumbered<a class="copiable-link" href="#Test-section-in-unnumbered"> &para;</a></span></h1>


<p>Menu:
</p>

<div class="region-contents" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="toc-numbered-mark">
  <li><a id="toc-chapter" href="#chapter">1 chapter</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-section-in-chapter" href="#section-in-chapter">1.1 section in chapter</a></li>
  </ul></li>
  <li><a id="toc-unnumbered" href="#unnumbered">unnumbered</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-section-in-unnumbered" href="#section-in-unnumbered">section in unnumbered</a></li>
  </ul></li>
  <li><a id="toc-chapter-2" href="#chapter-2">2 chapter 2</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-unnumbered-section-2" href="#unnumberedsec-2">unnumbered section 2</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-unnumbered-subsection-2" href="#unnumbered-sub-2">unnumbered subsection 2</a></li>
      <li><a id="toc-numbered-subsection-2" href="#numbered-sub-2">numbered subsection 2</a></li>
      <li><a id="toc-unnumbered-subsection2-2" href="#unnumbered-sub2-2">unnumbered subsection2 2</a></li>
      <li><a id="toc-numbered-subsection2-2" href="#numbered-sub2-2">numbered subsection2 2</a></li>
    </ul></li>
    <li><a id="toc-unnumberedsec-2_002d1" href="#unnumberedsec-2_002d1">unnumberedsec 2-1</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-numbered-subsection-2_002d1" href="#numbered-sub-2_002d1">numbered subsection 2-1</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-chapter-3" href="#chapter-3">3 chapter 3</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-unnumbered-section-3" href="#unnumberedsec-3">unnumbered section 3</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-unnumbered-subsection-3" href="#unnumbered-sub-3">unnumbered subsection 3</a></li>
      <li><a id="toc-numbered-subsection-3" href="#numbered-sub-3">numbered subsection 3</a></li>
      <li><a id="toc-unnumbered-subsection2-3" href="#unnumbered-sub2-3">unnumbered subsection2 3</a></li>
      <li><a id="toc-numbered-subsection2-3" href="#numbered-sub2-3">numbered subsection2 3</a></li>
    </ul></li>
    <li><a id="toc-section-3_002d1" href="#section-3_002d1">3.1 section 3-1</a></li>
    <li><a id="toc-unnumberedsec-3_002d2" href="#unnumberedsec-3_002d2">unnumberedsec 3-2</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-numbered-subsection-3_002d2" href="#numbered-sub-3_002d2">numbered subsection 3-2</a></li>
    </ul></li>
    <li><a id="toc-section-3_002d3" href="#section-3_002d3">3.2 section 3-3</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-subsection-3_002d3" href="#subsection-3_002d3">3.2.1 subsection 3-3</a></li>
    </ul></li>
    <li><a id="toc-unnumberedsec-3_002d4" href="#unnumberedsec-3_002d4">unnumberedsec 3-4</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-numbered-subsection-3_002d4" href="#numbered-sub-3_002d4">numbered subsection 3-4</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-unnumbered-4" href="#unnumbered-4">unnumbered  4</a>
  <ul class="toc-numbered-mark">
    <li><a id="toc-unnumbered-section-4" href="#unnumberedsec-4">unnumbered section 4</a>
    <ul class="toc-numbered-mark">
      <li><a id="toc-unnumbered-subsection-4" href="#unnumbered-sub-4">unnumbered subsection 4</a></li>
      <li><a id="toc-numbered-subsection-4" href="#numbered-sub-4">numbered subsection 4</a></li>
      <li><a id="toc-unnumbered-subsection2-4" href="#unnumbered-sub2-4">unnumbered subsection2 4</a></li>
      <li><a id="toc-numbered-subsection2-4" href="#numbered-sub2-4">numbered subsection2 4</a></li>
    </ul></li>
  </ul></li>
</ul>
</div>
</div>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Next: <a href="#unnumbered" accesskey="n" rel="next">unnumbered</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Test section in unnumbered</a>, Up: <a href="#Top" accesskey="u" rel="up">Test section in unnumbered</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="chapter-1"><span>1 chapter<a class="copiable-link" href="#chapter-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#section-in-chapter" accesskey="1">section in chapter</a></li>
</ul>
<hr>
<div class="section-level-extent" id="section-in-chapter">
<div class="nav-panel">
<p>
Up: <a href="#chapter" accesskey="u" rel="up">chapter</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="section" id="section-in-chapter-1"><span>1.1 section in chapter<a class="copiable-link" href="#section-in-chapter-1"> &para;</a></span></h3>

<hr>
</div>
</div>
<div class="unnumbered-level-extent" id="unnumbered">
<div class="nav-panel">
<p>
Next: <a href="#chapter-2" accesskey="n" rel="next">chapter 2</a>, Previous: <a href="#chapter" accesskey="p" rel="prev">chapter</a>, Up: <a href="#Top" accesskey="u" rel="up">Test section in unnumbered</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="unnumbered" id="unnumbered-1"><span>unnumbered<a class="copiable-link" href="#unnumbered-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#section-in-unnumbered" accesskey="1">section in unnumbered</a></li>
</ul>
<hr>
<div class="section-level-extent" id="section-in-unnumbered">
<div class="nav-panel">
<p>
Up: <a href="#unnumbered" accesskey="u" rel="up">unnumbered</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="section" id="section-in-unnumbered-1"><span>section in unnumbered<a class="copiable-link" href="#section-in-unnumbered-1"> &para;</a></span></h3>

<hr>
</div>
</div>
<div class="chapter-level-extent" id="chapter-2">
<div class="nav-panel">
<p>
Next: <a href="#chapter-3" accesskey="n" rel="next">chapter 3</a>, Previous: <a href="#unnumbered" accesskey="p" rel="prev">unnumbered</a>, Up: <a href="#Top" accesskey="u" rel="up">Test section in unnumbered</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="chapter-2-1"><span>2 chapter 2<a class="copiable-link" href="#chapter-2-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#unnumberedsec-2" accesskey="1">unnumbered section 2</a></li>
<li><a href="#unnumberedsec-2_002d1" accesskey="2">unnumberedsec 2-1</a></li>
</ul>
<hr>
<div class="unnumberedsec-level-extent" id="unnumberedsec-2">
<div class="nav-panel">
<p>
Next: <a href="#unnumberedsec-2_002d1" accesskey="n" rel="next">unnumberedsec 2-1</a>, Up: <a href="#chapter-2" accesskey="u" rel="up">chapter 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="unnumberedsec" id="unnumbered-section-2"><span>unnumbered section 2<a class="copiable-link" href="#unnumbered-section-2"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#unnumbered-sub-2" accesskey="1">unnumbered subsection 2</a></li>
<li><a href="#numbered-sub-2" accesskey="2">numbered subsection 2</a></li>
<li><a href="#unnumbered-sub2-2" accesskey="3">unnumbered subsection2 2</a></li>
<li><a href="#numbered-sub2-2" accesskey="4">numbered subsection2 2</a></li>
</ul>
<hr>
<div class="unnumberedsubsec-level-extent" id="unnumbered-sub-2">
<div class="nav-panel">
<p>
Next: <a href="#numbered-sub-2" accesskey="n" rel="next">numbered subsection 2</a>, Up: <a href="#unnumberedsec-2" accesskey="u" rel="up">unnumbered section 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="unnumberedsubsec" id="unnumbered-subsection-2"><span>unnumbered subsection 2<a class="copiable-link" href="#unnumbered-subsection-2"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="numbered-sub-2">
<div class="nav-panel">
<p>
Next: <a href="#unnumbered-sub2-2" accesskey="n" rel="next">unnumbered subsection2 2</a>, Previous: <a href="#unnumbered-sub-2" accesskey="p" rel="prev">unnumbered subsection 2</a>, Up: <a href="#unnumberedsec-2" accesskey="u" rel="up">unnumbered section 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection-2"><span>numbered subsection 2<a class="copiable-link" href="#numbered-subsection-2"> &para;</a></span></h4>

<hr>
</div>
<div class="unnumberedsubsec-level-extent" id="unnumbered-sub2-2">
<div class="nav-panel">
<p>
Next: <a href="#numbered-sub2-2" accesskey="n" rel="next">numbered subsection2 2</a>, Previous: <a href="#numbered-sub-2" accesskey="p" rel="prev">numbered subsection 2</a>, Up: <a href="#unnumberedsec-2" accesskey="u" rel="up">unnumbered section 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="unnumberedsubsec" id="unnumbered-subsection2-2"><span>unnumbered subsection2 2<a class="copiable-link" href="#unnumbered-subsection2-2"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="numbered-sub2-2">
<div class="nav-panel">
<p>
Previous: <a href="#unnumbered-sub2-2" accesskey="p" rel="prev">unnumbered subsection2 2</a>, Up: <a href="#unnumberedsec-2" accesskey="u" rel="up">unnumbered section 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection2-2"><span>numbered subsection2 2<a class="copiable-link" href="#numbered-subsection2-2"> &para;</a></span></h4>

<hr>
</div>
</div>
<div class="unnumberedsec-level-extent" id="unnumberedsec-2_002d1">
<div class="nav-panel">
<p>
Previous: <a href="#unnumberedsec-2" accesskey="p" rel="prev">unnumbered section 2</a>, Up: <a href="#chapter-2" accesskey="u" rel="up">chapter 2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="unnumberedsec" id="unnumberedsec-2_002d1-1"><span>unnumberedsec 2-1<a class="copiable-link" href="#unnumberedsec-2_002d1-1"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#numbered-sub-2_002d1" accesskey="1">numbered subsection 2-1</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="numbered-sub-2_002d1">
<div class="nav-panel">
<p>
Up: <a href="#unnumberedsec-2_002d1" accesskey="u" rel="up">unnumberedsec 2-1</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection-2_002d1"><span>numbered subsection 2-1<a class="copiable-link" href="#numbered-subsection-2_002d1"> &para;</a></span></h4>


<hr>
</div>
</div>
</div>
<div class="chapter-level-extent" id="chapter-3">
<div class="nav-panel">
<p>
Next: <a href="#unnumbered-4" accesskey="n" rel="next">unnumbered  4</a>, Previous: <a href="#chapter-2" accesskey="p" rel="prev">chapter 2</a>, Up: <a href="#Top" accesskey="u" rel="up">Test section in unnumbered</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="chapter" id="chapter-3-1"><span>3 chapter 3<a class="copiable-link" href="#chapter-3-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#unnumberedsec-3" accesskey="1">unnumbered section 3</a></li>
<li><a href="#section-3_002d1" accesskey="2">section 3-1</a></li>
<li><a href="#unnumberedsec-3_002d2" accesskey="3">unnumberedsec 3-2</a></li>
<li><a href="#section-3_002d3" accesskey="4">section 3-3</a></li>
<li><a href="#unnumberedsec-3_002d4" accesskey="5">unnumberedsec 3-4</a></li>
</ul>
<hr>
<div class="unnumberedsec-level-extent" id="unnumberedsec-3">
<div class="nav-panel">
<p>
Next: <a href="#section-3_002d1" accesskey="n" rel="next">section 3-1</a>, Up: <a href="#chapter-3" accesskey="u" rel="up">chapter 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="unnumberedsec" id="unnumbered-section-3"><span>unnumbered section 3<a class="copiable-link" href="#unnumbered-section-3"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#unnumbered-sub-3" accesskey="1">unnumbered subsection 3</a></li>
<li><a href="#numbered-sub-3" accesskey="2">numbered subsection 3</a></li>
<li><a href="#unnumbered-sub2-3" accesskey="3">unnumbered subsection2 3</a></li>
<li><a href="#numbered-sub2-3" accesskey="4">numbered subsection2 3</a></li>
</ul>
<hr>
<div class="unnumberedsubsec-level-extent" id="unnumbered-sub-3">
<div class="nav-panel">
<p>
Next: <a href="#numbered-sub-3" accesskey="n" rel="next">numbered subsection 3</a>, Up: <a href="#unnumberedsec-3" accesskey="u" rel="up">unnumbered section 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="unnumberedsubsec" id="unnumbered-subsection-3"><span>unnumbered subsection 3<a class="copiable-link" href="#unnumbered-subsection-3"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="numbered-sub-3">
<div class="nav-panel">
<p>
Next: <a href="#unnumbered-sub2-3" accesskey="n" rel="next">unnumbered subsection2 3</a>, Previous: <a href="#unnumbered-sub-3" accesskey="p" rel="prev">unnumbered subsection 3</a>, Up: <a href="#unnumberedsec-3" accesskey="u" rel="up">unnumbered section 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection-3"><span>numbered subsection 3<a class="copiable-link" href="#numbered-subsection-3"> &para;</a></span></h4>

<hr>
</div>
<div class="unnumberedsubsec-level-extent" id="unnumbered-sub2-3">
<div class="nav-panel">
<p>
Next: <a href="#numbered-sub2-3" accesskey="n" rel="next">numbered subsection2 3</a>, Previous: <a href="#numbered-sub-3" accesskey="p" rel="prev">numbered subsection 3</a>, Up: <a href="#unnumberedsec-3" accesskey="u" rel="up">unnumbered section 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="unnumberedsubsec" id="unnumbered-subsection2-3"><span>unnumbered subsection2 3<a class="copiable-link" href="#unnumbered-subsection2-3"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="numbered-sub2-3">
<div class="nav-panel">
<p>
Previous: <a href="#unnumbered-sub2-3" accesskey="p" rel="prev">unnumbered subsection2 3</a>, Up: <a href="#unnumberedsec-3" accesskey="u" rel="up">unnumbered section 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection2-3"><span>numbered subsection2 3<a class="copiable-link" href="#numbered-subsection2-3"> &para;</a></span></h4>

<hr>
</div>
</div>
<div class="section-level-extent" id="section-3_002d1">
<div class="nav-panel">
<p>
Next: <a href="#unnumberedsec-3_002d2" accesskey="n" rel="next">unnumberedsec 3-2</a>, Previous: <a href="#unnumberedsec-3" accesskey="p" rel="prev">unnumbered section 3</a>, Up: <a href="#chapter-3" accesskey="u" rel="up">chapter 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="section" id="section-3_002d1-1"><span>3.1 section 3-1<a class="copiable-link" href="#section-3_002d1-1"> &para;</a></span></h3>

<hr>
</div>
<div class="unnumberedsec-level-extent" id="unnumberedsec-3_002d2">
<div class="nav-panel">
<p>
Next: <a href="#section-3_002d3" accesskey="n" rel="next">section 3-3</a>, Previous: <a href="#section-3_002d1" accesskey="p" rel="prev">section 3-1</a>, Up: <a href="#chapter-3" accesskey="u" rel="up">chapter 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="unnumberedsec" id="unnumberedsec-3_002d2-1"><span>unnumberedsec 3-2<a class="copiable-link" href="#unnumberedsec-3_002d2-1"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#numbered-sub-3_002d2" accesskey="1">numbered subsection 3-2</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="numbered-sub-3_002d2">
<div class="nav-panel">
<p>
Up: <a href="#unnumberedsec-3_002d2" accesskey="u" rel="up">unnumberedsec 3-2</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection-3_002d2"><span>numbered subsection 3-2<a class="copiable-link" href="#numbered-subsection-3_002d2"> &para;</a></span></h4>

<hr>
</div>
</div>
<div class="section-level-extent" id="section-3_002d3">
<div class="nav-panel">
<p>
Next: <a href="#unnumberedsec-3_002d4" accesskey="n" rel="next">unnumberedsec 3-4</a>, Previous: <a href="#unnumberedsec-3_002d2" accesskey="p" rel="prev">unnumberedsec 3-2</a>, Up: <a href="#chapter-3" accesskey="u" rel="up">chapter 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="section" id="section-3_002d3-1"><span>3.2 section 3-3<a class="copiable-link" href="#section-3_002d3-1"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#subsection-3_002d3" accesskey="1">subsection 3-3</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="subsection-3_002d3">
<div class="nav-panel">
<p>
Up: <a href="#section-3_002d3" accesskey="u" rel="up">section 3-3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="subsection-3_002d3-1"><span>3.2.1 subsection 3-3<a class="copiable-link" href="#subsection-3_002d3-1"> &para;</a></span></h4>

<hr>
</div>
</div>
<div class="unnumberedsec-level-extent" id="unnumberedsec-3_002d4">
<div class="nav-panel">
<p>
Previous: <a href="#section-3_002d3" accesskey="p" rel="prev">section 3-3</a>, Up: <a href="#chapter-3" accesskey="u" rel="up">chapter 3</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="unnumberedsec" id="unnumberedsec-3_002d4-1"><span>unnumberedsec 3-4<a class="copiable-link" href="#unnumberedsec-3_002d4-1"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#numbered-sub-3_002d4" accesskey="1">numbered subsection 3-4</a></li>
</ul>
<hr>
<div class="subsection-level-extent" id="numbered-sub-3_002d4">
<div class="nav-panel">
<p>
Up: <a href="#unnumberedsec-3_002d4" accesskey="u" rel="up">unnumberedsec 3-4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection-3_002d4"><span>numbered subsection 3-4<a class="copiable-link" href="#numbered-subsection-3_002d4"> &para;</a></span></h4>

<hr>
</div>
</div>
</div>
<div class="unnumbered-level-extent" id="unnumbered-4">
<div class="nav-panel">
<p>
Previous: <a href="#chapter-3" accesskey="p" rel="prev">chapter 3</a>, Up: <a href="#Top" accesskey="u" rel="up">Test section in unnumbered</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h2 class="unnumbered" id="unnumbered-4-1"><span>unnumbered  4<a class="copiable-link" href="#unnumbered-4-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#unnumberedsec-4" accesskey="1">unnumbered section 4</a></li>
</ul>
<hr>
<div class="unnumberedsec-level-extent" id="unnumberedsec-4">
<div class="nav-panel">
<p>
Up: <a href="#unnumbered-4" accesskey="u" rel="up">unnumbered  4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h3 class="unnumberedsec" id="unnumbered-section-4"><span>unnumbered section 4<a class="copiable-link" href="#unnumbered-section-4"> &para;</a></span></h3>


<ul class="mini-toc">
<li><a href="#unnumbered-sub-4" accesskey="1">unnumbered subsection 4</a></li>
<li><a href="#numbered-sub-4" accesskey="2">numbered subsection 4</a></li>
<li><a href="#unnumbered-sub2-4" accesskey="3">unnumbered subsection2 4</a></li>
<li><a href="#numbered-sub2-4" accesskey="4">numbered subsection2 4</a></li>
</ul>
<hr>
<div class="unnumberedsubsec-level-extent" id="unnumbered-sub-4">
<div class="nav-panel">
<p>
Next: <a href="#numbered-sub-4" accesskey="n" rel="next">numbered subsection 4</a>, Up: <a href="#unnumberedsec-4" accesskey="u" rel="up">unnumbered section 4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="unnumberedsubsec" id="unnumbered-subsection-4"><span>unnumbered subsection 4<a class="copiable-link" href="#unnumbered-subsection-4"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="numbered-sub-4">
<div class="nav-panel">
<p>
Next: <a href="#unnumbered-sub2-4" accesskey="n" rel="next">unnumbered subsection2 4</a>, Previous: <a href="#unnumbered-sub-4" accesskey="p" rel="prev">unnumbered subsection 4</a>, Up: <a href="#unnumberedsec-4" accesskey="u" rel="up">unnumbered section 4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection-4"><span>numbered subsection 4<a class="copiable-link" href="#numbered-subsection-4"> &para;</a></span></h4>

<hr>
</div>
<div class="unnumberedsubsec-level-extent" id="unnumbered-sub2-4">
<div class="nav-panel">
<p>
Next: <a href="#numbered-sub2-4" accesskey="n" rel="next">numbered subsection2 4</a>, Previous: <a href="#numbered-sub-4" accesskey="p" rel="prev">numbered subsection 4</a>, Up: <a href="#unnumberedsec-4" accesskey="u" rel="up">unnumbered section 4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="unnumberedsubsec" id="unnumbered-subsection2-4"><span>unnumbered subsection2 4<a class="copiable-link" href="#unnumbered-subsection2-4"> &para;</a></span></h4>

<hr>
</div>
<div class="subsection-level-extent" id="numbered-sub2-4">
<div class="nav-panel">
<p>
Previous: <a href="#unnumbered-sub2-4" accesskey="p" rel="prev">unnumbered subsection2 4</a>, Up: <a href="#unnumberedsec-4" accesskey="u" rel="up">unnumbered section 4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h4 class="subsection" id="numbered-subsection2-4"><span>numbered subsection2 4<a class="copiable-link" href="#numbered-subsection2-4"> &para;</a></span></h4>
</div>
</div>
</div>
</div>



</body>
</html>
';

1;
