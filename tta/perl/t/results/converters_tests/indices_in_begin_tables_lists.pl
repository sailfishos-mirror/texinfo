use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'indices_in_begin_tables_lists'} = '*document_root C8
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 indices_in_begin_tables_lists.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 indices_in_begin_tables_lists.texi:l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 indices_in_begin_tables_lists.texi:l6 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C42 indices_in_begin_tables_lists.texi:l7 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@itemize C4 indices_in_begin_tables_lists.texi:l9
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@minus indices_in_begin_tables_lists.texi:l9
   *before_item C2
    *@c C1
     {rawline_arg: comment in itemize\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l11
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {also a cindex in itemize}
   *@item C2 indices_in_begin_tables_lists.texi:l12
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {e--mph item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C5 indices_in_begin_tables_lists.texi:l15
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@bullet indices_in_begin_tables_lists.texi:l15
   *before_item C1
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l16
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,2}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index entry within itemize}
   *@item C2 indices_in_begin_tables_lists.texi:l17
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {i--tem 1\\n}
   *@item C3 indices_in_begin_tables_lists.texi:l18
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l18
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,3}
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index entry right after }
      *@@
      {item}
    *paragraph C1
     {i--tem 2\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l20
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@itemize C4 indices_in_begin_tables_lists.texi:l22
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@bullet
     |INFO
     |inserted:{1}
   *before_item C2
    *@c C1
     {rawline_arg: comment in itemize\\n}
    *paragraph C2
     {T--ext before items.\\n}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l25
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,4}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {also a cindex in itemize}
   *@item C2 indices_in_begin_tables_lists.texi:l26
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {bullet item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l27
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l29
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C2
    {empty_line:\\n}
    *@comment C1
     {rawline_arg: comment before first item in enumerate\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l32
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {e--numerate\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l33
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l35
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C3
    {empty_line:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l37
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,5}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index inter in enumerate between lines}
    {empty_line:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l39
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l40
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l42
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C2
    {empty_line:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l44
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,6}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index inter in enumerate after line}
   *@item C2 indices_in_begin_tables_lists.texi:l45
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l46
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l48
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l49
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,7}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index inter in enumerate before line}
    {empty_line:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l51
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l52
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l54
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C1
    *paragraph C2
     {Title\\n}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l56
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,8}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cindex}
   *@item C2 indices_in_begin_tables_lists.texi:l57
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l58
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l60
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C4
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l61
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,9}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {first idx}
    *@comment C1
     {rawline_arg: comment\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l63
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,10}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {sedond idx}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l64
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,11}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {another}
   *@item C2 indices_in_begin_tables_lists.texi:l65
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l66
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *@vtable C3 indices_in_begin_tables_lists.texi:l68
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@code indices_in_begin_tables_lists.texi:l68
   *table_entry C2
    *table_term C2
     *@c C1
      {rawline_arg: comment in table\\n}
     *@item C1 indices_in_begin_tables_lists.texi:l70
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{vr,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {acode--b}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l72
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
  *@vtable C3 indices_in_begin_tables_lists.texi:l74
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@asis indices_in_begin_tables_lists.texi:l74
   *table_entry C2
    *table_term C3
     *@item C1 indices_in_begin_tables_lists.texi:l75
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{vr,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {aasis--b}
     *inter_item C1
      *@c C1
       {rawline_arg: comment between item and itemx\\n}
     *@itemx C1 indices_in_begin_tables_lists.texi:l77
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{vr,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {b}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l79
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
  *@ftable C4 indices_in_begin_tables_lists.texi:l81
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@var indices_in_begin_tables_lists.texi:l81
   *table_entry C2
    *table_term C3
     *@item C1 indices_in_begin_tables_lists.texi:l82
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{fn,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {avar--b}
     *inter_item C3
      *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l83
      |INFO
      |command_name:{cindex}
      |spaces_before_argument:
       |{ }
      |EXTRA
      |element_node:[E2]
      |index_entry:I{cp,12}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {index entry between item and itemx}
      *@c C1
       {rawline_arg: and a comment\\n}
      *@comment C1
       {rawline_arg: and another comment\\n}
     *@itemx C1 indices_in_begin_tables_lists.texi:l86
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{fn,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {b}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *table_entry C2
    *table_term C3
     *@item C1 indices_in_begin_tables_lists.texi:l88
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{fn,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {c}
     *inter_item C3
      {empty_line:\\n}
      *@c C1
       {rawline_arg: comment between lines\\n}
      {empty_line:\\n}
     *@itemx C1 indices_in_begin_tables_lists.texi:l92
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{fn,4}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {d}
    *table_definition C2
     {empty_line:\\n}
     *@c C1
      {rawline_arg: comment at end\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l95
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
  *@table C3 indices_in_begin_tables_lists.texi:l97
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@code indices_in_begin_tables_lists.texi:l97
   *table_entry C2
    *table_term C3
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l98
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,13}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{ \\n}
       {cindex in table}
     *@c C1
      {rawline_arg: comment in table\\n}
     *@item C1 indices_in_begin_tables_lists.texi:l100
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {abb}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l102
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l104
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@code indices_in_begin_tables_lists.texi:l104
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l105
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,14}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{ \\n}
      {cindex in table}
    *paragraph C1
     {Texte before first item.\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l107
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {abb}
   *@end C1 indices_in_begin_tables_lists.texi:l108
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C3 indices_in_begin_tables_lists.texi:l110
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@samp indices_in_begin_tables_lists.texi:l110
   *table_entry C2
    *table_term C3
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l111
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,15}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{ \\n}
       {samp cindex in table}
     *@c C1
      {rawline_arg: samp comment in table\\n}
     *@item C1 indices_in_begin_tables_lists.texi:l113
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {asamp--bb}
    *table_definition C1
     *paragraph C1
      {l--ine samp\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l115
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l117
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@samp indices_in_begin_tables_lists.texi:l117
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l118
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,16}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{ \\n}
      {samp cindex in table}
    *paragraph C1
     {Texte before first item samp.\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l120
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {asamp--bb}
   *@end C1 indices_in_begin_tables_lists.texi:l121
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l123
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@samp indices_in_begin_tables_lists.texi:l123
   *before_item C3
    {empty_line:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l125
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,17}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {cindex between lines}
    {empty_line:\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l127
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {asamp--bb1}
   *@end C1 indices_in_begin_tables_lists.texi:l128
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l130
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@samp indices_in_begin_tables_lists.texi:l130
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l131
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,18}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {cindex before line}
    {empty_line:\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l133
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {asamp--bb2}
   *@end C1 indices_in_begin_tables_lists.texi:l134
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l136
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@samp indices_in_begin_tables_lists.texi:l136
   *before_item C1
    {empty_line:\\n}
   *table_entry C1
    *table_term C2
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l138
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,19}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cindex after line}
     *@item C1 indices_in_begin_tables_lists.texi:l139
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {asamp--bb2}
   *@end C1 indices_in_begin_tables_lists.texi:l140
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@table C3 indices_in_begin_tables_lists.texi:l142
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@samp indices_in_begin_tables_lists.texi:l142
   *table_entry C1
    *table_term C5
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l143
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,20}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {cindex first}
     *@c C1
      {rawline_arg: commant\\n}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l145
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,21}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {second}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l146
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,22}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {third}
     *@item C1 indices_in_begin_tables_lists.texi:l147
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {asamp--bb2}
   *@end C1 indices_in_begin_tables_lists.texi:l148
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
 *4 @node C1 indices_in_begin_tables_lists.texi:l150 {printindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{printindex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {printindex}
 *5 @chapter C8 indices_in_begin_tables_lists.texi:l151 {printindex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {printindex}
  {empty_line:\\n}
  *@printindex C1 indices_in_begin_tables_lists.texi:l153
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
  *@printindex C1 indices_in_begin_tables_lists.texi:l155
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
  {empty_line:\\n}
  *@printindex C1 indices_in_begin_tables_lists.texi:l157
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'indices_in_begin_tables_lists'} = '\\input texinfo.tex

@node Top
@top top

@node chapter
@chapter chap

@itemize @minus
@c comment in itemize
@cindex also a cindex in itemize
@item e--mph item
@end itemize

@itemize @bullet
@cindex index entry within itemize
@item i--tem 1
@item @cindex index entry right after @@item
i--tem 2
@end itemize

@itemize
@c comment in itemize
T--ext before items.
@cindex also a cindex in itemize
@item bullet item
@end itemize

@enumerate

@comment comment before first item in enumerate
@item e--numerate
@end enumerate

@enumerate

@cindex index inter in enumerate between lines

@item enumerate item
@end enumerate

@enumerate

@cindex index inter in enumerate after line
@item enumerate item
@end enumerate

@enumerate
@cindex index inter in enumerate before line

@item enumerate item
@end enumerate

@enumerate
Title
@cindex cindex
@item enum
@end enumerate

@enumerate
@cindex first idx
@comment comment
@cindex sedond idx
@cindex another
@item enum
@end enumerate

@vtable @code
@c comment in table
@item acode--b
l--ine
@end vtable

@vtable @asis
@item aasis--b
@c comment between item and itemx
@itemx b
l--ine
@end vtable

@ftable @var
@item avar--b
@cindex index entry between item and itemx
@c and a comment
@comment and another comment
@itemx b
l--ine
@item c

@c comment between lines

@itemx d

@c comment at end
@end ftable

@table @code
@cindex cindex in table 
@c comment in table
@item abb
l--ine
@end table

@table @code
@cindex cindex in table 
Texte before first item.
@item abb
@end table

@table @samp
@cindex samp cindex in table 
@c samp comment in table
@item asamp--bb
l--ine samp
@end table

@table @samp
@cindex samp cindex in table 
Texte before first item samp.
@item asamp--bb
@end table

@table @samp

@cindex cindex between lines

@item asamp--bb1
@end table

@table @samp
@cindex cindex before line

@item asamp--bb2
@end table

@table @samp

@cindex cindex after line
@item asamp--bb2
@end table

@table @samp
@cindex cindex first
@c commant
@cindex second
@cindex third
@item asamp--bb2
@end table

@node printindex
@chapter printindex

@printindex cp

@printindex vr

@printindex fn

@bye
';


$result_texts{'indices_in_begin_tables_lists'} = 'top
***

1 chap
******

e-mph item

i-tem 1
i-tem 2

T-ext before items.
bullet item


1. e-numerate



1. enumerate item


1. enumerate item


1. enumerate item

Title
1. enum

1. enum

acode-b
l-ine

aasis-b
b
l-ine

avar-b
b
l-ine
c


d


abb
l-ine

Texte before first item.
abb

asamp-bb
l-ine samp

Texte before first item samp.
asamp-bb



asamp-bb1


asamp-bb2


asamp-bb2

asamp-bb2

2 printindex
************




';

$result_errors{'indices_in_begin_tables_lists'} = [
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'file_name' => 'indices_in_begin_tables_lists.texi',
    'line_nr' => 18,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'indices_in_begin_tables_lists'} = 'cp:
 also a cindex in itemize
 also a cindex in itemize
 another
 cindex
 cindex after line
 cindex before line
 cindex between lines
 cindex first
 cindex in table
 cindex in table
 first idx
 index entry between item and itemx
 index entry right after @item
 index entry within itemize
 index inter in enumerate after line
 index inter in enumerate before line
 index inter in enumerate between lines
 samp cindex in table
 samp cindex in table
 second
 sedond idx
 third
fn:
 avar--b
 b
 c
 d
vr:
 aasis--b
 acode--b
 b
';

1;
