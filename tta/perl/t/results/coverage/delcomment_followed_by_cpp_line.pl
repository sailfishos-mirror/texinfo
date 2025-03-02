use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'delcomment_followed_by_cpp_line'} = '*document_root C2
 *before_node_section C16
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C3
   *@c C1
    {rawline_arg: this tests both the del comment and a file without\\n}
   *@c C1
    {rawline_arg: element.\\n}
   {empty_line:\\n}
  *paragraph C1
   {#line 46 "a_file_after_del_comment"\\n}
   >SOURCEMARKS
   >delcomment<1>{ this is a comment.\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {spaces_before_paragraph:  }
  >SOURCEMARKS
  >delcomment<2><p:2>{ this is a comment.\\n}
  *paragraph C1
   {#line 106 "a_file_after_space_del_comment"\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {spaces_before_paragraph: }
  *paragraph C1
   {a #line 206 "a_file_after_text_space_del_comment"\\n}
   >SOURCEMARKS
   >delcomment<3><p:2>{ this is a comment.\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'delcomment_followed_by_cpp_line'} = '\\input texinfo

@c this tests both the del comment and a file without
@c element.

#line 46 "a_file_after_del_comment"



  #line 106 "a_file_after_space_del_comment"



 a #line 206 "a_file_after_text_space_del_comment"



@bye
';


$result_texts{'delcomment_followed_by_cpp_line'} = '
#line 46 "a_file_after_del_comment"



#line 106 "a_file_after_space_del_comment"



a #line 206 "a_file_after_text_space_del_comment"



';

$result_errors{'delcomment_followed_by_cpp_line'} = [
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => 'delcomment_followed_by_cpp_line.texi',
    'line_nr' => 9,
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown1\'
',
    'file_name' => 'delcomment_followed_by_cpp_line.texi',
    'line_nr' => 14,
    'text' => 'unknown command `unknown1\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown2\'
',
    'file_name' => 'delcomment_followed_by_cpp_line.texi',
    'line_nr' => 19,
    'text' => 'unknown command `unknown2\'',
    'type' => 'error'
  }
];


$result_floats{'delcomment_followed_by_cpp_line'} = {};


1;
