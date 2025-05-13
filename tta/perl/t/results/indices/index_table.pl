use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_table'} = '*document_root C12
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 index_table.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 index_table.texi:l4 {Test for indices}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4|E6|E8]
 |section_level:{0}
 |section_number:{1}
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
    {Test for indices}
  *2 @menu C5 index_table.texi:l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_table.texi:l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node with ftable and vtable}
    |normalized:{node-with-ftable-and-vtable}
     {node with ftable and vtable}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_table.texi:l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node with printindex}
    |normalized:{node-with-printindex}
     {node with printindex}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 index_table.texi:l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{indices refs}
    |normalized:{indices-refs}
     {indices refs}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 index_table.texi:l9
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
 *3 @node C1 index_table.texi:l11 {node with ftable and vtable}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{node-with-ftable-and-vtable}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node with ftable and vtable}
 *4 @chapter C13 index_table.texi:l12 {first node chapter, with ftable and vtable}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first node chapter, with ftable and vtable}
  {empty_line:\\n}
  *index_entry_command@cindex C1 index_table.texi:l14
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index entry in node}
  {empty_line:\\n}
  *paragraph C2
   {Some text\\n}
   *index_entry_command@cindex C1 index_table.texi:l17
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E3]
   |index_entry:I{cp,2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {an second index entry in node}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *@vtable C3 index_table.texi:l21
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@bullet index_table.texi:l21
   *table_entry C2
    *table_term C2
     *@item C1 index_table.texi:l22
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E3]
     |index_entry:I{vr,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {var1}
     *@itemx C1 index_table.texi:l23
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E3]
     |index_entry:I{vr,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {var2}
    *table_definition C1
     *paragraph C1
      {var1 et var2\\n}
   *@end C1 index_table.texi:l25
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{vtable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {vtable}
  {empty_line:\\n}
  *paragraph C1
   {an ftable \\n}
  *@ftable C4 index_table.texi:l28
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@bullet index_table.texi:l28
   *table_entry C2
    *table_term C2
     *@item C1 index_table.texi:l29
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E3]
     |index_entry:I{fn,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {fun1}
     *@itemx C1 index_table.texi:l30
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E3]
     |index_entry:I{fn,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {fun2}
    *table_definition C1
     *paragraph C1
      {fun1 et fun2 \\n}
   *table_entry C2
    *table_term C1
     *@item C1 index_table.texi:l32
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E3]
     |index_entry:I{fn,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {more fun}
    *table_definition C1
     *paragraph C1
      {and even more   \\n}
   *@end C1 index_table.texi:l34
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ftable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ftable}
  {empty_line:\\n}
 *5 @node C1 index_table.texi:l36 {node with printindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E7|prev->E3|up->E0]
 |node_directions:D[next->E7|prev->E3|up->E0]
 |node_number:{3}
 |normalized:{node-with-printindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node with printindex}
 *6 @chapter C6 index_table.texi:l37 {node with printindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node with printindex}
  {empty_line:\\n}
  *@printindex C1 index_table.texi:l39
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  *@printindex C1 index_table.texi:l40
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{vr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {vr}
  *@printindex C1 index_table.texi:l41
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
 *7 @node C1 index_table.texi:l43 {indices refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[prev->E5|up->E0]
 |menus:EC[E9]
 |node_directions:D[prev->E5|up->E0]
 |node_number:{4}
 |normalized:{indices-refs}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {indices refs}
 *8 @chapter C135 index_table.texi:l44 {Indices refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E11]
 |section_directions:D[prev->E6|up->E1]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Indices refs}
  *9 @menu C3 index_table.texi:l45
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 index_table.texi:l46
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node}
    |normalized:{node}
     {node}
    {menu_entry_separator:::       }
    *menu_entry_description C1
     *preformatted C1
      {node \\n}
   *@end C1 index_table.texi:l47
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
  *index_entry_command@cindex C1 index_table.texi:l48
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l49
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aoncept}
  *index_entry_command@cindex C1 index_table.texi:l50
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {zoncept}
  *index_entry_command@cindex C1 index_table.texi:l51
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {eoncept}
  *index_entry_command@cindex C1 index_table.texi:l52
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {roncept}
  *index_entry_command@cindex C1 index_table.texi:l53
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toncept}
  *index_entry_command@cindex C1 index_table.texi:l54
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {yoncept}
  *index_entry_command@cindex C1 index_table.texi:l55
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {uoncept}
  *index_entry_command@cindex C1 index_table.texi:l56
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,11}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ioncept}
  *index_entry_command@cindex C1 index_table.texi:l57
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,12}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ooncept}
  *index_entry_command@cindex C1 index_table.texi:l58
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,13}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {poncept}
  *index_entry_command@cindex C1 index_table.texi:l59
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,14}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {qoncept}
  *index_entry_command@cindex C1 index_table.texi:l60
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,15}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concep}
  *index_entry_command@cindex C1 index_table.texi:l61
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,16}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {rsconcept}
  *index_entry_command@cindex C1 index_table.texi:l62
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,17}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {soncept}
  *index_entry_command@cindex C1 index_table.texi:l63
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,18}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {doncept}
  *index_entry_command@cindex C1 index_table.texi:l64
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,19}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foncept}
  *index_entry_command@cindex C1 index_table.texi:l65
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,20}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {goncept}
  *index_entry_command@cindex C1 index_table.texi:l66
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,21}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {honcept}
  *index_entry_command@cindex C1 index_table.texi:l67
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,22}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {joncept}
  *index_entry_command@cindex C1 index_table.texi:l68
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,23}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {koncept}
  *index_entry_command@cindex C1 index_table.texi:l69
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,24}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {loncept}
  *index_entry_command@cindex C1 index_table.texi:l70
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,25}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {moncept}
  *index_entry_command@cindex C1 index_table.texi:l71
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,26}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {roncept}
  *index_entry_command@cindex C1 index_table.texi:l72
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,27}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {woncept}
  *index_entry_command@cindex C1 index_table.texi:l73
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,28}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {xoncept}
  *index_entry_command@cindex C1 index_table.texi:l74
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,29}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {voncept}
  *index_entry_command@cindex C1 index_table.texi:l75
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,30}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {boncept}
  *index_entry_command@cindex C1 index_table.texi:l76
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,31}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {noncept}
  *index_entry_command@cindex C1 index_table.texi:l77
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,32}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {,oncept}
  *index_entry_command@cindex C1 index_table.texi:l78
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,33}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {?oncept}
  *index_entry_command@cindex C1 index_table.texi:l79
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,34}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {;oncept}
  *index_entry_command@cindex C1 index_table.texi:l80
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,35}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {/oncept}
  *index_entry_command@cindex C1 index_table.texi:l81
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,36}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {!oncept}
  *index_entry_command@cindex C1 index_table.texi:l82
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,37}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cancept}
  *index_entry_command@cindex C1 index_table.texi:l83
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,38}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {czncept}
  *index_entry_command@cindex C1 index_table.texi:l84
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,39}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cencept}
  *index_entry_command@cindex C1 index_table.texi:l85
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,40}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ctncept}
  *index_entry_command@cindex C1 index_table.texi:l86
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,41}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cyncept}
  *index_entry_command@cindex C1 index_table.texi:l87
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,42}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cuncept}
  *index_entry_command@cindex C1 index_table.texi:l88
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,43}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cincept}
  *index_entry_command@cindex C1 index_table.texi:l89
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,44}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l90
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,45}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cpncept}
  *index_entry_command@cindex C1 index_table.texi:l91
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,46}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cqncept}
  *index_entry_command@cindex C1 index_table.texi:l92
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,47}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {csncept}
  *index_entry_command@cindex C1 index_table.texi:l93
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,48}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cdncept}
  *index_entry_command@cindex C1 index_table.texi:l94
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,49}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cfncept}
  *index_entry_command@cindex C1 index_table.texi:l95
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,50}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cgncept}
  *index_entry_command@cindex C1 index_table.texi:l96
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,51}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chncept}
  *index_entry_command@cindex C1 index_table.texi:l97
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,52}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cjncept}
  *index_entry_command@cindex C1 index_table.texi:l98
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,53}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ckncept}
  *index_entry_command@cindex C1 index_table.texi:l99
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,54}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {clncept}
  *index_entry_command@cindex C1 index_table.texi:l100
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,55}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cmncept}
  *index_entry_command@cindex C1 index_table.texi:l101
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,56}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {csdcept}
  *index_entry_command@cindex C1 index_table.texi:l102
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,57}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cxncept}
  *index_entry_command@cindex C1 index_table.texi:l103
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,58}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cvncept}
  *index_entry_command@cindex C1 index_table.texi:l104
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,59}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cbncept}
  *index_entry_command@cindex C1 index_table.texi:l105
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,60}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cnncept}
  *index_entry_command@cindex C1 index_table.texi:l106
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,61}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c,ncept}
  *index_entry_command@cindex C1 index_table.texi:l107
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,62}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {crncept}
  *index_entry_command@cindex C1 index_table.texi:l108
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,63}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l109
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,64}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l110
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,65}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l111
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,66}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l112
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,67}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l113
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,68}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l114
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,69}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l115
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,70}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l116
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,71}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l117
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,72}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l118
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,73}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l119
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,74}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l120
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,75}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l121
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,76}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l122
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,77}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l123
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,78}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l124
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,79}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l125
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,80}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l126
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,81}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l127
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,82}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l128
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,83}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l129
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,84}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l130
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,85}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l131
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,86}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l132
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,87}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l133
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,88}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l134
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,89}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l135
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,90}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l136
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,91}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l137
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,92}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l138
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,93}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l139
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,94}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l140
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,95}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l141
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,96}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l142
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,97}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l143
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,98}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l144
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,99}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l145
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,100}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l146
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,101}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l147
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,102}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l148
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,103}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l149
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,104}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l150
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,105}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l151
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,106}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l152
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,107}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l153
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,108}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l154
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,109}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l155
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,110}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l156
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,111}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l157
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,112}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l158
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,113}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l159
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,114}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l160
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,115}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l161
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,116}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l162
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,117}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l163
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,118}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l164
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,119}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l165
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,120}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l166
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,121}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l167
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,122}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l168
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,123}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l169
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,124}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l170
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,125}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l171
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,126}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l172
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,127}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l173
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,128}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l174
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,129}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *index_entry_command@cindex C1 index_table.texi:l175
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E7]
  |index_entry:I{cp,130}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *@c C1
   {rawline_arg: @printindex fn\\n}
  *@c C1
   {rawline_arg: @printindex vr\\n}
  {empty_line:\\n}
  *@printindex C1 index_table.texi:l179
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
 *10 @node C1 index_table.texi:l181 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E7]
 |node_number:{5}
 |normalized:{node}
  *arguments_line C4
   *line_arg C1
    {node}
   *line_arg
   *line_arg
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
 *11 @section C5 index_table.texi:l182 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E8]
 |section_heading_number:{3.1}
 |section_level:{2}
 |section_number:{5}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node}
  {empty_line:\\n}
  *paragraph C1
   {A section following the indices.\\n}
  {empty_line:\\n}
  *@contents C1 index_table.texi:l186
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'index_table'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top Test for indices
@menu
* node with ftable and vtable::
* node with printindex::
* indices refs:: 
@end menu

@node node with ftable and vtable
@chapter first node chapter, with ftable and vtable

@cindex index entry in node

Some text
@cindex an second index entry in node



@vtable @bullet
@item var1
@itemx var2
var1 et var2
@end vtable

an ftable 
@ftable @bullet
@item fun1
@itemx fun2
fun1 et fun2 
@item more fun
and even more   
@end ftable

@node node with printindex
@chapter node with printindex

@printindex fn
@printindex vr
@printindex cp

@node indices refs
@chapter Indices refs
@menu
* node::       node 
@end menu
@cindex concept
@cindex aoncept
@cindex zoncept
@cindex eoncept
@cindex roncept
@cindex toncept
@cindex yoncept
@cindex uoncept
@cindex ioncept
@cindex ooncept
@cindex poncept
@cindex qoncept
@cindex concep
@cindex rsconcept
@cindex soncept
@cindex doncept
@cindex foncept
@cindex goncept
@cindex honcept
@cindex joncept
@cindex koncept
@cindex loncept
@cindex moncept
@cindex roncept
@cindex woncept
@cindex xoncept
@cindex voncept
@cindex boncept
@cindex noncept
@cindex ,oncept
@cindex ?oncept
@cindex ;oncept
@cindex /oncept
@cindex !oncept
@cindex cancept
@cindex czncept
@cindex cencept
@cindex ctncept
@cindex cyncept
@cindex cuncept
@cindex cincept
@cindex concept
@cindex cpncept
@cindex cqncept
@cindex csncept
@cindex cdncept
@cindex cfncept
@cindex cgncept
@cindex chncept
@cindex cjncept
@cindex ckncept
@cindex clncept
@cindex cmncept
@cindex csdcept
@cindex cxncept
@cindex cvncept
@cindex cbncept
@cindex cnncept
@cindex c,ncept
@cindex crncept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@cindex concept
@c @printindex fn
@c @printindex vr

@printindex cp

@node node,,,
@section node

A section following the indices.

@contents
@bye
';


$result_texts{'index_table'} = 'Test for indices
****************
* node with ftable and vtable::
* node with printindex::
* indices refs:: 

1 first node chapter, with ftable and vtable
********************************************


Some text



var1
var2
var1 et var2

an ftable 
fun1
fun2
fun1 et fun2 
more fun
and even more   

2 node with printindex
**********************


3 Indices refs
**************
* node::       node 


3.1 node
========

A section following the indices.

';

$result_errors{'index_table'} = [
  {
    'error_line' => 'command @bullet not accepting argument in brace should not be on @vtable line
',
    'file_name' => 'index_table.texi',
    'line_nr' => 21,
    'text' => 'command @bullet not accepting argument in brace should not be on @vtable line',
    'type' => 'error'
  },
  {
    'error_line' => 'command @bullet not accepting argument in brace should not be on @ftable line
',
    'file_name' => 'index_table.texi',
    'line_nr' => 28,
    'text' => 'command @bullet not accepting argument in brace should not be on @ftable line',
    'type' => 'error'
  }
];


$result_nodes_list{'index_table'} = '1|Top
 associated_section: Test for indices
 associated_title_command: Test for indices
2|node with ftable and vtable
 associated_section: 1 first node chapter, with ftable and vtable
 associated_title_command: 1 first node chapter, with ftable and vtable
3|node with printindex
 associated_section: 2 node with printindex
 associated_title_command: 2 node with printindex
4|indices refs
 associated_section: 3 Indices refs
 associated_title_command: 3 Indices refs
5|node
 associated_section: 3.1 node
 associated_title_command: 3.1 node
';

$result_sections_list{'index_table'} = '1|Test for indices
 associated_anchor_command: Top
 associated_node: Top
2|first node chapter, with ftable and vtable
 associated_anchor_command: node with ftable and vtable
 associated_node: node with ftable and vtable
3|node with printindex
 associated_anchor_command: node with printindex
 associated_node: node with printindex
4|Indices refs
 associated_anchor_command: indices refs
 associated_node: indices refs
5|node
 associated_anchor_command: node
 associated_node: node
';

$result_headings_list{'index_table'} = '';

$result_indices_sort_strings{'index_table'} = 'cp:
 ,oncept
 ;oncept
 !oncept
 ?oncept
 /oncept
 an second index entry in node
 aoncept
 boncept
 c,ncept
 cancept
 cbncept
 cdncept
 cencept
 cfncept
 cgncept
 chncept
 cincept
 cjncept
 ckncept
 clncept
 cmncept
 cnncept
 concep
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 concept
 cpncept
 cqncept
 crncept
 csdcept
 csncept
 ctncept
 cuncept
 cvncept
 cxncept
 cyncept
 czncept
 doncept
 eoncept
 foncept
 goncept
 honcept
 index entry in node
 ioncept
 joncept
 koncept
 loncept
 moncept
 noncept
 ooncept
 poncept
 qoncept
 roncept
 roncept
 rsconcept
 soncept
 toncept
 uoncept
 voncept
 woncept
 xoncept
 yoncept
 zoncept
fn:
 fun1
 fun2
 more fun
vr:
 var1
 var2
';

1;
