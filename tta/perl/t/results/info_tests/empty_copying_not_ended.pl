use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_copying_not_ended'} = '*document_root C1
 *before_node_section C2
  {empty_line:\\n}
  *0 @copying C1 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
';


$result_texis{'empty_copying_not_ended'} = '
@copying
';


$result_texts{'empty_copying_not_ended'} = '
';

$result_errors{'empty_copying_not_ended'} = [
  {
    'error_line' => 'no matching `@end copying\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end copying\'',
    'type' => 'error'
  }
];


$result_floats{'empty_copying_not_ended'} = {};



$result_converted{'info'}->{'empty_copying_not_ended'} = 'This is , produced from .


Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'empty_copying_not_ended'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
