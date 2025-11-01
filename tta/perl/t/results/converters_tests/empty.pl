use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty'} = '*document_root C1
 *before_node_section C1
  *preamble_before_content
';


$result_texis{'empty'} = '';


$result_texts{'empty'} = '';

$result_errors{'empty'} = '';

$result_nodes_list{'empty'} = '';

$result_sections_list{'empty'} = '';

$result_sectioning_root{'empty'} = '';

$result_headings_list{'empty'} = '';

$result_converted_errors{'file_html'}->{'empty'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'empty.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'empty'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'file_name' => 'empty.texi',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
