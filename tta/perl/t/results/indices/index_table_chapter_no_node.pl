use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_table_chapter_no_node'} = '*document_root C12
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
 |associated_section:[E1]
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
 *1 @top C3 index_table.texi:l4 {Test for indices}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E14|E16]
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
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E13|up->E0]
 |node_directions:D[next->E13|prev->E0|up->E0]
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
 |associated_node:[E3]
 |section_directions:D[next->E14|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E14|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first node chapter, with ftable and vtable}
  {empty_line:\\n}
  *5 index_entry_command@cindex C1 index_table.texi:l14
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
   *6 index_entry_command@cindex C1 index_table.texi:l17
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
  *7 @vtable C3 index_table.texi:l21
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E8]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *8 @asis
     |INFO
     |inserted:{1}
     *9 @bullet index_table.texi:l21
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
  *10 @ftable C4 index_table.texi:l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E11]
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *11 @asis
     |INFO
     |inserted:{1}
     *12 @bullet index_table.texi:l28
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
 *13 @node C1 index_table.texi:l36 {node with printindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E15|prev->E3|up->E0]
 |node_directions:D[next->E15|prev->E3|up->E0]
 |normalized:{node-with-printindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node with printindex}
 *14 @chapter C6 index_table.texi:l37 {node with printindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[next->E16|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E16|prev->E4|up->E1]
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
 *15 @node C1 index_table.texi:l43 {indices refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E16]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[prev->E13|up->E0]
 |menus:EC[E17]
 |node_directions:D[prev->E13|up->E0]
 |normalized:{indices-refs}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {indices refs}
 *16 @chapter C135 index_table.texi:l44 {Indices refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E15]
 |section_childs:EC[E147]
 |section_directions:D[prev->E14|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E14|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Indices refs}
  *17 @menu C3 index_table.texi:l45
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
  *18 index_entry_command@cindex C1 index_table.texi:l48
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *19 index_entry_command@cindex C1 index_table.texi:l49
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {aoncept}
  *20 index_entry_command@cindex C1 index_table.texi:l50
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {zoncept}
  *21 index_entry_command@cindex C1 index_table.texi:l51
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {eoncept}
  *22 index_entry_command@cindex C1 index_table.texi:l52
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
    {roncept}
  *23 index_entry_command@cindex C1 index_table.texi:l53
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
    {toncept}
  *24 index_entry_command@cindex C1 index_table.texi:l54
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {yoncept}
  *25 index_entry_command@cindex C1 index_table.texi:l55
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {uoncept}
  *26 index_entry_command@cindex C1 index_table.texi:l56
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,11}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ioncept}
  *27 index_entry_command@cindex C1 index_table.texi:l57
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,12}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ooncept}
  *28 index_entry_command@cindex C1 index_table.texi:l58
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,13}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {poncept}
  *29 index_entry_command@cindex C1 index_table.texi:l59
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,14}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {qoncept}
  *30 index_entry_command@cindex C1 index_table.texi:l60
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,15}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concep}
  *31 index_entry_command@cindex C1 index_table.texi:l61
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,16}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {rsconcept}
  *32 index_entry_command@cindex C1 index_table.texi:l62
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,17}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {soncept}
  *33 index_entry_command@cindex C1 index_table.texi:l63
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,18}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {doncept}
  *34 index_entry_command@cindex C1 index_table.texi:l64
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,19}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {foncept}
  *35 index_entry_command@cindex C1 index_table.texi:l65
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,20}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {goncept}
  *36 index_entry_command@cindex C1 index_table.texi:l66
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,21}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {honcept}
  *37 index_entry_command@cindex C1 index_table.texi:l67
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,22}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {joncept}
  *38 index_entry_command@cindex C1 index_table.texi:l68
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,23}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {koncept}
  *39 index_entry_command@cindex C1 index_table.texi:l69
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,24}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {loncept}
  *40 index_entry_command@cindex C1 index_table.texi:l70
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,25}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {moncept}
  *41 index_entry_command@cindex C1 index_table.texi:l71
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,26}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {roncept}
  *42 index_entry_command@cindex C1 index_table.texi:l72
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,27}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {woncept}
  *43 index_entry_command@cindex C1 index_table.texi:l73
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,28}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {xoncept}
  *44 index_entry_command@cindex C1 index_table.texi:l74
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,29}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {voncept}
  *45 index_entry_command@cindex C1 index_table.texi:l75
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,30}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {boncept}
  *46 index_entry_command@cindex C1 index_table.texi:l76
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,31}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {noncept}
  *47 index_entry_command@cindex C1 index_table.texi:l77
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,32}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {,oncept}
  *48 index_entry_command@cindex C1 index_table.texi:l78
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,33}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {?oncept}
  *49 index_entry_command@cindex C1 index_table.texi:l79
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,34}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {;oncept}
  *50 index_entry_command@cindex C1 index_table.texi:l80
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,35}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {/oncept}
  *51 index_entry_command@cindex C1 index_table.texi:l81
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,36}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {!oncept}
  *52 index_entry_command@cindex C1 index_table.texi:l82
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,37}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cancept}
  *53 index_entry_command@cindex C1 index_table.texi:l83
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,38}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {czncept}
  *54 index_entry_command@cindex C1 index_table.texi:l84
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,39}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cencept}
  *55 index_entry_command@cindex C1 index_table.texi:l85
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,40}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ctncept}
  *56 index_entry_command@cindex C1 index_table.texi:l86
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,41}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cyncept}
  *57 index_entry_command@cindex C1 index_table.texi:l87
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,42}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cuncept}
  *58 index_entry_command@cindex C1 index_table.texi:l88
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,43}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cincept}
  *59 index_entry_command@cindex C1 index_table.texi:l89
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,44}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *60 index_entry_command@cindex C1 index_table.texi:l90
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,45}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cpncept}
  *61 index_entry_command@cindex C1 index_table.texi:l91
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,46}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cqncept}
  *62 index_entry_command@cindex C1 index_table.texi:l92
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,47}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {csncept}
  *63 index_entry_command@cindex C1 index_table.texi:l93
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,48}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cdncept}
  *64 index_entry_command@cindex C1 index_table.texi:l94
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,49}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cfncept}
  *65 index_entry_command@cindex C1 index_table.texi:l95
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,50}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cgncept}
  *66 index_entry_command@cindex C1 index_table.texi:l96
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,51}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chncept}
  *67 index_entry_command@cindex C1 index_table.texi:l97
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,52}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cjncept}
  *68 index_entry_command@cindex C1 index_table.texi:l98
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,53}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ckncept}
  *69 index_entry_command@cindex C1 index_table.texi:l99
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,54}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {clncept}
  *70 index_entry_command@cindex C1 index_table.texi:l100
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,55}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cmncept}
  *71 index_entry_command@cindex C1 index_table.texi:l101
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,56}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {csdcept}
  *72 index_entry_command@cindex C1 index_table.texi:l102
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,57}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cxncept}
  *73 index_entry_command@cindex C1 index_table.texi:l103
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,58}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cvncept}
  *74 index_entry_command@cindex C1 index_table.texi:l104
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,59}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cbncept}
  *75 index_entry_command@cindex C1 index_table.texi:l105
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,60}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cnncept}
  *76 index_entry_command@cindex C1 index_table.texi:l106
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,61}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {c,ncept}
  *77 index_entry_command@cindex C1 index_table.texi:l107
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,62}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {crncept}
  *78 index_entry_command@cindex C1 index_table.texi:l108
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,63}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *79 index_entry_command@cindex C1 index_table.texi:l109
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,64}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *80 index_entry_command@cindex C1 index_table.texi:l110
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,65}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *81 index_entry_command@cindex C1 index_table.texi:l111
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,66}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *82 index_entry_command@cindex C1 index_table.texi:l112
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,67}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *83 index_entry_command@cindex C1 index_table.texi:l113
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,68}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *84 index_entry_command@cindex C1 index_table.texi:l114
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,69}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *85 index_entry_command@cindex C1 index_table.texi:l115
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,70}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *86 index_entry_command@cindex C1 index_table.texi:l116
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,71}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *87 index_entry_command@cindex C1 index_table.texi:l117
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,72}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *88 index_entry_command@cindex C1 index_table.texi:l118
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,73}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *89 index_entry_command@cindex C1 index_table.texi:l119
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,74}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *90 index_entry_command@cindex C1 index_table.texi:l120
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,75}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *91 index_entry_command@cindex C1 index_table.texi:l121
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,76}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *92 index_entry_command@cindex C1 index_table.texi:l122
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,77}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *93 index_entry_command@cindex C1 index_table.texi:l123
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,78}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *94 index_entry_command@cindex C1 index_table.texi:l124
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,79}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *95 index_entry_command@cindex C1 index_table.texi:l125
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,80}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *96 index_entry_command@cindex C1 index_table.texi:l126
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,81}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *97 index_entry_command@cindex C1 index_table.texi:l127
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,82}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *98 index_entry_command@cindex C1 index_table.texi:l128
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,83}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *99 index_entry_command@cindex C1 index_table.texi:l129
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,84}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *100 index_entry_command@cindex C1 index_table.texi:l130
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,85}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *101 index_entry_command@cindex C1 index_table.texi:l131
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,86}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *102 index_entry_command@cindex C1 index_table.texi:l132
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,87}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *103 index_entry_command@cindex C1 index_table.texi:l133
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,88}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *104 index_entry_command@cindex C1 index_table.texi:l134
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,89}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *105 index_entry_command@cindex C1 index_table.texi:l135
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,90}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *106 index_entry_command@cindex C1 index_table.texi:l136
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,91}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *107 index_entry_command@cindex C1 index_table.texi:l137
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,92}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *108 index_entry_command@cindex C1 index_table.texi:l138
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,93}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *109 index_entry_command@cindex C1 index_table.texi:l139
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,94}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *110 index_entry_command@cindex C1 index_table.texi:l140
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,95}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *111 index_entry_command@cindex C1 index_table.texi:l141
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,96}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *112 index_entry_command@cindex C1 index_table.texi:l142
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,97}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *113 index_entry_command@cindex C1 index_table.texi:l143
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,98}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *114 index_entry_command@cindex C1 index_table.texi:l144
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,99}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *115 index_entry_command@cindex C1 index_table.texi:l145
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,100}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *116 index_entry_command@cindex C1 index_table.texi:l146
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,101}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *117 index_entry_command@cindex C1 index_table.texi:l147
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,102}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *118 index_entry_command@cindex C1 index_table.texi:l148
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,103}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *119 index_entry_command@cindex C1 index_table.texi:l149
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,104}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *120 index_entry_command@cindex C1 index_table.texi:l150
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,105}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *121 index_entry_command@cindex C1 index_table.texi:l151
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,106}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *122 index_entry_command@cindex C1 index_table.texi:l152
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,107}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *123 index_entry_command@cindex C1 index_table.texi:l153
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,108}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *124 index_entry_command@cindex C1 index_table.texi:l154
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,109}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *125 index_entry_command@cindex C1 index_table.texi:l155
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,110}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *126 index_entry_command@cindex C1 index_table.texi:l156
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,111}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *127 index_entry_command@cindex C1 index_table.texi:l157
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,112}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *128 index_entry_command@cindex C1 index_table.texi:l158
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,113}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *129 index_entry_command@cindex C1 index_table.texi:l159
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,114}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *130 index_entry_command@cindex C1 index_table.texi:l160
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,115}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *131 index_entry_command@cindex C1 index_table.texi:l161
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,116}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *132 index_entry_command@cindex C1 index_table.texi:l162
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,117}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *133 index_entry_command@cindex C1 index_table.texi:l163
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,118}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *134 index_entry_command@cindex C1 index_table.texi:l164
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,119}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *135 index_entry_command@cindex C1 index_table.texi:l165
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,120}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *136 index_entry_command@cindex C1 index_table.texi:l166
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,121}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *137 index_entry_command@cindex C1 index_table.texi:l167
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,122}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *138 index_entry_command@cindex C1 index_table.texi:l168
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,123}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *139 index_entry_command@cindex C1 index_table.texi:l169
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,124}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *140 index_entry_command@cindex C1 index_table.texi:l170
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,125}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *141 index_entry_command@cindex C1 index_table.texi:l171
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,126}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *142 index_entry_command@cindex C1 index_table.texi:l172
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,127}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *143 index_entry_command@cindex C1 index_table.texi:l173
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,128}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *144 index_entry_command@cindex C1 index_table.texi:l174
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
  |index_entry:I{cp,129}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {concept}
  *145 index_entry_command@cindex C1 index_table.texi:l175
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E15]
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
 *146 @node C1 index_table.texi:l181 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E147]
 |is_target:{1}
 |menu_directions:D[up->E15]
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
 *147 @section C5 index_table.texi:l182 {node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E146]
 |section_directions:D[up->E16]
 |section_level:{2}
 |section_number:{3.1}
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


$result_texis{'index_table_chapter_no_node'} = '\\input texinfo @c -*-texinfo-*-

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


$result_texts{'index_table_chapter_no_node'} = 'Test for indices
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

$result_sectioning{'index_table_chapter_no_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'node-with-ftable-and-vtable'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'node-with-printindex'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'indices-refs'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'node'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '3.1'
                    }
                  }
                ],
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_table_chapter_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'index_table_chapter_no_node'};

$result_nodes{'index_table_chapter_no_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'isindex' => 1,
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'isindex' => 1,
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'indices-refs'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'node-with-printindex'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-with-ftable-and-vtable'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '3.1'
        }
      },
      'normalized' => 'node'
    }
  }
];
$result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'index_table_chapter_no_node'}[0];
$result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'index_table_chapter_no_node'}[0];
$result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'index_table_chapter_no_node'}[0];
$result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'index_table_chapter_no_node'}[0];
$result_nodes{'index_table_chapter_no_node'}[1] = $result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'index_table_chapter_no_node'}[2] = $result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'index_table_chapter_no_node'}[3] = $result_nodes{'index_table_chapter_no_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'index_table_chapter_no_node'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'menus' => [
                    {}
                  ],
                  'normalized' => 'indices-refs'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-with-printindex'
          }
        },
        'up' => {}
      },
      'normalized' => 'node-with-ftable-and-vtable'
    }
  },
  {},
  {},
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'node'
    }
  }
];
$result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'index_table_chapter_no_node'}[0];
$result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'index_table_chapter_no_node'}[1];
$result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'index_table_chapter_no_node'}[0];
$result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'index_table_chapter_no_node'}[0];
$result_menus{'index_table_chapter_no_node'}[2] = $result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'index_table_chapter_no_node'}[3] = $result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'index_table_chapter_no_node'}[4]{'extra'}{'menu_directions'}{'up'} = $result_menus{'index_table_chapter_no_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'index_table_chapter_no_node'} = [
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


$result_floats{'index_table_chapter_no_node'} = {};


$result_indices_sort_strings{'index_table_chapter_no_node'} = {
  'cp' => [
    ',oncept',
    ';oncept',
    '!oncept',
    '?oncept',
    '/oncept',
    'an second index entry in node',
    'aoncept',
    'boncept',
    'c,ncept',
    'cancept',
    'cbncept',
    'cdncept',
    'cencept',
    'cfncept',
    'cgncept',
    'chncept',
    'cincept',
    'cjncept',
    'ckncept',
    'clncept',
    'cmncept',
    'cnncept',
    'concep',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'concept',
    'cpncept',
    'cqncept',
    'crncept',
    'csdcept',
    'csncept',
    'ctncept',
    'cuncept',
    'cvncept',
    'cxncept',
    'cyncept',
    'czncept',
    'doncept',
    'eoncept',
    'foncept',
    'goncept',
    'honcept',
    'index entry in node',
    'ioncept',
    'joncept',
    'koncept',
    'loncept',
    'moncept',
    'noncept',
    'ooncept',
    'poncept',
    'qoncept',
    'roncept',
    'roncept',
    'rsconcept',
    'soncept',
    'toncept',
    'uoncept',
    'voncept',
    'woncept',
    'xoncept',
    'yoncept',
    'zoncept'
  ],
  'fn' => [
    'fun1',
    'fun2',
    'more fun'
  ],
  'vr' => [
    'var1',
    'var2'
  ]
};


1;
