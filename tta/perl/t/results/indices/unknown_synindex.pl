use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_synindex'} = '*document_root C1
 *before_node_section C1
  *@synindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    {c truc}
';


$result_texis{'unknown_synindex'} = '@synindex c truc';


$result_texts{'unknown_synindex'} = '';

$result_errors{'unknown_synindex'} = [
  {
    'error_line' => 'unknown source index in @synindex: c
',
    'line_nr' => 1,
    'text' => 'unknown source index in @synindex: c',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown destination index in @synindex: truc
',
    'line_nr' => 1,
    'text' => 'unknown destination index in @synindex: truc',
    'type' => 'error'
  }
];


1;
