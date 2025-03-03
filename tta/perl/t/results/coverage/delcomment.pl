use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'delcomment'} = '*document_root C2
 *before_node_section C4
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C4
   *@c C1
    {rawline_arg: this tests both the del comment and a file without\\n}
   *@c C1
    {rawline_arg: element.\\n}
   {empty_line:\\n}
   {empty_line:\\n}
   >SOURCEMARKS
   >delcomment<1>{ this is a comment.\\n}
  *paragraph C1
   {This line is the only output.\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'delcomment'} = '\\input texinfo

@c this tests both the del comment and a file without
@c element.


This line is the only output.

@bye
';


$result_texts{'delcomment'} = '

This line is the only output.

';

$result_errors{'delcomment'} = [];


1;
