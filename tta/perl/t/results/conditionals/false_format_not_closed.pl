use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'false_format_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @html C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *elided_rawpreformatted C1
    {raw:blah blah\\n}
';


$result_texis{'false_format_not_closed'} = '@html
blah blah
';


$result_texts{'false_format_not_closed'} = '';

$result_errors{'false_format_not_closed'} = [
  {
    'error_line' => 'no matching `@end html\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end html\'',
    'type' => 'error'
  }
];


1;
