use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'minimal_empty_with_input'} = '*document_root C1
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
';


$result_texis{'minimal_empty_with_input'} = '\\input texinfo.tex

';


$result_texts{'minimal_empty_with_input'} = '';

$result_errors{'minimal_empty_with_input'} = [];


$result_converted_errors{'file_html'}->{'minimal_empty_with_input'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'minimal_empty_with_input.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_info'}->{'minimal_empty_with_input'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'file_name' => 'minimal_empty_with_input.texi',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
