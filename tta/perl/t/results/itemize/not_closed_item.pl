use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'not_closed_item'} = '*document_root C1
 *before_node_section C1
  *0 @itemize C2 l1
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @bullet
     |INFO
     |inserted:{1}
   *@item C2 l2
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {in item\\n}
';


$result_texis{'not_closed_item'} = '@itemize
@item in item
';


$result_texts{'not_closed_item'} = 'in item
';

$result_errors{'not_closed_item'} = [
  {
    'error_line' => 'no matching `@end itemize\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end itemize\'',
    'type' => 'error'
  }
];


1;
