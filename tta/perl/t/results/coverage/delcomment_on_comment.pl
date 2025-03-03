use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'delcomment_on_comment'} = '*document_root C2
 *before_node_section C4
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
  *paragraph C2
   {some text }
   >SOURCEMARKS
   >delcomment<1><p:10>{ after del.\\n}
   *@c C1
    {rawline_arg: a comment with del next line\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'delcomment_on_comment'} = '\\input texinfo

some text @c a comment with del next line

@bye
';


$result_texts{'delcomment_on_comment'} = 'some text 
';

$result_errors{'delcomment_on_comment'} = [];


1;
