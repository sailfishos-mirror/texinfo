use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'char_latin1_latin1_in_refs'} = '*document_root C14
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentencoding C1 char_latin1_latin1_in_refs.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-1}
   {empty_line:\\n}
 *0 @node C1 char_latin1_latin1_in_refs.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
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
 *1 @top C6 char_latin1_latin1_in_refs.texi:l6 {accented char in latin1 in refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4|E6|E8|E10|E12]
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
    {accented char in latin1 in refs}
  {empty_line:\\n}
  *@printindex C1 char_latin1_latin1_in_refs.texi:l8
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
  *2 @menu C7 char_latin1_latin1_in_refs.texi:l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 char_latin1_latin1_in_refs.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
    |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
     {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_latin1_latin1_in_refs.texi:l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{é}
    |normalized:{_00e9}
     {é}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_latin1_latin1_in_refs.texi:l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{à è ù}
    |normalized:{_00e0-_00e8-_00f9}
     {à è ù}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_latin1_latin1_in_refs.texi:l14
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{â ê î ô û Â Ê Î Ô Û}
    |normalized:{_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db}
     {â ê î ô û Â Ê Î Ô Û}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_latin1_latin1_in_refs.texi:l15
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{ç}
    |normalized:{_00e7}
     {ç}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 char_latin1_latin1_in_refs.texi:l16
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
 *3 @node C1 char_latin1_latin1_in_refs.texi:l18 {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 *4 @chapter C2 char_latin1_latin1_in_refs.texi:l19 {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
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
    {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
  {empty_line:\\n}
 *5 @node C1 char_latin1_latin1_in_refs.texi:l21 {é}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E7|prev->E3|up->E0]
 |node_directions:D[next->E7|prev->E3|up->E0]
 |node_number:{3}
 |normalized:{_00e9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {é}
 *6 @chapter C2 char_latin1_latin1_in_refs.texi:l22 {é}
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
    {é}
  {empty_line:\\n}
 *7 @node C1 char_latin1_latin1_in_refs.texi:l24 {à è ù}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E9|prev->E5|up->E0]
 |node_directions:D[next->E9|prev->E5|up->E0]
 |node_number:{4}
 |normalized:{_00e0-_00e8-_00f9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {à è ù}
 *8 @chapter C2 char_latin1_latin1_in_refs.texi:l25 {à è ù}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E10|prev->E6|up->E1]
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E10|prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {à è ù}
  {empty_line:\\n}
 *9 @node C1 char_latin1_latin1_in_refs.texi:l27 {â ê î ô û Â Ê Î Ô Û}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E11|prev->E7|up->E0]
 |node_directions:D[next->E11|prev->E7|up->E0]
 |node_number:{5}
 |normalized:{_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {â ê î ô û Â Ê Î Ô Û}
 *10 @chapter C2 char_latin1_latin1_in_refs.texi:l28 {â ê î ô û Â Ê Î Ô Û}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E12|prev->E8|up->E1]
 |section_heading_number:{4}
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E12|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {â ê î ô û Â Ê Î Ô Û}
  {empty_line:\\n}
 *11 @node C1 char_latin1_latin1_in_refs.texi:l30 {ç}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E9|up->E0]
 |node_directions:D[prev->E9|up->E0]
 |node_number:{6}
 |normalized:{_00e7}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ç}
 *12 @chapter C11 char_latin1_latin1_in_refs.texi:l31 {ç}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E10|up->E1]
 |section_heading_number:{5}
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[prev->E10|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ç}
  {empty_line:\\n}
  *paragraph C10
   *@ref C1 char_latin1_latin1_in_refs.texi:l33
    *brace_arg C1
    |EXTRA
    |node_content:{ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
    |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
     {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
   {\\n}
   *@ref C1 char_latin1_latin1_in_refs.texi:l34
    *brace_arg C1
    |EXTRA
    |node_content:{é}
    |normalized:{_00e9}
     {é}
   {\\n}
   *@ref C1 char_latin1_latin1_in_refs.texi:l35
    *brace_arg C1
    |EXTRA
    |node_content:{à è ù}
    |normalized:{_00e0-_00e8-_00f9}
     {à è ù}
   {\\n}
   *@ref C1 char_latin1_latin1_in_refs.texi:l36
    *brace_arg C1
    |EXTRA
    |node_content:{â ê î ô û Â Ê Î Ô Û}
    |normalized:{_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db}
     {â ê î ô û Â Ê Î Ô Û}
   {\\n}
   *@ref C1 char_latin1_latin1_in_refs.texi:l37
    *brace_arg C1
    |EXTRA
    |node_content:{ç}
    |normalized:{_00e7}
     {ç}
   {\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 char_latin1_latin1_in_refs.texi:l39
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ}
  *index_entry_command@cindex C1 char_latin1_latin1_in_refs.texi:l40
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ä Ë Ï Ö Ü}
  *index_entry_command@cindex C1 char_latin1_latin1_in_refs.texi:l41
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {é}
  *index_entry_command@cindex C1 char_latin1_latin1_in_refs.texi:l42
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {è}
  *index_entry_command@cindex C1 char_latin1_latin1_in_refs.texi:l43
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {â ê î ô û Â Ê Î Ô Û}
  *index_entry_command@cindex C1 char_latin1_latin1_in_refs.texi:l44
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ç}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'char_latin1_latin1_in_refs'} = '\\input texinfo

@documentencoding ISO-8859-1

@node Top
@top accented char in latin1 in refs

@printindex cp

@menu
* ä ë ï ö ü ÿ Ä Ë Ï Ö Ü::
* é::
* à è ù::
* â ê î ô û Â Ê Î Ô Û::
* ç::
@end menu

@node ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
@chapter ä ë ï ö ü ÿ Ä Ë Ï Ö Ü

@node é
@chapter é

@node à è ù
@chapter à è ù

@node â ê î ô û Â Ê Î Ô Û
@chapter â ê î ô û Â Ê Î Ô Û

@node ç
@chapter ç

@ref{ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
@ref{é}
@ref{à è ù}
@ref{â ê î ô û Â Ê Î Ô Û}
@ref{ç}

@cindex ä ë ï ö ü ÿ
@cindex Ä Ë Ï Ö Ü
@cindex é
@cindex è
@cindex â ê î ô û Â Ê Î Ô Û
@cindex ç

@bye
';


$result_texts{'char_latin1_latin1_in_refs'} = '
accented char in latin1 in refs
*******************************


* ä ë ï ö ü ÿ Ä Ë Ï Ö Ü::
* é::
* à è ù::
* â ê î ô û Â Ê Î Ô Û::
* ç::

1 ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
***********************

2 é
***

3 à è ù
*******

4 â ê î ô û Â Ê Î Ô Û
*********************

5 ç
***

ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
é
à è ù
â ê î ô û Â Ê Î Ô Û
ç


';

$result_errors{'char_latin1_latin1_in_refs'} = [];


$result_nodes_list{'char_latin1_latin1_in_refs'} = '1|Top
 associated_section: accented char in latin1 in refs
 associated_title_command: accented char in latin1 in refs
2|ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
 associated_section: 1 ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
 associated_title_command: 1 ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
3|é
 associated_section: 2 é
 associated_title_command: 2 é
4|à è ù
 associated_section: 3 à è ù
 associated_title_command: 3 à è ù
5|â ê î ô û Â Ê Î Ô Û
 associated_section: 4 â ê î ô û Â Ê Î Ô Û
 associated_title_command: 4 â ê î ô û Â Ê Î Ô Û
6|ç
 associated_section: 5 ç
 associated_title_command: 5 ç
';

$result_sections_list{'char_latin1_latin1_in_refs'} = '1|accented char in latin1 in refs
 associated_anchor_command: Top
 associated_node: Top
2|ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
 associated_anchor_command: ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
 associated_node: ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
3|é
 associated_anchor_command: é
 associated_node: é
4|à è ù
 associated_anchor_command: à è ù
 associated_node: à è ù
5|â ê î ô û Â Ê Î Ô Û
 associated_anchor_command: â ê î ô û Â Ê Î Ô Û
 associated_node: â ê î ô û Â Ê Î Ô Û
6|ç
 associated_anchor_command: ç
 associated_node: ç
';

$result_headings_list{'char_latin1_latin1_in_refs'} = '';

$result_indices_sort_strings{'char_latin1_latin1_in_refs'} = 'cp:
 Ä Ë Ï Ö Ü
 â ê î ô û Â Ê Î Ô Û
 ä ë ï ö ü ÿ
 ç
 é
 è
';

1;
