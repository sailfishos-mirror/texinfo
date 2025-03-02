use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'split_for_format_not_split'} = '*document_root C3
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


$result_texis{'split_for_format_not_split'} = '\\input texinfo @c -*-texinfo-*-

@node Top

This is a very simple texi manual @  <>.

@bye
';


$result_texts{'split_for_format_not_split'} = '
This is a very simple texi manual   <>.

';

$result_nodes{'split_for_format_not_split'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'split_for_format_not_split'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'split_for_format_not_split'} = [];


$result_floats{'split_for_format_not_split'} = {};


1;
