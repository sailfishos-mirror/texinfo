use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'simplest_test_prefix'} = '*document_root C3
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C4 simplest.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *paragraph C3
   {This is a very simple texi manual }
   *@ 
   { <>.\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'simplest_test_prefix'} = '\\input texinfo @c -*-texinfo-*-

@node Top

This is a very simple texi manual @  <>.

@bye
';


$result_texts{'simplest_test_prefix'} = '
This is a very simple texi manual   <>.

';

$result_errors{'simplest_test_prefix'} = [];


$result_converted_errors{'file_html'}->{'simplest_test_prefix'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'simplest.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
