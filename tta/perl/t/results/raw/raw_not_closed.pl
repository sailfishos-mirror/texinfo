use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'raw_not_closed'} = '*document_root C1
 *before_node_section C1
  *0 @html C2 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *rawpreformatted C3
    {empty_line:\\n}
    {This is some html\\n}
    {<address> my address </address>\\n}
';


$result_texis{'raw_not_closed'} = '@html

This is some html
<address> my address </address>
';


$result_texts{'raw_not_closed'} = '
This is some html
<address> my address </address>
';

$result_errors{'raw_not_closed'} = [
  {
    'error_line' => 'no matching `@end html\'
',
    'line_nr' => 4,
    'text' => 'no matching `@end html\'',
    'type' => 'error'
  }
];


$result_floats{'raw_not_closed'} = {};


1;
