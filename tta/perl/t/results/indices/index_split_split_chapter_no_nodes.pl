use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_split_split_chapter_no_nodes'} = '*document_root C21
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 index_split.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E4|up->E0]
 |menus:EC[E3]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C13 index_split.texi:l4 {split indices}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E10|E40]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E10]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {split indices}
  *2 index_entry_command@cindex C1 index_split.texi:l5
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry a}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
  *paragraph C1
   {And one one more index\\n}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *3 @menu C5 index_split.texi:l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_split.texi:l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {back to the current top node\\n}
   *menu_entry C4 index_split.texi:l17
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
   *menu_entry C4 index_split.texi:l18
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{second chapter}
    |normalized:{second-chapter}
     {second chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_split.texi:l19
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
 *4 @node C10 index_split.texi:l21 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E39|prev->E0|up->E0]
 |menus:EC[E14]
 |node_directions:D[next->E39|prev->E0|up->E0]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *paragraph C5
   {Text and then index entries\\n}
   *5 index_entry_command@cindex C1 index_split.texi:l24
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
   *6 index_entry_command@cindex C1 index_split.texi:l25
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{cp,3}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {! entry in node}
   *7 index_entry_command@findex C1 index_split.texi:l26
   |INFO
   |command_name:{findex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{fn,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {fun in node}
   *8 index_entry_command@cindex C1 index_split.texi:l27
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E4]
   |index_entry:I{cp,4}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {entry in node}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l31
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{5}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
  *9 index_entry_command@cindex C1 index_split.texi:l33
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry after printindex}
  {empty_line:\\n}
 *10 @chapter C7 index_split.texi:l35 {First chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E16|E27|E29]
 |section_directions:D[next->E40|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E40|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {First chapter}
  *11 index_entry_command@findex C1 index_split.texi:l36
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{fn,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a function}
  *12 index_entry_command@cindex C1 index_split.texi:l37
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a concept in first}
  *13 index_entry_command@findex C1 index_split.texi:l38
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{fn,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {somewhere}
  {empty_line:\\n}
  *14 @menu C8 index_split.texi:l40
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_split.texi:l41
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section 1}
    |normalized:{section-1}
     {section 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_split.texi:l42
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section 2}
    |normalized:{section-2}
     {section 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_split.texi:l43
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section 3}
    |normalized:{section-3}
     {section 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_split.texi:l44
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node in section 3}
    |normalized:{node-in-section-3}
     {node in section 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_split.texi:l45
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node 2 in section 3}
    |normalized:{node-2-in-section-3}
     {node 2 in section 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_split.texi:l46
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node 3 in section 3}
    |normalized:{node-3-in-section-3}
     {node 3 in section 3}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_split.texi:l47
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
 *15 @node C1 index_split.texi:l49 {section 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E26|up->E4]
 |menus:EC[E18]
 |node_directions:D[next->E26|up->E4]
 |normalized:{section-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 1}
 *16 @section C11 index_split.texi:l50 {Section 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E15]
 |section_childs:EC[E21|E23]
 |section_directions:D[next->E27|up->E10]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section 1}
  {empty_line:\\n}
  *17 index_entry_command@cindex C1 index_split.texi:l52
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {something}
  {empty_line:\\n}
  *18 @menu C4 index_split.texi:l54
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 index_split.texi:l55
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{subsection 1}
    |normalized:{subsection-1}
     {subsection 1}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_split.texi:l56
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{subsection 2}
    |normalized:{subsection-2}
     {subsection 2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_split.texi:l57
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
  *paragraph C1
   {The index once more\\n}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l60
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{6}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *19 index_entry_command@cindex C1 index_split.texi:l62
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {another}
  {empty_line:\\n}
 *20 @node C1 index_split.texi:l64 {subsection 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E21]
 |is_target:{1}
 |menu_directions:D[next->E22|up->E15]
 |node_directions:D[next->E22|up->E15]
 |normalized:{subsection-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 1}
 *21 @subsection C4 index_split.texi:l65 {Subsection 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E20]
 |section_directions:D[next->E23|up->E16]
 |section_level:{3}
 |section_number:{1.1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 1}
  {empty_line:\\n}
  *paragraph C1
   {In subsection 1\\n}
  {empty_line:\\n}
 *22 @node C1 index_split.texi:l69 {subsection 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E23]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[prev->E20|up->E15]
 |node_directions:D[prev->E20|up->E15]
 |normalized:{subsection-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 2}
 *23 @subsection C10 index_split.texi:l70 {Subsection 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E22]
 |section_directions:D[prev->E21|up->E16]
 |section_level:{3}
 |section_number:{1.1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection 2}
  {empty_line:\\n}
  *paragraph C1
   {index in subsction 2\\n}
  {empty_line:\\n}
  *24 index_entry_command@cindex C1 index_split.texi:l74
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E22]
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {subsection 2}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l76
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{7}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *25 index_entry_command@cindex C1 index_split.texi:l78
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E22]
  |index_entry:I{cp,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {printindex subsection 2}
  {empty_line:\\n}
 *26 @node C1 index_split.texi:l80 {section 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E27]
 |is_target:{1}
 |menu_directions:D[next->E28|prev->E15|up->E4]
 |node_directions:D[next->E28|prev->E15|up->E4]
 |normalized:{section-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 2}
 *27 @section C4 index_split.texi:l81 {Section 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E26]
 |section_directions:D[next->E29|prev->E16|up->E10]
 |section_level:{2}
 |section_number:{1.2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section 2}
  {empty_line:\\n}
  *paragraph C1
   {Section 2\\n}
  {empty_line:\\n}
 *28 @node C1 index_split.texi:l85 {section 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E29]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E31|prev->E26|up->E4]
 |node_directions:D[next->E31|prev->E26|up->E4]
 |normalized:{section-3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 3}
 *29 @section C6 index_split.texi:l86 {Section 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E28]
 |section_directions:D[prev->E27|up->E10]
 |section_level:{2}
 |section_number:{1.3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section 3}
  {empty_line:\\n}
  *30 index_entry_command@cindex C1 index_split.texi:l88
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E28]
  |index_entry:I{cp,11}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section 3}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l90
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{8}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *31 @node C5 index_split.texi:l92 {node in section 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E33|prev->E28|up->E4]
 |node_directions:D[prev->E28|up->E4]
 |normalized:{node-in-section-3}
  *arguments_line C4
   *line_arg C1
    {node in section 3}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{section 3}
   |normalized:{section-3}
    {section 3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
  {empty_line:\\n}
  *32 index_entry_command@cindex C1 index_split.texi:l94
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E31]
  |index_entry:I{cp,12}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node in section 3}
  *paragraph C1
   {Text for the node in section 3\\n}
  {empty_line:\\n}
 *33 @node C13 index_split.texi:l97 {node 2 in section 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E37|prev->E31|up->E4]
 |node_directions:D[up->E4]
 |normalized:{node-2-in-section-3}
  *arguments_line C4
   *line_arg C1
    {node 2 in section 3}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
  {empty_line:\\n}
  *34 index_entry_command@cindex C1 index_split.texi:l99
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E33]
  |index_entry:I{cp,13}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node 2 in section 3}
  *paragraph C1
   {Text for the node 2 in section 3\\n}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l102
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{9}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *35 index_entry_command@cindex C1 index_split.texi:l104
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E33]
  |index_entry:I{cp,14}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {between printindex node in section 3}
  {empty_line:\\n}
  *@printindex C1 index_split.texi:l106
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{10}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *36 index_entry_command@cindex C1 index_split.texi:l108
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E33]
  |index_entry:I{cp,15}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after second printindex node in section 3}
  {empty_line:\\n}
 *37 @node C4 index_split.texi:l110 {node 3 in section 3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E33|up->E4]
 |node_directions:D[up->E4]
 |normalized:{node-3-in-section-3}
  *arguments_line C4
   *line_arg C1
    {node 3 in section 3}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{first}
   |normalized:{first}
    {first}
  {empty_line:\\n}
  *38 index_entry_command@cindex C1 index_split.texi:l112
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E37]
  |index_entry:I{cp,16}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node 3 in section 3}
  {empty_line:\\n}
 *39 @node C1 index_split.texi:l114 {second chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E40]
 |is_target:{1}
 |menu_directions:D[prev->E4|up->E0]
 |node_directions:D[prev->E4|up->E0]
 |normalized:{second-chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second chapter}
 *40 @chapter C4 index_split.texi:l115 {Second chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E39]
 |section_directions:D[prev->E10|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E10|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second chapter}
  {empty_line:\\n}
  *paragraph C1
   {Second chapter\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'index_split_split_chapter_no_nodes'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top split indices
@cindex entry a

@printindex cp

@printindex fn

And one one more index

@printindex cp

@menu
* Top:: back to the current top node
* first::
* second chapter::
@end menu

@node first

Text and then index entries
@cindex entry in node
@cindex ! entry in node
@findex fun in node
@cindex entry in node

@printindex cp

@printindex fn

@cindex entry after printindex

@chapter First chapter
@findex a function
@cindex a concept in first
@findex somewhere

@menu
* section 1::
* section 2::
* section 3::
* node in section 3::
* node 2 in section 3::
* node 3 in section 3::
@end menu

@node section 1
@section Section 1

@cindex something

@menu 
* subsection 1::
* subsection 2::
@end menu
The index once more

@printindex cp

@cindex another

@node subsection 1
@subsection Subsection 1

In subsection 1

@node subsection 2
@subsection Subsection 2

index in subsction 2

@cindex subsection 2

@printindex cp

@cindex printindex subsection 2

@node section 2
@section Section 2

Section 2

@node section 3
@section Section 3

@cindex section 3

@printindex cp

@node node in section 3,,section 3,first

@cindex node in section 3
Text for the node in section 3

@node node 2 in section 3,,,first

@cindex node 2 in section 3
Text for the node 2 in section 3

@printindex cp

@cindex between printindex node in section 3

@printindex cp

@cindex after second printindex node in section 3

@node node 3 in section 3,,,first

@cindex node 3 in section 3

@node second chapter
@chapter Second chapter

Second chapter

@bye
';


$result_texts{'index_split_split_chapter_no_nodes'} = 'split indices
*************



And one one more index


* Top:: back to the current top node
* first::
* second chapter::


Text and then index entries




1 First chapter
***************

* section 1::
* section 2::
* section 3::
* node in section 3::
* node 2 in section 3::
* node 3 in section 3::

1.1 Section 1
=============


* subsection 1::
* subsection 2::
The index once more



1.1.1 Subsection 1
------------------

In subsection 1

1.1.2 Subsection 2
------------------

index in subsction 2




1.2 Section 2
=============

Section 2

1.3 Section 3
=============




Text for the node in section 3


Text for the node 2 in section 3







2 Second chapter
****************

Second chapter

';

$result_errors{'index_split_split_chapter_no_nodes'} = [
  {
    'error_line' => 'warning: node `node in section 3\' is next for `section 3\' in menu but not in sectioning
',
    'file_name' => 'index_split.texi',
    'line_nr' => 85,
    'text' => 'node `node in section 3\' is next for `section 3\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'index_split_split_chapter_no_nodes'} = {
  'cp' => [
    '! entry in node',
    'a concept in first',
    'after second printindex node in section 3',
    'another',
    'between printindex node in section 3',
    'entry a',
    'entry after printindex',
    'entry in node',
    'entry in node',
    'node 2 in section 3',
    'node 3 in section 3',
    'node in section 3',
    'printindex subsection 2',
    'section 3',
    'something',
    'subsection 2'
  ],
  'fn' => [
    'a function',
    'fun in node',
    'somewhere'
  ]
};


1;
