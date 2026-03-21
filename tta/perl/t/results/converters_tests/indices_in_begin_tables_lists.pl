use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'indices_in_begin_tables_lists'} = '*document_root C8
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *@node C1 indices_in_begin_tables_lists.texi:l3 {Top}
 |EXTRA
 |identifier:{Top}
 |is_target:{1}
 |node_number:{1}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Top}
    {spaces_after_argument:\\n}
 *@top C2 indices_in_begin_tables_lists.texi:l4 {top}
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {top}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 indices_in_begin_tables_lists.texi:l6 {chapter}
 |EXTRA
 |identifier:{chapter}
 |is_target:{1}
 |node_number:{2}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {chapter}
    {spaces_after_argument:\\n}
 *@chapter C42 indices_in_begin_tables_lists.texi:l7 {chap}
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {chap}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@itemize C4 indices_in_begin_tables_lists.texi:l9
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@minus indices_in_begin_tables_lists.texi:l9
     {spaces_after_argument:\\n}
   *before_item C2
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment in itemize}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l11
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,1}
     *line_arg C3
      {spaces_before_argument: }
      {also a cindex in itemize}
      {spaces_after_argument:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l12
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {e--mph item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l13
   |EXTRA
   |text_arg:{itemize}
    *line_arg C3
     {spaces_before_argument: }
     {itemize}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@itemize C5 indices_in_begin_tables_lists.texi:l15
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@bullet indices_in_begin_tables_lists.texi:l15
     {spaces_after_argument:\\n}
   *before_item C1
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l16
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,2}
     *line_arg C3
      {spaces_before_argument: }
      {index entry within itemize}
      {spaces_after_argument:\\n}
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
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,3}
     *line_arg C5
      {spaces_before_argument: }
      {index entry right after }
      *@@
      {item}
      {spaces_after_argument:\\n}
    *paragraph C1
     {i--tem 2\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l20
   |EXTRA
   |text_arg:{itemize}
    *line_arg C3
     {spaces_before_argument: }
     {itemize}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@itemize C4 indices_in_begin_tables_lists.texi:l22
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C2
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment in itemize}
    *paragraph C2
     {T--ext before items.\\n}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l25
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,4}
      *line_arg C3
       {spaces_before_argument: }
       {also a cindex in itemize}
       {spaces_after_argument:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l26
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {bullet item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l27
   |EXTRA
   |text_arg:{itemize}
    *line_arg C3
     {spaces_before_argument: }
     {itemize}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l29
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C2
    {empty_line:\\n}
    *@comment C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment before first item in enumerate}
   *@item C2 indices_in_begin_tables_lists.texi:l32
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {e--numerate\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l33
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l35
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C3
    {empty_line:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l37
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,5}
     *line_arg C3
      {spaces_before_argument: }
      {index inter in enumerate between lines}
      {spaces_after_argument:\\n}
    {empty_line:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l39
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l40
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l42
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C2
    {empty_line:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l44
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,6}
     *line_arg C3
      {spaces_before_argument: }
      {index inter in enumerate after line}
      {spaces_after_argument:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l45
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l46
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l48
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l49
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,7}
     *line_arg C3
      {spaces_before_argument: }
      {index inter in enumerate before line}
      {spaces_after_argument:\\n}
    {empty_line:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l51
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enumerate item\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l52
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l54
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C1
    *paragraph C2
     {Title\\n}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l56
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,8}
      *line_arg C3
       {spaces_before_argument: }
       {cindex}
       {spaces_after_argument:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l57
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l58
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C4 indices_in_begin_tables_lists.texi:l60
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C4
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l61
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,9}
     *line_arg C3
      {spaces_before_argument: }
      {first idx}
      {spaces_after_argument:\\n}
    *@comment C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l63
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,10}
     *line_arg C3
      {spaces_before_argument: }
      {sedond idx}
      {spaces_after_argument:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l64
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,11}
     *line_arg C3
      {spaces_before_argument: }
      {another}
      {spaces_after_argument:\\n}
   *@item C2 indices_in_begin_tables_lists.texi:l65
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l66
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@vtable C3 indices_in_begin_tables_lists.texi:l68
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@code indices_in_begin_tables_lists.texi:l68
     {spaces_after_argument:\\n}
   *table_entry C2
    *table_term C2
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:comment in table}
     *@item C1 indices_in_begin_tables_lists.texi:l70
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{vr,1}
      *line_arg C3
       {spaces_before_argument: }
       {acode--b}
       {spaces_after_argument:\\n}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l72
   |EXTRA
   |text_arg:{vtable}
    *line_arg C3
     {spaces_before_argument: }
     {vtable}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@vtable C3 indices_in_begin_tables_lists.texi:l74
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@asis indices_in_begin_tables_lists.texi:l74
     {spaces_after_argument:\\n}
   *table_entry C2
    *table_term C3
     *@item C1 indices_in_begin_tables_lists.texi:l75
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{vr,2}
      *line_arg C3
       {spaces_before_argument: }
       {aasis--b}
       {spaces_after_argument:\\n}
     *inter_item C1
      *@c C1
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {rawline_text:comment between item and itemx}
     *@itemx C1 indices_in_begin_tables_lists.texi:l77
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{vr,3}
      *line_arg C3
       {spaces_before_argument: }
       {b}
       {spaces_after_argument:\\n}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l79
   |EXTRA
   |text_arg:{vtable}
    *line_arg C3
     {spaces_before_argument: }
     {vtable}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@ftable C4 indices_in_begin_tables_lists.texi:l81
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@var indices_in_begin_tables_lists.texi:l81
     {spaces_after_argument:\\n}
   *table_entry C2
    *table_term C3
     *@item C1 indices_in_begin_tables_lists.texi:l82
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{fn,1}
      *line_arg C3
       {spaces_before_argument: }
       {avar--b}
       {spaces_after_argument:\\n}
     *inter_item C3
      *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l83
      |EXTRA
      |element_node:{chapter}
      |index_entry:I{cp,12}
       *line_arg C3
        {spaces_before_argument: }
        {index entry between item and itemx}
        {spaces_after_argument:\\n}
      *@c C1
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {rawline_text:and a comment}
      *@comment C1
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {rawline_text:and another comment}
     *@itemx C1 indices_in_begin_tables_lists.texi:l86
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{fn,2}
      *line_arg C3
       {spaces_before_argument: }
       {b}
       {spaces_after_argument:\\n}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *table_entry C2
    *table_term C3
     *@item C1 indices_in_begin_tables_lists.texi:l88
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{fn,3}
      *line_arg C3
       {spaces_before_argument: }
       {c}
       {spaces_after_argument:\\n}
     *inter_item C3
      {empty_line:\\n}
      *@c C1
      |INFO
      |spaces_before_argument:
       |{spaces_before_argument: }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{spaces_after_argument:\\n}
        {rawline_text:comment between lines}
      {empty_line:\\n}
     *@itemx C1 indices_in_begin_tables_lists.texi:l92
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{fn,4}
      *line_arg C3
       {spaces_before_argument: }
       {d}
       {spaces_after_argument:\\n}
    *table_definition C2
     {empty_line:\\n}
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:comment at end}
   *@end C1 indices_in_begin_tables_lists.texi:l95
   |EXTRA
   |text_arg:{ftable}
    *line_arg C3
     {spaces_before_argument: }
     {ftable}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C3 indices_in_begin_tables_lists.texi:l97
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@code indices_in_begin_tables_lists.texi:l97
     {spaces_after_argument:\\n}
   *table_entry C2
    *table_term C3
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l98
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,13}
      *line_arg C3
       {spaces_before_argument: }
       {cindex in table}
       {spaces_after_argument: \\n}
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:comment in table}
     *@item C1 indices_in_begin_tables_lists.texi:l100
      *line_arg C3
       {spaces_before_argument: }
       {abb}
       {spaces_after_argument:\\n}
    *table_definition C1
     *paragraph C1
      {l--ine\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l102
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l104
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@code indices_in_begin_tables_lists.texi:l104
     {spaces_after_argument:\\n}
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l105
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,14}
     *line_arg C3
      {spaces_before_argument: }
      {cindex in table}
      {spaces_after_argument: \\n}
    *paragraph C1
     {Texte before first item.\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l107
      *line_arg C3
       {spaces_before_argument: }
       {abb}
       {spaces_after_argument:\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l108
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C3 indices_in_begin_tables_lists.texi:l110
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@samp indices_in_begin_tables_lists.texi:l110
     {spaces_after_argument:\\n}
   *table_entry C2
    *table_term C3
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l111
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,15}
      *line_arg C3
       {spaces_before_argument: }
       {samp cindex in table}
       {spaces_after_argument: \\n}
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:samp comment in table}
     *@item C1 indices_in_begin_tables_lists.texi:l113
      *line_arg C3
       {spaces_before_argument: }
       {asamp--bb}
       {spaces_after_argument:\\n}
    *table_definition C1
     *paragraph C1
      {l--ine samp\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l115
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l117
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@samp indices_in_begin_tables_lists.texi:l117
     {spaces_after_argument:\\n}
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l118
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,16}
     *line_arg C3
      {spaces_before_argument: }
      {samp cindex in table}
      {spaces_after_argument: \\n}
    *paragraph C1
     {Texte before first item samp.\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l120
      *line_arg C3
       {spaces_before_argument: }
       {asamp--bb}
       {spaces_after_argument:\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l121
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l123
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@samp indices_in_begin_tables_lists.texi:l123
     {spaces_after_argument:\\n}
   *before_item C3
    {empty_line:\\n}
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l125
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,17}
     *line_arg C3
      {spaces_before_argument: }
      {cindex between lines}
      {spaces_after_argument:\\n}
    {empty_line:\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l127
      *line_arg C3
       {spaces_before_argument: }
       {asamp--bb1}
       {spaces_after_argument:\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l128
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l130
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@samp indices_in_begin_tables_lists.texi:l130
     {spaces_after_argument:\\n}
   *before_item C2
    *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l131
    |EXTRA
    |element_node:{chapter}
    |index_entry:I{cp,18}
     *line_arg C3
      {spaces_before_argument: }
      {cindex before line}
      {spaces_after_argument:\\n}
    {empty_line:\\n}
   *table_entry C1
    *table_term C1
     *@item C1 indices_in_begin_tables_lists.texi:l133
      *line_arg C3
       {spaces_before_argument: }
       {asamp--bb2}
       {spaces_after_argument:\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l134
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C4 indices_in_begin_tables_lists.texi:l136
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@samp indices_in_begin_tables_lists.texi:l136
     {spaces_after_argument:\\n}
   *before_item C1
    {empty_line:\\n}
   *table_entry C1
    *table_term C2
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l138
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,19}
      *line_arg C3
       {spaces_before_argument: }
       {cindex after line}
       {spaces_after_argument:\\n}
     *@item C1 indices_in_begin_tables_lists.texi:l139
      *line_arg C3
       {spaces_before_argument: }
       {asamp--bb2}
       {spaces_after_argument:\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l140
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C3 indices_in_begin_tables_lists.texi:l142
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@samp indices_in_begin_tables_lists.texi:l142
     {spaces_after_argument:\\n}
   *table_entry C1
    *table_term C5
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l143
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,20}
      *line_arg C3
       {spaces_before_argument: }
       {cindex first}
       {spaces_after_argument:\\n}
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:commant}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l145
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,21}
      *line_arg C3
       {spaces_before_argument: }
       {second}
       {spaces_after_argument:\\n}
     *index_entry_command@cindex C1 indices_in_begin_tables_lists.texi:l146
     |EXTRA
     |element_node:{chapter}
     |index_entry:I{cp,22}
      *line_arg C3
       {spaces_before_argument: }
       {third}
       {spaces_after_argument:\\n}
     *@item C1 indices_in_begin_tables_lists.texi:l147
      *line_arg C3
       {spaces_before_argument: }
       {asamp--bb2}
       {spaces_after_argument:\\n}
   *@end C1 indices_in_begin_tables_lists.texi:l148
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 indices_in_begin_tables_lists.texi:l150 {printindex}
 |EXTRA
 |identifier:{printindex}
 |is_target:{1}
 |isindex:{1}
 |node_number:{3}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {printindex}
    {spaces_after_argument:\\n}
 *@chapter C8 indices_in_begin_tables_lists.texi:l151 {printindex}
 |EXTRA
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {printindex}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@printindex C1 indices_in_begin_tables_lists.texi:l153
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C3
    {spaces_before_argument: }
    {cp}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@printindex C1 indices_in_begin_tables_lists.texi:l155
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{vr}
   *line_arg C3
    {spaces_before_argument: }
    {vr}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@printindex C1 indices_in_begin_tables_lists.texi:l157
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{fn}
   *line_arg C3
    {spaces_before_argument: }
    {fn}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
 *@bye C1
  *line_arg
  |INFO
  |spaces_after_argument:
   |{spaces_after_argument:\\n}
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

$result_errors{'indices_in_begin_tables_lists'} = '* W indices_in_begin_tables_lists.texi:l18|@cindex should only appear at the beginning of a line
 warning: @cindex should only appear at the beginning of a line

';

$result_nodes_list{'indices_in_begin_tables_lists'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->chapter
2|chapter
 associated_section: 1 chap
 associated_title_command: 1 chap
 node_directions:
  next->printindex
  prev->Top
  up->Top
3|printindex
 associated_section: 2 printindex
 associated_title_command: 2 printindex
 node_directions:
  prev->chapter
  up->Top
';

$result_sections_list{'indices_in_begin_tables_lists'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->chap
 section_children:
  1|chap
  2|printindex
2|chap
 associated_anchor_command: chapter
 associated_node: chapter
 section_directions:
  next->printindex
  up->top
 toplevel_directions:
  next->printindex
  prev->top
  up->top
3|printindex
 associated_anchor_command: printindex
 associated_node: printindex
 section_directions:
  prev->chap
  up->top
 toplevel_directions:
  prev->chap
  up->top
';

$result_sectioning_root{'indices_in_begin_tables_lists'} = 'level: -1
list:
 1|top
';

$result_headings_list{'indices_in_begin_tables_lists'} = '';

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
